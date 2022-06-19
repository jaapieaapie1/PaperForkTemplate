pluginManagement {
    repositories {
        gradlePluginPortal()
        maven("https://papermc.io/repo/repository/maven-public/")
    }
}

rootProject.name = "paperforktemplate"

include("paperforktemplate-API", "paperforktemplate-Server")