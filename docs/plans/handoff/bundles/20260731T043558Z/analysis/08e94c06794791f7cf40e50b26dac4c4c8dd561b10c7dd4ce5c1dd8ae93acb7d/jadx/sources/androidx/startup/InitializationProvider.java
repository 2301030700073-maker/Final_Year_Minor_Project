package androidx.startup;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import io.sentry.android.core.performance.AppStartMetrics;

/* loaded from: classes2.dex */
public class InitializationProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        AppStartMetrics.onContentProviderCreate(this);
        Context context = getContext();
        if (context != null) {
            if (context.getApplicationContext() != null) {
                AppInitializer.getInstance(context).discoverAndInitialize();
            } else {
                StartupLogger.w("Deferring initialization because `applicationContext` is null.");
            }
            AppStartMetrics.onContentProviderPostCreate(this);
            return true;
        }
        StartupException startupException = new StartupException("Context cannot be null");
        AppStartMetrics.onContentProviderPostCreate(this);
        throw startupException;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new IllegalStateException("Not allowed.");
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new IllegalStateException("Not allowed.");
    }
}
