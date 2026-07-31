package io.sentry.android.core;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import io.sentry.Sentry;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.android.core.performance.AppStartMetrics;

/* loaded from: classes5.dex */
public final class SentryInitProvider extends EmptySecureContentProvider {
    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        AppStartMetrics.onContentProviderCreate(this);
        AndroidLogger androidLogger = new AndroidLogger();
        Context context = getContext();
        if (context == null) {
            androidLogger.log(SentryLevel.FATAL, "App. Context from ContentProvider is null", new Object[0]);
            AppStartMetrics.onContentProviderPostCreate(this);
            return false;
        }
        if (ManifestMetadataReader.isAutoInit(context, androidLogger)) {
            SentryAndroid.init(context, androidLogger);
            SentryIntegrationPackageStorage.getInstance().addIntegration("AutoInit");
        }
        AppStartMetrics.onContentProviderPostCreate(this);
        return true;
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        Sentry.close();
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (SentryInitProvider.class.getName().equals(providerInfo.authority)) {
            throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
        }
        super.attachInfo(context, providerInfo);
    }
}
