package ${packageName}.injection;

import android.content.Context;

import ${packageName}.${appClass};

import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {AppModule.class})
public interface AppComponent
{
    Context getAppContext();
    ${appClass} getApp();
}