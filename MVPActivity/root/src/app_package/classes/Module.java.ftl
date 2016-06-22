package ${packageName}.injection;

import android.support.annotation.NonNull;

import ${packageName}.interactor.${interactorClass};
import ${packageName}.interactor.impl.${interactorClass}Impl;
import ${packageName}.presenter.loader.PresenterFactory;
import ${packageName}.presenter.${presenterClass};
import ${packageName}.presenter.impl.${presenterClass}Impl;

import dagger.Module;
import dagger.Provides;

@Module
public final class ${moduleClass} 
{
	@Provides
	public ${interactorClass} provideInteractor()
	{
		return new ${interactorClass}Impl();
	}

	@Provides
	public PresenterFactory<${presenterClass}> providePresenterFactory(@NonNull final ${interactorClass} interactor)
	{
		return new PresenterFactory<${presenterClass}>()
        {
            @NonNull
            @Override
            public ${presenterClass} create()
            {
                return new ${presenterClass}Impl(interactor);
            }
        };
	}
}
