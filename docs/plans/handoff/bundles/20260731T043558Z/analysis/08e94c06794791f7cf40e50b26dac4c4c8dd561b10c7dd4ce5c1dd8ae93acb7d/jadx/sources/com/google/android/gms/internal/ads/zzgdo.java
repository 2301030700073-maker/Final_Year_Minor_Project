package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import java.io.UnsupportedEncodingException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzgdo {
    private final Context zza;
    private final zzgjd zzb;
    private final zzgbk zzc;
    private final String zzd;

    zzgdo(Context context, zzgjd zzgjdVar, zzgbk zzgbkVar, zzfxt zzfxtVar) {
        this.zza = context;
        this.zzb = zzgjdVar;
        this.zzc = zzgbkVar;
        this.zzd = zzfxtVar.zzb();
    }

    public final String zza(boolean z, long j) {
        String num;
        zzgjb zza = this.zzb.zza(55);
        try {
            try {
                zza.zza();
                zzavi zza2 = zzavj.zza();
                zza2.zzb(this.zzd);
                zza2.zza("0.808261137");
                zza2.zzd(this.zza.getPackageName());
                zza2.zzc(System.currentTimeMillis() / 1000);
                zza2.zzf((System.currentTimeMillis() - j) / 1000);
                try {
                    zza2.zze(r0.getPackageManager().getPackageInfo(r0.getPackageName(), 0).versionCode);
                } catch (PackageManager.NameNotFoundException unused) {
                    zza2.zze(-1L);
                }
                zzgbk zzgbkVar = this.zzc;
                if (!zzgbkVar.zzc()) {
                    zzgbkVar.zza();
                }
                zzavp zzf = zzgbkVar.zzf(((zzavj) zza2.zzbu()).zzaN(), null);
                zzf.zzc(5);
                zzf.zzd(2);
                num = zzfyo.zza(((zzavq) zzf.zzbu()).zzaN(), true);
            } finally {
                zza.zzc();
            }
        } catch (UnsupportedEncodingException e) {
            zza.zzb(e);
            num = Integer.toString(7);
        } catch (Throwable th) {
            zza.zzb(th);
            throw th;
        }
        return num;
    }
}
