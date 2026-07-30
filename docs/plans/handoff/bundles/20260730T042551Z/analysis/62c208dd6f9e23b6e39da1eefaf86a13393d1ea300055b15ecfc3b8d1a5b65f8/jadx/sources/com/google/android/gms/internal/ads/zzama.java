package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzama implements zzacn {
    private final zzamb zza = new zzamb(null, 0);
    private final zzdy zzb = new zzdy(2786);
    private boolean zzc;

    @Override // com.google.android.gms.internal.ads.zzacn
    public final int zzb(zzaco zzacoVar, zzadj zzadjVar) {
        int zza = zzacoVar.zza(this.zzb.zzN(), 0, 2786);
        if (zza == -1) {
            return -1;
        }
        this.zzb.zzL(0);
        this.zzb.zzK(zza);
        if (!this.zzc) {
            this.zza.zzd(0L, 4);
            this.zzc = true;
        }
        this.zza.zza(this.zzb);
        return 0;
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
        this.zza.zzb(zzacqVar, new zzanx(Integer.MIN_VALUE, 0, 1));
        zzacqVar.zzD();
        zzacqVar.zzO(new zzadl(-9223372036854775807L, 0L));
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        this.zzc = false;
        this.zza.zze();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003d, code lost:
    
        r9.zzj();
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0046, code lost:
    
        if ((r5 - r3) >= 8192) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzi(com.google.android.gms.internal.ads.zzaco r9) {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzdy r0 = new com.google.android.gms.internal.ads.zzdy
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.zzN()
            r5 = r9
            com.google.android.gms.internal.ads.zzacc r5 = (com.google.android.gms.internal.ads.zzacc) r5
            r5.zzm(r4, r2, r1, r2)
            r0.zzL(r2)
            int r4 = r0.zzo()
            r6 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r6) goto L65
            r9.zzj()
            r4 = r9
            com.google.android.gms.internal.ads.zzacc r4 = (com.google.android.gms.internal.ads.zzacc) r4
            r4.zzl(r3, r2)
            r5 = r3
        L29:
            r1 = 0
        L2a:
            byte[] r6 = r0.zzN()
            r7 = 6
            r4.zzm(r6, r2, r7, r2)
            r0.zzL(r2)
            int r6 = r0.zzq()
            r7 = 2935(0xb77, float:4.113E-42)
            if (r6 == r7) goto L4d
            r9.zzj()
            int r5 = r5 + 1
            int r1 = r5 - r3
            r6 = 8192(0x2000, float:1.148E-41)
            if (r1 >= r6) goto L4c
            r4.zzl(r5, r2)
            goto L29
        L4c:
            return r2
        L4d:
            r6 = 1
            int r1 = r1 + r6
            r7 = 4
            if (r1 < r7) goto L53
            return r6
        L53:
            byte[] r6 = r0.zzN()
            int r6 = com.google.android.gms.internal.ads.zzabn.zzb(r6)
            r7 = -1
            if (r6 != r7) goto L5f
            return r2
        L5f:
            int r6 = r6 + (-6)
            r4.zzl(r6, r2)
            goto L2a
        L65:
            r4 = 3
            r0.zzM(r4)
            int r4 = r0.zzl()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.zzl(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzama.zzi(com.google.android.gms.internal.ads.zzaco):boolean");
    }
}
