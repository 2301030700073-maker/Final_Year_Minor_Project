package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzma {
    final /* synthetic */ zzme zza;
    private final int zzb;
    private Object zzc;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private boolean zzh;
    private long zzi;

    public zzma(zzme zzmeVar, int i) {
        Objects.requireNonNull(zzmeVar);
        this.zza = zzmeVar;
        this.zzb = i;
    }

    public final void zza() {
        zzme zzmeVar = this.zza;
        if (zzmeVar.zzw().zzh() != 2 || !zzmeVar.zzw().zzk() || zzmeVar.zzw().zzi() != 0) {
            if (this.zzh) {
                zzmeVar.zzz().zzk(1);
            }
            this.zzh = false;
            return;
        }
        zzbf zzq = zzmeVar.zzw().zzq();
        Object zzf = zzq.zzg() ? null : zzq.zzf(zzmeVar.zzw().zzr());
        zzbb zzw = zzmeVar.zzw();
        zzbb zzw2 = zzmeVar.zzw();
        zzbb zzw3 = zzmeVar.zzw();
        zzbb zzw4 = zzmeVar.zzw();
        int zzy = zzw.zzy();
        int zzz = zzw2.zzz();
        long zzv = zzw3.zzv();
        long max = Math.max(0L, zzmeVar.zzw().zzw() - Math.max(0L, zzv - zzw4.zzu()));
        if (zzf != null && zzy == -1) {
            zzq.zzo(zzf, zzmeVar.zzy());
            zzv -= zzep.zzp(0L);
            zzy = -1;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzh && Objects.equals(zzf, this.zzc) && zzy == this.zzd && zzz == this.zze && zzv == this.zzf && max == this.zzg) {
            long j = elapsedRealtime - this.zzi;
            int i = this.zzb;
            if (j >= i) {
                zzmeVar.zzx().zzx(new zzmf(1, i));
                return;
            }
            return;
        }
        this.zzh = true;
        this.zzi = elapsedRealtime;
        this.zzc = zzf;
        this.zzd = zzy;
        this.zze = zzz;
        this.zzf = zzv;
        this.zzg = max;
        zzmeVar.zzz().zzk(1);
        zzmeVar.zzz().zzi(1, this.zzb);
    }
}
