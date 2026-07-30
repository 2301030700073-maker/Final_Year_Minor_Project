package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzalv {
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");
    private static final Pattern zzb = Pattern.compile("(\\S+?):(\\S+)");
    private static final Map zzc;
    private static final Map zzd;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzc = DesugarCollections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = DesugarCollections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.text.SpannedString zza(java.lang.String r17, java.lang.String r18, java.util.List r19) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalv.zza(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    public static zzcm zzb(String str) {
        zzalt zzaltVar = new zzalt();
        zzh(str, zzaltVar);
        return zzaltVar.zza();
    }

    public static zzalo zzc(zzdy zzdyVar, List list) {
        String zzz = zzdyVar.zzz(StandardCharsets.UTF_8);
        if (zzz != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzz);
            if (matcher.matches()) {
                return zze(null, matcher, zzdyVar, list);
            }
            String zzz2 = zzdyVar.zzz(StandardCharsets.UTF_8);
            if (zzz2 != null) {
                Matcher matcher2 = pattern.matcher(zzz2);
                if (matcher2.matches()) {
                    return zze(zzz.trim(), matcher2, zzdyVar, list);
                }
            }
        }
        return null;
    }

    private static int zzd(List list, String str, zzalr zzalrVar) {
        List zzf = zzf(list, str, zzalrVar);
        for (int i = 0; i < zzf.size(); i++) {
            zzaln zzalnVar = ((zzals) zzf.get(i)).zzb;
            if (zzalnVar.zze() != -1) {
                return zzalnVar.zze();
            }
        }
        return -1;
    }

    private static zzalo zze(String str, Matcher matcher, zzdy zzdyVar, List list) {
        zzalt zzaltVar = new zzalt();
        try {
            String group = matcher.group(1);
            group.getClass();
            zzaltVar.zza = zzalx.zzb(group);
            String group2 = matcher.group(2);
            group2.getClass();
            zzaltVar.zzb = zzalx.zzb(group2);
            String group3 = matcher.group(3);
            group3.getClass();
            zzh(group3, zzaltVar);
            StringBuilder sb = new StringBuilder();
            String zzz = zzdyVar.zzz(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(zzz)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(zzz.trim());
                zzz = zzdyVar.zzz(StandardCharsets.UTF_8);
            }
            zzaltVar.zzc = zza(str, sb.toString(), list);
            return new zzalo(zzaltVar.zza().zzp(), zzaltVar.zza, zzaltVar.zzb);
        } catch (NumberFormatException unused) {
            zzdo.zzf("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(matcher.group())));
            return null;
        }
    }

    private static List zzf(List list, String str, zzalr zzalrVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzaln zzalnVar = (zzaln) list.get(i);
            int zzf = zzalnVar.zzf(str, zzalrVar.zza, zzalrVar.zzd, zzalrVar.zzc);
            if (zzf > 0) {
                arrayList.add(new zzals(zzf, zzalnVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    private static void zzg(String str, zzalr zzalrVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c;
        Comparator comparator;
        zzalr zzalrVar2;
        zzalr zzalrVar3;
        zzalr zzalrVar4;
        int i;
        int i2 = zzalrVar.zzb;
        int length = spannableStringBuilder.length();
        String str2 = zzalrVar.zza;
        int hashCode = str2.hashCode();
        int i3 = -1;
        if (hashCode == 0) {
            if (str2.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                c = 7;
            }
            c = 65535;
        } else if (hashCode == 105) {
            if (str2.equals("i")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 3314158) {
            if (str2.equals("lang")) {
                c = 6;
            }
            c = 65535;
        } else if (hashCode == 3511770) {
            if (str2.equals("ruby")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode == 98) {
            if (str2.equals("b")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 99) {
            if (str2.equals("c")) {
                c = 4;
            }
            c = 65535;
        } else if (hashCode != 117) {
            if (hashCode == 118 && str2.equals("v")) {
                c = 5;
            }
            c = 65535;
        } else {
            if (str2.equals("u")) {
                c = 3;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                spannableStringBuilder.setSpan(new StyleSpan(1), i2, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i2, length, 33);
                break;
            case 2:
                int zzd2 = zzd(list2, str, zzalrVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                comparator = zzalq.zza;
                Collections.sort(arrayList, comparator);
                int i4 = zzalrVar.zzb;
                int i5 = 0;
                int i6 = 0;
                while (i5 < arrayList.size()) {
                    zzalrVar2 = ((zzalq) arrayList.get(i5)).zzb;
                    if ("rt".equals(zzalrVar2.zza)) {
                        zzalq zzalqVar = (zzalq) arrayList.get(i5);
                        zzalrVar3 = zzalqVar.zzb;
                        int zzd3 = zzd(list2, str, zzalrVar3);
                        if (zzd3 == i3) {
                            zzd3 = zzd2 != i3 ? zzd2 : 1;
                        }
                        zzalrVar4 = zzalqVar.zzb;
                        int i7 = zzalrVar4.zzb - i6;
                        i = zzalqVar.zzc;
                        int i8 = i - i6;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i7, i8);
                        spannableStringBuilder.delete(i7, i8);
                        spannableStringBuilder.setSpan(new zzcs(subSequence.toString(), zzd3), i4, i7, 33);
                        i6 = subSequence.length() + i6;
                        i4 = i7;
                    }
                    i5++;
                    i3 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                break;
            case 4:
                for (String str3 : zzalrVar.zzd) {
                    Map map = zzc;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i2, length, 33);
                    } else {
                        Map map2 = zzd;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i2, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new zzcv(zzalrVar.zzc), i2, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List zzf = zzf(list2, str, zzalrVar);
        for (int i9 = 0; i9 < zzf.size(); i9++) {
            zzaln zzalnVar = ((zzals) zzf.get(i9)).zzb;
            if (zzalnVar != null) {
                if (zzalnVar.zzg() != -1) {
                    zzct.zzb(spannableStringBuilder, new StyleSpan(zzalnVar.zzg()), i2, length, 33);
                }
                if (zzalnVar.zzz()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i2, length, 33);
                }
                if (zzalnVar.zzy()) {
                    zzct.zzb(spannableStringBuilder, new ForegroundColorSpan(zzalnVar.zzc()), i2, length, 33);
                }
                if (zzalnVar.zzx()) {
                    zzct.zzb(spannableStringBuilder, new BackgroundColorSpan(zzalnVar.zzb()), i2, length, 33);
                }
                if (zzalnVar.zzr() != null) {
                    zzct.zzb(spannableStringBuilder, new TypefaceSpan(zzalnVar.zzr()), i2, length, 33);
                }
                int zzd4 = zzalnVar.zzd();
                if (zzd4 == 1) {
                    zzct.zzb(spannableStringBuilder, new AbsoluteSizeSpan((int) zzalnVar.zza(), true), i2, length, 33);
                } else if (zzd4 == 2) {
                    zzct.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalnVar.zza()), i2, length, 33);
                } else if (zzd4 == 3) {
                    zzct.zzb(spannableStringBuilder, new RelativeSizeSpan(zzalnVar.zza() / 100.0f), i2, length, 33);
                }
                if (zzalnVar.zzw()) {
                    spannableStringBuilder.setSpan(new zzcr(), i2, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void zzh(String str, zzalt zzaltVar) {
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String group = matcher.group(1);
            group.getClass();
            int i2 = 2;
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                char c = 65535;
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    if (indexOf != -1) {
                        String substring = group2.substring(indexOf + 1);
                        switch (substring.hashCode()) {
                            case -1364013995:
                                if (substring.equals("center")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring.equals("middle")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring.equals("end")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring.equals("start")) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                        if (c == 0) {
                            i2 = 0;
                        } else if (c == 1 || c == 2) {
                            i2 = 1;
                        } else if (c != 3) {
                            zzdo.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                            i2 = Integer.MIN_VALUE;
                        }
                        zzaltVar.zzg = i2;
                        group2 = group2.substring(0, indexOf);
                    }
                    if (group2.endsWith("%")) {
                        zzaltVar.zze = zzalx.zza(group2);
                        zzaltVar.zzf = 0;
                    } else {
                        zzaltVar.zze = Integer.parseInt(group2);
                        zzaltVar.zzf = 1;
                    }
                } else if ("align".equals(group)) {
                    switch (group2.hashCode()) {
                        case -1364013995:
                            if (group2.equals("center")) {
                                c = 2;
                                break;
                            }
                            break;
                        case -1074341483:
                            if (group2.equals("middle")) {
                                c = 3;
                                break;
                            }
                            break;
                        case 100571:
                            if (group2.equals("end")) {
                                c = 4;
                                break;
                            }
                            break;
                        case 3317767:
                            if (group2.equals(ViewHierarchyConstants.DIMENSION_LEFT_KEY)) {
                                c = 1;
                                break;
                            }
                            break;
                        case 108511772:
                            if (group2.equals("right")) {
                                c = 5;
                                break;
                            }
                            break;
                        case 109757538:
                            if (group2.equals("start")) {
                                c = 0;
                                break;
                            }
                            break;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            if (c != 2 && c != 3) {
                                if (c != 4) {
                                    i = 5;
                                    if (c != 5) {
                                        zzdo.zzf("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                    }
                                } else {
                                    i = 3;
                                }
                            }
                            i = 2;
                        } else {
                            i = 4;
                        }
                    }
                    zzaltVar.zzd = i;
                } else if ("position".equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1842484672:
                                if (substring2.equals("line-left")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case -1364013995:
                                if (substring2.equals("center")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case -1276788989:
                                if (substring2.equals("line-right")) {
                                    c = 4;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring2.equals("middle")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring2.equals("end")) {
                                    c = 5;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring2.equals("start")) {
                                    c = 1;
                                    break;
                                }
                                break;
                        }
                        if (c == 0 || c == 1) {
                            i = 0;
                        } else if (c != 2 && c != 3) {
                            if (c == 4 || c == 5) {
                                i = 2;
                            } else {
                                zzdo.zzf("WebvttCueParser", "Invalid anchor value: ".concat(substring2));
                                i = Integer.MIN_VALUE;
                            }
                        }
                        zzaltVar.zzi = i;
                        group2 = group2.substring(0, indexOf2);
                    }
                    zzaltVar.zzh = zzalx.zza(group2);
                } else if ("size".equals(group)) {
                    zzaltVar.zzj = zzalx.zza(group2);
                } else if ("vertical".equals(group)) {
                    int hashCode = group2.hashCode();
                    if (hashCode != 3462) {
                        if (hashCode == 3642 && group2.equals("rl")) {
                            c = 0;
                        }
                    } else if (group2.equals("lr")) {
                        c = 1;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            zzdo.zzf("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                            i = Integer.MIN_VALUE;
                        } else {
                            i = 2;
                        }
                    }
                    zzaltVar.zzk = i;
                } else {
                    zzdo.zzf("WebvttCueParser", "Unknown cue setting " + group + CertificateUtil.DELIMITER + group2);
                }
            } catch (NumberFormatException unused) {
                zzdo.zzf("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(matcher.group())));
            }
        }
    }
}
