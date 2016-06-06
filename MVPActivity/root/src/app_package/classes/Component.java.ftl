package ${packageName}.injection;

import ${packageName}.view.impl.${activityClass};

import dagger.Component;

@ActivityScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(${activityClass} activity);
}