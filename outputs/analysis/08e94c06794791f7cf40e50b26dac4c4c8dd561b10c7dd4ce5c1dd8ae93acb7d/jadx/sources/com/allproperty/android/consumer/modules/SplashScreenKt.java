package com.allproperty.android.consumer.modules;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SplashScreen.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001\u001a\f\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"preferenceKey", "", "updateCacheUrl", "", "Landroid/content/Context;", "url", "getCacheUrl", "app_myPublicRelease"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class SplashScreenKt {
    public static final String preferenceKey = "alternate_splash";

    public static final void updateCacheUrl(Context context, String url) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
        edit.putString(preferenceKey, url);
        edit.apply();
    }

    public static final String getCacheUrl(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getSharedPreferences(context.getPackageName(), 0).getString(preferenceKey, null);
    }
}
