package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;

/* loaded from: classes.dex */
final class zzgvy {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    public static int zza(byte[] bArr, int i, zzgvx zzgvxVar) {
        int zzh = zzh(bArr, i, zzgvxVar);
        int i2 = zzgvxVar.zza;
        if (i2 < 0) {
            throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
        }
        if (i2 > bArr.length - zzh) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        if (i2 == 0) {
            zzgvxVar.zzc = zzgwj.zzb;
            return zzh;
        }
        zzgvxVar.zzc = zzgwj.zzv(bArr, zzh, i2);
        return zzh + i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zzc(zzgzv zzgzvVar, byte[] bArr, int i, int i2, int i3, zzgvx zzgvxVar) {
        Object zze = zzgzvVar.zze();
        int zzl = zzl(zze, zzgzvVar, bArr, i, i2, i3, zzgvxVar);
        zzgzvVar.zzf(zze);
        zzgvxVar.zzc = zze;
        return zzl;
    }

    public static int zzd(zzgzv zzgzvVar, byte[] bArr, int i, int i2, zzgvx zzgvxVar) {
        Object zze = zzgzvVar.zze();
        int zzm = zzm(zze, zzgzvVar, bArr, i, i2, zzgvxVar);
        zzgzvVar.zzf(zze);
        zzgvxVar.zzc = zze;
        return zzm;
    }

    public static int zze(zzgzv zzgzvVar, int i, byte[] bArr, int i2, int i3, zzgyd zzgydVar, zzgvx zzgvxVar) {
        int zzd = zzd(zzgzvVar, bArr, i2, i3, zzgvxVar);
        zzgydVar.add(zzgvxVar.zzc);
        while (zzd < i3) {
            int zzh = zzh(bArr, zzd, zzgvxVar);
            if (i != zzgvxVar.zza) {
                break;
            }
            zzd = zzd(zzgzvVar, bArr, zzh, i3, zzgvxVar);
            zzgydVar.add(zzgvxVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzgyd zzgydVar, zzgvx zzgvxVar) {
        zzgxs zzgxsVar = (zzgxs) zzgydVar;
        int zzh = zzh(bArr, i, zzgvxVar);
        int i2 = zzgvxVar.zza + zzh;
        while (zzh < i2) {
            zzh = zzh(bArr, zzh, zzgvxVar);
            zzgxsVar.zzi(zzgvxVar.zza);
        }
        if (zzh == i2) {
            return zzh;
        }
        throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static int zzg(int i, byte[] bArr, int i2, int i3, zzhai zzhaiVar, zzgvx zzgvxVar) {
        if ((i >>> 3) == 0) {
            throw new zzgyg("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzk = zzk(bArr, i2, zzgvxVar);
            zzhaiVar.zzj(i, Long.valueOf(zzgvxVar.zzb));
            return zzk;
        }
        if (i4 == 1) {
            zzhaiVar.zzj(i, Long.valueOf(zzn(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zzh = zzh(bArr, i2, zzgvxVar);
            int i5 = zzgvxVar.zza;
            if (i5 < 0) {
                throw new zzgyg("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if (i5 > bArr.length - zzh) {
                throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            if (i5 == 0) {
                zzhaiVar.zzj(i, zzgwj.zzb);
            } else {
                zzhaiVar.zzj(i, zzgwj.zzv(bArr, zzh, i5));
            }
            return zzh + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzgyg("Protocol message contained an invalid tag (zero).");
            }
            zzhaiVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzhai zzf = zzhai.zzf();
        int i7 = zzgvxVar.zze + 1;
        zzgvxVar.zze = i7;
        zzo(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zzh2 = zzh(bArr, i2, zzgvxVar);
            i8 = zzgvxVar.zza;
            if (i8 == i6) {
                i2 = zzh2;
                break;
            }
            i2 = zzg(i8, bArr, zzh2, i3, zzf, zzgvxVar);
        }
        zzgvxVar.zze--;
        if (i2 > i3 || i8 != i6) {
            throw new zzgyg("Failed to parse the message.");
        }
        zzhaiVar.zzj(i, zzf);
        return i2;
    }

    public static int zzh(byte[] bArr, int i, zzgvx zzgvxVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzi(b, bArr, i2, zzgvxVar);
        }
        zzgvxVar.zza = b;
        return i2;
    }

    public static int zzi(int i, byte[] bArr, int i2, zzgvx zzgvxVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & ModuleDescriptor.MODULE_VERSION;
        if (b >= 0) {
            zzgvxVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzgvxVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzgvxVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzgvxVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgvxVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzj(int i, byte[] bArr, int i2, int i3, zzgyd zzgydVar, zzgvx zzgvxVar) {
        zzgxs zzgxsVar = (zzgxs) zzgydVar;
        int zzh = zzh(bArr, i2, zzgvxVar);
        zzgxsVar.zzi(zzgvxVar.zza);
        while (zzh < i3) {
            int zzh2 = zzh(bArr, zzh, zzgvxVar);
            if (i != zzgvxVar.zza) {
                break;
            }
            zzh = zzh(bArr, zzh2, zzgvxVar);
            zzgxsVar.zzi(zzgvxVar.zza);
        }
        return zzh;
    }

    public static int zzk(byte[] bArr, int i, zzgvx zzgvxVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzgvxVar.zzb = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i4;
            i3 = i5;
            b = b2;
        }
        zzgvxVar.zzb = j2;
        return i3;
    }

    public static int zzl(Object obj, zzgzv zzgzvVar, byte[] bArr, int i, int i2, int i3, zzgvx zzgvxVar) {
        zzgzf zzgzfVar = (zzgzf) zzgzvVar;
        int i4 = zzgvxVar.zze + 1;
        zzgvxVar.zze = i4;
        zzo(i4);
        int zzc = zzgzfVar.zzc(obj, bArr, i, i2, i3, zzgvxVar);
        zzgvxVar.zze--;
        zzgvxVar.zzc = obj;
        return zzc;
    }

    public static int zzm(Object obj, zzgzv zzgzvVar, byte[] bArr, int i, int i2, zzgvx zzgvxVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzi(i4, bArr, i3, zzgvxVar);
            i4 = zzgvxVar.zza;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw new zzgyg("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        int i6 = zzgvxVar.zze + 1;
        zzgvxVar.zze = i6;
        zzo(i6);
        int i7 = i4 + i5;
        zzgzvVar.zzi(obj, bArr, i5, i7, zzgvxVar);
        zzgvxVar.zze--;
        zzgvxVar.zzc = obj;
        return i7;
    }

    public static long zzn(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }

    private static void zzo(int i) {
        if (i >= zzb) {
            throw new zzgyg("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
    }
}
