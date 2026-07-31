package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzmb {
    final /* synthetic */ zzme zza;
    private final int zzb;
    private Object zzc;
    private int zzd;
    private int zze;
    private long zzf;
    private boolean zzg;
    private long zzh;

    public zzmb(zzme zzmeVar, int i) {
        Objects.requireNonNull(zzmeVar);
        this.zza = zzmeVar;
        this.zzb = i;
    }

    public final void zza() {
        zzme zzmeVar = this.zza;
        if (!zzmeVar.zzw().zza()) {
            if (this.zzg) {
                zzmeVar.zzz().zzk(2);
            }
            this.zzg = false;
            return;
        }
        zzbf zzq = zzmeVar.zzw().zzq();
        Object zzf = zzq.zzg() ? null : zzq.zzf(zzmeVar.zzw().zzr());
        zzbb zzw = zzmeVar.zzw();
        zzbb zzw2 = zzmeVar.zzw();
        zzbb zzw3 = zzmeVar.zzw();
        int zzy = zzw.zzy();
        int zzz = zzw2.zzz();
        long zzu = zzw3.zzu();
        if (zzf != null && zzy == -1) {
            zzq.zzo(zzf, zzmeVar.zzy());
            zzu -= zzep.zzp(0L);
            zzy = -1;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzg && Objects.equals(zzf, this.zzc) && zzy == this.zzd && zzz == this.zze && zzu == this.zzf) {
            long j = elapsedRealtime - this.zzh;
            int i = this.zzb;
            if (j >= i) {
                zzmeVar.zzx().zzx(new zzmf(2, i));
                return;
            }
            return;
        }
        this.zzg = true;
        this.zzh = elapsedRealtime;
        this.zzc = zzf;
        this.zzd = zzy;
        this.zze = zzz;
        this.zzf = zzu;
        zzmeVar.zzz().zzk(2);
        zzmeVar.zzz().zzi(2, this.zzb);
    }
}
