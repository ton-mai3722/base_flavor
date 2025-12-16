import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("sit") {
            dimension = "flavor-type"
            applicationId = "com.example.apple"
            resValue(type = "string", name = "app_name", value = "Apple App")
        }
        create("uat") {
            dimension = "flavor-type"
            applicationId = "com.example.banana"
            resValue(type = "string", name = "app_name", value = "Banana App")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.example.production"
            resValue(type = "string", name = "app_name", value = "Production App")
        }
    }
}