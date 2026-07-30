package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdRequest;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzacm {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzc = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] zzd = {64, 112, 128, 192, 224, 256, 384, 448, AdRequest.MAX_CONTENT_URL_LENGTH, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final int[] zze = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};
    private static final int[] zzf = {5, 8, 10, 12};
    private static final int[] zzg = {6, 9, 12, 15};
    private static final int[] zzh = {2, 4, 6, 8};
    private static final int[] zzi = {9, 11, 13, 16};
    private static final int[] zzj = {5, 8, 10, 12};

    public static int zza(byte[] bArr) {
        zzdx zzg2 = zzg(bArr);
        zzg2.zzn(42);
        return zzg2.zzd(true != zzg2.zzp() ? 8 : 12) + 1;
    }

    public static int zzb(byte[] bArr) {
        zzdx zzg2 = zzg(bArr);
        zzg2.zzn(32);
        return zzf(zzg2, zzj, true) + 1;
    }

    public static zzab zzc(byte[] bArr, String str, String str2, int i, zzu zzuVar) {
        zzdx zzg2 = zzg(bArr);
        zzg2.zzn(60);
        int i2 = zzb[zzg2.zzd(6)];
        int i3 = zzc[zzg2.zzd(4)];
        int zzd2 = zzg2.zzd(5);
        int i4 = zzd2 >= 29 ? -1 : (zzd[zzd2] * 1000) / 2;
        zzg2.zzn(10);
        int i5 = i2 + (zzg2.zzd(2) > 0 ? 1 : 0);
        zzz zzzVar = new zzz();
        zzzVar.zzM(str);
        zzzVar.zzaa("audio/vnd.dts");
        zzzVar.zzy(i4);
        zzzVar.zzz(i5);
        zzzVar.zzab(i3);
        zzzVar.zzF(null);
        zzzVar.zzQ(str2);
        zzzVar.zzY(i);
        return zzzVar.zzag();
    }

    public static zzack zzd(byte[] bArr) {
        int i;
        int i2;
        int i3;
        long j;
        int i4;
        zzdx zzg2 = zzg(bArr);
        zzg2.zzn(40);
        int zzd2 = zzg2.zzd(2);
        boolean zzp = zzg2.zzp();
        int i5 = true != zzp ? 16 : 20;
        zzg2.zzn(true != zzp ? 8 : 12);
        int zzd3 = zzg2.zzd(i5) + 1;
        boolean zzp2 = zzg2.zzp();
        int i6 = 0;
        if (zzp2) {
            i = zzg2.zzd(2);
            int zzd4 = zzg2.zzd(3) + 1;
            if (zzg2.zzp()) {
                zzg2.zzn(36);
            }
            int zzd5 = zzg2.zzd(3) + 1;
            int zzd6 = zzg2.zzd(3) + 1;
            if (zzd5 != 1 || zzd6 != 1) {
                throw zzbc.zzc("Multiple audio presentations or assets not supported");
            }
            int i7 = zzd2 + 1;
            int zzd7 = zzg2.zzd(i7);
            for (int i8 = 0; i8 < i7; i8++) {
                if (((zzd7 >> i8) & 1) == 1) {
                    zzg2.zzn(8);
                }
            }
            int i9 = zzd4 * AdRequest.MAX_CONTENT_URL_LENGTH;
            if (zzg2.zzp()) {
                zzg2.zzn(2);
                int zzd8 = (zzg2.zzd(2) + 1) << 2;
                int zzd9 = zzg2.zzd(2) + 1;
                while (i6 < zzd9) {
                    zzg2.zzn(zzd8);
                    i6++;
                }
            }
            i6 = i9;
        } else {
            i = -1;
        }
        zzg2.zzn(i5);
        zzg2.zzn(12);
        if (zzp2) {
            if (zzg2.zzp()) {
                zzg2.zzn(4);
            }
            if (zzg2.zzp()) {
                zzg2.zzn(24);
            }
            if (zzg2.zzp()) {
                zzg2.zzo(zzg2.zzd(10) + 1);
            }
            zzg2.zzn(5);
            int i10 = zze[zzg2.zzd(4)];
            i2 = zzg2.zzd(8) + 1;
            i3 = i10;
        } else {
            i2 = -1;
            i3 = -2147483647;
        }
        if (zzp2) {
            if (i == 0) {
                i4 = 32000;
            } else if (i == 1) {
                i4 = 44100;
            } else {
                if (i != 2) {
                    throw zzbc.zza("Unsupported reference clock code in DTS HD header: " + i, null);
                }
                i4 = 48000;
            }
            j = zzei.zzu(i6, 1000000L, i4, RoundingMode.DOWN);
        } else {
            j = -9223372036854775807L;
        }
        return new zzack("audio/vnd.dts.hd;profile=lbr", i2, i3, zzd3, j, 0, null);
    }

    public static zzack zze(byte[] bArr, AtomicInteger atomicInteger) {
        long j;
        int i;
        int i2;
        int i3;
        zzdx zzg2 = zzg(bArr);
        int zzd2 = zzg2.zzd(32);
        int zzf2 = zzf(zzg2, zzf, true) + 1;
        char c = zzd2 == 1078008818 ? (char) 1 : (char) 0;
        if (c == 0) {
            j = -9223372036854775807L;
            i = -2147483647;
        } else {
            if (!zzg2.zzp()) {
                throw zzbc.zzc("Only supports full channel mask-based audio presentation");
            }
            int i4 = zzf2 - 2;
            if ((((char) (bArr[i4] << 8)) | (bArr[zzf2 - 1] & 255)) != zzei.zze(bArr, 0, i4, 65535)) {
                throw zzbc.zza("CRC check failed", null);
            }
            int zzd3 = zzg2.zzd(2);
            if (zzd3 == 0) {
                i2 = AdRequest.MAX_CONTENT_URL_LENGTH;
            } else if (zzd3 == 1) {
                i2 = 480;
            } else {
                if (zzd3 != 2) {
                    throw zzbc.zza("Unsupported base duration index in DTS UHD header: " + zzd3, null);
                }
                i2 = 384;
            }
            int zzd4 = zzg2.zzd(3) + 1;
            int zzd5 = zzg2.zzd(2);
            if (zzd5 == 0) {
                i3 = 32000;
            } else if (zzd5 == 1) {
                i3 = 44100;
            } else {
                if (zzd5 != 2) {
                    throw zzbc.zza("Unsupported clock rate index in DTS UHD header: " + zzd5, null);
                }
                i3 = 48000;
            }
            if (zzg2.zzp()) {
                zzg2.zzn(36);
            }
            i = (1 << zzg2.zzd(2)) * i3;
            j = zzei.zzu(i2 * zzd4, 1000000L, i3, RoundingMode.DOWN);
        }
        int i5 = 0;
        for (char c2 = 0; c2 < c; c2 = 1) {
            i5 += zzf(zzg2, zzg, true);
        }
        for (int i6 = 0; i6 <= 0; i6++) {
            if (c != 0) {
                atomicInteger.set(zzf(zzg2, zzh, true));
            }
            i5 += atomicInteger.get() != 0 ? zzf(zzg2, zzi, true) : 0;
        }
        return new zzack("audio/vnd.dts.uhd;profile=p2", 2, i, zzf2 + i5, j, 0, null);
    }

    private static int zzf(zzdx zzdxVar, int[] iArr, boolean z) {
        int i = 0;
        for (int i2 = 0; i2 < 3 && zzdxVar.zzp(); i2++) {
            i++;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            i3 += 1 << iArr[i4];
        }
        return zzdxVar.zzd(iArr[i]) + i3;
    }

    private static zzdx zzg(byte[] bArr) {
        byte b = bArr[0];
        if (b == Byte.MAX_VALUE || b == 100 || b == 64 || b == 113) {
            return new zzdx(bArr, bArr.length);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        byte b2 = copyOf[0];
        if (b2 == -2 || b2 == -1 || b2 == 37 || b2 == -14 || b2 == -24) {
            for (int i = 0; i < copyOf.length - 1; i += 2) {
                byte b3 = copyOf[i];
                int i2 = i + 1;
                copyOf[i] = copyOf[i2];
                copyOf[i2] = b3;
            }
        }
        int length = copyOf.length;
        zzdx zzdxVar = new zzdx(copyOf, length);
        if (copyOf[0] == 31) {
            zzdx zzdxVar2 = new zzdx(copyOf, length);
            while (zzdxVar2.zza() >= 16) {
                zzdxVar2.zzn(2);
                zzdxVar.zzg(zzdxVar2.zzd(14), 14);
            }
        }
        zzdxVar.zzk(copyOf, copyOf.length);
        return zzdxVar;
    }
}
