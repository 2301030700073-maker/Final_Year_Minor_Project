package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzmd {
    final /* synthetic */ zzme zza;
    private final int zzb;
    private int zzc;
    private boolean zzd;
    private long zze;

    public zzmd(zzme zzmeVar, int i) {
        Objects.requireNonNull(zzmeVar);
        this.zza = zzmeVar;
        this.zzb = i;
    }

    public final void zza() {
        zzme zzmeVar = this.zza;
        int zzi = zzmeVar.zzw().zzi();
        if (!zzmeVar.zzw().zzk() || zzmeVar.zzw().zzh() == 1 || zzmeVar.zzw().zzh() == 4 || zzi == 0 || zzi == 1) {
            if (this.zzd) {
                zzmeVar.zzz().zzk(4);
            }
            this.zzd = false;
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.zzd && this.zzc == zzi) {
            long j = elapsedRealtime - this.zze;
            int i = this.zzb;
            if (j >= i) {
                zzmeVar.zzx().zzx(new zzmf(4, i));
                return;
            }
            return;
        }
        this.zzd = true;
        this.zze = elapsedRealtime;
        this.zzc = zzi;
        zzmeVar.zzz().zzk(4);
        zzmeVar.zzz().zzi(4, this.zzb);
    }
}
