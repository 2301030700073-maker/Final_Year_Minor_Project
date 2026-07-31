package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.media3.extractor.ts.TsExtractor;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzany implements zzanq {
    final /* synthetic */ zzaoa zza;
    private final zzef zzb;
    private final SparseArray zzc;
    private final SparseIntArray zzd;
    private final int zze;

    public zzany(zzaoa zzaoaVar, int i) {
        Objects.requireNonNull(zzaoaVar);
        this.zza = zzaoaVar;
        this.zzb = new zzef(new byte[5], 5);
        this.zzc = new SparseArray();
        this.zzd = new SparseIntArray();
        this.zze = i;
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zza(zzem zzemVar, zzadd zzaddVar, zzaoe zzaoeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzanq
    public final void zzb(zzeg zzegVar) {
        zzem zzemVar;
        int i;
        zzem zzemVar2;
        int i2;
        zzef zzefVar;
        int i3;
        if (zzegVar.zzs() == 2) {
            zzaoa zzaoaVar = this.zza;
            zzem zzemVar3 = (zzem) zzaoaVar.zzg().get(0);
            if ((zzegVar.zzs() & 128) != 0) {
                zzegVar.zzk(1);
                int zzt = zzegVar.zzt();
                int i4 = 3;
                zzegVar.zzk(3);
                zzef zzefVar2 = this.zzb;
                zzegVar.zzl(zzefVar2, 2);
                zzefVar2.zzh(3);
                int i5 = 13;
                zzaoaVar.zzp(zzefVar2.zzj(13));
                zzegVar.zzl(zzefVar2, 2);
                int i6 = 4;
                zzefVar2.zzh(4);
                int i7 = 12;
                zzegVar.zzk(zzefVar2.zzj(12));
                SparseArray sparseArray = this.zzc;
                sparseArray.clear();
                SparseIntArray sparseIntArray = this.zzd;
                sparseIntArray.clear();
                int zzd = zzegVar.zzd();
                while (zzd > 0) {
                    int i8 = 5;
                    zzegVar.zzl(zzefVar2, 5);
                    int zzj = zzefVar2.zzj(8);
                    zzefVar2.zzh(i4);
                    int zzj2 = zzefVar2.zzj(i5);
                    zzefVar2.zzh(i6);
                    int zzj3 = zzefVar2.zzj(i7);
                    int zzg = zzegVar.zzg();
                    int i9 = zzg + zzj3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i10 = -1;
                    int i11 = 0;
                    while (zzegVar.zzg() < i9) {
                        int zzs = zzegVar.zzs();
                        int zzg2 = zzegVar.zzg() + zzegVar.zzs();
                        if (zzg2 > i9) {
                            break;
                        }
                        if (zzs == i8) {
                            long zzz = zzegVar.zzz();
                            if (zzz != 1094921523) {
                                if (zzz != 1161904947) {
                                    if (zzz != 1094921524) {
                                        if (zzz == 1212503619) {
                                            i3 = 36;
                                            i10 = i3;
                                        }
                                        zzemVar2 = zzemVar3;
                                        i2 = zzt;
                                        zzefVar = zzefVar2;
                                    }
                                    zzemVar2 = zzemVar3;
                                    i2 = zzt;
                                    zzefVar = zzefVar2;
                                    i10 = 172;
                                }
                                zzemVar2 = zzemVar3;
                                i2 = zzt;
                                zzefVar = zzefVar2;
                                i10 = 135;
                            }
                            zzemVar2 = zzemVar3;
                            i2 = zzt;
                            zzefVar = zzefVar2;
                            i10 = 129;
                        } else {
                            if (zzs != 106) {
                                if (zzs != 122) {
                                    if (zzs == 127) {
                                        int zzs2 = zzegVar.zzs();
                                        if (zzs2 != 21) {
                                            if (zzs2 == 14) {
                                                i3 = TsExtractor.TS_STREAM_TYPE_DTS_HD;
                                            } else {
                                                if (zzs2 == 33) {
                                                    i3 = TsExtractor.TS_STREAM_TYPE_DTS_UHD;
                                                }
                                                zzemVar2 = zzemVar3;
                                                i2 = zzt;
                                                zzefVar = zzefVar2;
                                            }
                                            i10 = i3;
                                            zzemVar2 = zzemVar3;
                                            i2 = zzt;
                                            zzefVar = zzefVar2;
                                        }
                                        zzemVar2 = zzemVar3;
                                        i2 = zzt;
                                        zzefVar = zzefVar2;
                                        i10 = 172;
                                    } else if (zzs == 123) {
                                        i3 = TsExtractor.TS_STREAM_TYPE_DTS;
                                        i10 = i3;
                                        zzemVar2 = zzemVar3;
                                        i2 = zzt;
                                        zzefVar = zzefVar2;
                                    } else if (zzs == 10) {
                                        String trim = zzegVar.zzK(3, StandardCharsets.UTF_8).trim();
                                        i11 = zzegVar.zzs();
                                        str = trim;
                                        zzemVar2 = zzemVar3;
                                        i2 = zzt;
                                        zzefVar = zzefVar2;
                                    } else {
                                        if (zzs == 89) {
                                            ArrayList arrayList2 = new ArrayList();
                                            while (zzegVar.zzg() < zzg2) {
                                                zzef zzefVar3 = zzefVar2;
                                                String trim2 = zzegVar.zzK(3, StandardCharsets.UTF_8).trim();
                                                int zzs3 = zzegVar.zzs();
                                                zzem zzemVar4 = zzemVar3;
                                                byte[] bArr = new byte[4];
                                                zzegVar.zzm(bArr, 0, 4);
                                                arrayList2.add(new zzaob(trim2, zzs3, bArr));
                                                zzemVar3 = zzemVar4;
                                                zzefVar2 = zzefVar3;
                                                zzt = zzt;
                                            }
                                            zzemVar2 = zzemVar3;
                                            i2 = zzt;
                                            zzefVar = zzefVar2;
                                            arrayList = arrayList2;
                                            i10 = 89;
                                        } else {
                                            zzemVar2 = zzemVar3;
                                            i2 = zzt;
                                            zzefVar = zzefVar2;
                                            if (zzs == 111) {
                                                i10 = 257;
                                            }
                                        }
                                        zzegVar.zzk(zzg2 - zzegVar.zzg());
                                        zzemVar3 = zzemVar2;
                                        zzefVar2 = zzefVar;
                                        zzt = i2;
                                        i8 = 5;
                                    }
                                }
                                zzemVar2 = zzemVar3;
                                i2 = zzt;
                                zzefVar = zzefVar2;
                                i10 = 135;
                            }
                            zzemVar2 = zzemVar3;
                            i2 = zzt;
                            zzefVar = zzefVar2;
                            i10 = 129;
                        }
                        zzegVar.zzk(zzg2 - zzegVar.zzg());
                        zzemVar3 = zzemVar2;
                        zzefVar2 = zzefVar;
                        zzt = i2;
                        i8 = 5;
                    }
                    zzem zzemVar5 = zzemVar3;
                    int i12 = zzt;
                    zzef zzefVar4 = zzefVar2;
                    zzegVar.zzh(i9);
                    zzaoc zzaocVar = new zzaoc(i10, str, i11, arrayList, Arrays.copyOfRange(zzegVar.zzi(), zzg, i9));
                    if (zzj == 6 || zzj == 5) {
                        zzj = zzaocVar.zza;
                    }
                    zzd -= zzj3 + 5;
                    if (!zzaoaVar.zzj().get(zzj2)) {
                        zzaof zzb = zzaoaVar.zzh().zzb(zzj, zzaocVar);
                        sparseIntArray.put(zzj2, zzj2);
                        sparseArray.put(zzj2, zzb);
                    }
                    i6 = 4;
                    zzemVar3 = zzemVar5;
                    zzefVar2 = zzefVar4;
                    zzt = i12;
                    i4 = 3;
                    i5 = 13;
                    i7 = 12;
                }
                zzem zzemVar6 = zzemVar3;
                int i13 = zzt;
                int size = sparseIntArray.size();
                int i14 = 0;
                while (i14 < size) {
                    int keyAt = sparseIntArray.keyAt(i14);
                    int valueAt = sparseIntArray.valueAt(i14);
                    zzaoaVar.zzj().put(keyAt, true);
                    zzaoaVar.zzk().put(valueAt, true);
                    zzaof zzaofVar = (zzaof) sparseArray.valueAt(i14);
                    if (zzaofVar != null) {
                        i = i13;
                        zzemVar = zzemVar6;
                        zzaofVar.zza(zzemVar, zzaoaVar.zzl(), new zzaoe(i, keyAt, 8192));
                        zzaoaVar.zzi().put(valueAt, zzaofVar);
                    } else {
                        zzemVar = zzemVar6;
                        i = i13;
                    }
                    i14++;
                    zzemVar6 = zzemVar;
                    i13 = i;
                }
                zzaoaVar.zzi().remove(this.zze);
                zzaoaVar.zzn(0);
                if (zzaoaVar.zzm() == 0) {
                    zzaoaVar.zzl().zzv();
                    zzaoaVar.zzo(true);
                }
            }
        }
    }
}
