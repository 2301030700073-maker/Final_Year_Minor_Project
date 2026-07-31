package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhz implements zzko {
    private final zzly zza;
    private final zzhy zzb;
    private zzln zzc;
    private zzko zzd;
    private boolean zze = true;
    private boolean zzf;

    public zzhz(zzhy zzhyVar, zzdc zzdcVar) {
        this.zzb = zzhyVar;
        this.zza = new zzly(zzdcVar);
    }

    public final void zza() {
        this.zzf = true;
        this.zza.zza();
    }

    public final void zzb() {
        this.zzf = false;
        this.zza.zzb();
    }

    public final void zzc(long j) {
        this.zza.zzc(j);
    }

    public final void zzd(zzln zzlnVar) throws zzib {
        zzko zzkoVar;
        zzko zzd = zzlnVar.zzd();
        if (zzd == null || zzd == (zzkoVar = this.zzd)) {
            return;
        }
        if (zzkoVar != null) {
            throw zzib.zzc(new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.zzd = zzd;
        this.zzc = zzlnVar;
        zzd.zzi(this.zza.zzj());
    }

    public final void zze(zzln zzlnVar) {
        if (zzlnVar == this.zzc) {
            this.zzd = null;
            this.zzc = null;
            this.zze = true;
        }
    }

    public final long zzf(boolean z) {
        zzln zzlnVar = this.zzc;
        if (zzlnVar == null || zzlnVar.zzZ() || ((z && this.zzc.zze() != 2) || (!this.zzc.zzY() && (z || this.zzc.zzdb())))) {
            this.zze = true;
            if (this.zzf) {
                this.zza.zza();
            }
        } else {
            zzko zzkoVar = this.zzd;
            zzkoVar.getClass();
            long zzg = zzkoVar.zzg();
            if (this.zze) {
                zzly zzlyVar = this.zza;
                if (zzg < zzlyVar.zzg()) {
                    zzlyVar.zzb();
                } else {
                    this.zze = false;
                    if (this.zzf) {
                        zzlyVar.zza();
                    }
                }
            }
            zzly zzlyVar2 = this.zza;
            zzlyVar2.zzc(zzg);
            zzav zzj = zzkoVar.zzj();
            if (!zzj.equals(zzlyVar2.zzj())) {
                zzlyVar2.zzi(zzj);
                this.zzb.zzc(zzj);
            }
        }
        return zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final long zzg() {
        if (this.zze) {
            return this.zza.zzg();
        }
        zzko zzkoVar = this.zzd;
        zzkoVar.getClass();
        return zzkoVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final void zzi(zzav zzavVar) {
        zzko zzkoVar = this.zzd;
        if (zzkoVar != null) {
            zzkoVar.zzi(zzavVar);
            zzavVar = this.zzd.zzj();
        }
        this.zza.zzi(zzavVar);
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final zzav zzj() {
        zzko zzkoVar = this.zzd;
        return zzkoVar != null ? zzkoVar.zzj() : this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzko
    public final boolean zzh() {
        if (this.zze) {
            return false;
        }
        zzko zzkoVar = this.zzd;
        zzkoVar.getClass();
        return zzkoVar.zzh();
    }
}
