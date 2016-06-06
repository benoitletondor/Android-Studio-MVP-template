package ${packageName};

import android.app.Application;
import android.support.annotation.NonNull;

import ${packageName}.injection.AppComponent;
import ${packageName}.injection.AppModule;
import ${packageName}.injection.DaggerAppComponent;

public final class ${appClass} extends Application
{
    private AppComponent mAppComponent;

    @Override
    public void onCreate()
    {
        super.onCreate();

        mAppComponent = DaggerAppComponent.builder()
            .appModule(new AppModule(this))
            .build();
    }

    @NonNull
    public AppComponent getAppComponent()
    {
        return mAppComponent;
    }
}