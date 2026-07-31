package com.google.android.gms.internal.ads;

import androidx.media3.common.C;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzacn {
    public static void zza(long j, zzeg zzegVar, zzaem[] zzaemVarArr) {
        int i;
        while (true) {
            if (zzegVar.zzd() <= 1) {
                return;
            }
            int zzc = zzc(zzegVar);
            int zzc2 = zzc(zzegVar);
            int zzg = zzegVar.zzg() + zzc2;
            if (zzc2 == -1 || zzc2 > zzegVar.zzd()) {
                zzdt.zzc("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                zzg = zzegVar.zze();
            } else if (zzc == 4 && zzc2 >= 8) {
                int zzs = zzegVar.zzs();
                int zzt = zzegVar.zzt();
                if (zzt == 49) {
                    i = zzegVar.zzB();
                    zzt = 49;
                } else {
                    i = 0;
                }
                int zzs2 = zzegVar.zzs();
                if (zzt == 47) {
                    zzegVar.zzk(1);
                    zzt = 47;
                }
                boolean z = zzs == 181 && (zzt == 49 || zzt == 47) && zzs2 == 3;
                if (zzt == 49) {
                    z &= i == 1195456820;
                }
                if (z) {
                    zzb(j, zzegVar, zzaemVarArr);
                }
            }
            zzegVar.zzh(zzg);
        }
    }

    public static void zzb(long j, zzeg zzegVar, zzaem[] zzaemVarArr) {
        int zzs = zzegVar.zzs();
        if ((zzs & 64) != 0) {
            int i = zzs & 31;
            zzegVar.zzk(1);
            int zzg = zzegVar.zzg();
            for (zzaem zzaemVar : zzaemVarArr) {
                int i2 = i * 3;
                zzegVar.zzh(zzg);
                zzaemVar.zzz(zzegVar, i2);
                zzgmd.zzh(j != C.TIME_UNSET);
                zzaemVar.zzx(j, 1, i2, 0, null);
            }
        }
    }

    private static int zzc(zzeg zzegVar) {
        int i = 0;
        while (zzegVar.zzd() != 0) {
            int zzs = zzegVar.zzs();
            i += zzs;
            if (zzs != 255) {
                return i;
            }
        }
        return -1;
    }
}
