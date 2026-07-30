package dagger.android;

import android.content.ContentProvider;
import io.sentry.android.core.performance.AppStartMetrics;

/* loaded from: classes5.dex */
public abstract class DaggerContentProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public boolean onCreate() {
        AppStartMetrics.onContentProviderCreate(this);
        AndroidInjection.inject(this);
        AppStartMetrics.onContentProviderPostCreate(this);
        return true;
    }
}
