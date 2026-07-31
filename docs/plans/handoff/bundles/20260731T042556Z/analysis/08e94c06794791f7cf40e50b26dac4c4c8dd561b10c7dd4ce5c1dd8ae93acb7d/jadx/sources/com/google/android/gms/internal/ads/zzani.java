package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzani implements zzanq {
    private zzv zza;
    private zzem zzb;
    private zzaem zzc;

    public zzani(String str, String str2) {
        zzt zztVar = new zzt();
        zztVar.zzl(MimeTypes.VIDEO_MP2T);
        zztVar.zzm(str);
        this.zza = zztVar.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zza(zzem zzemVar, zzadd zzaddVar, zzaoe zzaoeVar) {
        this.zzb = zzemVar;
        zzaoeVar.zza();
        zzaem zzu = zzaddVar.zzu(zzaoeVar.zzb(), 5);
        this.zzc = zzu;
        zzu.zzu(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zzb(zzeg zzegVar) {
        this.zzb.getClass();
        String str = zzep.zza;
        long zzb = this.zzb.zzb();
        long zzc = this.zzb.zzc();
        if (zzb == C.TIME_UNSET || zzc == C.TIME_UNSET) {
            return;
        }
        zzv zzvVar = this.zza;
        if (zzc != zzvVar.zzt) {
            zzt zza = zzvVar.zza();
            zza.zzr(zzc);
            zzv zzM = zza.zzM();
            this.zza = zzM;
            this.zzc.zzu(zzM);
        }
        int zzd = zzegVar.zzd();
        this.zzc.zzz(zzegVar, zzd);
        this.zzc.zzx(zzb, 1, zzd, 0, null);
    }
}
