package ${packageName};

import android.support.annotation.NonNull;

import dagger.Module;
import dagger.Provides;

@Module
public final class ${moduleClass} 
{
	/**
	 * Stored view
	 */
	private final ${viewClass} mView;

	public ${moduleClass}(@NonNull ${viewClass} view)
	{
		mView = view;
	}

	@Provides
	public ${viewClass} provideView()
	{
		return mView;
	}

	@Provides
	public ${interactorClass} provideInteractor()
	{
		return new ${interactorClass}Impl();
	}

	@Provides
	public ${presenterClass} providePresenter(@NonNull ${viewClass} view, @NonNull ${interactorClass} interactor)
	{
		return new ${presenterClass}Impl(view, interactor);
	}
}
