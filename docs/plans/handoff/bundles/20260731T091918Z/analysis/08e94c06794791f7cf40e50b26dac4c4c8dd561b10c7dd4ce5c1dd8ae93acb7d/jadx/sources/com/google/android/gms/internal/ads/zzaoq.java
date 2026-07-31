package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.media3.extractor.WavUtil;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaoq {
    public static final /* synthetic */ int zza = 0;
    private static final byte[] zzb = {0, 0, 0, 0, Ascii.DLE, 0, Byte.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};
    private static final byte[] zzc = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    public static boolean zza(zzadb zzadbVar) throws IOException {
        zzeg zzegVar = new zzeg(8);
        int i = zzaop.zza(zzadbVar, zzegVar).zza;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        zzadbVar.zzi(zzegVar.zzi(), 0, 4);
        zzegVar.zzh(0);
        int zzB = zzegVar.zzB();
        if (zzB == 1463899717) {
            return true;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(zzB).length() + 23);
        sb.append("Unsupported form type: ");
        sb.append(zzB);
        zzdt.zze("WavHeaderReader", sb.toString());
        return false;
    }

    public static zzaoo zzb(zzadb zzadbVar) throws IOException {
        byte[] bArr;
        int i;
        zzeg zzegVar = new zzeg(16);
        long j = zzd(WavUtil.FMT_FOURCC, zzadbVar, zzegVar).zzb;
        zzgmd.zzh(j >= 16);
        zzadbVar.zzi(zzegVar.zzi(), 0, 16);
        zzegVar.zzh(0);
        int zzu = zzegVar.zzu();
        int zzu2 = zzegVar.zzu();
        int zzI = zzegVar.zzI();
        int zzI2 = zzegVar.zzI();
        int zzu3 = zzegVar.zzu();
        int zzu4 = zzegVar.zzu();
        int i2 = ((int) j) - 16;
        if (i2 > 0) {
            byte[] bArr2 = new byte[i2];
            zzadbVar.zzi(bArr2, 0, i2);
            if (zzu == 65534) {
                if (i2 == 24) {
                    zzeg zzegVar2 = new zzeg(bArr2);
                    zzegVar2.zzu();
                    int zzu5 = zzegVar2.zzu();
                    if (zzu5 != 0 && zzu5 != zzu4) {
                        StringBuilder sb = new StringBuilder(String.valueOf(zzu5).length() + 33 + String.valueOf(zzu4).length() + 19);
                        sb.append("validBits ( ");
                        sb.append(zzu5);
                        sb.append(")  != bitsPerSample( ");
                        sb.append(zzu4);
                        sb.append(") are not supported");
                        throw zzat.zzc(sb.toString());
                    }
                    int zzI3 = zzegVar2.zzI();
                    if ((zzI3 >> 18) != 0) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(zzI3).length() + 21);
                        sb2.append("invalid channel mask ");
                        sb2.append(zzI3);
                        throw zzat.zzc(sb2.toString());
                    }
                    if (zzI3 != 0 && Integer.bitCount(zzI3) != zzu2) {
                        int bitCount = Integer.bitCount(zzI3);
                        StringBuilder sb3 = new StringBuilder(String.valueOf(bitCount).length() + 46 + String.valueOf(zzI3).length());
                        sb3.append("invalid number of channels (");
                        sb3.append(bitCount);
                        sb3.append(") in channel mask ");
                        sb3.append(zzI3);
                        throw zzat.zzc(sb3.toString());
                    }
                    zzu = zzegVar2.zzu();
                    byte[] bArr3 = new byte[14];
                    zzegVar2.zzm(bArr3, 0, 14);
                    if (!Arrays.equals(bArr3, zzb) && !Arrays.equals(bArr3, zzc)) {
                        throw zzat.zzc("invalid wav format extension guid");
                    }
                } else {
                    bArr = bArr2;
                    i = 65534;
                }
            }
            i = zzu;
            bArr = bArr2;
        } else {
            bArr = zzep.zzb;
            i = zzu;
        }
        zzadbVar.zzf((int) (zzadbVar.zzm() - zzadbVar.zzn()));
        return new zzaoo(i, zzu2, zzI, zzI2, zzu3, zzu4, bArr);
    }

    public static Pair zzc(zzadb zzadbVar) throws IOException {
        zzadbVar.zzl();
        zzaop zzd = zzd(1684108385, zzadbVar, new zzeg(8));
        zzadbVar.zzf(8);
        return Pair.create(Long.valueOf(zzadbVar.zzn()), Long.valueOf(zzd.zzb));
    }

    private static zzaop zzd(int i, zzadb zzadbVar, zzeg zzegVar) throws IOException {
        zzaop zza2 = zzaop.zza(zzadbVar, zzegVar);
        while (true) {
            int i2 = zza2.zza;
            if (i2 == i) {
                return zza2;
            }
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 28);
            sb.append("Ignoring unknown WAV chunk: ");
            sb.append(i2);
            zzdt.zzc("WavHeaderReader", sb.toString());
            long j = zza2.zzb;
            long j2 = 8 + j;
            if ((1 & j) != 0) {
                j2 = 9 + j;
            }
            if (j2 > 2147483647L) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 40);
                sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                sb2.append(i2);
                throw zzat.zzc(sb2.toString());
            }
            zzadbVar.zzf((int) j2);
            zza2 = zzaop.zza(zzadbVar, zzegVar);
        }
    }
}
