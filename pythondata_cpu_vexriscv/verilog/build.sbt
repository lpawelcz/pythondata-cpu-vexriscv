val spinalVersion = "1.4.2"

lazy val root = (project in file(".")).
  settings(
    inThisBuild(List(
      organization := "com.github.spinalhdl",
      scalaVersion := "2.11.12",
      version      := "0.1.0-SNAPSHOT"
    )),
    name := "VexRiscvOnWishbone",
    scalacOptions +=  s"-Xplugin:${new File(baseDirectory.value + s"/ext/SpinalHDL/idslplugin/target/scala-2.11/spinalhdl-idsl-plugin_2.11-$spinalVersion.jar")}",
    scalacOptions += s"-Xplugin-require:idsl-plugin",
  ).dependsOn(vexRiscv)

lazy val vexRiscv = RootProject(file("./ext/VexRiscv"))

fork := true
