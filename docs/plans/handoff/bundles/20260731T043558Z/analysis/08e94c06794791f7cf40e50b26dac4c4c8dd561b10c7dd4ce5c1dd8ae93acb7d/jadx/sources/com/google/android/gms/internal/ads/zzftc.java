package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.common.util.Hex;
import java.io.File;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzftc {
    final File zza;
    private final File zzb;
    private final SharedPreferences zzc;
    private final zzbaa zzd;

    public zzftc(Context context, zzbaa zzbaaVar) {
        this.zzc = context.getSharedPreferences("pcvmspf", 0);
        File dir = context.getDir("pccache", 0);
        zzftd.zzd(dir, false);
        this.zzb = dir;
        File dir2 = context.getDir("tmppccache", 0);
        zzftd.zzd(dir2, true);
        this.zza = dir2;
        this.zzd = zzbaaVar;
    }

    private final File zzd() {
        File file = new File(this.zzb, Integer.toString(this.zzd.zza()));
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    private final String zze() {
        int zza = this.zzd.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 6);
        sb.append("FBAMTD");
        sb.append(zza);
        return sb.toString();
    }

    private final String zzf() {
        int zza = this.zzd.zza();
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 6);
        sb.append("LATMTD");
        sb.append(zza);
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x015c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(com.google.android.gms.internal.ads.zzbac r9, com.google.android.gms.internal.ads.zzfti r10) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzftc.zza(com.google.android.gms.internal.ads.zzbac, com.google.android.gms.internal.ads.zzfti):boolean");
    }

    public final zzftb zzb(int i) {
        zzbai zzc = zzc(1);
        if (zzc == null) {
            return null;
        }
        String zza = zzc.zza();
        File zza2 = zzftd.zza(zza, "pcam.jar", zzd());
        if (!zza2.exists()) {
            zza2 = zzftd.zza(zza, "pcam", zzd());
        }
        return new zzftb(zzc, zza2, zzftd.zza(zza, "pcbc", zzd()), zzftd.zza(zza, "pcopt", zzd()));
    }

    final zzbai zzc(int i) {
        String string = i == 1 ? this.zzc.getString(zzf(), null) : this.zzc.getString(zze(), null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        try {
            byte[] stringToBytes = Hex.stringToBytes(string);
            zzhvi zzhviVar = zzhvi.zzb;
            zzbai zzg = zzbai.zzg(zzhvi.zzr(stringToBytes, 0, stringToBytes.length));
            String zza = zzg.zza();
            File zza2 = zzftd.zza(zza, "pcam.jar", zzd());
            if (!zza2.exists()) {
                zza2 = zzftd.zza(zza, "pcam", zzd());
            }
            File zza3 = zzftd.zza(zza, "pcbc", zzd());
            if (zza2.exists()) {
                if (zza3.exists()) {
                    return zzg;
                }
            }
        } catch (zzhxd unused) {
        }
        return null;
    }
}
