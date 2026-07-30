package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.facebook.internal.Utility;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
final class zzans implements zzank {
    final /* synthetic */ zzant zza;
    private final zzdx zzb = new zzdx(new byte[5], 5);
    private final SparseArray zzc = new SparseArray();
    private final SparseIntArray zzd = new SparseIntArray();
    private final int zze;

    public zzans(zzant zzantVar, int i) {
        this.zza = zzantVar;
        this.zze = i;
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzdy zzdyVar) {
        List list;
        SparseArray sparseArray;
        int i;
        zzacq zzacqVar;
        SparseBooleanArray sparseBooleanArray;
        SparseBooleanArray sparseBooleanArray2;
        zzef zzefVar;
        zzacq zzacqVar2;
        SparseArray sparseArray2;
        SparseBooleanArray sparseBooleanArray3;
        zzanw zzanwVar;
        zzef zzefVar2;
        if (zzdyVar.zzm() != 2) {
            return;
        }
        list = this.zza.zzb;
        zzef zzefVar3 = (zzef) list.get(0);
        if ((zzdyVar.zzm() & 128) != 0) {
            zzdyVar.zzM(1);
            int zzq = zzdyVar.zzq();
            int i2 = 3;
            zzdyVar.zzM(3);
            zzdyVar.zzG(this.zzb, 2);
            this.zzb.zzn(3);
            int i3 = 13;
            this.zza.zzr = this.zzb.zzd(13);
            zzdyVar.zzG(this.zzb, 2);
            int i4 = 4;
            this.zzb.zzn(4);
            int i5 = 12;
            zzdyVar.zzM(this.zzb.zzd(12));
            this.zzc.clear();
            this.zzd.clear();
            int zzb = zzdyVar.zzb();
            while (zzb > 0) {
                int i6 = 5;
                zzdyVar.zzG(this.zzb, 5);
                zzdx zzdxVar = this.zzb;
                int zzd = zzdxVar.zzd(8);
                zzdxVar.zzn(i2);
                int zzd2 = this.zzb.zzd(i3);
                this.zzb.zzn(i4);
                int zzd3 = this.zzb.zzd(i5);
                int zzd4 = zzdyVar.zzd();
                int i7 = zzd4 + zzd3;
                String str = null;
                ArrayList arrayList = null;
                int i8 = -1;
                int i9 = 0;
                while (zzdyVar.zzd() < i7) {
                    int zzm = zzdyVar.zzm();
                    int zzd5 = zzdyVar.zzd() + zzdyVar.zzm();
                    if (zzd5 > i7) {
                        break;
                    }
                    if (zzm == i6) {
                        long zzu = zzdyVar.zzu();
                        if (zzu != 1094921523) {
                            if (zzu != 1161904947) {
                                if (zzu != 1094921524) {
                                    if (zzu == 1212503619) {
                                        zzefVar2 = zzefVar3;
                                        i8 = 36;
                                    }
                                    zzefVar2 = zzefVar3;
                                }
                                zzefVar2 = zzefVar3;
                                i8 = 172;
                            }
                            zzefVar2 = zzefVar3;
                            i8 = 135;
                        }
                        zzefVar2 = zzefVar3;
                        i8 = 129;
                    } else {
                        if (zzm != 106) {
                            if (zzm != 122) {
                                if (zzm == 127) {
                                    int zzm2 = zzdyVar.zzm();
                                    if (zzm2 != 21) {
                                        if (zzm2 == 14) {
                                            zzefVar2 = zzefVar3;
                                            i8 = 136;
                                        } else {
                                            if (zzm2 == 33) {
                                                zzefVar2 = zzefVar3;
                                                i8 = 139;
                                            }
                                            zzefVar2 = zzefVar3;
                                        }
                                    }
                                    zzefVar2 = zzefVar3;
                                    i8 = 172;
                                } else if (zzm == 123) {
                                    zzefVar2 = zzefVar3;
                                    i8 = 138;
                                } else if (zzm == 10) {
                                    String trim = zzdyVar.zzB(i2, StandardCharsets.UTF_8).trim();
                                    i9 = zzdyVar.zzm();
                                    zzefVar2 = zzefVar3;
                                    str = trim;
                                } else if (zzm == 89) {
                                    ArrayList arrayList2 = new ArrayList();
                                    while (zzdyVar.zzd() < zzd5) {
                                        String trim2 = zzdyVar.zzB(i2, StandardCharsets.UTF_8).trim();
                                        int zzm3 = zzdyVar.zzm();
                                        zzef zzefVar4 = zzefVar3;
                                        byte[] bArr = new byte[i4];
                                        zzdyVar.zzH(bArr, 0, i4);
                                        arrayList2.add(new zzanu(trim2, zzm3, bArr));
                                        zzefVar3 = zzefVar4;
                                        i2 = 3;
                                        i4 = 4;
                                    }
                                    zzefVar2 = zzefVar3;
                                    arrayList = arrayList2;
                                    i8 = 89;
                                } else {
                                    zzefVar2 = zzefVar3;
                                    if (zzm == 111) {
                                        i8 = 257;
                                    }
                                }
                            }
                            zzefVar2 = zzefVar3;
                            i8 = 135;
                        }
                        zzefVar2 = zzefVar3;
                        i8 = 129;
                    }
                    zzdyVar.zzM(zzd5 - zzdyVar.zzd());
                    zzefVar3 = zzefVar2;
                    i2 = 3;
                    i4 = 4;
                    i6 = 5;
                }
                zzef zzefVar5 = zzefVar3;
                zzdyVar.zzL(i7);
                zzanv zzanvVar = new zzanv(i8, str, i9, arrayList, Arrays.copyOfRange(zzdyVar.zzN(), zzd4, i7));
                if (zzd == 6 || zzd == 5) {
                    zzd = zzanvVar.zza;
                }
                zzb -= zzd3 + 5;
                sparseBooleanArray3 = this.zza.zzh;
                if (!sparseBooleanArray3.get(zzd2)) {
                    zzanwVar = this.zza.zze;
                    zzany zzb2 = zzanwVar.zzb(zzd, zzanvVar);
                    this.zzd.put(zzd2, zzd2);
                    this.zzc.put(zzd2, zzb2);
                }
                zzefVar3 = zzefVar5;
                i2 = 3;
                i4 = 4;
                i5 = 12;
                i3 = 13;
            }
            zzef zzefVar6 = zzefVar3;
            int size = this.zzd.size();
            int i10 = 0;
            while (i10 < size) {
                SparseIntArray sparseIntArray = this.zzd;
                zzant zzantVar = this.zza;
                int keyAt = sparseIntArray.keyAt(i10);
                int valueAt = sparseIntArray.valueAt(i10);
                sparseBooleanArray = zzantVar.zzh;
                sparseBooleanArray.put(keyAt, true);
                sparseBooleanArray2 = this.zza.zzi;
                sparseBooleanArray2.put(valueAt, true);
                zzany zzanyVar = (zzany) this.zzc.valueAt(i10);
                if (zzanyVar != null) {
                    zzacqVar2 = this.zza.zzl;
                    zzanx zzanxVar = new zzanx(zzq, keyAt, Utility.DEFAULT_STREAM_BUFFER_SIZE);
                    zzefVar = zzefVar6;
                    zzanyVar.zzb(zzefVar, zzacqVar2, zzanxVar);
                    sparseArray2 = this.zza.zzg;
                    sparseArray2.put(valueAt, zzanyVar);
                } else {
                    zzefVar = zzefVar6;
                }
                i10++;
                zzefVar6 = zzefVar;
            }
            zzant zzantVar2 = this.zza;
            int i11 = this.zze;
            sparseArray = zzantVar2.zzg;
            sparseArray.remove(i11);
            this.zza.zzm = 0;
            zzant zzantVar3 = this.zza;
            i = zzantVar3.zzm;
            if (i == 0) {
                zzacqVar = zzantVar3.zzl;
                zzacqVar.zzD();
                this.zza.zzn = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzef zzefVar, zzacq zzacqVar, zzanx zzanxVar) {
    }
}
