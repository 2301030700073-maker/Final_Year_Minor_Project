package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzawo {
    public static final String zza(Context context, String str, long j, boolean z) {
        try {
            zzavi zza = zzavj.zza();
            zza.zzb(str);
            zza.zza("0.460000000");
            zza.zzd(context.getPackageName());
            zza.zzf((System.currentTimeMillis() - j) / 1000);
            zza.zzc(System.currentTimeMillis() / 1000);
            try {
                zza.zze(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
                zza.zze(-1L);
            }
            zzavp zzc = zzavz.zzc(((zzavj) zza.zzbu()).zzaN(), null);
            zzc.zzc(5);
            zzc.zzd(2);
            return Base64.encodeToString(((zzavq) zzc.zzbu()).zzaN(), 11);
        } catch (UnsupportedEncodingException | GeneralSecurityException unused2) {
            return Integer.toString(7);
        }
    }
}
