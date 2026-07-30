package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.facebook.appevents.integrity.IntegrityManager;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzalb {
    private static final Pattern zzd = Pattern.compile("\\s+");
    private static final zzfxs zze = zzfxs.zzp("auto", IntegrityManager.INTEGRITY_TYPE_NONE);
    private static final zzfxs zzf = zzfxs.zzq("dot", "sesame", "circle");
    private static final zzfxs zzg = zzfxs.zzp("filled", "open");
    private static final zzfxs zzh = zzfxs.zzq("after", "before", "outside");
    public final int zza;
    public final int zzb;
    public final int zzc;

    private zzalb(int i, int i2, int i3) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
    }

    public static zzalb zza(String str) {
        char c;
        if (str == null) {
            return null;
        }
        String zza = zzftt.zza(str.trim());
        if (zza.isEmpty()) {
            return null;
        }
        zzfxs zzm = zzfxs.zzm(TextUtils.split(zza, zzd));
        String str2 = (String) zzfxt.zza(zzfzp.zzb(zzh, zzm), "outside");
        int hashCode = str2.hashCode();
        int i = -1;
        int i2 = 0;
        if (hashCode != -1106037339) {
            if (hashCode == 92734940 && str2.equals("after")) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str2.equals("outside")) {
                c = 1;
            }
            c = 65535;
        }
        int i3 = c != 0 ? c != 1 ? 1 : -2 : 2;
        zzfzn zzb = zzfzp.zzb(zze, zzm);
        if (zzb.isEmpty()) {
            zzfzn zzb2 = zzfzp.zzb(zzg, zzm);
            zzfzn zzb3 = zzfzp.zzb(zzf, zzm);
            if (!zzb2.isEmpty() || !zzb3.isEmpty()) {
                String str3 = (String) zzfxt.zza(zzb2, "filled");
                int i4 = ((str3.hashCode() == 3417674 && str3.equals("open")) ? (char) 0 : (char) 65535) != 0 ? 1 : 2;
                String str4 = (String) zzfxt.zza(zzb3, "circle");
                int hashCode2 = str4.hashCode();
                if (hashCode2 != -905816648) {
                    if (hashCode2 == 99657 && str4.equals("dot")) {
                        i = 0;
                    }
                } else if (str4.equals("sesame")) {
                    i = 1;
                }
                if (i == 0) {
                    i2 = i4;
                    i = 2;
                } else if (i != 1) {
                    i2 = i4;
                    i = 1;
                } else {
                    i = 3;
                    i2 = i4;
                }
            }
        } else {
            String str5 = (String) zzb.iterator().next();
            if (((str5.hashCode() == 3387192 && str5.equals(IntegrityManager.INTEGRITY_TYPE_NONE)) ? (char) 0 : (char) 65535) == 0) {
                i = 0;
            }
        }
        return new zzalb(i, i2, i3);
    }
}
