package ${packageName};

import android.support.annotation.NonNull;

import dagger.Component;

@${scopeClass}
@Component(dependencies = ${parentComponentClass}.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(@NonNull ${activityClass} activity);
}