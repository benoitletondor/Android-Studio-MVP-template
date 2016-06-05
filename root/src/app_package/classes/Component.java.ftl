package ${packageName}.injection;

import android.support.annotation.NonNull;

import ${packageName}.view.impl.${activityClass};

import dagger.Component;

@${scopeClass}
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(@NonNull ${activityClass} activity);
}