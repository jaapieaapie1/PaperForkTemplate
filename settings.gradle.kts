pluginManagement {
    repositories {
        gradlePluginPortal()
        maven("https://papermc.io/repo/repository/maven-public/")
    }
}

rootProject.name = "REPO_NAME"

include("REPO_NAME-API", "REPO_NAME-Server")