package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.core.view.ViewCompat;
import androidx.media3.common.C;
import androidx.media3.exoplayer.trackselection.AdaptiveTrackSelection;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaku implements zzaki {
    private static final byte[] zza = {0, 7, 8, Ascii.SI};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzakn zzg;
    private final zzakm zzh;
    private final zzakt zzi;
    private Bitmap zzj;

    public zzaku(List list) {
        zzeg zzegVar = new zzeg((byte[]) list.get(0));
        int zzt = zzegVar.zzt();
        int zzt2 = zzegVar.zzt();
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
        this.zzg = new zzakn(AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 575, 0, AdaptiveTrackSelection.DEFAULT_MAX_HEIGHT_TO_DISCARD, 0, 575);
        this.zzh = new zzakm(0, zzd(), zze(), zzf());
        this.zzi = new zzakt(zzt, zzt2);
    }

    private static zzakm zzb(zzef zzefVar, int i) {
        int zzj;
        int zzj2;
        int i2;
        int i3;
        int i4 = 8;
        int zzj3 = zzefVar.zzj(8);
        zzefVar.zzh(8);
        int[] zzd = zzd();
        int[] zze = zze();
        int[] zzf = zzf();
        int i5 = i - 2;
        while (i5 > 0) {
            int zzj4 = zzefVar.zzj(i4);
            int zzj5 = zzefVar.zzj(i4);
            int[] iArr = (zzj5 & 128) != 0 ? zzd : (zzj5 & 64) != 0 ? zze : zzf;
            if ((zzj5 & 1) != 0) {
                i2 = zzefVar.zzj(i4);
                i3 = zzefVar.zzj(i4);
                zzj = zzefVar.zzj(i4);
                zzj2 = zzefVar.zzj(i4);
                i5 -= 6;
            } else {
                int zzj6 = zzefVar.zzj(6) << 2;
                int zzj7 = zzefVar.zzj(4) << 4;
                i5 -= 4;
                zzj = zzefVar.zzj(4) << 4;
                zzj2 = zzefVar.zzj(2) << 6;
                i2 = zzj6;
                i3 = zzj7;
            }
            if (i2 == 0) {
                zzj2 = 255;
            }
            if (i2 == 0) {
                zzj = 0;
            }
            if (i2 == 0) {
                i3 = 0;
            }
            double d = i2;
            String str = zzep.zza;
            double d2 = i3 - 128;
            double d3 = zzj - 128;
            iArr[zzj4] = zzg((byte) (255 - (zzj2 & 255)), Math.max(0, Math.min((int) (d + (1.402d * d2)), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) (d + (d3 * 1.772d)), 255)));
            zzj3 = zzj3;
            i4 = 8;
        }
        return new zzakm(zzj3, zzd, zze, zzf);
    }

    private static zzako zzc(zzef zzefVar) {
        byte[] bArr;
        int zzj = zzefVar.zzj(16);
        zzefVar.zzh(4);
        int zzj2 = zzefVar.zzj(2);
        boolean zzi = zzefVar.zzi();
        zzefVar.zzh(1);
        byte[] bArr2 = zzep.zzb;
        if (zzj2 == 1) {
            zzefVar.zzh(zzefVar.zzj(8) * 16);
        } else if (zzj2 == 0) {
            int zzj3 = zzefVar.zzj(16);
            int zzj4 = zzefVar.zzj(16);
            if (zzj3 > 0) {
                bArr2 = new byte[zzj3];
                zzefVar.zzn(bArr2, 0, zzj3);
            }
            if (zzj4 > 0) {
                bArr = new byte[zzj4];
                zzefVar.zzn(bArr, 0, zzj4);
                return new zzako(zzj, zzi, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzako(zzj, zzi, bArr2, bArr);
    }

    private static int[] zzd() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] zze() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            int i2 = i & 4;
            int i3 = i & 2;
            int i4 = i & 1;
            if (i < 8) {
                iArr[i] = zzg(255, 1 != i4 ? 0 : 255, i3 != 0 ? 255 : 0, i2 != 0 ? 255 : 0);
            } else {
                iArr[i] = zzg(255, 1 != i4 ? 0 : 127, i3 != 0 ? 127 : 0, i2 == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] zzf() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = zzg(63, 1 != (i & 1) ? 0 : 255, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & TsExtractor.TS_STREAM_TYPE_DTS_HD;
                if (i2 == 0) {
                    iArr[i] = zzg(255, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = zzg(127, (1 != (i & 1) ? 0 : 85) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = zzg(255, (1 != (i & 1) ? 0 : 43) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = zzg(255, (1 != (i & 1) ? 0 : 43) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    private static int zzg(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0228 A[LOOP:3: B:88:0x0172->B:101:0x0228, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0222 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ef A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void zzh(byte[] r24, int[] r25, int r26, int r27, int r28, android.graphics.Paint r29, android.graphics.Canvas r30) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaku.zzh(byte[], int[], int, int, int, android.graphics.Paint, android.graphics.Canvas):void");
    }

    private static byte[] zzi(int i, int i2, zzef zzefVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzefVar.zzj(i2);
        }
        return bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzaka zzakaVar;
        char c;
        char c2;
        char c3;
        int i3;
        zzakt zzaktVar;
        zzakn zzaknVar;
        int i4;
        int i5;
        ArrayList arrayList;
        int i6;
        zzakr zzakrVar;
        int i7;
        int i8;
        zzakr zzakrVar2;
        int i9;
        int zzj;
        int zzj2;
        int i10;
        int i11;
        int i12;
        int i13;
        zzef zzefVar = new zzef(bArr, i + i2);
        zzefVar.zzf(i);
        while (zzefVar.zzc() >= 48 && zzefVar.zzj(8) == 15) {
            zzakt zzaktVar2 = this.zzi;
            int zzj3 = zzefVar.zzj(8);
            int zzj4 = zzefVar.zzj(16);
            int zzj5 = zzefVar.zzj(16);
            int zze = zzefVar.zze() + zzj5;
            if (zzj5 * 8 > zzefVar.zzc()) {
                zzdt.zzc("DvbParser", "Data field length exceeds limit");
                zzefVar.zzh(zzefVar.zzc());
            } else {
                switch (zzj3) {
                    case 16:
                        if (zzj4 == zzaktVar2.zza) {
                            zzakp zzakpVar = zzaktVar2.zzi;
                            int zzj6 = zzefVar.zzj(8);
                            int zzj7 = zzefVar.zzj(4);
                            int zzj8 = zzefVar.zzj(2);
                            zzefVar.zzh(2);
                            SparseArray sparseArray = new SparseArray();
                            for (int i14 = zzj5 - 2; i14 > 0; i14 -= 6) {
                                int zzj9 = zzefVar.zzj(8);
                                zzefVar.zzh(8);
                                sparseArray.put(zzj9, new zzakq(zzefVar.zzj(16), zzefVar.zzj(16)));
                            }
                            zzakp zzakpVar2 = new zzakp(zzj6, zzj7, zzj8, sparseArray);
                            if (zzakpVar2.zzb != 0) {
                                zzaktVar2.zzi = zzakpVar2;
                                zzaktVar2.zzc.clear();
                                zzaktVar2.zzd.clear();
                                zzaktVar2.zze.clear();
                                break;
                            } else if (zzakpVar != null) {
                                if (zzakpVar.zza != zzakpVar2.zza) {
                                    zzaktVar2.zzi = zzakpVar2;
                                    break;
                                }
                            }
                        }
                        break;
                    case 17:
                        zzakp zzakpVar3 = zzaktVar2.zzi;
                        if (zzj4 == zzaktVar2.zza && zzakpVar3 != null) {
                            int zzj10 = zzefVar.zzj(8);
                            zzefVar.zzh(4);
                            boolean zzi = zzefVar.zzi();
                            zzefVar.zzh(3);
                            int zzj11 = zzefVar.zzj(16);
                            int zzj12 = zzefVar.zzj(16);
                            int zzj13 = zzefVar.zzj(3);
                            int zzj14 = zzefVar.zzj(3);
                            zzefVar.zzh(2);
                            int zzj15 = zzefVar.zzj(8);
                            int zzj16 = zzefVar.zzj(8);
                            int zzj17 = zzefVar.zzj(4);
                            int zzj18 = zzefVar.zzj(2);
                            zzefVar.zzh(2);
                            int i15 = zzj5 - 10;
                            SparseArray sparseArray2 = new SparseArray();
                            while (i15 > 0) {
                                int zzj19 = zzefVar.zzj(16);
                                int zzj20 = zzefVar.zzj(2);
                                int zzj21 = zzefVar.zzj(2);
                                int zzj22 = zzefVar.zzj(12);
                                zzefVar.zzh(4);
                                int zzj23 = zzefVar.zzj(12);
                                int i16 = i15 - 6;
                                if (zzj20 != 1) {
                                    if (zzj20 == 2) {
                                        zzj20 = 2;
                                    } else {
                                        i9 = zzj20;
                                        i15 = i16;
                                        zzj = 0;
                                        zzj2 = 0;
                                        sparseArray2.put(zzj19, new zzaks(i9, zzj21, zzj22, zzj23, zzj, zzj2));
                                    }
                                }
                                i15 -= 8;
                                i9 = zzj20;
                                zzj = zzefVar.zzj(8);
                                zzj2 = zzefVar.zzj(8);
                                sparseArray2.put(zzj19, new zzaks(i9, zzj21, zzj22, zzj23, zzj, zzj2));
                            }
                            zzakr zzakrVar3 = new zzakr(zzj10, zzi, zzj11, zzj12, zzj13, zzj14, zzj15, zzj16, zzj17, zzj18, sparseArray2);
                            if (zzakpVar3.zzb == 0 && (zzakrVar2 = (zzakr) zzaktVar2.zzc.get(zzakrVar3.zza)) != null) {
                                int i17 = 0;
                                while (true) {
                                    SparseArray sparseArray3 = zzakrVar2.zzj;
                                    if (i17 < sparseArray3.size()) {
                                        zzakrVar3.zzj.put(sparseArray3.keyAt(i17), (zzaks) sparseArray3.valueAt(i17));
                                        i17++;
                                    }
                                }
                            }
                            zzaktVar2.zzc.put(zzakrVar3.zza, zzakrVar3);
                            break;
                        }
                        break;
                    case 18:
                        if (zzj4 == zzaktVar2.zza) {
                            zzakm zzb2 = zzb(zzefVar, zzj5);
                            zzaktVar2.zzd.put(zzb2.zza, zzb2);
                            break;
                        } else if (zzj4 == zzaktVar2.zzb) {
                            zzakm zzb3 = zzb(zzefVar, zzj5);
                            zzaktVar2.zzf.put(zzb3.zza, zzb3);
                            break;
                        }
                        break;
                    case 19:
                        if (zzj4 == zzaktVar2.zza) {
                            zzako zzc2 = zzc(zzefVar);
                            zzaktVar2.zze.put(zzc2.zza, zzc2);
                            break;
                        } else if (zzj4 == zzaktVar2.zzb) {
                            zzako zzc3 = zzc(zzefVar);
                            zzaktVar2.zzg.put(zzc3.zza, zzc3);
                            break;
                        }
                        break;
                    case 20:
                        if (zzj4 == zzaktVar2.zza) {
                            zzefVar.zzh(4);
                            boolean zzi2 = zzefVar.zzi();
                            zzefVar.zzh(3);
                            int zzj24 = zzefVar.zzj(16);
                            int zzj25 = zzefVar.zzj(16);
                            if (zzi2) {
                                int zzj26 = zzefVar.zzj(16);
                                i10 = zzefVar.zzj(16);
                                i13 = zzefVar.zzj(16);
                                i11 = zzefVar.zzj(16);
                                i12 = zzj26;
                            } else {
                                i10 = zzj24;
                                i11 = zzj25;
                                i12 = 0;
                                i13 = 0;
                            }
                            zzaktVar2.zzh = new zzakn(zzj24, zzj25, i12, i10, i13, i11);
                            break;
                        }
                        break;
                }
                zzefVar.zzo(zze - zzefVar.zze());
            }
        }
        zzakt zzaktVar3 = this.zzi;
        zzakp zzakpVar4 = zzaktVar3.zzi;
        if (zzakpVar4 == null) {
            zzakaVar = new zzaka(zzgpe.zzi(), C.TIME_UNSET, C.TIME_UNSET);
        } else {
            zzakn zzaknVar2 = zzaktVar3.zzh;
            if (zzaknVar2 == null) {
                zzaknVar2 = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzaknVar2.zza + 1 != bitmap.getWidth() || zzaknVar2.zzb + 1 != this.zzj.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(zzaknVar2.zza + 1, zzaknVar2.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = createBitmap;
                this.zzf.setBitmap(createBitmap);
            }
            ArrayList arrayList2 = new ArrayList();
            SparseArray sparseArray4 = zzakpVar4.zzc;
            int i18 = 0;
            while (i18 < sparseArray4.size()) {
                Canvas canvas = this.zzf;
                canvas.save();
                zzakq zzakqVar = (zzakq) sparseArray4.valueAt(i18);
                zzakr zzakrVar4 = (zzakr) zzaktVar3.zzc.get(sparseArray4.keyAt(i18));
                int i19 = zzakqVar.zza + zzaknVar2.zzc;
                int i20 = zzakqVar.zzb + zzaknVar2.zze;
                int i21 = zzakrVar4.zzc;
                int i22 = i19 + i21;
                int min = Math.min(i22, zzaknVar2.zzd);
                int i23 = zzakrVar4.zzd;
                int i24 = i20 + i23;
                canvas.clipRect(i19, i20, min, Math.min(i24, zzaknVar2.zzf));
                int i25 = zzakrVar4.zzf;
                zzakm zzakmVar = (zzakm) zzaktVar3.zzd.get(i25);
                if (zzakmVar == null && (zzakmVar = (zzakm) zzaktVar3.zzf.get(i25)) == null) {
                    zzakmVar = this.zzh;
                }
                SparseArray sparseArray5 = zzakrVar4.zzj;
                SparseArray sparseArray6 = sparseArray4;
                int i26 = i22;
                int i27 = 0;
                while (i27 < sparseArray5.size()) {
                    int keyAt = sparseArray5.keyAt(i27);
                    SparseArray sparseArray7 = sparseArray5;
                    zzaks zzaksVar = (zzaks) sparseArray5.valueAt(i27);
                    int i28 = i21;
                    zzako zzakoVar = (zzako) zzaktVar3.zze.get(keyAt);
                    if (zzakoVar == null) {
                        zzakoVar = (zzako) zzaktVar3.zzg.get(keyAt);
                    }
                    if (zzakoVar != null) {
                        Paint paint = zzakoVar.zzb ? null : this.zzd;
                        int i29 = zzakrVar4.zze;
                        zzaktVar = zzaktVar3;
                        int i30 = zzaksVar.zza + i19;
                        int i31 = zzaksVar.zzb + i20;
                        int i32 = i19;
                        int[] iArr = i29 == 3 ? zzakmVar.zzd : i29 == 2 ? zzakmVar.zzc : zzakmVar.zzb;
                        i5 = i18;
                        i7 = i26;
                        arrayList = arrayList2;
                        zzaknVar = zzaknVar2;
                        i8 = i28;
                        i6 = i32;
                        i4 = i23;
                        zzakrVar = zzakrVar4;
                        zzh(zzakoVar.zzc, iArr, i29, i30, i31, paint, canvas);
                        zzh(zzakoVar.zzd, iArr, i29, i30, i31 + 1, paint, canvas);
                    } else {
                        zzaktVar = zzaktVar3;
                        zzaknVar = zzaknVar2;
                        i4 = i23;
                        i5 = i18;
                        arrayList = arrayList2;
                        i6 = i19;
                        zzakrVar = zzakrVar4;
                        i7 = i26;
                        i8 = i28;
                    }
                    i27++;
                    i19 = i6;
                    zzakrVar4 = zzakrVar;
                    i26 = i7;
                    sparseArray5 = sparseArray7;
                    zzaktVar3 = zzaktVar;
                    i18 = i5;
                    arrayList2 = arrayList;
                    zzaknVar2 = zzaknVar;
                    i23 = i4;
                    i21 = i8;
                }
                zzakt zzaktVar4 = zzaktVar3;
                zzakn zzaknVar3 = zzaknVar2;
                int i33 = i23;
                int i34 = i18;
                ArrayList arrayList3 = arrayList2;
                int i35 = i21;
                int i36 = i19;
                zzakr zzakrVar5 = zzakrVar4;
                int i37 = i26;
                float f = i20;
                float f2 = i36;
                if (zzakrVar5.zzb) {
                    int i38 = zzakrVar5.zze;
                    if (i38 == 3) {
                        i3 = zzakmVar.zzd[zzakrVar5.zzg];
                        c3 = 2;
                    } else {
                        c3 = 2;
                        i3 = i38 == 2 ? zzakmVar.zzc[zzakrVar5.zzh] : zzakmVar.zzb[zzakrVar5.zzi];
                    }
                    Paint paint2 = this.zze;
                    paint2.setColor(i3);
                    float f3 = i24;
                    float f4 = i37;
                    c = c3;
                    c2 = 3;
                    canvas.drawRect(f2, f, f4, f3, paint2);
                } else {
                    c = 2;
                    c2 = 3;
                }
                zzcl zzclVar = new zzcl();
                zzclVar.zzc(Bitmap.createBitmap(this.zzj, i36, i20, i35, i33));
                zzaknVar2 = zzaknVar3;
                float f5 = zzaknVar2.zza;
                zzclVar.zzi(f2 / f5);
                zzclVar.zzj(0);
                float f6 = zzaknVar2.zzb;
                zzclVar.zzf(f / f6, 0);
                zzclVar.zzg(0);
                zzclVar.zzm(i35 / f5);
                zzclVar.zzn(i33 / f6);
                arrayList3.add(zzclVar.zzr());
                canvas.drawColor(0, PorterDuff.Mode.CLEAR);
                canvas.restore();
                sparseArray4 = sparseArray6;
                arrayList2 = arrayList3;
                i18 = i34 + 1;
                zzaktVar3 = zzaktVar4;
            }
            zzakaVar = new zzaka(arrayList2, C.TIME_UNSET, C.TIME_UNSET);
        }
        zzdgVar.zza(zzakaVar);
    }
}
