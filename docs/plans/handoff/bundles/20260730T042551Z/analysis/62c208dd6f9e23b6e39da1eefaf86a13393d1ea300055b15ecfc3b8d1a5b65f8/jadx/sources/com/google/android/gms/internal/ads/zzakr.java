package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzakr implements zzakf {
    private static final byte[] zza = {0, 7, 8, 15};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzakk zzg;
    private final zzakj zzh;
    private final zzakq zzi;
    private Bitmap zzj;

    public zzakr(List list) {
        zzdy zzdyVar = new zzdy((byte[]) list.get(0));
        int zzq = zzdyVar.zzq();
        int zzq2 = zzdyVar.zzq();
        Paint paint = new Paint();
        this.zzd = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.zze = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.zzf = new Canvas();
        this.zzg = new zzakk(719, 575, 0, 719, 0, 575);
        this.zzh = new zzakj(0, zzg(), zzh(), zzi());
        this.zzi = new zzakq(zzq, zzq2);
    }

    private static int zzb(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static zzakj zzc(zzdx zzdxVar, int i) {
        int zzd;
        int zzd2;
        int i2;
        int i3;
        int i4 = 8;
        int zzd3 = zzdxVar.zzd(8);
        zzdxVar.zzn(8);
        int[] zzg = zzg();
        int[] zzh = zzh();
        int[] zzi = zzi();
        int i5 = i - 2;
        while (i5 > 0) {
            int zzd4 = zzdxVar.zzd(i4);
            int zzd5 = zzdxVar.zzd(i4);
            int i6 = i5 - 2;
            int[] iArr = (zzd5 & 128) != 0 ? zzg : (zzd5 & 64) != 0 ? zzh : zzi;
            if ((zzd5 & 1) != 0) {
                i2 = zzdxVar.zzd(i4);
                i3 = zzdxVar.zzd(i4);
                zzd = zzdxVar.zzd(i4);
                zzd2 = zzdxVar.zzd(i4);
                i5 = i6 - 4;
            } else {
                int zzd6 = zzdxVar.zzd(6) << 2;
                int zzd7 = zzdxVar.zzd(4) << 4;
                i5 = i6 - 2;
                zzd = zzdxVar.zzd(4) << 4;
                zzd2 = zzdxVar.zzd(2) << 6;
                i2 = zzd6;
                i3 = zzd7;
            }
            if (i2 == 0) {
                zzd2 = 255;
            }
            if (i2 == 0) {
                zzd = 0;
            }
            if (i2 == 0) {
                i3 = 0;
            }
            double d = i2;
            double d2 = i3 - 128;
            double d3 = zzd - 128;
            iArr[zzd4] = zzb((byte) (255 - (zzd2 & 255)), Math.max(0, Math.min((int) ((1.402d * d2) + d), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) ((d3 * 1.772d) + d), 255)));
            zzd3 = zzd3;
            i4 = 8;
        }
        return new zzakj(zzd3, zzg, zzh, zzi);
    }

    private static zzakl zzd(zzdx zzdxVar) {
        byte[] bArr;
        int zzd = zzdxVar.zzd(16);
        zzdxVar.zzn(4);
        int zzd2 = zzdxVar.zzd(2);
        boolean zzp = zzdxVar.zzp();
        zzdxVar.zzn(1);
        byte[] bArr2 = zzei.zzf;
        if (zzd2 == 1) {
            zzdxVar.zzn(zzdxVar.zzd(8) * 16);
        } else if (zzd2 == 0) {
            int zzd3 = zzdxVar.zzd(16);
            int zzd4 = zzdxVar.zzd(16);
            if (zzd3 > 0) {
                bArr2 = new byte[zzd3];
                zzdxVar.zzi(bArr2, 0, zzd3);
            }
            if (zzd4 > 0) {
                bArr = new byte[zzd4];
                zzdxVar.zzi(bArr, 0, zzd4);
                return new zzakl(zzd, zzp, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzakl(zzd, zzp, bArr2, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0224 A[LOOP:3: B:88:0x016c->B:100:0x0224, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x021e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0119 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0148 A[LOOP:2: B:41:0x00ac->B:53:0x0148, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01eb A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zze(byte[] r24, int[] r25, int r26, int r27, int r28, android.graphics.Paint r29, android.graphics.Canvas r30) {
        /*
            Method dump skipped, instructions count: 580
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakr.zze(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] zzf(int i, int i2, zzdx zzdxVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzdxVar.zzd(i2);
        }
        return bArr;
    }

    private static int[] zzg() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static int[] zzh() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            int i2 = i & 4;
            int i3 = i & 2;
            int i4 = i & 1;
            if (i < 8) {
                iArr[i] = zzb(255, 1 != i4 ? 0 : 255, i3 != 0 ? 255 : 0, i2 != 0 ? 255 : 0);
            } else {
                int i5 = ModuleDescriptor.MODULE_VERSION;
                int i6 = 1 != i4 ? 0 : ModuleDescriptor.MODULE_VERSION;
                int i7 = i3 != 0 ? ModuleDescriptor.MODULE_VERSION : 0;
                if (i2 == 0) {
                    i5 = 0;
                }
                iArr[i] = zzb(255, i6, i7, i5);
            }
        }
        return iArr;
    }

    private static int[] zzi() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = zzb(63, 1 != (i & 1) ? 0 : 255, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = zzb(255, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = zzb(ModuleDescriptor.MODULE_VERSION, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = zzb(255, (1 != (i & 1) ? 0 : 43) + ModuleDescriptor.MODULE_VERSION + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ModuleDescriptor.MODULE_VERSION + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ModuleDescriptor.MODULE_VERSION + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = zzb(255, (1 != (i & 1) ? 0 : 43) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        zzajx zzajxVar;
        SparseArray sparseArray;
        int i3;
        SparseArray sparseArray2;
        zzako zzakoVar;
        int i4;
        int zzd;
        int zzd2;
        int i5;
        int i6;
        int i7;
        int i8;
        zzdx zzdxVar = new zzdx(bArr, i + i2);
        zzdxVar.zzl(i);
        while (zzdxVar.zza() >= 48 && zzdxVar.zzd(8) == 15) {
            zzakq zzakqVar = this.zzi;
            int zzd3 = zzdxVar.zzd(8);
            int zzd4 = zzdxVar.zzd(16);
            int zzd5 = zzdxVar.zzd(16);
            int zzb2 = zzdxVar.zzb() + zzd5;
            if (zzd5 * 8 > zzdxVar.zza()) {
                zzdo.zzf("DvbParser", "Data field length exceeds limit");
                zzdxVar.zzn(zzdxVar.zza());
            } else {
                switch (zzd3) {
                    case 16:
                        if (zzd4 == zzakqVar.zza) {
                            zzakm zzakmVar = zzakqVar.zzi;
                            int zzd6 = zzdxVar.zzd(8);
                            int zzd7 = zzdxVar.zzd(4);
                            int zzd8 = zzdxVar.zzd(2);
                            zzdxVar.zzn(2);
                            SparseArray sparseArray3 = new SparseArray();
                            for (int i9 = zzd5 - 2; i9 > 0; i9 -= 6) {
                                int zzd9 = zzdxVar.zzd(8);
                                zzdxVar.zzn(8);
                                sparseArray3.put(zzd9, new zzakn(zzdxVar.zzd(16), zzdxVar.zzd(16)));
                            }
                            zzakm zzakmVar2 = new zzakm(zzd6, zzd7, zzd8, sparseArray3);
                            if (zzakmVar2.zzb != 0) {
                                zzakqVar.zzi = zzakmVar2;
                                zzakqVar.zzc.clear();
                                zzakqVar.zzd.clear();
                                zzakqVar.zze.clear();
                                break;
                            } else if (zzakmVar != null) {
                                if (zzakmVar.zza != zzakmVar2.zza) {
                                    zzakqVar.zzi = zzakmVar2;
                                    break;
                                }
                            }
                        }
                        break;
                    case 17:
                        zzakm zzakmVar3 = zzakqVar.zzi;
                        if (zzd4 == zzakqVar.zza && zzakmVar3 != null) {
                            int zzd10 = zzdxVar.zzd(8);
                            zzdxVar.zzn(4);
                            boolean zzp = zzdxVar.zzp();
                            zzdxVar.zzn(3);
                            int zzd11 = zzdxVar.zzd(16);
                            int zzd12 = zzdxVar.zzd(16);
                            int zzd13 = zzdxVar.zzd(3);
                            int zzd14 = zzdxVar.zzd(3);
                            zzdxVar.zzn(2);
                            int zzd15 = zzdxVar.zzd(8);
                            int zzd16 = zzdxVar.zzd(8);
                            int zzd17 = zzdxVar.zzd(4);
                            int zzd18 = zzdxVar.zzd(2);
                            zzdxVar.zzn(2);
                            int i10 = zzd5 - 10;
                            SparseArray sparseArray4 = new SparseArray();
                            while (i10 > 0) {
                                int zzd19 = zzdxVar.zzd(16);
                                int zzd20 = zzdxVar.zzd(2);
                                int zzd21 = zzdxVar.zzd(2);
                                int zzd22 = zzdxVar.zzd(12);
                                zzdxVar.zzn(4);
                                int zzd23 = zzdxVar.zzd(12);
                                i10 -= 6;
                                if (zzd20 != 1) {
                                    if (zzd20 == 2) {
                                        zzd20 = 2;
                                    } else {
                                        i4 = zzd20;
                                        zzd = 0;
                                        zzd2 = 0;
                                        sparseArray4.put(zzd19, new zzakp(i4, zzd21, zzd22, zzd23, zzd, zzd2));
                                    }
                                }
                                i10 -= 2;
                                i4 = zzd20;
                                zzd = zzdxVar.zzd(8);
                                zzd2 = zzdxVar.zzd(8);
                                sparseArray4.put(zzd19, new zzakp(i4, zzd21, zzd22, zzd23, zzd, zzd2));
                            }
                            zzako zzakoVar2 = new zzako(zzd10, zzp, zzd11, zzd12, zzd13, zzd14, zzd15, zzd16, zzd17, zzd18, sparseArray4);
                            if (zzakmVar3.zzb == 0 && (zzakoVar = (zzako) zzakqVar.zzc.get(zzakoVar2.zza)) != null) {
                                int i11 = 0;
                                while (true) {
                                    SparseArray sparseArray5 = zzakoVar.zzj;
                                    if (i11 < sparseArray5.size()) {
                                        zzakoVar2.zzj.put(sparseArray5.keyAt(i11), (zzakp) sparseArray5.valueAt(i11));
                                        i11++;
                                    }
                                }
                            }
                            zzakqVar.zzc.put(zzakoVar2.zza, zzakoVar2);
                            break;
                        }
                        break;
                    case 18:
                        if (zzd4 == zzakqVar.zza) {
                            zzakj zzc2 = zzc(zzdxVar, zzd5);
                            zzakqVar.zzd.put(zzc2.zza, zzc2);
                            break;
                        } else if (zzd4 == zzakqVar.zzb) {
                            zzakj zzc3 = zzc(zzdxVar, zzd5);
                            zzakqVar.zzf.put(zzc3.zza, zzc3);
                            break;
                        }
                        break;
                    case 19:
                        if (zzd4 == zzakqVar.zza) {
                            zzakl zzd24 = zzd(zzdxVar);
                            zzakqVar.zze.put(zzd24.zza, zzd24);
                            break;
                        } else if (zzd4 == zzakqVar.zzb) {
                            zzakl zzd25 = zzd(zzdxVar);
                            zzakqVar.zzg.put(zzd25.zza, zzd25);
                            break;
                        }
                        break;
                    case 20:
                        if (zzd4 == zzakqVar.zza) {
                            zzdxVar.zzn(4);
                            boolean zzp2 = zzdxVar.zzp();
                            zzdxVar.zzn(3);
                            int zzd26 = zzdxVar.zzd(16);
                            int zzd27 = zzdxVar.zzd(16);
                            if (zzp2) {
                                int zzd28 = zzdxVar.zzd(16);
                                i5 = zzdxVar.zzd(16);
                                i8 = zzdxVar.zzd(16);
                                i6 = zzdxVar.zzd(16);
                                i7 = zzd28;
                            } else {
                                i5 = zzd26;
                                i6 = zzd27;
                                i7 = 0;
                                i8 = 0;
                            }
                            zzakqVar.zzh = new zzakk(zzd26, zzd27, i7, i5, i8, i6);
                            break;
                        }
                        break;
                }
                zzdxVar.zzo(zzb2 - zzdxVar.zzb());
            }
        }
        zzakq zzakqVar2 = this.zzi;
        zzakm zzakmVar4 = zzakqVar2.zzi;
        if (zzakmVar4 == null) {
            zzajxVar = new zzajx(zzfxn.zzn(), -9223372036854775807L, -9223372036854775807L);
        } else {
            zzakk zzakkVar = zzakqVar2.zzh;
            if (zzakkVar == null) {
                zzakkVar = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzakkVar.zza + 1 != bitmap.getWidth() || zzakkVar.zzb + 1 != this.zzj.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(zzakkVar.zza + 1, zzakkVar.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = createBitmap;
                this.zzf.setBitmap(createBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray6 = zzakmVar4.zzc;
            int i12 = 0;
            while (i12 < sparseArray6.size()) {
                this.zzf.save();
                zzakn zzaknVar = (zzakn) sparseArray6.valueAt(i12);
                zzako zzakoVar3 = (zzako) this.zzi.zzc.get(sparseArray6.keyAt(i12));
                int i13 = zzaknVar.zza + zzakkVar.zzc;
                int i14 = zzaknVar.zzb + zzakkVar.zze;
                this.zzf.clipRect(i13, i14, Math.min(zzakoVar3.zzc + i13, zzakkVar.zzd), Math.min(zzakoVar3.zzd + i14, zzakkVar.zzf));
                zzakj zzakjVar = (zzakj) this.zzi.zzd.get(zzakoVar3.zzf);
                if (zzakjVar == null) {
                    zzakjVar = (zzakj) this.zzi.zzf.get(zzakoVar3.zzf);
                    if (zzakjVar == null) {
                        zzakjVar = this.zzh;
                    }
                }
                SparseArray sparseArray7 = zzakoVar3.zzj;
                int i15 = 0;
                while (i15 < sparseArray7.size()) {
                    int keyAt = sparseArray7.keyAt(i15);
                    zzakp zzakpVar = (zzakp) sparseArray7.valueAt(i15);
                    zzakl zzaklVar = (zzakl) this.zzi.zze.get(keyAt);
                    if (zzaklVar == null) {
                        zzaklVar = (zzakl) this.zzi.zzg.get(keyAt);
                    }
                    if (zzaklVar != null) {
                        Paint paint = zzaklVar.zzb ? null : this.zzd;
                        int i16 = zzakoVar3.zze;
                        int i17 = zzakpVar.zza + i13;
                        int i18 = zzakpVar.zzb + i14;
                        sparseArray = sparseArray6;
                        Canvas canvas = this.zzf;
                        sparseArray2 = sparseArray7;
                        i3 = i12;
                        int[] iArr = i16 == 3 ? zzakjVar.zzd : i16 == 2 ? zzakjVar.zzc : zzakjVar.zzb;
                        Paint paint2 = paint;
                        zze(zzaklVar.zzc, iArr, i16, i17, i18, paint2, canvas);
                        zze(zzaklVar.zzd, iArr, i16, i17, i18 + 1, paint2, canvas);
                    } else {
                        sparseArray = sparseArray6;
                        i3 = i12;
                        sparseArray2 = sparseArray7;
                    }
                    i15++;
                    sparseArray6 = sparseArray;
                    sparseArray7 = sparseArray2;
                    i12 = i3;
                }
                SparseArray sparseArray8 = sparseArray6;
                int i19 = i12;
                float f = i14;
                float f2 = i13;
                if (zzakoVar3.zzb) {
                    int i20 = zzakoVar3.zze;
                    this.zze.setColor(i20 == 3 ? zzakjVar.zzd[zzakoVar3.zzg] : i20 == 2 ? zzakjVar.zzc[zzakoVar3.zzh] : zzakjVar.zzb[zzakoVar3.zzi]);
                    this.zzf.drawRect(f2, f, zzakoVar3.zzc + i13, zzakoVar3.zzd + i14, this.zze);
                }
                zzcm zzcmVar = new zzcm();
                zzcmVar.zzc(Bitmap.createBitmap(this.zzj, i13, i14, zzakoVar3.zzc, zzakoVar3.zzd));
                zzcmVar.zzh(f2 / zzakkVar.zza);
                zzcmVar.zzi(0);
                zzcmVar.zze(f / zzakkVar.zzb, 0);
                zzcmVar.zzf(0);
                zzcmVar.zzk(zzakoVar3.zzc / zzakkVar.zza);
                zzcmVar.zzd(zzakoVar3.zzd / zzakkVar.zzb);
                arrayList.add(zzcmVar.zzp());
                this.zzf.drawColor(0, PorterDuff.Mode.CLEAR);
                this.zzf.restore();
                i12 = i19 + 1;
                sparseArray6 = sparseArray8;
            }
            zzajxVar = new zzajx(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        zzdbVar.zza(zzajxVar);
    }
}
