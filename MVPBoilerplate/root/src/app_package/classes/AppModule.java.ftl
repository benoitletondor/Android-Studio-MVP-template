package ${packageName}.injection;

import android.content.Context;
import android.support.annotation.NonNull;

import ${packageName}.${appClass};

import dagger.Module;
import dagger.Provides;

@Module
public final class AppModule
{
    @NonNull
    private final ${appClass} mApp;

    public AppModule(@NonNull ${appClass} app)
    {
        mApp = app;
    }

    @Provides
    public Context provideAppContext()
    {
        return mApp;
    }

    @Provides
    public ${appClass} provideApp()
    {
        return mApp;
    }
}
