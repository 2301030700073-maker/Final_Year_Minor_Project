package androidx.loader.app;

import android.os.Bundle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.content.AsyncTaskLoader;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LoaderManager {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface LoaderCallbacks {
        AsyncTaskLoader onCreateLoader(int i, Bundle bundle);

        void onLoadFinished(AsyncTaskLoader asyncTaskLoader, Object obj);

        void onLoaderReset(AsyncTaskLoader asyncTaskLoader);
    }

    public static LoaderManagerImpl getInstance(LifecycleOwner lifecycleOwner) {
        return new LoaderManagerImpl(lifecycleOwner, ((ViewModelStoreOwner) lifecycleOwner).getViewModelStore());
    }

    public abstract void destroyLoader(int i);

    public abstract AsyncTaskLoader restartLoader(int i, Bundle bundle, LoaderCallbacks loaderCallbacks);
}
