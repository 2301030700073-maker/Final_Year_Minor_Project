package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzalm {
    private static final Pattern zza = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    private static final Pattern zzb = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    private final zzdy zzc = new zzdy();
    private final StringBuilder zzd = new StringBuilder();

    public static String zza(zzdy zzdyVar, StringBuilder sb) {
        zzc(zzdyVar);
        if (zzdyVar.zzb() == 0) {
            return null;
        }
        String zzd = zzd(zzdyVar, sb);
        if (!RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(zzd)) {
            return zzd;
        }
        char zzm = (char) zzdyVar.zzm();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(zzm);
        return sb2.toString();
    }

    public static void zzc(zzdy zzdyVar) {
        while (true) {
            for (boolean z = true; zzdyVar.zzb() > 0 && z; z = false) {
                char c = (char) zzdyVar.zzN()[zzdyVar.zzd()];
                if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
                    zzdyVar.zzM(1);
                } else {
                    int zzd = zzdyVar.zzd();
                    int zze = zzdyVar.zze();
                    byte[] zzN = zzdyVar.zzN();
                    if (zzd + 2 <= zze) {
                        int i = zzd + 1;
                        if (zzN[zzd] == 47) {
                            int i2 = i + 1;
                            if (zzN[i] == 42) {
                                while (true) {
                                    int i3 = i2 + 1;
                                    if (i3 >= zze) {
                                        break;
                                    }
                                    if (((char) zzN[i2]) == '*' && ((char) zzN[i3]) == '/') {
                                        zze = i3 + 1;
                                        i2 = zze;
                                    } else {
                                        i2 = i3;
                                    }
                                }
                                zzdyVar.zzM(zze - zzdyVar.zzd());
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            return;
        }
    }

    private static String zzd(zzdy zzdyVar, StringBuilder sb) {
        sb.setLength(0);
        int zzd = zzdyVar.zzd();
        int zze = zzdyVar.zze();
        loop0: while (true) {
            for (boolean z = false; zzd < zze && !z; z = true) {
                char c = (char) zzdyVar.zzN()[zzd];
                if ((c >= 'A' && c <= 'Z') || ((c >= 'a' && c <= 'z') || ((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                    sb.append(c);
                    zzd++;
                }
            }
        }
        zzdyVar.zzM(zzd - zzdyVar.zzd());
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:174:0x0318, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x00b0, code lost:
    
        if (")".equals(zza(r3, r4)) == false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02f7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List zzb(com.google.android.gms.internal.ads.zzdy r18) {
        /*
            Method dump skipped, instructions count: 793
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalm.zzb(com.google.android.gms.internal.ads.zzdy):java.util.List");
    }
}
