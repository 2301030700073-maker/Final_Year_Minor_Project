package com.google.android.gms.internal.wearable;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;

/* loaded from: classes3.dex */
final class zzak {
    public static int zza(byte[] bArr, int i, zzaj zzajVar) {
        int zzj = zzj(bArr, i, zzajVar);
        int i2 = zzajVar.zza;
        if (i2 < 0) {
            throw zzcf.zzd();
        }
        if (i2 > bArr.length - zzj) {
            throw zzcf.zzg();
        }
        if (i2 == 0) {
            zzajVar.zzc = zzaw.zzb;
            return zzj;
        }
        zzajVar.zzc = zzaw.zzn(bArr, zzj, i2);
        return zzj + i2;
    }

    public static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzc(zzdn zzdnVar, byte[] bArr, int i, int i2, int i3, zzaj zzajVar) {
        zzdf zzdfVar = (zzdf) zzdnVar;
        Object zze = zzdfVar.zze();
        int zzc = zzdfVar.zzc(zze, bArr, i, i2, i3, zzajVar);
        zzdfVar.zzf(zze);
        zzajVar.zzc = zze;
        return zzc;
    }

    public static int zzd(zzdn zzdnVar, byte[] bArr, int i, int i2, zzaj zzajVar) {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzk(i4, bArr, i3, zzajVar);
            i4 = zzajVar.zza;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw zzcf.zzg();
        }
        Object zze = zzdnVar.zze();
        int i6 = i4 + i5;
        zzdnVar.zzh(zze, bArr, i5, i6, zzajVar);
        zzdnVar.zzf(zze);
        zzajVar.zzc = zze;
        return i6;
    }

    public static int zze(zzdn zzdnVar, int i, byte[] bArr, int i2, int i3, zzcc zzccVar, zzaj zzajVar) {
        int zzd = zzd(zzdnVar, bArr, i2, i3, zzajVar);
        zzccVar.add(zzajVar.zzc);
        while (zzd < i3) {
            int zzj = zzj(bArr, zzd, zzajVar);
            if (i != zzajVar.zza) {
                break;
            }
            zzd = zzd(zzdnVar, bArr, zzj, i3, zzajVar);
            zzccVar.add(zzajVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzcc zzccVar, zzaj zzajVar) {
        zzbw zzbwVar = (zzbw) zzccVar;
        int zzj = zzj(bArr, i, zzajVar);
        int i2 = zzajVar.zza + zzj;
        while (zzj < i2) {
            zzj = zzj(bArr, zzj, zzajVar);
            zzbwVar.zzf(zzajVar.zza);
        }
        if (zzj == i2) {
            return zzj;
        }
        throw zzcf.zzg();
    }

    public static int zzg(byte[] bArr, int i, zzaj zzajVar) {
        int zzj = zzj(bArr, i, zzajVar);
        int i2 = zzajVar.zza;
        if (i2 < 0) {
            throw zzcf.zzd();
        }
        if (i2 == 0) {
            zzajVar.zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return zzj;
        }
        zzajVar.zzc = new String(bArr, zzj, i2, zzcd.zzb);
        return zzj + i2;
    }

    public static int zzh(byte[] bArr, int i, zzaj zzajVar) {
        int zzj = zzj(bArr, i, zzajVar);
        int i2 = zzajVar.zza;
        if (i2 < 0) {
            throw zzcf.zzd();
        }
        if (i2 == 0) {
            zzajVar.zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            return zzj;
        }
        zzajVar.zzc = zzet.zzd(bArr, zzj, i2);
        return zzj + i2;
    }

    public static int zzi(int i, byte[] bArr, int i2, int i3, zzef zzefVar, zzaj zzajVar) {
        if ((i >>> 3) == 0) {
            throw zzcf.zzb();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzm = zzm(bArr, i2, zzajVar);
            zzefVar.zzh(i, Long.valueOf(zzajVar.zzb));
            return zzm;
        }
        if (i4 == 1) {
            zzefVar.zzh(i, Long.valueOf(zzn(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zzj = zzj(bArr, i2, zzajVar);
            int i5 = zzajVar.zza;
            if (i5 < 0) {
                throw zzcf.zzd();
            }
            if (i5 > bArr.length - zzj) {
                throw zzcf.zzg();
            }
            if (i5 == 0) {
                zzefVar.zzh(i, zzaw.zzb);
            } else {
                zzefVar.zzh(i, zzaw.zzn(bArr, zzj, i5));
            }
            return zzj + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw zzcf.zzb();
            }
            zzefVar.zzh(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzef zze = zzef.zze();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zzj2 = zzj(bArr, i2, zzajVar);
            int i8 = zzajVar.zza;
            if (i8 == i6) {
                i7 = i8;
                i2 = zzj2;
                break;
            }
            i7 = i8;
            i2 = zzi(i8, bArr, zzj2, i3, zze, zzajVar);
        }
        if (i2 > i3 || i7 != i6) {
            throw zzcf.zze();
        }
        zzefVar.zzh(i, zze);
        return i2;
    }

    public static int zzj(byte[] bArr, int i, zzaj zzajVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzk(b, bArr, i2, zzajVar);
        }
        zzajVar.zza = b;
        return i2;
    }

    public static int zzk(int i, byte[] bArr, int i2, zzaj zzajVar) {
        int i3 = i & ModuleDescriptor.MODULE_VERSION;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzajVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzajVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzajVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzajVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzajVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzl(int i, byte[] bArr, int i2, int i3, zzcc zzccVar, zzaj zzajVar) {
        zzbw zzbwVar = (zzbw) zzccVar;
        int zzj = zzj(bArr, i2, zzajVar);
        zzbwVar.zzf(zzajVar.zza);
        while (zzj < i3) {
            int zzj2 = zzj(bArr, zzj, zzajVar);
            if (i != zzajVar.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzajVar);
            zzbwVar.zzf(zzajVar.zza);
        }
        return zzj;
    }

    public static int zzm(byte[] bArr, int i, zzaj zzajVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzajVar.zzb = j;
            return i2;
        }
        int i3 = i2 + 1;
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
        zzajVar.zzb = j2;
        return i3;
    }

    public static long zzn(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }
}
