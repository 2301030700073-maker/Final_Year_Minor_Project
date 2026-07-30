package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzaab implements zzabh, zzaac {
    final /* synthetic */ zzaah zza;
    private final int zzb;
    private final ArrayList zzc;
    private final zzaaj zzd;
    private zzab zze;
    private long zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private boolean zzj;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private long zzn;
    private zzabe zzo;
    private Executor zzp;

    public zzaab(zzaah zzaahVar, Context context) {
        Executor executor;
        this.zza = zzaahVar;
        this.zzb = true != zzei.zzK(context) ? 5 : 1;
        this.zzc = new ArrayList();
        this.zzd = new zzaaj();
        this.zzk = -9223372036854775807L;
        this.zzo = zzabe.zzb;
        executor = zzaah.zza;
        this.zzp = executor;
    }

    private final void zzB() {
        zzk zzw;
        if (this.zze == null) {
            return;
        }
        new ArrayList(this.zzc);
        zzab zzabVar = this.zze;
        zzabVar.getClass();
        zzz zzb = zzabVar.zzb();
        zzw = zzaah.zzw(zzabVar.zzC);
        zzb.zzB(zzw);
        zzb.zzag();
        zzcw.zzb(null);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaac
    public final void zzA(zzaah zzaahVar, final zzcd zzcdVar) {
        final zzabe zzabeVar = this.zzo;
        this.zzp.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzy
            @Override // java.lang.Runnable
            public final void run() {
                zzabeVar.zzc(zzaab.this, zzcdVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final Surface zza() {
        zzcw.zzf(false);
        zzcw.zzb(null);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzb() {
        this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzc() {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzd(boolean z) {
        this.zzl = false;
        this.zzk = -9223372036854775807L;
        zzaah.zzl(this.zza, z);
        this.zzn = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zze(zzab zzabVar) {
        zzaah.zzc(this.zza, zzabVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzf(boolean z) {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzf(z);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzg(int i, zzab zzabVar) {
        zzcw.zzf(false);
        this.zze = zzabVar;
        if (this.zzl) {
            zzcw.zzf(this.zzk != -9223372036854775807L);
            this.zzm = true;
            this.zzn = this.zzk;
        } else {
            zzB();
            this.zzl = true;
            this.zzm = false;
            this.zzn = -9223372036854775807L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzh() {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzi(boolean z) {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzi(z);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzj() {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzk() {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzl() {
        this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzm(long j, long j2) {
        this.zza.zzh.zzm(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzn(int i) {
        zzabh zzabhVar;
        zzabhVar = this.zza.zzh;
        zzabhVar.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzo(zzabe zzabeVar, Executor executor) {
        this.zzo = zzabeVar;
        this.zzp = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzp(Surface surface, zzdz zzdzVar) {
        this.zza.zzt(surface, zzdzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzq(float f) {
        this.zza.zzh.zzq(f);
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzr(long j, long j2, long j3, long j4) {
        boolean z = this.zzj;
        boolean z2 = true;
        if (this.zzg == j2 && this.zzh == j3) {
            z2 = false;
        }
        this.zzj = z | z2;
        this.zzf = j;
        this.zzg = j2;
        this.zzh = j3;
        this.zzi = j4;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzs(List list) {
        List list2;
        if (this.zzc.equals(list)) {
            return;
        }
        this.zzc.clear();
        this.zzc.addAll(list);
        ArrayList arrayList = this.zzc;
        list2 = this.zza.zzg;
        arrayList.addAll(list2);
        zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final void zzt(zzaai zzaaiVar) {
        this.zza.zzk = zzaaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final boolean zzu(long j, boolean z, long j2, long j3, zzabf zzabfVar) {
        zzaal zzaalVar;
        zzcw.zzf(false);
        long j4 = j - this.zzh;
        try {
            zzaalVar = this.zza.zzd;
            if (zzaalVar.zza(j4, j2, j3, this.zzf, z, this.zzd) != 4) {
                if (j4 < this.zzi && !z) {
                    zzzm zzzmVar = (zzzm) zzabfVar;
                    zzzmVar.zzd.zzaQ(zzzmVar.zza, zzzmVar.zzb, zzzmVar.zzc);
                    return true;
                }
                this.zza.zzh.zzm(j2, j3);
                if (this.zzm) {
                    long j5 = this.zzn;
                    if (j5 == -9223372036854775807L || zzaah.zzu(this.zza, j5)) {
                        zzB();
                        this.zzm = false;
                        this.zzn = -9223372036854775807L;
                    }
                }
                zzcw.zzb(null);
                throw null;
            }
            return false;
        } catch (zzib e) {
            zzab zzabVar = this.zze;
            zzcw.zzb(zzabVar);
            throw new zzabg(e, zzabVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final boolean zzv() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final boolean zzw() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzabh
    public final boolean zzx(boolean z) {
        boolean zzx;
        zzx = this.zza.zzh.zzx(false);
        return zzx;
    }

    @Override // com.google.android.gms.internal.ads.zzaac
    public final void zzy(zzaah zzaahVar) {
        final zzabe zzabeVar = this.zzo;
        this.zzp.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzzz
            @Override // java.lang.Runnable
            public final void run() {
                zzabeVar.zza(zzaab.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaac
    public final void zzz(zzaah zzaahVar) {
        final zzabe zzabeVar = this.zzo;
        this.zzp.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaa
            @Override // java.lang.Runnable
            public final void run() {
                zzabeVar.zzb(zzaab.this);
            }
        });
    }
}
