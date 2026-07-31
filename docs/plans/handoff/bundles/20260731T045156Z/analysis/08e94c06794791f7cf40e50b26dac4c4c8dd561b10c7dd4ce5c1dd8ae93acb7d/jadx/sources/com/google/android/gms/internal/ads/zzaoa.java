package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.media3.common.C;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaoa implements zzada {
    private final int zza;
    private final List zzb;
    private final zzeg zzc;
    private final SparseIntArray zzd;
    private final zzaod zze;
    private final zzakg zzf;
    private final SparseArray zzg;
    private final SparseBooleanArray zzh;
    private final SparseBooleanArray zzi;
    private final zzanw zzj;
    private zzanv zzk;
    private zzadd zzl;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;

    static {
        int i = zzanz.zza;
    }

    @Deprecated
    public zzaoa() {
        this(1, 1, zzakg.zza, new zzem(0L), new zzamn(0), TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0020, code lost:
    
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzada
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzadb r7) throws java.io.IOException {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzeg r0 = r6.zzc
            byte[] r0 = r0.zzi()
            com.google.android.gms.internal.ads.zzacr r7 = (com.google.android.gms.internal.ads.zzacr) r7
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.zzh(r0, r2, r1, r2)
            r1 = r2
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L2b
            r3 = r2
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
            r7.zze(r1, r2)
            r7 = 1
            return r7
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoa.zza(com.google.android.gms.internal.ads.zzadb):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zzc(zzadd zzaddVar) {
        if (this.zza == 0) {
            zzaddVar = new zzakj(zzaddVar, this.zzf);
        }
        this.zzl = zzaddVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:99:0x019d, code lost:
    
        if (r4 == false) goto L97;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean, int] */
    @Override // com.google.android.gms.internal.ads.zzada
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(com.google.android.gms.internal.ads.zzadb r19, com.google.android.gms.internal.ads.zzaea r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaoa.zzd(com.google.android.gms.internal.ads.zzadb, com.google.android.gms.internal.ads.zzaea):int");
    }

    @Override // com.google.android.gms.internal.ads.zzada
    public final void zze(long j, long j2) {
        zzanv zzanvVar;
        List list = this.zzb;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            zzem zzemVar = (zzem) list.get(i);
            if (zzemVar.zzc() != C.TIME_UNSET) {
                long zza = zzemVar.zza();
                if (zza != C.TIME_UNSET) {
                    if (zza != 0) {
                        if (zza == j2) {
                        }
                    }
                }
            }
            zzemVar.zzd(j2);
        }
        if (j2 != 0 && (zzanvVar = this.zzk) != null) {
            zzanvVar.zzb(j2);
        }
        this.zzc.zza(0);
        this.zzd.clear();
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.zzg;
            if (i2 >= sparseArray.size()) {
                this.zzq = 0;
                return;
            } else {
                ((zzaof) sparseArray.valueAt(i2)).zzb();
                i2++;
            }
        }
    }

    final /* synthetic */ List zzg() {
        return this.zzb;
    }

    final /* synthetic */ zzaod zzh() {
        return this.zze;
    }

    final /* synthetic */ SparseArray zzi() {
        return this.zzg;
    }

    final /* synthetic */ SparseBooleanArray zzj() {
        return this.zzh;
    }

    final /* synthetic */ SparseBooleanArray zzk() {
        return this.zzi;
    }

    final /* synthetic */ zzadd zzl() {
        return this.zzl;
    }

    final /* synthetic */ int zzm() {
        return this.zzm;
    }

    final /* synthetic */ void zzn(int i) {
        this.zzm = i;
    }

    final /* synthetic */ void zzo(boolean z) {
        this.zzn = true;
    }

    final /* synthetic */ void zzp(int i) {
        this.zzr = i;
    }

    public zzaoa(int i, int i2, zzakg zzakgVar, zzem zzemVar, zzaod zzaodVar, int i3) {
        this.zze = zzaodVar;
        this.zza = i2;
        this.zzf = zzakgVar;
        this.zzb = Collections.singletonList(zzemVar);
        this.zzc = new zzeg(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzh = sparseBooleanArray;
        this.zzi = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.zzg = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzj = new zzanw(TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
        this.zzl = zzadd.zza;
        this.zzr = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray zza = zzaodVar.zza();
        int size = zza.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzg.put(zza.keyAt(i4), (zzaof) zza.valueAt(i4));
        }
        this.zzg.put(0, new zzanr(new zzanx(this)));
    }
}
