package ${packageName}.injection;

import android.content.Context;
import android.support.annotation.NonNull;

import ${packageName}.App;

import dagger.Module;
import dagger.Provides;

@Module
public final class AppModule
{
    @NonNull
    private final App mApp;

    public AppModule(@NonNull App app)
    {
        mApp = app;
    }

    @Provides
    public Context provideAppContext()
    {
        return mApp;
    }

    @Provides
    public App provideApp()
    {
        return mApp;
    }
}
