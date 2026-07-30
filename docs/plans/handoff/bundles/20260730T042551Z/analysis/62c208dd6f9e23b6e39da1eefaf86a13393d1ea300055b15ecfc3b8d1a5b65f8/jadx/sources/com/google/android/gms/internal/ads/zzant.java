package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzant implements zzacn {
    private final int zza;
    private final List zzb;
    private final zzdy zzc;
    private final SparseIntArray zzd;
    private final zzanw zze;
    private final zzakd zzf;
    private final SparseArray zzg;
    private final SparseBooleanArray zzh;
    private final SparseBooleanArray zzi;
    private final zzanq zzj;
    private zzanp zzk;
    private zzacq zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;

    @Deprecated
    public zzant() {
        this(1, 1, zzakd.zza, new zzef(0L), new zzamg(0), 112800);
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x01bb, code lost:
    
        if (r1 == false) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzaco r19, com.google.android.gms.internal.ads.zzadj r20) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzant.zzb(com.google.android.gms.internal.ads.zzaco, com.google.android.gms.internal.ads.zzadj):int");
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
        if (this.zza == 0) {
            zzacqVar = new zzakg(zzacqVar, this.zzf);
        }
        this.zzl = zzacqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacn
    public final void zzf(long j, long j2) {
        zzanp zzanpVar;
        int size = this.zzb.size();
        for (int i = 0; i < size; i++) {
            zzef zzefVar = (zzef) this.zzb.get(i);
            if (zzefVar.zzf() != -9223372036854775807L) {
                long zzd = zzefVar.zzd();
                if (zzd != -9223372036854775807L) {
                    if (zzd != 0) {
                        if (zzd == j2) {
                        }
                    }
                }
            }
            zzefVar.zzi(j2);
        }
        if (j2 != 0 && (zzanpVar = this.zzk) != null) {
            zzanpVar.zzd(j2);
        }
        this.zzc.zzI(0);
        this.zzd.clear();
        for (int i2 = 0; i2 < this.zzg.size(); i2++) {
            ((zzany) this.zzg.valueAt(i2)).zzc();
        }
        this.zzq = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzacn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzi(com.google.android.gms.internal.ads.zzaco r7) {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzdy r0 = r6.zzc
            byte[] r0 = r0.zzN()
            com.google.android.gms.internal.ads.zzacc r7 = (com.google.android.gms.internal.ads.zzacc) r7
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.zzm(r0, r2, r1, r2)
            r1 = 0
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L2b
            r3 = 0
        L14:
            r4 = 5
            if (r3 >= r4) goto L26
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L23
            int r1 = r1 + 1
            goto Lf
        L23:
            int r3 = r3 + 1
            goto L14
        L26:
            r7.zzo(r1, r2)
            r7 = 1
            return r7
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzant.zzi(com.google.android.gms.internal.ads.zzaco):boolean");
    }

    public zzant(int i, int i2, zzakd zzakdVar, zzef zzefVar, zzanw zzanwVar, int i3) {
        this.zze = zzanwVar;
        this.zza = i2;
        this.zzf = zzakdVar;
        this.zzb = Collections.singletonList(zzefVar);
        this.zzc = new zzdy(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzh = sparseBooleanArray;
        this.zzi = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.zzg = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzj = new zzanq(112800);
        this.zzl = zzacq.zza;
        this.zzr = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray zza = zzanwVar.zza();
        int size = zza.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzg.put(zza.keyAt(i4), (zzany) zza.valueAt(i4));
        }
        this.zzg.put(0, new zzanl(new zzanr(this)));
    }
}
