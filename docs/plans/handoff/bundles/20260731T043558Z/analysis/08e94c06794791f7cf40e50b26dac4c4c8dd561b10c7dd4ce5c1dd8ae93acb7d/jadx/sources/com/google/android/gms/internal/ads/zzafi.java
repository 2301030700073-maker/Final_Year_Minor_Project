package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzafi implements zzacl {
    private final zzadn zza;
    private final int zzb;
    private final zzadh zzc = new zzadh();

    /* synthetic */ zzafi(zzadn zzadnVar, int i, byte[] bArr) {
        this.zza = zzadnVar;
        this.zzb = i;
    }

    private final long zzc(zzadb zzadbVar) throws IOException {
        while (zzadbVar.zzm() < zzadbVar.zzo() - 6) {
            zzadn zzadnVar = this.zza;
            int i = this.zzb;
            zzadh zzadhVar = this.zzc;
            long zzm = zzadbVar.zzm();
            zzeg zzegVar = new zzeg(17);
            zzadbVar.zzi(zzegVar.zzi(), 0, 2);
            if (zzegVar.zzo() != i) {
                zzadbVar.zzl();
                zzadbVar.zzk((int) (zzm - zzadbVar.zzn()));
            } else {
                zzegVar.zzf(zzade.zzb(zzadbVar, zzegVar.zzi(), 2, 15) + 2);
                zzadbVar.zzl();
                zzadbVar.zzk((int) (zzm - zzadbVar.zzn()));
                if (zzadi.zza(zzegVar, zzadnVar, i, zzadhVar)) {
                    break;
                }
            }
            zzadbVar.zzk(1);
        }
        if (zzadbVar.zzm() < zzadbVar.zzo() - 6) {
            return this.zzc.zza;
        }
        zzadbVar.zzk((int) (zzadbVar.zzo() - zzadbVar.zzm()));
        return this.zza.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzacl
    public final zzack zza(zzadb zzadbVar, long j) throws IOException {
        long zzn = zzadbVar.zzn();
        long zzc = zzc(zzadbVar);
        long zzm = zzadbVar.zzm();
        zzadbVar.zzk(Math.max(6, this.zza.zzc));
        long zzc2 = zzc(zzadbVar);
        return (zzc > j || zzc2 <= j) ? zzc2 <= j ? zzack.zzb(zzc2, zzadbVar.zzm()) : zzack.zza(zzc, zzn) : zzack.zzc(zzm);
    }
}
