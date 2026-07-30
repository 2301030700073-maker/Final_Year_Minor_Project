package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.facebook.appevents.codeless.internal.Constants;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.ads.zzbcl;

@TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
/* loaded from: classes.dex */
public class zzu extends zzt {
    @Override // com.google.android.gms.ads.internal.util.zzaa
    public final boolean zzd(Activity activity, Configuration configuration) {
        boolean isInMultiWindowMode;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeR)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeT)).booleanValue()) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            return isInMultiWindowMode;
        }
        com.google.android.gms.ads.internal.client.zzbc.zzb();
        int zzx = com.google.android.gms.ads.internal.util.client.zzf.zzx(activity, configuration.screenHeightDp);
        int zzx2 = com.google.android.gms.ads.internal.util.client.zzf.zzx(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzv.zzq();
        DisplayMetrics zzu = zzs.zzu(windowManager);
        int i = zzu.heightPixels;
        int i2 = zzu.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", Constants.PLATFORM);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzeP)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
        if (Math.abs(i - (zzx + dimensionPixelSize)) <= intValue) {
            return !(Math.abs(i2 - zzx2) <= intValue);
        }
        return true;
    }
}
