package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import defpackage.BinderC3652rv;

/* loaded from: classes.dex */
final class zzefb implements zzdgc {
    private final zzfbo zza;
    private final zzbrd zzb;
    private final AdFormat zzc;
    private zzcwl zzd = null;

    public zzefb(zzfbo zzfboVar, zzbrd zzbrdVar, AdFormat adFormat) {
        this.zza = zzfboVar;
        this.zzb = zzbrdVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdgc
    public final void zza(boolean z, Context context, zzcwg zzcwgVar) {
        boolean zzs;
        try {
            int ordinal = this.zzc.ordinal();
            if (ordinal == 1) {
                zzs = this.zzb.zzs(new BinderC3652rv(context));
            } else {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzs = this.zzb.zzr(new BinderC3652rv(context));
                    }
                    throw new zzdgb("Adapter failed to show.");
                }
                zzs = this.zzb.zzt(new BinderC3652rv(context));
            }
            if (zzs) {
                zzcwl zzcwlVar = this.zzd;
                if (zzcwlVar == null) {
                    return;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzbE)).booleanValue() || this.zza.zzY != 2) {
                    return;
                }
                zzcwlVar.zza();
                return;
            }
            throw new zzdgb("Adapter failed to show.");
        } catch (Throwable th) {
            throw new zzdgb(th);
        }
    }

    public final void zzb(zzcwl zzcwlVar) {
        this.zzd = zzcwlVar;
    }
}
