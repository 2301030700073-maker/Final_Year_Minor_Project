package com.google.android.gms.internal.ads;

import androidx.media3.common.C;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzamv implements zzamq {
    private static final float[] zza = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private final zzaoi zzb;
    private zzamu zzg;
    private long zzh;
    private String zzi;
    private zzaem zzj;
    private boolean zzk;
    private final boolean[] zzd = new boolean[4];
    private final zzamt zze = new zzamt(128);
    private long zzl = C.TIME_UNSET;
    private final zzanh zzf = new zzanh(178, 128);
    private final zzeg zzc = new zzeg();

    zzamv(zzaoi zzaoiVar, String str) {
        this.zzb = zzaoiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zza() {
        zzfm.zzi(this.zzd);
        this.zze.zza();
        zzamu zzamuVar = this.zzg;
        if (zzamuVar != null) {
            zzamuVar.zza();
        }
        this.zzf.zza();
        this.zzh = 0L;
        this.zzl = C.TIME_UNSET;
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzb(zzadd zzaddVar, zzaoe zzaoeVar) {
        zzaoeVar.zza();
        this.zzi = zzaoeVar.zzc();
        this.zzj = zzaddVar.zzu(zzaoeVar.zzb(), 2);
        this.zzg = new zzamu(this.zzj);
        this.zzb.zza(zzaddVar, zzaoeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zzc(long j, int i) {
        this.zzl = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x012d  */
    @Override // com.google.android.gms.internal.ads.zzamq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.internal.ads.zzeg r18) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamv.zzd(com.google.android.gms.internal.ads.zzeg):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamq
    public final void zze(boolean z) {
        zzamu zzamuVar = this.zzg;
        zzamuVar.getClass();
        if (z) {
            zzamuVar.zzd(this.zzh, 0, this.zzk);
            this.zzg.zza();
        }
    }
}
