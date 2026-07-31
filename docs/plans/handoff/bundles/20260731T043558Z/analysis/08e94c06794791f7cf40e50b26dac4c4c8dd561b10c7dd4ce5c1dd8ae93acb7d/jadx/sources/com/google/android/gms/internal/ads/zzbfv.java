package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes3.dex */
public final class zzbfv {
    private CustomTabsSession zza;
    private CustomTabsClient zzb;
    private CustomTabsServiceConnection zzc;
    private zzbfu zzd;

    public static boolean zza(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                        return resolveActivity.activityInfo.packageName.equals(zzifx.zza(context));
                    }
                }
            }
        }
        return false;
    }

    public final void zzb(Activity activity) {
        CustomTabsServiceConnection customTabsServiceConnection = this.zzc;
        if (customTabsServiceConnection == null) {
            return;
        }
        activity.unbindService(customTabsServiceConnection);
        this.zzb = null;
        this.zza = null;
        this.zzc = null;
    }

    public final CustomTabsSession zzc() {
        CustomTabsClient customTabsClient = this.zzb;
        if (customTabsClient == null) {
            this.zza = null;
        } else if (this.zza == null) {
            this.zza = customTabsClient.newSession(null);
        }
        return this.zza;
    }

    public final void zzd(zzbfu zzbfuVar) {
        this.zzd = zzbfuVar;
    }

    public final void zze(Activity activity) {
        String zza;
        if (this.zzb == null && (zza = zzifx.zza(activity)) != null) {
            zzify zzifyVar = new zzify(this);
            this.zzc = zzifyVar;
            CustomTabsClient.bindCustomTabsService(activity, zza, zzifyVar);
        }
    }

    public final void zzf(CustomTabsClient customTabsClient) {
        this.zzb = customTabsClient;
        customTabsClient.warmup(0L);
        zzbfu zzbfuVar = this.zzd;
        if (zzbfuVar != null) {
            zzbfuVar.zza();
        }
    }

    public final void zzg() {
        this.zzb = null;
        this.zza = null;
    }
}
