package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzvl extends zzuc {
    private static final zzak zza;
    private final zzuw[] zzb;
    private final List zzc;
    private final zzbf[] zzd;
    private final ArrayList zze;
    private int zzf = -1;
    private long[][] zzg;
    private zzvj zzh;
    private final zzuf zzi;

    static {
        zzz zzzVar = new zzz();
        zzzVar.zza("MergingMediaSource");
        zza = zzzVar.zzc();
    }

    public zzvl(boolean z, boolean z2, zzuf zzufVar, zzuw... zzuwVarArr) {
        this.zzb = zzuwVarArr;
        this.zzi = zzufVar;
        this.zze = new ArrayList(Arrays.asList(zzuwVarArr));
        this.zzc = new ArrayList(zzuwVarArr.length);
        int i = 0;
        while (true) {
            int length = zzuwVarArr.length;
            if (i >= length) {
                this.zzd = new zzbf[length];
                this.zzg = new long[0][];
                new HashMap();
                zzgqt.zzb(8).zzb(2).zza();
                return;
            }
            this.zzc.add(new ArrayList());
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zzA(zzak zzakVar) {
        this.zzb[0].zzA(zzakVar);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final void zzD(zzus zzusVar) {
        zzvi zzviVar = (zzvi) zzusVar;
        int i = 0;
        while (true) {
            zzuw[] zzuwVarArr = this.zzb;
            if (i >= zzuwVarArr.length) {
                return;
            }
            List list = (List) this.zzc.get(i);
            zzus zza2 = zzviVar.zza(i);
            int i2 = 0;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                if (((zzvk) list.get(i2)).zzb().equals(zza2)) {
                    list.remove(i2);
                    break;
                }
                i2++;
            }
            zzuwVarArr[i].zzD(zzviVar.zza(i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final zzus zzG(zzuu zzuuVar, zzyv zzyvVar, long j) {
        zzbf[] zzbfVarArr = this.zzd;
        zzuw[] zzuwVarArr = this.zzb;
        int length = zzuwVarArr.length;
        zzus[] zzusVarArr = new zzus[length];
        int zze = zzbfVarArr[0].zze(zzuuVar.zza);
        for (int i = 0; i < length; i++) {
            zzuu zza2 = zzuuVar.zza(zzbfVarArr[i].zzf(zze));
            zzusVarArr[i] = zzuwVarArr[i].zzG(zza2, zzyvVar, j - this.zzg[zze][i]);
            ((List) this.zzc.get(i)).add(new zzvk(zza2, zzusVarArr[i], null));
        }
        return new zzvi(this.zzi, this.zzg[zze], zzusVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzuw
    public final zzak zzJ() {
        zzuw[] zzuwVarArr = this.zzb;
        return zzuwVarArr.length > 0 ? zzuwVarArr[0].zzJ() : zza;
    }

    @Override // com.google.android.gms.internal.ads.zzuc, com.google.android.gms.internal.ads.zztt
    protected final void zza(zzgz zzgzVar) {
        super.zza(zzgzVar);
        int i = 0;
        while (true) {
            zzuw[] zzuwVarArr = this.zzb;
            if (i >= zzuwVarArr.length) {
                return;
            }
            zzv(Integer.valueOf(i), zzuwVarArr[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuc, com.google.android.gms.internal.ads.zztt
    protected final void zzd() {
        super.zzd();
        Arrays.fill(this.zzd, (Object) null);
        this.zzf = -1;
        this.zzh = null;
        ArrayList arrayList = this.zze;
        arrayList.clear();
        Collections.addAll(arrayList, this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzuc, com.google.android.gms.internal.ads.zzuw
    public final void zzt() throws IOException {
        zzvj zzvjVar = this.zzh;
        if (zzvjVar != null) {
            throw zzvjVar;
        }
        super.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzuc
    protected final /* bridge */ /* synthetic */ void zzu(Object obj, zzuw zzuwVar, zzbf zzbfVar) {
        int i;
        Integer num = (Integer) obj;
        if (this.zzh != null) {
            return;
        }
        if (this.zzf == -1) {
            i = zzbfVar.zzc();
            this.zzf = i;
        } else {
            int zzc = zzbfVar.zzc();
            int i2 = this.zzf;
            if (zzc != i2) {
                this.zzh = new zzvj(0);
                return;
            }
            i = i2;
        }
        if (this.zzg.length == 0) {
            this.zzg = (long[][]) Array.newInstance((Class<?>) Long.TYPE, i, this.zzd.length);
        }
        ArrayList arrayList = this.zze;
        arrayList.remove(zzuwVar);
        zzbf[] zzbfVarArr = this.zzd;
        zzbfVarArr[num.intValue()] = zzbfVar;
        if (arrayList.isEmpty()) {
            zze(zzbfVarArr[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzuc
    protected final /* bridge */ /* synthetic */ zzuu zzx(Object obj, zzuu zzuuVar) {
        int intValue = ((Integer) obj).intValue();
        List list = this.zzc;
        List list2 = (List) list.get(intValue);
        for (int i = 0; i < list2.size(); i++) {
            if (((zzvk) list2.get(i)).zza().equals(zzuuVar)) {
                return ((zzvk) ((List) list.get(0)).get(i)).zza();
            }
        }
        return null;
    }
}
