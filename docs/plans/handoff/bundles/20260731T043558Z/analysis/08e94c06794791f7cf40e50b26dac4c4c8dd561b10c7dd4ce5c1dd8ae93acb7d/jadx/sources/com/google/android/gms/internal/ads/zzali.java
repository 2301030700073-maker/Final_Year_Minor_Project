package com.google.android.gms.internal.ads;

import android.text.Layout;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.appevents.UserDataStore;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzali implements zzaki {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzalg zzh = new zzalg(30.0f, 1, 1);

    private static String[] zzc(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        String str2 = zzep.zza;
        return trim.split("\\s+", -1);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v20 */
    /* JADX WARN: Type inference failed for: r10v21 */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v25 */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v30 */
    /* JADX WARN: Type inference failed for: r10v31 */
    /* JADX WARN: Type inference failed for: r10v32 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v37 */
    /* JADX WARN: Type inference failed for: r10v38 */
    /* JADX WARN: Type inference failed for: r10v39 */
    /* JADX WARN: Type inference failed for: r10v40 */
    /* JADX WARN: Type inference failed for: r10v41 */
    /* JADX WARN: Type inference failed for: r10v42 */
    /* JADX WARN: Type inference failed for: r10v43 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* JADX WARN: Type inference failed for: r10v45 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v19 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v23 */
    /* JADX WARN: Type inference failed for: r6v25 */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v33 */
    /* JADX WARN: Type inference failed for: r6v34 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v73 */
    /* JADX WARN: Type inference failed for: r6v9 */
    private static zzall zzd(XmlPullParser xmlPullParser, zzall zzallVar) {
        ?? r6;
        Matcher matcher;
        char c;
        int attributeCount = xmlPullParser.getAttributeCount();
        boolean z = false;
        zzall zzallVar2 = zzallVar;
        int i = 0;
        while (i < attributeCount) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            ?? r10 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            ?? r102 = -1;
            r10 = -1;
            r10 = -1;
            ?? r103 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            r10 = -1;
            ?? r104 = -1;
            r10 = -1;
            r10 = -1;
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        r6 = 6;
                        break;
                    }
                    r6 = -1;
                    break;
                case -1289044182:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_EXTENT)) {
                        r6 = 16;
                        break;
                    }
                    r6 = -1;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        r6 = 3;
                        break;
                    }
                    r6 = -1;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        r6 = 7;
                        break;
                    }
                    r6 = -1;
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        r6 = 15;
                        break;
                    }
                    r6 = -1;
                    break;
                case -879295043:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                        r6 = 12;
                        break;
                    }
                    r6 = -1;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        r6 = 5;
                        break;
                    }
                    r6 = -1;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        r6 = z;
                        break;
                    }
                    r6 = -1;
                    break;
                case 3511770:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_RUBY)) {
                        r6 = 10;
                        break;
                    }
                    r6 = -1;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        r6 = 2;
                        break;
                    }
                    r6 = -1;
                    break;
                case 109403361:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_SHEAR)) {
                        r6 = 14;
                        break;
                    }
                    r6 = -1;
                    break;
                case 110138194:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_COMBINE)) {
                        r6 = 9;
                        break;
                    }
                    r6 = -1;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        r6 = 4;
                        break;
                    }
                    r6 = -1;
                    break;
                case 921125321:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_TEXT_EMPHASIS)) {
                        r6 = 13;
                        break;
                    }
                    r6 = -1;
                    break;
                case 1115953443:
                    if (attributeName.equals(TtmlNode.ATTR_TTS_RUBY_POSITION)) {
                        r6 = 11;
                        break;
                    }
                    r6 = -1;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        r6 = 1;
                        break;
                    }
                    r6 = -1;
                    break;
                case 1754920356:
                    if (attributeName.equals(TtmlNode.ATTR_EBUTTS_MULTI_ROW_ALIGN)) {
                        r6 = 8;
                        break;
                    }
                    r6 = -1;
                    break;
                default:
                    r6 = -1;
                    break;
            }
            switch (r6) {
                case 0:
                    if (!"style".equals(xmlPullParser.getName())) {
                        break;
                    } else {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzs(attributeValue);
                        break;
                    }
                case 1:
                    zzallVar2 = zze(zzallVar2);
                    try {
                        zzallVar2.zzn(zzde.zza(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        String.valueOf(attributeValue);
                        zzdt.zzc("TtmlParser", "Failed parsing background value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 2:
                    zzallVar2 = zze(zzallVar2);
                    try {
                        zzallVar2.zzk(zzde.zza(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        String.valueOf(attributeValue);
                        zzdt.zzc("TtmlParser", "Failed parsing color value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                case 3:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzi(attributeValue);
                    break;
                case 4:
                    try {
                        zzallVar2 = zze(zzallVar2);
                        String str = zzep.zza;
                        String[] split = attributeValue.split("\\s+", -1);
                        int length = split.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                StringBuilder sb = new StringBuilder(String.valueOf(length).length() + 41);
                                sb.append("Invalid number of entries for fontSize: ");
                                sb.append(length);
                                sb.append(".");
                                throw new zzake(sb.toString());
                            }
                            matcher = zze.matcher(split[1]);
                            zzdt.zzc("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(attributeValue).length() + 36);
                            sb2.append("Invalid expression for fontSize: '");
                            sb2.append(attributeValue);
                            sb2.append("'.");
                            throw new zzake(sb2.toString());
                        }
                        String group = matcher.group(3);
                        if (group == null) {
                            throw null;
                        }
                        String str2 = group;
                        int hashCode = group.hashCode();
                        if (hashCode == 37) {
                            if (group.equals("%")) {
                                c = 2;
                            }
                            c = 65535;
                        } else if (hashCode != 3240) {
                            if (hashCode == 3592 && group.equals("px")) {
                                c = 0;
                            }
                            c = 65535;
                        } else {
                            if (group.equals(UserDataStore.EMAIL)) {
                                c = 1;
                            }
                            c = 65535;
                        }
                        if (c == 0) {
                            zzallVar2.zzH(1);
                        } else if (c == 1) {
                            zzallVar2.zzH(2);
                        } else {
                            if (c != 2) {
                                StringBuilder sb3 = new StringBuilder(group.length() + 30);
                                sb3.append("Invalid unit for fontSize: '");
                                sb3.append(group);
                                sb3.append("'.");
                                throw new zzake(sb3.toString());
                            }
                            zzallVar2.zzH(3);
                        }
                        String group2 = matcher.group(1);
                        if (group2 == null) {
                            throw null;
                        }
                        String str3 = group2;
                        zzallVar2.zzG(Float.parseFloat(group2));
                        break;
                    } catch (zzake unused3) {
                        String.valueOf(attributeValue);
                        zzdt.zzc("TtmlParser", "Failed parsing fontSize value: ".concat(String.valueOf(attributeValue)));
                        break;
                    }
                    break;
                case 5:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzf(TtmlNode.BOLD.equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzg(TtmlNode.ITALIC.equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzz(zzf(attributeValue));
                    break;
                case 8:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzB(zzf(attributeValue));
                    break;
                case 9:
                    String zza2 = zzglm.zza(attributeValue);
                    int hashCode2 = zza2.hashCode();
                    if (hashCode2 != 96673) {
                        if (hashCode2 == 3387192 && zza2.equals("none")) {
                            r10 = z;
                        }
                    } else if (zza2.equals("all")) {
                        r10 = 1;
                    }
                    if (r10 == 0) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzD(z);
                        break;
                    } else if (r10 == 1) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzD(true);
                        break;
                    } else {
                        break;
                    }
                    break;
                case 10:
                    String zza3 = zzglm.zza(attributeValue);
                    switch (zza3.hashCode()) {
                        case -618561360:
                            if (zza3.equals(TtmlNode.RUBY_BASE_CONTAINER)) {
                                r104 = 2;
                                break;
                            }
                            break;
                        case -410956671:
                            if (zza3.equals("container")) {
                                r104 = z;
                                break;
                            }
                            break;
                        case -250518009:
                            if (zza3.equals(TtmlNode.RUBY_DELIMITER)) {
                                r104 = 5;
                                break;
                            }
                            break;
                        case -136074796:
                            if (zza3.equals(TtmlNode.RUBY_TEXT_CONTAINER)) {
                                r104 = 4;
                                break;
                            }
                            break;
                        case 3016401:
                            if (zza3.equals("base")) {
                                r104 = 1;
                                break;
                            }
                            break;
                        case 3556653:
                            if (zza3.equals("text")) {
                                r104 = 3;
                                break;
                            }
                            break;
                    }
                    if (r104 == 0) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzu(1);
                        break;
                    } else if (r104 != 1 && r104 != 2) {
                        if (r104 != 3 && r104 != 4) {
                            if (r104 == 5) {
                                zzallVar2 = zze(zzallVar2);
                                zzallVar2.zzu(4);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            zzallVar2 = zze(zzallVar2);
                            zzallVar2.zzu(3);
                            break;
                        }
                    } else {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzu(2);
                        break;
                    }
                case 11:
                    String zza4 = zzglm.zza(attributeValue);
                    int hashCode3 = zza4.hashCode();
                    if (hashCode3 != -1392885889) {
                        if (hashCode3 == 92734940 && zza4.equals(TtmlNode.ANNOTATION_POSITION_AFTER)) {
                            r103 = 1;
                        }
                    } else if (zza4.equals(TtmlNode.ANNOTATION_POSITION_BEFORE)) {
                        r103 = z;
                    }
                    if (r103 == 0) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzw(1);
                        break;
                    } else if (r103 == 1) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzw(2);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    String zza5 = zzglm.zza(attributeValue);
                    switch (zza5.hashCode()) {
                        case -1461280213:
                            if (zza5.equals(TtmlNode.NO_UNDERLINE)) {
                                r102 = 3;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (zza5.equals(TtmlNode.UNDERLINE)) {
                                r102 = 2;
                                break;
                            }
                            break;
                        case 913457136:
                            if (zza5.equals(TtmlNode.NO_LINETHROUGH)) {
                                r102 = 1;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (zza5.equals(TtmlNode.LINETHROUGH)) {
                                r102 = z;
                                break;
                            }
                            break;
                    }
                    if (r102 == 0) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzc(true);
                        break;
                    } else if (r102 == 1) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zzc(z);
                        break;
                    } else if (r102 == 2) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zze(true);
                        break;
                    } else if (r102 == 3) {
                        zzallVar2 = zze(zzallVar2);
                        zzallVar2.zze(z);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzF(zzale.zza(attributeValue));
                    break;
                case 14:
                    zzall zze2 = zze(zzallVar2);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float f = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String group3 = matcher2.group(1);
                            if (group3 == null) {
                                throw null;
                                break;
                            } else {
                                String str4 = group3;
                                f = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group3)));
                            }
                        } catch (NumberFormatException e) {
                            String.valueOf(attributeValue);
                            zzdt.zzd("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e);
                        }
                    } else {
                        String.valueOf(attributeValue);
                        zzdt.zzc("TtmlParser", "Invalid value for shear: ".concat(String.valueOf(attributeValue)));
                    }
                    zze2.zzp(f);
                    zzallVar2 = zze2;
                    break;
                case 15:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzK(attributeValue);
                    break;
                case 16:
                    zzallVar2 = zze(zzallVar2);
                    zzallVar2.zzM(attributeValue);
                    break;
            }
            i++;
            z = false;
        }
        return zzallVar2;
    }

    private static zzall zze(zzall zzallVar) {
        return zzallVar == null ? new zzall() : zzallVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Layout.Alignment zzf(String str) {
        char c;
        String zza2 = zzglm.zza(str);
        switch (zza2.hashCode()) {
            case -1364013995:
                if (zza2.equals(TtmlNode.CENTER)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 100571:
                if (zza2.equals("end")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 3317767:
                if (zza2.equals("left")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 108511772:
                if (zza2.equals("right")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 109757538:
                if (zza2.equals("start")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0 || c == 1) {
            return Layout.Alignment.ALIGN_NORMAL;
        }
        if (c == 2 || c == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (c != 4) {
            return null;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d6, code lost:
    
        if (r13.equals("s") != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzg(java.lang.String r13, com.google.android.gms.internal.ads.zzalg r14) throws com.google.android.gms.internal.ads.zzake {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzali.zzg(java.lang.String, com.google.android.gms.internal.ads.zzalg):long");
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void zza(byte[] bArr, int i, int i2, zzakh zzakhVar, zzdg zzdgVar) {
        zzakc.zza(zzb(bArr, i, i2), zzakhVar, zzdgVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x06d8, code lost:
    
        if (r14 != r10) goto L382;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0538 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x031a A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_LEAVE, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03d5 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_LEAVE, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0494 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_LEAVE, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04e2 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_LEAVE, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x06f3 A[Catch: zzake -> 0x06f7, IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_LEAVE, TryCatch #8 {zzake -> 0x06f7, blocks: (B:362:0x06ee, B:364:0x06f3), top: B:361:0x06ee }] */
    /* JADX WARN: Removed duplicated region for block: B:384:0x017e A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01e4 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, TRY_ENTER, TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0280 A[Catch: IOException -> 0x0794, XmlPullParserException -> 0x079e, LOOP:1: B:73:0x0280->B:87:0x0593, LOOP_START, PHI: r3 r7 r8 r10 r11 r12 r15
      0x0280: PHI (r3v21 java.lang.String) = (r3v3 java.lang.String), (r3v56 java.lang.String) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r7v5 java.util.HashMap) = (r7v1 java.util.HashMap), (r7v46 java.util.HashMap) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r8v36 java.util.HashMap) = (r8v1 java.util.HashMap), (r8v58 java.util.HashMap) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r10v24 java.lang.String) = (r10v10 java.lang.String), (r10v31 java.lang.String) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r11v21 java.lang.String) = (r11v6 java.lang.String), (r11v45 java.lang.String) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r12v12 java.lang.String) = (r12v9 java.lang.String), (r12v32 java.lang.String) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE]
      0x0280: PHI (r15v12 java.lang.String) = (r15v11 java.lang.String), (r15v14 java.lang.String) binds: [B:72:0x027e, B:87:0x0593] A[DONT_GENERATE, DONT_INLINE], TryCatch #17 {IOException -> 0x0794, XmlPullParserException -> 0x079e, blocks: (B:3:0x0008, B:6:0x0065, B:8:0x0070, B:11:0x007a, B:14:0x0084, B:16:0x008c, B:17:0x0093, B:19:0x009b, B:22:0x00af, B:23:0x00ce, B:25:0x00d8, B:26:0x00dc, B:28:0x00e8, B:29:0x00f3, B:33:0x016f, B:36:0x01ca, B:39:0x01e4, B:41:0x01ea, B:43:0x01f2, B:45:0x01fa, B:47:0x0202, B:49:0x020a, B:51:0x0212, B:53:0x0218, B:55:0x0220, B:57:0x0228, B:59:0x022e, B:61:0x0234, B:63:0x023a, B:65:0x0242, B:68:0x024b, B:70:0x0773, B:71:0x027a, B:73:0x0280, B:75:0x0289, B:77:0x0298, B:79:0x02a4, B:81:0x02ba, B:83:0x02c0, B:85:0x0587, B:94:0x02cc, B:97:0x02d8, B:102:0x0538, B:105:0x02f5, B:107:0x02fd, B:109:0x0305, B:111:0x030d, B:114:0x031a, B:118:0x0333, B:120:0x0339, B:122:0x0349, B:123:0x03b7, B:125:0x03c1, B:127:0x03c7, B:129:0x03cf, B:131:0x03d5, B:135:0x03e8, B:137:0x03ee, B:139:0x03fe, B:140:0x048c, B:142:0x0494, B:155:0x04da, B:157:0x04e2, B:173:0x052b, B:191:0x040e, B:195:0x0410, B:196:0x0411, B:197:0x0421, B:200:0x0429, B:203:0x043a, B:205:0x0440, B:207:0x044e, B:210:0x0465, B:213:0x0467, B:214:0x0468, B:215:0x0478, B:219:0x0354, B:222:0x0356, B:223:0x0357, B:224:0x035f, B:227:0x0369, B:230:0x0372, B:232:0x0378, B:234:0x0386, B:237:0x039a, B:240:0x039c, B:241:0x039d, B:242:0x03a6, B:246:0x054b, B:248:0x0558, B:250:0x0563, B:252:0x0569, B:253:0x0575, B:263:0x05a2, B:267:0x05c3, B:286:0x0674, B:295:0x062f, B:299:0x0638, B:292:0x0704, B:306:0x0642, B:309:0x064c, B:314:0x0661, B:316:0x0666, B:318:0x066d, B:344:0x068c, B:348:0x069d, B:351:0x06a6, B:357:0x06cd, B:359:0x06e0, B:362:0x06ee, B:364:0x06f3, B:372:0x06d4, B:384:0x017e, B:386:0x018a, B:389:0x0193, B:391:0x0199, B:393:0x01a7, B:396:0x01b7, B:399:0x01b9, B:400:0x01ba, B:401:0x010c, B:403:0x0118, B:406:0x0121, B:408:0x0127, B:411:0x0132, B:413:0x0138, B:418:0x0151, B:420:0x0167, B:425:0x015c, B:431:0x0162, B:442:0x0723, B:445:0x0733, B:448:0x0737, B:450:0x0741, B:452:0x074b, B:453:0x0756, B:457:0x0753, B:461:0x0769, B:464:0x076f, B:468:0x078d, B:471:0x0793), top: B:2:0x0008, inners: #2, #5, #6, #7, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzakd zzb(byte[] r46, int r47, int r48) {
        /*
            Method dump skipped, instructions count: 1986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzali.zzb(byte[], int, int):com.google.android.gms.internal.ads.zzakd");
    }

    public zzali() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.zzi = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }
}
