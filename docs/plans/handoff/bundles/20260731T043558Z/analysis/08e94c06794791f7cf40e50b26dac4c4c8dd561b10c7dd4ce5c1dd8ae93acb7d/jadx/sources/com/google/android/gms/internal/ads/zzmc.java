package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import androidx.media3.common.C;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzmc {
    final /* synthetic */ zzme zza;
    private final int zzb;
    private Object zzc;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;

    public zzmc(zzme zzmeVar, int i) {
        Objects.requireNonNull(zzmeVar);
        this.zza = zzmeVar;
        this.zzb = i;
    }

    public final void zza() {
        long zzt;
        zzme zzmeVar = this.zza;
        zzbf zzq = zzmeVar.zzw().zzq();
        Object zzf = zzq.zzg() ? null : zzq.zzf(zzmeVar.zzw().zzr());
        zzbb zzw = zzmeVar.zzw();
        zzbb zzw2 = zzmeVar.zzw();
        zzbb zzw3 = zzmeVar.zzw();
        int zzy = zzw.zzy();
        int zzz = zzw2.zzz();
        long zzu = zzw3.zzu();
        if (zzf == null || zzy != -1) {
            zzt = zzy != -1 ? zzmeVar.zzw().zzt() : -9223372036854775807L;
        } else {
            zzq.zzo(zzf, zzmeVar.zzy());
            zzu -= zzep.zzp(0L);
            zzt = zzep.zzp(zzmeVar.zzy().zzd);
            zzy = -1;
        }
        boolean zza = zzmeVar.zzw().zza();
        if (!zza || zzt == C.TIME_UNSET || zzu < zzt) {
            zzmeVar.zzz().zzk(3);
            if (zza && zzt != C.TIME_UNSET) {
                zzmeVar.zzz().zzi(3, (int) Math.ceil((zzt - zzu) / zzmeVar.zzw().zzn().zzb));
            }
            this.zzf = false;
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzf && Objects.equals(zzf, this.zzc) && zzy == this.zzd && zzz == this.zze) {
            long j = elapsedRealtime - this.zzg;
            int i = this.zzb;
            if (j >= i) {
                zzmeVar.zzx().zzx(new zzmf(3, i));
                return;
            }
            return;
        }
        this.zzf = true;
        this.zzg = elapsedRealtime;
        this.zzc = zzf;
        this.zzd = zzy;
        this.zze = zzz;
        zzmeVar.zzz().zzk(3);
        zzmeVar.zzz().zzi(3, this.zzb);
    }
}
