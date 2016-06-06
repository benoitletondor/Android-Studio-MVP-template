package ${packageName}.injection;

import ${packageName}.view.impl.${activityClass};

import dagger.Component;

@FragmentScope
@Component(dependencies = AppComponent.class, modules = ${moduleClass}.class)
public interface ${componentClass} 
{
    void inject(${activityClass} fragment);
}