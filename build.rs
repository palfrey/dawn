use std::{
    env,
    error::Error,
    fs::{self, File},
    io::Write,
    path::Path,
};

const SOURCE_DIR: &str = "resources/templates";

fn main() -> Result<(), Box<dyn Error>> {
    let out_dir = env::var("OUT_DIR")?;
    let dest_path = Path::new(&out_dir).join("templates.rs");
    let mut all_the_files = File::create(&dest_path)?;

    writeln!(&all_the_files, "{{")?;
    for f in fs::read_dir(SOURCE_DIR)? {
        let f = f?;

        if f.file_type()?.is_dir() {
            continue;
        }

        writeln!(
            &mut all_the_files,
            r#"m.insert("{name}", include_str!(concat!(env!("CARGO_MANIFEST_DIR"), "/{name}")));"#,
            name = f.path().display()
        )?;
    }
    writeln!(&all_the_files, "}}")?;

    Ok(())
}
