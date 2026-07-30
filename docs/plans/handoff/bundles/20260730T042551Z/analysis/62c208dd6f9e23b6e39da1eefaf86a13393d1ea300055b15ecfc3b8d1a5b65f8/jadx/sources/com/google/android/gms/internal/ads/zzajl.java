package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzajl implements zzacn {
    private zzacq zza;
    private zzajt zzb;
    private boolean zzc;

    private final boolean zza(zzaco zzacoVar) {
        zzajn zzajnVar = new zzajn();
        if (zzajnVar.zzb(zzacoVar, true) && (zzajnVar.zza & 2) == 2) {
            int min = Math.min(zzajnVar.zze, 8);
            zzdy zzdyVar = new zzdy(min);
            zzacoVar.zzh(zzdyVar.zzN(), 0, min);
            zzdyVar.zzL(0);
            if (zzdyVar.zzb() >= 5 && zzdyVar.zzm() == 127 && zzdyVar.zzu() == 1179402563) {
                this.zzb = new zzajk();
            } else {
                zzdyVar.zzL(0);
                try {
                    if (zzadz.zzd(1, zzdyVar, true)) {
                        this.zzb = new zzajv();
                    }
                } catch (zzbc unused) {
                }
                zzdyVar.zzL(0);
                if (zzajp.zzd(zzdyVar)) {
                    this.zzb = new zzajp();
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        zzcw.zzb(this.zza);
        if (this.zzb == null) {
            if (!zza(zzacoVar)) {
                throw zzbc.zza("Failed to determine bitstream type", null);
            }
            zzacoVar.zzj();
        }
        if (!this.zzc) {
            zzadt zzw = this.zza.zzw(0, 1);
            this.zza.zzD();
            this.zzb.zzh(this.zza, zzw);
            this.zzc = true;
        }
        return this.zzb.zze(zzacoVar, zzadjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ zzacn zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final /* synthetic */ List zzd() {
        return zzfxn.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zze(zzacq zzacqVar) {
        this.zza = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        zzajt zzajtVar = this.zzb;
        if (zzajtVar != null) {
            zzajtVar.zzj(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final boolean zzi(zzaco zzacoVar) {
        try {
            return zza(zzacoVar);
        } catch (zzbc unused) {
            return false;
        }
    }
}
