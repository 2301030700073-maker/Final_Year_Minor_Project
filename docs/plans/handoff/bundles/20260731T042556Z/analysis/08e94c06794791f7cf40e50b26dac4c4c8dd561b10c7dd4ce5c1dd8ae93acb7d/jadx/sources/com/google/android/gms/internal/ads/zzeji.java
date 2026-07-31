package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzeji implements zzdjl {
    private final zzffu zza;
    private final zzbti zzb;
    private final AdFormat zzc;
    private zzczg zzd = null;

    zzeji(zzffu zzffuVar, zzbti zzbtiVar, AdFormat adFormat) {
        this.zza = zzffuVar;
        this.zzb = zzbtiVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final void zza(boolean z, Context context, zzczb zzczbVar) throws zzdjk {
        boolean zzk;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int ordinal = this.zzc.ordinal();
            if (ordinal == 1) {
                zzk = this.zzb.zzk(ObjectWrapper.wrap(context));
            } else {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzk = this.zzb.zzt(ObjectWrapper.wrap(context));
                    }
                    throw new zzdjk("Adapter failed to show.");
                }
                zzk = this.zzb.zzm(ObjectWrapper.wrap(context));
            }
            if (zzk) {
                zzczg zzczgVar = this.zzd;
                if (zzczgVar == null) {
                    return;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzbN)).booleanValue() || this.zza.zzY != 2) {
                    return;
                }
                zzczgVar.zza();
                return;
            }
            throw new zzdjk("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdjk(th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdjl
    public final zzffu zzb() {
        return this.zza;
    }

    public final void zzc(zzczg zzczgVar) {
        this.zzd = zzczgVar;
    }
}
