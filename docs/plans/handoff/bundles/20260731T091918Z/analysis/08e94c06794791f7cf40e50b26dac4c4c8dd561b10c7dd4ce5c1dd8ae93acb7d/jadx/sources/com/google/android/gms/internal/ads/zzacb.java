package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.ts.TsExtractor;
import com.facebook.imageutils.JfifUtil;
import java.nio.ByteBuffer;
import okio.Utf8;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzacb {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    private static final int[] zzd = {24000, 22050, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, DilithiumEngine.DilithiumPolyT1PackedBytes, 384, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, 104, 121, TsExtractor.TS_STREAM_TYPE_DTS_UHD, 174, JfifUtil.MARKER_RST0, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    public static zzv zza(zzeg zzegVar, String str, String str2, zzq zzqVar) {
        zzef zzefVar = new zzef();
        zzefVar.zza(zzegVar);
        int i = zzc[zzefVar.zzj(2)];
        zzefVar.zzh(8);
        int i2 = zze[zzefVar.zzj(3)];
        if (zzefVar.zzj(1) != 0) {
            i2++;
        }
        int i3 = zzf[zzefVar.zzj(5)] * 1000;
        zzefVar.zzm();
        zzegVar.zzh(zzefVar.zze());
        zzt zztVar = new zzt();
        zztVar.zza(str);
        zztVar.zzm(MimeTypes.AUDIO_AC3);
        zztVar.zzE(i2);
        zztVar.zzF(i);
        zztVar.zzq(zzqVar);
        zztVar.zze(str2);
        zztVar.zzh(i3);
        zztVar.zzi(i3);
        return zztVar.zzM();
    }

    public static zzv zzb(zzeg zzegVar, String str, String str2, zzq zzqVar) {
        String str3;
        zzef zzefVar = new zzef();
        zzefVar.zza(zzegVar);
        int zzj = zzefVar.zzj(13) * 1000;
        zzefVar.zzh(3);
        int i = zzc[zzefVar.zzj(2)];
        zzefVar.zzh(10);
        int i2 = zze[zzefVar.zzj(3)];
        if (zzefVar.zzj(1) != 0) {
            i2++;
        }
        zzefVar.zzh(3);
        int zzj2 = zzefVar.zzj(4);
        zzefVar.zzh(1);
        if (zzj2 > 0) {
            zzefVar.zzh(6);
            if (zzefVar.zzj(1) != 0) {
                i2 += 2;
            }
            zzefVar.zzh(1);
        }
        if (zzefVar.zzc() > 7) {
            zzefVar.zzh(7);
            if (zzefVar.zzj(1) != 0) {
                str3 = MimeTypes.AUDIO_E_AC3_JOC;
                zzefVar.zzm();
                zzegVar.zzh(zzefVar.zze());
                zzt zztVar = new zzt();
                zztVar.zza(str);
                zztVar.zzm(str3);
                zztVar.zzE(i2);
                zztVar.zzF(i);
                zztVar.zzq(zzqVar);
                zztVar.zze(str2);
                zztVar.zzi(zzj);
                return zztVar.zzM();
            }
        }
        str3 = MimeTypes.AUDIO_E_AC3;
        zzefVar.zzm();
        zzegVar.zzh(zzefVar.zze());
        zzt zztVar2 = new zzt();
        zztVar2.zza(str);
        zztVar2.zzm(str3);
        zztVar2.zzE(i2);
        zztVar2.zzF(i);
        zztVar2.zzq(zzqVar);
        zztVar2.zze(str2);
        zztVar2.zzi(zzj);
        return zztVar2.zzM();
    }

    public static zzaca zzc(zzef zzefVar) {
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int zzd2 = zzefVar.zzd();
        zzefVar.zzh(40);
        int zzj = zzefVar.zzj(5);
        zzefVar.zzf(zzd2);
        int i12 = -1;
        if (zzj > 10) {
            zzefVar.zzh(16);
            int zzj2 = zzefVar.zzj(2);
            if (zzj2 == 0) {
                i12 = 0;
            } else if (zzj2 == 1) {
                i12 = 1;
            } else if (zzj2 == 2) {
                i12 = 2;
            }
            zzefVar.zzh(3);
            int zzj3 = zzefVar.zzj(11) + 1;
            int zzj4 = zzefVar.zzj(2);
            if (zzj4 == 3) {
                i8 = zzd[zzefVar.zzj(2)];
                i9 = 6;
                i7 = 3;
            } else {
                int zzj5 = zzefVar.zzj(2);
                int i13 = zzb[zzj5];
                i7 = zzj5;
                i8 = zzc[zzj4];
                i9 = i13;
            }
            int i14 = zzj3 + zzj3;
            int i15 = (i14 * i8) / (i9 * 32);
            int zzj6 = zzefVar.zzj(3);
            boolean zzi = zzefVar.zzi();
            i = zze[zzj6] + (zzi ? 1 : 0);
            zzefVar.zzh(10);
            if (zzefVar.zzi()) {
                zzefVar.zzh(8);
            }
            if (zzj6 == 0) {
                zzefVar.zzh(5);
                if (zzefVar.zzi()) {
                    zzefVar.zzh(8);
                }
                i10 = 0;
                zzj6 = 0;
            } else {
                i10 = zzj6;
            }
            if (i12 == 1) {
                if (zzefVar.zzi()) {
                    zzefVar.zzh(16);
                }
                i11 = 1;
            } else {
                i11 = i12;
            }
            if (zzefVar.zzi()) {
                if (i10 > 2) {
                    zzefVar.zzh(2);
                }
                if ((i10 & 1) != 0 && i10 > 2) {
                    zzefVar.zzh(6);
                }
                if ((i10 & 4) != 0) {
                    zzefVar.zzh(6);
                }
                if (zzi && zzefVar.zzi()) {
                    zzefVar.zzh(5);
                }
                if (i11 == 0) {
                    if (zzefVar.zzi()) {
                        zzefVar.zzh(6);
                    }
                    if (i10 == 0 && zzefVar.zzi()) {
                        zzefVar.zzh(6);
                    }
                    if (zzefVar.zzi()) {
                        zzefVar.zzh(6);
                    }
                    int zzj7 = zzefVar.zzj(2);
                    if (zzj7 == 1) {
                        zzefVar.zzh(5);
                    } else if (zzj7 == 2) {
                        zzefVar.zzh(12);
                    } else if (zzj7 == 3) {
                        int zzj8 = zzefVar.zzj(5);
                        if (zzefVar.zzi()) {
                            zzefVar.zzh(5);
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(4);
                            }
                            if (zzefVar.zzi()) {
                                if (zzefVar.zzi()) {
                                    zzefVar.zzh(4);
                                }
                                if (zzefVar.zzi()) {
                                    zzefVar.zzh(4);
                                }
                            }
                        }
                        if (zzefVar.zzi()) {
                            zzefVar.zzh(5);
                            if (zzefVar.zzi()) {
                                zzefVar.zzh(7);
                                if (zzefVar.zzi()) {
                                    zzefVar.zzh(8);
                                }
                            }
                        }
                        zzefVar.zzh((zzj8 + 2) * 8);
                        zzefVar.zzm();
                    }
                    if (i10 < 2) {
                        if (zzefVar.zzi()) {
                            zzefVar.zzh(14);
                        }
                        if (zzj6 == 0 && zzefVar.zzi()) {
                            zzefVar.zzh(14);
                        }
                    }
                    if (zzefVar.zzi()) {
                        if (i7 == 0) {
                            zzefVar.zzh(5);
                            i11 = 0;
                            i7 = 0;
                        } else {
                            for (int i16 = 0; i16 < i9; i16++) {
                                if (zzefVar.zzi()) {
                                    zzefVar.zzh(5);
                                }
                            }
                        }
                    }
                    i11 = 0;
                }
            }
            if (zzefVar.zzi()) {
                zzefVar.zzh(5);
                if (i10 == 2) {
                    zzefVar.zzh(4);
                    i10 = 2;
                }
                if (i10 >= 6) {
                    zzefVar.zzh(2);
                }
                if (zzefVar.zzi()) {
                    zzefVar.zzh(8);
                }
                if (i10 == 0 && zzefVar.zzi()) {
                    zzefVar.zzh(8);
                }
                if (zzj4 < 3) {
                    zzefVar.zzg();
                }
            }
            if (i11 == 0 && i7 != 3) {
                zzefVar.zzg();
            }
            if (i11 == 2 && (i7 == 3 || zzefVar.zzi())) {
                zzefVar.zzh(6);
            }
            str = (zzefVar.zzi() && zzefVar.zzj(6) == 1 && zzefVar.zzj(8) == 1) ? MimeTypes.AUDIO_E_AC3_JOC : MimeTypes.AUDIO_E_AC3;
            i2 = i12;
            i4 = i14;
            i5 = i8;
            i6 = i9 * 256;
            i3 = i15;
        } else {
            zzefVar.zzh(32);
            int zzj9 = zzefVar.zzj(2);
            String str2 = zzj9 == 3 ? null : MimeTypes.AUDIO_AC3;
            int zzj10 = zzefVar.zzj(6);
            int i17 = zzf[zzj10 / 2] * 1000;
            int zzf2 = zzf(zzj9, zzj10);
            zzefVar.zzh(8);
            int zzj11 = zzefVar.zzj(3);
            if ((zzj11 & 1) != 0 && zzj11 != 1) {
                zzefVar.zzh(2);
            }
            if ((zzj11 & 4) != 0) {
                zzefVar.zzh(2);
            }
            if (zzj11 == 2) {
                zzefVar.zzh(2);
            }
            int i18 = zzj9 < 3 ? zzc[zzj9] : -1;
            i = zze[zzj11] + (zzefVar.zzi() ? 1 : 0);
            i2 = -1;
            str = str2;
            i3 = i17;
            i4 = zzf2;
            i5 = i18;
            i6 = 1536;
        }
        return new zzaca(str, i2, i, i5, i4, i6, i3, null);
    }

    public static int zzd(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) <= 10) {
            byte b = bArr[4];
            return zzf((b & 192) >> 6, b & Utf8.REPLACEMENT_BYTE);
        }
        int i = bArr[2] & 7;
        int i2 = ((bArr[3] & 255) | (i << 8)) + 1;
        return i2 + i2;
    }

    public static int zze(ByteBuffer byteBuffer) {
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            return zzb[((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    private static int zzf(int i, int i2) {
        int i3;
        if (i < 0 || i >= 3 || i2 < 0 || (i3 = i2 >> 1) >= 19) {
            return -1;
        }
        int i4 = zzc[i];
        if (i4 == 44100) {
            int i5 = zzg[i3] + (i2 & 1);
            return i5 + i5;
        }
        int i6 = zzf[i3];
        return i4 == 32000 ? i6 * 6 : i6 * 4;
    }
}
