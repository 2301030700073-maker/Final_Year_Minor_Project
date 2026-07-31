package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzoq {
    final /* synthetic */ zzor zza;
    private final String zzb;
    private int zzc;
    private long zzd;
    private zzuu zze;
    private boolean zzf;
    private boolean zzg;

    public zzoq(zzor zzorVar, String str, int i, zzuu zzuuVar) {
        Objects.requireNonNull(zzorVar);
        this.zza = zzorVar;
        this.zzb = str;
        this.zzc = i;
        this.zzd = zzuuVar == null ? -1L : zzuuVar.zzd;
        if (zzuuVar == null || !zzuuVar.zzb()) {
            return;
        }
        this.zze = zzuuVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 < r9.zza()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzbf r8, com.google.android.gms.internal.ads.zzbf r9) {
        /*
            r7 = this;
            int r0 = r7.zzc
            int r1 = r8.zza()
            r2 = 0
            r3 = -1
            if (r0 < r1) goto L13
            int r8 = r9.zza()
            if (r0 >= r8) goto L11
            goto L44
        L11:
            r0 = r3
            goto L44
        L13:
            com.google.android.gms.internal.ads.zzor r1 = r7.zza
            com.google.android.gms.internal.ads.zzbe r4 = r1.zzj()
            r5 = 0
            r8.zzb(r0, r4, r5)
            com.google.android.gms.internal.ads.zzbe r0 = r1.zzj()
            int r0 = r0.zzn
        L24:
            com.google.android.gms.internal.ads.zzbe r4 = r1.zzj()
            int r4 = r4.zzo
            if (r0 > r4) goto L11
            java.lang.Object r4 = r8.zzf(r0)
            int r4 = r9.zze(r4)
            if (r4 == r3) goto L41
            com.google.android.gms.internal.ads.zzbd r8 = r1.zzk()
            com.google.android.gms.internal.ads.zzbd r8 = r9.zzd(r4, r8, r2)
            int r0 = r8.zzc
            goto L44
        L41:
            int r0 = r0 + 1
            goto L24
        L44:
            r7.zzc = r0
            if (r0 != r3) goto L49
            return r2
        L49:
            com.google.android.gms.internal.ads.zzuu r8 = r7.zze
            r0 = 1
            if (r8 != 0) goto L4f
            return r0
        L4f:
            java.lang.Object r8 = r8.zza
            int r8 = r9.zze(r8)
            if (r8 == r3) goto L58
            return r0
        L58:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoq.zza(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzbf):boolean");
    }

    public final boolean zzb(int i, zzuu zzuuVar) {
        if (zzuuVar == null) {
            return i == this.zzc;
        }
        zzuu zzuuVar2 = this.zze;
        return zzuuVar2 == null ? !zzuuVar.zzb() && zzuuVar.zzd == this.zzd : zzuuVar.zzd == zzuuVar2.zzd && zzuuVar.zzb == zzuuVar2.zzb && zzuuVar.zzc == zzuuVar2.zzc;
    }

    public final void zzc(int i, zzuu zzuuVar) {
        if (this.zzd == -1 && i == this.zzc && zzuuVar != null) {
            zzor zzorVar = this.zza;
            long j = zzuuVar.zzd;
            if (j >= zzorVar.zzi()) {
                this.zzd = j;
            }
        }
    }

    public final boolean zzd(zzmj zzmjVar) {
        zzuu zzuuVar = zzmjVar.zzd;
        if (zzuuVar == null) {
            return this.zzc != zzmjVar.zzc;
        }
        long j = this.zzd;
        if (j == -1) {
            return false;
        }
        long j2 = zzuuVar.zzd;
        if (j2 > j) {
            return true;
        }
        if (this.zze == null) {
            return false;
        }
        zzbf zzbfVar = zzmjVar.zzb;
        int zze = zzbfVar.zze(zzuuVar.zza);
        int zze2 = zzbfVar.zze(this.zze.zza);
        zzuu zzuuVar2 = this.zze;
        if (j2 < zzuuVar2.zzd || zze < zze2) {
            return false;
        }
        if (zze > zze2) {
            return true;
        }
        if (!zzuuVar.zzb()) {
            int i = zzuuVar.zze;
            return i == -1 || i > zzuuVar2.zzb;
        }
        int i2 = zzuuVar.zzb;
        int i3 = zzuuVar.zzc;
        int i4 = zzuuVar2.zzb;
        if (i2 <= i4) {
            return i2 == i4 && i3 > zzuuVar2.zzc;
        }
        return true;
    }

    final /* synthetic */ String zze() {
        return this.zzb;
    }

    final /* synthetic */ int zzf() {
        return this.zzc;
    }

    final /* synthetic */ long zzg() {
        return this.zzd;
    }

    final /* synthetic */ zzuu zzh() {
        return this.zze;
    }

    final /* synthetic */ boolean zzi() {
        return this.zzf;
    }

    final /* synthetic */ void zzj(boolean z) {
        this.zzf = true;
    }

    final /* synthetic */ boolean zzk() {
        return this.zzg;
    }

    final /* synthetic */ void zzl(boolean z) {
        this.zzg = true;
    }
}
