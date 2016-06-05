package ${packageName}.injection;

import android.content.Context;

import ${packageName}.App;

import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {AppModule.class})
public interface AppComponent
{
    Context getAppContext();
    App getApp();
}