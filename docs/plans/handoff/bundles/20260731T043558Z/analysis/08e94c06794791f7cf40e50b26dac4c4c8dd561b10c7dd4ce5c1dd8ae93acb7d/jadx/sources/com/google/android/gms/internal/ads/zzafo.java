package com.google.android.gms.internal.ads;

import androidx.media3.common.C;
import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.IOException;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzafo implements zzada {
    private zzadd zzf;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private zzafm zzo;
    private zzafs zzp;
    private final zzeg zza = new zzeg(4);
    private final zzeg zzb = new zzeg(9);
    private final zzeg zzc = new zzeg(11);
    private final zzeg zzd = new zzeg();
    private final zzafp zze = new zzafp();
    private int zzg = 1;

    static {
        int i = zzafn.zza;
    }

    private final zzeg zzg(zzadb zzadbVar) throws IOException {
        zzeg zzegVar = this.zzd;
        if (this.zzl > zzegVar.zzj()) {
            int zzj = zzegVar.zzj();
            zzegVar.zzb(new byte[Math.max(zzj + zzj, this.zzl)], 0);
        } else {
            zzegVar.zzh(0);
        }
        zzegVar.zzf(this.zzl);
        zzadbVar.zzc(zzegVar.zzi(), 0, this.zzl);
        return zzegVar;
    }

    @RequiresNonNull({"extractorOutput"})
    private final void zzh() {
        if (this.zzn) {
            return;
        }
        this.zzf.zzw(new zzaec(C.TIME_UNSET, 0L));
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final boolean zza(zzadb zzadbVar) throws IOException {
        zzeg zzegVar = this.zza;
        zzacr zzacrVar = (zzacr) zzadbVar;
        zzacrVar.zzh(zzegVar.zzi(), 0, 3, false);
        zzegVar.zzh(0);
        if (zzegVar.zzx() != 4607062) {
            return false;
        }
        zzacrVar.zzh(zzegVar.zzi(), 0, 2, false);
        zzegVar.zzh(0);
        if ((zzegVar.zzt() & ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) != 0) {
            return false;
        }
        zzacrVar.zzh(zzegVar.zzi(), 0, 4, false);
        zzegVar.zzh(0);
        int zzB = zzegVar.zzB();
        zzadbVar.zzl();
        zzacrVar.zzj(zzB, false);
        zzacrVar.zzh(zzegVar.zzi(), 0, 4, false);
        zzegVar.zzh(0);
        return zzegVar.zzB() == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        this.zzf = zzaddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        if (j == 0) {
            this.zzg = 1;
            this.zzh = false;
        } else {
            this.zzg = 3;
        }
        this.zzj = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzada
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzadb r17, com.google.android.gms.internal.ads.zzaea r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafo.zzd(com.google.android.gms.internal.ads.zzadb, com.google.android.gms.internal.ads.zzaea):int");
    }
}
