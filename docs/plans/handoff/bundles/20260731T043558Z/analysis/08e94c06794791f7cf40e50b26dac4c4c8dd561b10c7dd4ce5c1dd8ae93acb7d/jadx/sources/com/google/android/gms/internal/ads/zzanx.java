package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzanx implements zzanq {
    final /* synthetic */ zzaoa zza;
    private final zzef zzb;

    public zzanx(zzaoa zzaoaVar) {
        Objects.requireNonNull(zzaoaVar);
        this.zza = zzaoaVar;
        this.zzb = new zzef(new byte[4], 4);
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zza(zzem zzemVar, zzadd zzaddVar, zzaoe zzaoeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zzb(zzeg zzegVar) {
        if (zzegVar.zzs() == 0 && (zzegVar.zzs() & 128) != 0) {
            zzegVar.zzk(6);
            int zzd = zzegVar.zzd() / 4;
            for (int i = 0; i < zzd; i++) {
                zzef zzefVar = this.zzb;
                zzegVar.zzl(zzefVar, 4);
                int zzj = zzefVar.zzj(16);
                zzefVar.zzh(3);
                if (zzj == 0) {
                    zzefVar.zzh(13);
                } else {
                    int zzj2 = zzefVar.zzj(13);
                    zzaoa zzaoaVar = this.zza;
                    if (zzaoaVar.zzi().get(zzj2) == null) {
                        zzaoaVar.zzi().put(zzj2, new zzanr(new zzany(zzaoaVar, zzj2)));
                        zzaoaVar.zzn(zzaoaVar.zzm() + 1);
                    }
                }
            }
            this.zza.zzi().remove(0);
        }
    }
}
