package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzenq implements zzetq {
    private final Integer zza;

    private zzenq(Integer num) {
        this.zza = num;
    }

    public static /* bridge */ /* synthetic */ zzenq zzc(VersionInfoParcel versionInfoParcel) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjT)).booleanValue()) {
            return new zzenq(null);
        }
        com.google.android.gms.ads.internal.zzv.zzq();
        int i = 0;
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjW)).booleanValue()) {
                    if (versionInfoParcel.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjV)).intValue() && i2 >= 31 && SdkExtensions.getExtensionVersion(31) >= 9) {
                        i = SdkExtensions.getExtensionVersion(31);
                    }
                }
            } else {
                i = SdkExtensions.getExtensionVersion(1000000);
            }
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.getAdServicesExtensionVersion");
        }
        return new zzenq(Integer.valueOf(i));
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* synthetic */ void zza(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzetq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Integer num = this.zza;
        zzcuv zzcuvVar = (zzcuv) obj;
        if (num != null) {
            zzcuvVar.zza.putInt("aos", num.intValue());
        }
    }
}
