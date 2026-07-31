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
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.react.uimanager.ViewProps;
import io.sentry.rrweb.RRWebVideoEvent;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzalz {
    public static final Pattern zza = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*)?$");
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
        zzc = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        zzd = Collections.unmodifiableMap(hashMap2);
    }

    public static zzalt zza(zzeg zzegVar, List list) {
        String zzN = zzegVar.zzN(StandardCharsets.UTF_8);
        if (zzN != null) {
            Pattern pattern = zza;
            Matcher matcher = pattern.matcher(zzN);
            if (matcher.matches()) {
                return zzd(null, matcher, zzegVar, list);
            }
            String zzN2 = zzegVar.zzN(StandardCharsets.UTF_8);
            if (zzN2 != null) {
                Matcher matcher2 = pattern.matcher(zzN2);
                if (matcher2.matches()) {
                    return zzd(zzN.trim(), matcher2, zzegVar, list);
                }
            }
        }
        return null;
    }

    static zzcl zzb(String str) {
        zzaly zzalyVar = new zzaly();
        zze(str, zzalyVar);
        return zzalyVar.zza();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static android.text.SpannedString zzc(java.lang.String r17, java.lang.String r18, java.util.List r19) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalz.zzc(java.lang.String, java.lang.String, java.util.List):android.text.SpannedString");
    }

    private static zzalt zzd(String str, Matcher matcher, zzeg zzegVar, List list) {
        zzaly zzalyVar = new zzaly();
        try {
            String group = matcher.group(1);
            if (group == null) {
                throw null;
            }
            String str2 = group;
            zzalyVar.zza = zzamb.zza(group);
            String group2 = matcher.group(2);
            if (group2 == null) {
                throw null;
            }
            String str3 = group2;
            zzalyVar.zzb = zzamb.zza(group2);
            String group3 = matcher.group(3);
            group3.getClass();
            zze(group3, zzalyVar);
            StringBuilder sb = new StringBuilder();
            String zzN = zzegVar.zzN(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(zzN)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(zzN.trim());
                zzN = zzegVar.zzN(StandardCharsets.UTF_8);
            }
            zzalyVar.zzc = zzc(str, sb.toString(), list);
            return new zzalt(zzalyVar.zza().zzr(), zzalyVar.zza, zzalyVar.zzb);
        } catch (IllegalArgumentException unused) {
            String group4 = matcher.group();
            String.valueOf(group4);
            zzdt.zzc("WebvttCueParser", "Skipping cue with bad header: ".concat(String.valueOf(group4)));
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static void zze(String str, zzaly zzalyVar) {
        char c;
        char c2;
        char c3;
        Matcher matcher = zzb.matcher(str);
        while (matcher.find()) {
            int i = 1;
            String group = matcher.group(1);
            group.getClass();
            int i2 = 2;
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                if ("line".equals(group)) {
                    int indexOf = group2.indexOf(44);
                    char c4 = 65535;
                    if (indexOf != -1) {
                        String substring = group2.substring(indexOf + 1);
                        switch (substring.hashCode()) {
                            case -1364013995:
                                if (substring.equals(TtmlNode.CENTER)) {
                                    c4 = 1;
                                    break;
                                }
                                break;
                            case -1074341483:
                                if (substring.equals("middle")) {
                                    c4 = 2;
                                    break;
                                }
                                break;
                            case 100571:
                                if (substring.equals("end")) {
                                    c4 = 3;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (substring.equals("start")) {
                                    c4 = 0;
                                    break;
                                }
                                break;
                        }
                        if (c4 == 0) {
                            i2 = 0;
                        } else if (c4 == 1 || c4 == 2) {
                            i2 = 1;
                        } else if (c4 != 3) {
                            String.valueOf(substring);
                            zzdt.zzc("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(substring)));
                            i2 = Integer.MIN_VALUE;
                        }
                        zzalyVar.zzg = i2;
                        group2 = group2.substring(0, indexOf);
                    }
                    if (group2.endsWith("%")) {
                        zzalyVar.zze = zzamb.zzb(group2);
                        zzalyVar.zzf = 0;
                    } else {
                        zzalyVar.zze = Integer.parseInt(group2);
                        zzalyVar.zzf = 1;
                    }
                } else if ("align".equals(group)) {
                    switch (group2.hashCode()) {
                        case -1364013995:
                            if (group2.equals(TtmlNode.CENTER)) {
                                c = 2;
                                break;
                            }
                            c = 65535;
                            break;
                        case -1074341483:
                            if (group2.equals("middle")) {
                                c = 3;
                                break;
                            }
                            c = 65535;
                            break;
                        case 100571:
                            if (group2.equals("end")) {
                                c = 4;
                                break;
                            }
                            c = 65535;
                            break;
                        case 3317767:
                            if (group2.equals("left")) {
                                c = 1;
                                break;
                            }
                            c = 65535;
                            break;
                        case 108511772:
                            if (group2.equals("right")) {
                                c = 5;
                                break;
                            }
                            c = 65535;
                            break;
                        case 109757538:
                            if (group2.equals("start")) {
                                c = 0;
                                break;
                            }
                            c = 65535;
                            break;
                        default:
                            c = 65535;
                            break;
                    }
                    if (c != 0) {
                        if (c != 1) {
                            if (c != 2 && c != 3) {
                                if (c == 4) {
                                    i = 3;
                                } else if (c != 5) {
                                    zzdt.zzc("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                } else {
                                    i = 5;
                                }
                            }
                            i = 2;
                        } else {
                            i = 4;
                        }
                    }
                    zzalyVar.zzd = i;
                } else if (ViewProps.POSITION.equals(group)) {
                    int indexOf2 = group2.indexOf(44);
                    if (indexOf2 != -1) {
                        String substring2 = group2.substring(indexOf2 + 1);
                        switch (substring2.hashCode()) {
                            case -1842484672:
                                if (substring2.equals("line-left")) {
                                    c3 = 0;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case -1364013995:
                                if (substring2.equals(TtmlNode.CENTER)) {
                                    c3 = 2;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case -1276788989:
                                if (substring2.equals("line-right")) {
                                    c3 = 4;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case -1074341483:
                                if (substring2.equals("middle")) {
                                    c3 = 3;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case 100571:
                                if (substring2.equals("end")) {
                                    c3 = 5;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            case 109757538:
                                if (substring2.equals("start")) {
                                    c3 = 1;
                                    break;
                                }
                                c3 = 65535;
                                break;
                            default:
                                c3 = 65535;
                                break;
                        }
                        if (c3 == 0 || c3 == 1) {
                            i = 0;
                        } else if (c3 != 2 && c3 != 3) {
                            if (c3 == 4 || c3 == 5) {
                                i = 2;
                            } else {
                                String.valueOf(substring2);
                                zzdt.zzc("WebvttCueParser", "Invalid anchor value: ".concat(String.valueOf(substring2)));
                                i = Integer.MIN_VALUE;
                            }
                        }
                        zzalyVar.zzi = i;
                        group2 = group2.substring(0, indexOf2);
                    }
                    zzalyVar.zzh = zzamb.zzb(group2);
                } else if (RRWebVideoEvent.JsonKeys.SIZE.equals(group)) {
                    zzalyVar.zzj = zzamb.zzb(group2);
                } else if ("vertical".equals(group)) {
                    int hashCode = group2.hashCode();
                    if (hashCode != 3462) {
                        if (hashCode == 3642 && group2.equals("rl")) {
                            c2 = 0;
                        }
                        c2 = 65535;
                    } else {
                        if (group2.equals("lr")) {
                            c2 = 1;
                        }
                        c2 = 65535;
                    }
                    if (c2 != 0) {
                        if (c2 != 1) {
                            zzdt.zzc("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                            i = Integer.MIN_VALUE;
                        } else {
                            i = 2;
                        }
                    }
                    zzalyVar.zzk = i;
                } else {
                    StringBuilder sb = new StringBuilder(group.length() + 21 + group2.length());
                    sb.append("Unknown cue setting ");
                    sb.append(group);
                    sb.append(":");
                    sb.append(group2);
                    zzdt.zzc("WebvttCueParser", sb.toString());
                }
            } catch (NumberFormatException unused) {
                String group3 = matcher.group();
                String.valueOf(group3);
                zzdt.zzc("WebvttCueParser", "Skipping bad cue setting: ".concat(String.valueOf(group3)));
            }
        }
    }

    private static void zzf(String str, zzalw zzalwVar, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c;
        Comparator comparator;
        int i = zzalwVar.zzb;
        int length = spannableStringBuilder.length();
        String str2 = zzalwVar.zza;
        int hashCode = str2.hashCode();
        int i2 = -1;
        if (hashCode == 0) {
            if (str2.equals("")) {
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
            if (str2.equals(TtmlNode.ATTR_TTS_RUBY)) {
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
                spannableStringBuilder.setSpan(new StyleSpan(1), i, length, 33);
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(2), i, length, 33);
                break;
            case 2:
                int zzg = zzg(list2, str, zzalwVar);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                comparator = zzalv.zza;
                Collections.sort(arrayList, comparator);
                int i3 = i;
                int i4 = 0;
                int i5 = 0;
                while (i4 < arrayList.size()) {
                    if ("rt".equals(((zzalv) arrayList.get(i4)).zzc().zza)) {
                        zzalv zzalvVar = (zzalv) arrayList.get(i4);
                        int zzg2 = zzg(list2, str, zzalvVar.zzc());
                        if (zzg2 == i2) {
                            zzg2 = zzg != i2 ? zzg : 1;
                        }
                        int i6 = zzalvVar.zzc().zzb - i5;
                        int zzd2 = zzalvVar.zzd() - i5;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i6, zzd2);
                        spannableStringBuilder.delete(i6, zzd2);
                        spannableStringBuilder.setSpan(new zzcr(subSequence.toString(), zzg2), i3, i6, 33);
                        i5 += subSequence.length();
                        i3 = i6;
                    }
                    i4++;
                    i2 = -1;
                }
                break;
            case 3:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                break;
            case 4:
                for (String str3 : zzalwVar.zzd) {
                    Map map = zzc;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i, length, 33);
                    } else {
                        Map map2 = zzd;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i, length, 33);
                        }
                    }
                }
                break;
            case 5:
                spannableStringBuilder.setSpan(new zzcu(zzalwVar.zzc), i, length, 33);
                break;
            case 6:
            case 7:
                break;
            default:
                return;
        }
        List zzh = zzh(list2, str, zzalwVar);
        for (int i7 = 0; i7 < zzh.size(); i7++) {
            zzals zzalsVar = ((zzalx) zzh.get(i7)).zzb;
            if (zzalsVar != null) {
                if (zzalsVar.zzf() != -1) {
                    zzcs.zza(spannableStringBuilder, new StyleSpan(zzalsVar.zzf()), i, length, 33);
                }
                if (zzalsVar.zzg()) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
                }
                if (zzalsVar.zzo()) {
                    zzcs.zza(spannableStringBuilder, new ForegroundColorSpan(zzalsVar.zzm()), i, length, 33);
                }
                if (zzalsVar.zzr()) {
                    zzcs.zza(spannableStringBuilder, new BackgroundColorSpan(zzalsVar.zzp()), i, length, 33);
                }
                if (zzalsVar.zzk() != null) {
                    zzcs.zza(spannableStringBuilder, new TypefaceSpan(zzalsVar.zzk()), i, length, 33);
                }
                int zzu = zzalsVar.zzu();
                if (zzu == 1) {
                    zzcs.zza(spannableStringBuilder, new AbsoluteSizeSpan((int) zzalsVar.zzv(), true), i, length, 33);
                } else if (zzu == 2) {
                    zzcs.zza(spannableStringBuilder, new RelativeSizeSpan(zzalsVar.zzv()), i, length, 33);
                } else if (zzu == 3) {
                    zzcs.zza(spannableStringBuilder, new RelativeSizeSpan(zzalsVar.zzv() / 100.0f), i, length, 33);
                }
                if (zzalsVar.zzz()) {
                    spannableStringBuilder.setSpan(new zzcq(), i, length, 33);
                }
            }
        }
    }

    private static int zzg(List list, String str, zzalw zzalwVar) {
        List zzh = zzh(list, str, zzalwVar);
        for (int i = 0; i < zzh.size(); i++) {
            zzals zzalsVar = ((zzalx) zzh.get(i)).zzb;
            if (zzalsVar.zzx() != -1) {
                return zzalsVar.zzx();
            }
        }
        return -1;
    }

    private static List zzh(List list, String str, zzalw zzalwVar) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzals zzalsVar = (zzals) list.get(i);
            int zze = zzalsVar.zze(str, zzalwVar.zza, zzalwVar.zzd, zzalwVar.zzc);
            if (zze > 0) {
                arrayList.add(new zzalx(zze, zzalsVar));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }
}
