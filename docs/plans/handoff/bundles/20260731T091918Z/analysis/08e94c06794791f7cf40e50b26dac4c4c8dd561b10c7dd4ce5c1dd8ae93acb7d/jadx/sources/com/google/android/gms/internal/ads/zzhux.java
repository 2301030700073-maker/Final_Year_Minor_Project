package com.google.android.gms.internal.ads;

import com.google.common.base.Ascii;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads-api@@24.7.0 */
/* loaded from: classes3.dex */
final class zzhux {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    static int zza(byte[] bArr, int i, zzhuw zzhuwVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzb(b, bArr, i2, zzhuwVar);
        }
        zzhuwVar.zza = b;
        return i2;
    }

    static int zzb(int i, byte[] bArr, int i2, zzhuw zzhuwVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzhuwVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzhuwVar.zza = i5 | (b2 << Ascii.SO);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzhuwVar.zza = i7 | (b3 << Ascii.NAK);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzhuwVar.zza = i9 | (b4 << Ascii.FS);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzhuwVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    static int zzc(byte[] bArr, int i, zzhuw zzhuwVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzhuwVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzhuwVar.zzb = j2;
        return i3;
    }

    static int zzd(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    static long zze(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    static int zzf(byte[] bArr, int i, zzhuw zzhuwVar) throws zzhxd {
        int zza2 = zza(bArr, i, zzhuwVar);
        int i2 = zzhuwVar.zza;
        if (i2 < 0) {
            throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 == 0) {
            zzhuwVar.zzc = "";
            return zza2;
        }
        zzhuwVar.zzc = zzhzo.zzf(bArr, zza2, i2);
        return zza2 + i2;
    }

    static int zzg(byte[] bArr, int i, zzhuw zzhuwVar) throws zzhxd {
        int zza2 = zza(bArr, i, zzhuwVar);
        int i2 = zzhuwVar.zza;
        if (i2 < 0) {
            throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - zza2) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            zzhuwVar.zzc = zzhvi.zzb;
            return zza2;
        }
        zzhuwVar.zzc = zzhvi.zzr(bArr, zza2, i2);
        return zza2 + i2;
    }

    static int zzh(zzhyr zzhyrVar, byte[] bArr, int i, int i2, zzhuw zzhuwVar) throws IOException {
        Object zza2 = zzhyrVar.zza();
        int zzj = zzj(zza2, zzhyrVar, bArr, i, i2, zzhuwVar);
        zzhyrVar.zzk(zza2);
        zzhuwVar.zzc = zza2;
        return zzj;
    }

    static int zzi(zzhyr zzhyrVar, byte[] bArr, int i, int i2, int i3, zzhuw zzhuwVar) throws IOException {
        Object zza2 = zzhyrVar.zza();
        int zzk = zzk(zza2, zzhyrVar, bArr, i, i2, i3, zzhuwVar);
        zzhyrVar.zzk(zza2);
        zzhuwVar.zzc = zza2;
        return zzk;
    }

    static int zzj(Object obj, zzhyr zzhyrVar, byte[] bArr, int i, int i2, zzhuw zzhuwVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzb(i4, bArr, i3, zzhuwVar);
            i4 = zzhuwVar.zza;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = zzhuwVar.zze + 1;
        zzhuwVar.zze = i6;
        zzq(i6);
        int i7 = i4 + i5;
        zzhyrVar.zzj(obj, bArr, i5, i7, zzhuwVar);
        zzhuwVar.zze--;
        zzhuwVar.zzc = obj;
        return i7;
    }

    static int zzk(Object obj, zzhyr zzhyrVar, byte[] bArr, int i, int i2, int i3, zzhuw zzhuwVar) throws IOException {
        zzhyc zzhycVar = (zzhyc) zzhyrVar;
        int i4 = zzhuwVar.zze + 1;
        zzhuwVar.zze = i4;
        zzq(i4);
        int zzi = zzhycVar.zzi(obj, bArr, i, i2, i3, zzhuwVar);
        zzhuwVar.zze--;
        zzhuwVar.zzc = obj;
        return zzi;
    }

    static int zzl(int i, byte[] bArr, int i2, int i3, zzhxa zzhxaVar, zzhuw zzhuwVar) {
        zzhwp zzhwpVar = (zzhwp) zzhxaVar;
        int zza2 = zza(bArr, i2, zzhuwVar);
        zzhwpVar.zzi(zzhuwVar.zza);
        while (zza2 < i3) {
            int zza3 = zza(bArr, zza2, zzhuwVar);
            if (i != zzhuwVar.zza) {
                break;
            }
            zza2 = zza(bArr, zza3, zzhuwVar);
            zzhwpVar.zzi(zzhuwVar.zza);
        }
        return zza2;
    }

    static int zzm(byte[] bArr, int i, zzhxa zzhxaVar, zzhuw zzhuwVar) throws IOException {
        zzhwp zzhwpVar = (zzhwp) zzhxaVar;
        int zza2 = zza(bArr, i, zzhuwVar);
        int i2 = zzhuwVar.zza + zza2;
        while (zza2 < i2) {
            zza2 = zza(bArr, zza2, zzhuwVar);
            zzhwpVar.zzi(zzhuwVar.zza);
        }
        if (zza2 == i2) {
            return zza2;
        }
        throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static int zzn(zzhyr zzhyrVar, int i, byte[] bArr, int i2, int i3, zzhxa zzhxaVar, zzhuw zzhuwVar) throws IOException {
        int zzh = zzh(zzhyrVar, bArr, i2, i3, zzhuwVar);
        zzhxaVar.add(zzhuwVar.zzc);
        while (zzh < i3) {
            int zza2 = zza(bArr, zzh, zzhuwVar);
            if (i != zzhuwVar.zza) {
                break;
            }
            zzh = zzh(zzhyrVar, bArr, zza2, i3, zzhuwVar);
            zzhxaVar.add(zzhuwVar.zzc);
        }
        return zzh;
    }

    static int zzo(int i, byte[] bArr, int i2, int i3, zzhzd zzhzdVar, zzhuw zzhuwVar) throws zzhxd {
        if ((i >>> 3) == 0) {
            throw new zzhxd("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzc = zzc(bArr, i2, zzhuwVar);
            zzhzdVar.zzk(i, Long.valueOf(zzhuwVar.zzb));
            return zzc;
        }
        if (i4 == 1) {
            zzhzdVar.zzk(i, Long.valueOf(zze(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zza2 = zza(bArr, i2, zzhuwVar);
            int i5 = zzhuwVar.zza;
            if (i5 < 0) {
                throw new zzhxd("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - zza2) {
                throw new zzhxd("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                zzhzdVar.zzk(i, zzhvi.zzb);
            } else {
                zzhzdVar.zzk(i, zzhvi.zzr(bArr, zza2, i5));
            }
            return zza2 + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzhxd("Protocol message contained an invalid tag (zero).");
            }
            zzhzdVar.zzk(i, Integer.valueOf(zzd(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzhzd zzb2 = zzhzd.zzb();
        int i7 = zzhuwVar.zze + 1;
        zzhuwVar.zze = i7;
        zzq(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zza3 = zza(bArr, i2, zzhuwVar);
            i8 = zzhuwVar.zza;
            if (i8 == i6) {
                i2 = zza3;
                break;
            }
            i2 = zzo(i8, bArr, zza3, i3, zzb2, zzhuwVar);
        }
        zzhuwVar.zze--;
        if (i2 > i3 || i8 != i6) {
            throw new zzhxd("Failed to parse the message.");
        }
        zzhzdVar.zzk(i, zzb2);
        return i2;
    }

    static int zzp(int i, byte[] bArr, int i2, int i3, zzhuw zzhuwVar) throws zzhxd {
        if ((i >>> 3) == 0) {
            throw new zzhxd("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzc(bArr, i2, zzhuwVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zza(bArr, i2, zzhuwVar) + zzhuwVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw new zzhxd("Protocol message contained an invalid tag (zero).");
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zza(bArr, i2, zzhuwVar);
            i6 = zzhuwVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zzp(i6, bArr, i2, i3, zzhuwVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw new zzhxd("Failed to parse the message.");
        }
        return i2;
    }

    private static void zzq(int i) throws zzhxd {
        if (i >= zzb) {
            throw new zzhxd("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
