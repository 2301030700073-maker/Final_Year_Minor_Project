package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.WebSettings;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.SharedPreferencesUtils;

/* loaded from: classes.dex */
public final class zzcg {

    /* renamed from: do, reason: not valid java name */
    public static zzcg f9798do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9799do;

    public static zzcg zza() {
        if (f9798do == null) {
            f9798do = new zzcg();
        }
        return f9798do;
    }

    public final void zzb(Context context) {
        zze.zza("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(this.f9799do)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (!ClientLibraryUtils.isPackageSide()) {
                if (remoteContext == null) {
                    remoteContext = null;
                }
                this.f9799do = defaultUserAgent;
            }
            SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
            if (remoteContext == null) {
                putString.apply();
            } else {
                SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, putString, "admob_user_agent");
            }
            this.f9799do = defaultUserAgent;
        }
        zze.zza("User agent is updated.");
    }
}
