package com.google.android.gms.internal.ads;

import java.io.IOException;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzadi {
    public static boolean zza(zzeg zzegVar, zzadn zzadnVar, int i, zzadh zzadhVar) {
        int zzg = zzegVar.zzg();
        long zzz = zzegVar.zzz();
        long j = zzz >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        long j2 = zzz >> 12;
        long j3 = zzz >> 8;
        long j4 = zzz >> 4;
        long j5 = zzz >> 1;
        long j6 = zzz & 1;
        int i2 = (int) (j4 & 15);
        if (i2 <= 7) {
            if (i2 != zzadnVar.zzg - 1) {
                return false;
            }
        } else if (i2 > 10 || zzadnVar.zzg != 2) {
            return false;
        }
        int i3 = (int) (j5 & 7);
        if ((i3 != 0 && i3 != zzadnVar.zzi) || j6 == 1 || !zzd(zzegVar, zzadnVar, z, zzadhVar)) {
            return false;
        }
        long j7 = zzadhVar.zza;
        int zzc = zzc(zzegVar, (int) (j2 & 15));
        long j8 = zzadnVar.zzj;
        boolean z2 = j8 == 0 || j7 + ((long) zzc) >= j8;
        if (zzc == -1) {
            return false;
        }
        if ((!z2 && zzc < zzadnVar.zza) || zzc > zzadnVar.zzb) {
            return false;
        }
        int i4 = zzadnVar.zze;
        int i5 = (int) (j3 & 15);
        if (i5 != 0) {
            if (i5 <= 11) {
                if (i5 != zzadnVar.zzf) {
                    return false;
                }
            } else if (i5 == 12) {
                if (zzegVar.zzs() * 1000 != i4) {
                    return false;
                }
            } else {
                if (i5 > 14) {
                    return false;
                }
                int zzt = zzegVar.zzt();
                if (i5 == 14) {
                    zzt *= 10;
                }
                if (zzt != i4) {
                    return false;
                }
            }
        }
        if (zzegVar.zzs() != zzep.zzJ(zzegVar.zzi(), zzg, zzegVar.zzg() - 1, 0)) {
            return false;
        }
        if (zzegVar.zzd() == 0) {
            return true;
        }
        int zzn = zzegVar.zzn();
        if ((zzn & 128) != 0) {
            return false;
        }
        int i6 = (zzn & WebSocketProtocol.PAYLOAD_SHORT) >> 1;
        if ((i6 < 2 || i6 > 7) && (i6 < 13 || i6 > 31)) {
            return true;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i6).length() + 57);
        sb.append("Ignoring frame where first subframe has a reserved type: ");
        sb.append(i6);
        zzdt.zzb("FlacFrameReader", sb.toString());
        return false;
    }

    public static long zzb(zzadb zzadbVar, zzadn zzadnVar) throws IOException {
        zzadbVar.zzl();
        zzadbVar.zzk(1);
        byte[] bArr = new byte[1];
        zzadbVar.zzi(bArr, 0, 1);
        int i = bArr[0] & 1;
        boolean z = 1 == i;
        zzadbVar.zzk(2);
        int i2 = 1 != i ? 6 : 7;
        zzeg zzegVar = new zzeg(i2);
        zzegVar.zzf(zzade.zzb(zzadbVar, zzegVar.zzi(), 0, i2));
        zzadbVar.zzl();
        zzadh zzadhVar = new zzadh();
        if (zzd(zzegVar, zzadnVar, z, zzadhVar)) {
            return zzadhVar.zza;
        }
        throw zzat.zzb(null, null);
    }

    public static int zzc(zzeg zzegVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzegVar.zzs() + 1;
            case 7:
                return zzegVar.zzt() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    private static boolean zzd(zzeg zzegVar, zzadn zzadnVar, boolean z, zzadh zzadhVar) {
        try {
            long zzO = zzegVar.zzO();
            if (!z) {
                zzO *= zzadnVar.zzb;
            }
            long j = zzadnVar.zzj;
            if (j != 0 && zzO > j) {
                return false;
            }
            zzadhVar.zza = zzO;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
