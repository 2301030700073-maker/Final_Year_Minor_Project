package com.google.android.gms.internal.ads;

import android.text.Layout;
import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.internal.AnalyticsEvents;
import defpackage.Cpublic;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes.dex */
public final class zzalf implements zzakf {
    private final XmlPullParserFactory zzi;
    private static final Pattern zzc = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    private static final Pattern zzd = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    private static final Pattern zze = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    static final Pattern zza = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    static final Pattern zzb = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    private static final Pattern zzf = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    private static final Pattern zzg = Pattern.compile("^(\\d+) (\\d+)$");
    private static final zzald zzh = new zzald(30.0f, 1, 1);

    public zzalf() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.zzi = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ca, code lost:
    
        if (r13.equals("s") != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static long zzc(java.lang.String r13, com.google.android.gms.internal.ads.zzald r14) {
        /*
            Method dump skipped, instructions count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalf.zzc(java.lang.String, com.google.android.gms.internal.ads.zzald):long");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static Layout.Alignment zzd(String str) {
        char c;
        String zza2 = zzftt.zza(str);
        switch (zza2.hashCode()) {
            case -1364013995:
                if (zza2.equals("center")) {
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
                if (zza2.equals(ViewHierarchyConstants.DIMENSION_LEFT_KEY)) {
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

    private static zzali zze(zzali zzaliVar) {
        return zzaliVar == null ? new zzali() : zzaliVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static zzali zzf(XmlPullParser xmlPullParser, zzali zzaliVar) {
        char c;
        Matcher matcher;
        String group;
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            String attributeValue = xmlPullParser.getAttributeValue(i);
            String attributeName = xmlPullParser.getAttributeName(i);
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        c = '\f';
                        break;
                    }
                    c = 65535;
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    if (AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE.equals(xmlPullParser.getName())) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzs(attributeValue);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    zzaliVar = zze(zzaliVar);
                    try {
                        zzaliVar.zzm(zzcz.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused) {
                        Cpublic.m7827this(attributeValue, "Failed parsing background value: ", "TtmlParser");
                        break;
                    }
                case 2:
                    zzaliVar = zze(zzaliVar);
                    try {
                        zzaliVar.zzo(zzcz.zzb(attributeValue));
                        break;
                    } catch (IllegalArgumentException unused2) {
                        Cpublic.m7827this(attributeValue, "Failed parsing color value: ", "TtmlParser");
                        break;
                    }
                case 3:
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzp(attributeValue);
                    break;
                case 4:
                    try {
                        zzaliVar = zze(zzaliVar);
                        int i2 = zzei.zza;
                        String[] split = attributeValue.split("\\s+", -1);
                        int length = split.length;
                        if (length == 1) {
                            matcher = zze.matcher(attributeValue);
                        } else {
                            if (length != 2) {
                                throw new zzakb("Invalid number of entries for fontSize: " + length + ".");
                            }
                            matcher = zze.matcher(split[1]);
                            zzdo.zzf("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
                        }
                        if (!matcher.matches()) {
                            throw new zzakb("Invalid expression for fontSize: '" + attributeValue + "'.");
                        }
                        group = matcher.group(3);
                        group.getClass();
                        group.hashCode();
                        switch (group) {
                            case "%":
                                zzaliVar.zzr(3);
                                break;
                            case "em":
                                zzaliVar.zzr(2);
                                break;
                            case "px":
                                zzaliVar.zzr(1);
                                break;
                            default:
                                throw new zzakb("Invalid unit for fontSize: '" + group + "'.");
                        }
                        String group2 = matcher.group(1);
                        group2.getClass();
                        zzaliVar.zzq(Float.parseFloat(group2));
                        break;
                    } catch (zzakb unused3) {
                        Cpublic.m7827this(attributeValue, "Failed parsing fontSize value: ", "TtmlParser");
                        break;
                    }
                case 5:
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzn("bold".equalsIgnoreCase(attributeValue));
                    break;
                case 6:
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzt("italic".equalsIgnoreCase(attributeValue));
                    break;
                case 7:
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzz(zzd(attributeValue));
                    break;
                case '\b':
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzv(zzd(attributeValue));
                    break;
                case '\t':
                    String zza2 = zzftt.zza(attributeValue);
                    zza2.hashCode();
                    if (zza2.equals(IntegrityManager.INTEGRITY_TYPE_NONE)) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzA(false);
                        break;
                    } else if (zza2.equals("all")) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzA(true);
                        break;
                    } else {
                        break;
                    }
                case '\n':
                    String zza3 = zzftt.zza(attributeValue);
                    zza3.hashCode();
                    switch (zza3) {
                        case "baseContainer":
                        case "base":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(2);
                            break;
                        case "container":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(1);
                            break;
                        case "delimiter":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(4);
                            break;
                        case "textContainer":
                        case "text":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzx(3);
                            break;
                    }
                case 11:
                    String zza4 = zzftt.zza(attributeValue);
                    zza4.hashCode();
                    if (zza4.equals("after")) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzw(2);
                        break;
                    } else if (zza4.equals("before")) {
                        zzaliVar = zze(zzaliVar);
                        zzaliVar.zzw(1);
                        break;
                    } else {
                        break;
                    }
                case '\f':
                    String zza5 = zzftt.zza(attributeValue);
                    zza5.hashCode();
                    switch (zza5) {
                        case "nounderline":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzC(false);
                            break;
                        case "underline":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzC(true);
                            break;
                        case "nolinethrough":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzu(false);
                            break;
                        case "linethrough":
                            zzaliVar = zze(zzaliVar);
                            zzaliVar.zzu(true);
                            break;
                    }
                case '\r':
                    zzaliVar = zze(zzaliVar);
                    zzaliVar.zzB(zzalb.zza(attributeValue));
                    break;
                case 14:
                    zzaliVar = zze(zzaliVar);
                    Matcher matcher2 = zza.matcher(attributeValue);
                    float f = Float.MAX_VALUE;
                    if (matcher2.matches()) {
                        try {
                            String group3 = matcher2.group(1);
                            group3.getClass();
                            f = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group3)));
                        } catch (NumberFormatException e) {
                            zzdo.zzg("TtmlParser", "Failed to parse shear: ".concat(String.valueOf(attributeValue)), e);
                        }
                    } else {
                        Cpublic.m7827this(attributeValue, "Invalid value for shear: ", "TtmlParser");
                    }
                    zzaliVar.zzy(f);
                    break;
            }
        }
        return zzaliVar;
    }

    private static String[] zzg(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return new String[0];
        }
        int i = zzei.zza;
        return trim.split("\\s+", -1);
    }

    @Override // com.google.android.gms.internal.ads.zzakf
    public final void zza(byte[] bArr, int i, int i2, zzake zzakeVar, zzdb zzdbVar) {
        zzajz.zza(zzb(bArr, i, i2), zzakeVar, zzdbVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:114:0x04d8 A[Catch: IOException -> 0x06bc, XmlPullParserException -> 0x06c6, TryCatch #17 {IOException -> 0x06bc, XmlPullParserException -> 0x06c6, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:17:0x008e, B:20:0x0098, B:23:0x00aa, B:24:0x00c9, B:26:0x00d7, B:27:0x00de, B:29:0x00ea, B:30:0x00f5, B:34:0x0178, B:38:0x01cf, B:41:0x01dd, B:43:0x01e3, B:45:0x01eb, B:47:0x01f3, B:49:0x01fb, B:51:0x0203, B:53:0x020b, B:55:0x0211, B:57:0x0219, B:59:0x0221, B:61:0x0227, B:63:0x022d, B:65:0x0235, B:67:0x023d, B:70:0x0246, B:72:0x06a4, B:74:0x0269, B:76:0x026f, B:78:0x0278, B:80:0x0287, B:82:0x0291, B:84:0x02a5, B:86:0x02ab, B:88:0x04dd, B:95:0x02af, B:98:0x02b9, B:100:0x02bf, B:102:0x02ca, B:104:0x02d0, B:105:0x02d7, B:109:0x02e3, B:114:0x04d8, B:115:0x02f0, B:117:0x02f8, B:122:0x0311, B:124:0x0318, B:126:0x0326, B:128:0x0372, B:130:0x037a, B:134:0x0389, B:136:0x0390, B:138:0x039e, B:140:0x03ed, B:142:0x03f5, B:155:0x043b, B:157:0x0443, B:173:0x048c, B:190:0x03a9, B:191:0x03b4, B:194:0x03bc, B:197:0x03c8, B:199:0x03cf, B:201:0x03db, B:204:0x0498, B:205:0x04a3, B:206:0x04ae, B:208:0x032f, B:209:0x0339, B:212:0x0343, B:215:0x034e, B:217:0x0355, B:219:0x0361, B:222:0x04b5, B:223:0x04c0, B:224:0x04cb, B:227:0x04f5, B:231:0x0512, B:250:0x05b2, B:260:0x056e, B:264:0x0577, B:256:0x0633, B:271:0x057f, B:274:0x0589, B:279:0x059e, B:281:0x05a3, B:283:0x05ab, B:307:0x05c7, B:311:0x05d1, B:314:0x05da, B:320:0x05ee, B:322:0x0603, B:325:0x0611, B:327:0x0616, B:335:0x05f5, B:347:0x0182, B:349:0x018e, B:352:0x0199, B:354:0x01a0, B:356:0x01ac, B:358:0x01b6, B:359:0x010d, B:361:0x0119, B:364:0x0124, B:366:0x012b, B:368:0x0137, B:373:0x014d, B:376:0x0154, B:379:0x016e, B:396:0x0653, B:402:0x0662, B:404:0x066c, B:406:0x0679, B:407:0x0681, B:411:0x0695, B:415:0x069d), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0443 A[Catch: IOException -> 0x06bc, XmlPullParserException -> 0x06c6, TRY_LEAVE, TryCatch #17 {IOException -> 0x06bc, XmlPullParserException -> 0x06c6, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:17:0x008e, B:20:0x0098, B:23:0x00aa, B:24:0x00c9, B:26:0x00d7, B:27:0x00de, B:29:0x00ea, B:30:0x00f5, B:34:0x0178, B:38:0x01cf, B:41:0x01dd, B:43:0x01e3, B:45:0x01eb, B:47:0x01f3, B:49:0x01fb, B:51:0x0203, B:53:0x020b, B:55:0x0211, B:57:0x0219, B:59:0x0221, B:61:0x0227, B:63:0x022d, B:65:0x0235, B:67:0x023d, B:70:0x0246, B:72:0x06a4, B:74:0x0269, B:76:0x026f, B:78:0x0278, B:80:0x0287, B:82:0x0291, B:84:0x02a5, B:86:0x02ab, B:88:0x04dd, B:95:0x02af, B:98:0x02b9, B:100:0x02bf, B:102:0x02ca, B:104:0x02d0, B:105:0x02d7, B:109:0x02e3, B:114:0x04d8, B:115:0x02f0, B:117:0x02f8, B:122:0x0311, B:124:0x0318, B:126:0x0326, B:128:0x0372, B:130:0x037a, B:134:0x0389, B:136:0x0390, B:138:0x039e, B:140:0x03ed, B:142:0x03f5, B:155:0x043b, B:157:0x0443, B:173:0x048c, B:190:0x03a9, B:191:0x03b4, B:194:0x03bc, B:197:0x03c8, B:199:0x03cf, B:201:0x03db, B:204:0x0498, B:205:0x04a3, B:206:0x04ae, B:208:0x032f, B:209:0x0339, B:212:0x0343, B:215:0x034e, B:217:0x0355, B:219:0x0361, B:222:0x04b5, B:223:0x04c0, B:224:0x04cb, B:227:0x04f5, B:231:0x0512, B:250:0x05b2, B:260:0x056e, B:264:0x0577, B:256:0x0633, B:271:0x057f, B:274:0x0589, B:279:0x059e, B:281:0x05a3, B:283:0x05ab, B:307:0x05c7, B:311:0x05d1, B:314:0x05da, B:320:0x05ee, B:322:0x0603, B:325:0x0611, B:327:0x0616, B:335:0x05f5, B:347:0x0182, B:349:0x018e, B:352:0x0199, B:354:0x01a0, B:356:0x01ac, B:358:0x01b6, B:359:0x010d, B:361:0x0119, B:364:0x0124, B:366:0x012b, B:368:0x0137, B:373:0x014d, B:376:0x0154, B:379:0x016e, B:396:0x0653, B:402:0x0662, B:404:0x066c, B:406:0x0679, B:407:0x0681, B:411:0x0695, B:415:0x069d), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0182 A[Catch: IOException -> 0x06bc, XmlPullParserException -> 0x06c6, TryCatch #17 {IOException -> 0x06bc, XmlPullParserException -> 0x06c6, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:17:0x008e, B:20:0x0098, B:23:0x00aa, B:24:0x00c9, B:26:0x00d7, B:27:0x00de, B:29:0x00ea, B:30:0x00f5, B:34:0x0178, B:38:0x01cf, B:41:0x01dd, B:43:0x01e3, B:45:0x01eb, B:47:0x01f3, B:49:0x01fb, B:51:0x0203, B:53:0x020b, B:55:0x0211, B:57:0x0219, B:59:0x0221, B:61:0x0227, B:63:0x022d, B:65:0x0235, B:67:0x023d, B:70:0x0246, B:72:0x06a4, B:74:0x0269, B:76:0x026f, B:78:0x0278, B:80:0x0287, B:82:0x0291, B:84:0x02a5, B:86:0x02ab, B:88:0x04dd, B:95:0x02af, B:98:0x02b9, B:100:0x02bf, B:102:0x02ca, B:104:0x02d0, B:105:0x02d7, B:109:0x02e3, B:114:0x04d8, B:115:0x02f0, B:117:0x02f8, B:122:0x0311, B:124:0x0318, B:126:0x0326, B:128:0x0372, B:130:0x037a, B:134:0x0389, B:136:0x0390, B:138:0x039e, B:140:0x03ed, B:142:0x03f5, B:155:0x043b, B:157:0x0443, B:173:0x048c, B:190:0x03a9, B:191:0x03b4, B:194:0x03bc, B:197:0x03c8, B:199:0x03cf, B:201:0x03db, B:204:0x0498, B:205:0x04a3, B:206:0x04ae, B:208:0x032f, B:209:0x0339, B:212:0x0343, B:215:0x034e, B:217:0x0355, B:219:0x0361, B:222:0x04b5, B:223:0x04c0, B:224:0x04cb, B:227:0x04f5, B:231:0x0512, B:250:0x05b2, B:260:0x056e, B:264:0x0577, B:256:0x0633, B:271:0x057f, B:274:0x0589, B:279:0x059e, B:281:0x05a3, B:283:0x05ab, B:307:0x05c7, B:311:0x05d1, B:314:0x05da, B:320:0x05ee, B:322:0x0603, B:325:0x0611, B:327:0x0616, B:335:0x05f5, B:347:0x0182, B:349:0x018e, B:352:0x0199, B:354:0x01a0, B:356:0x01ac, B:358:0x01b6, B:359:0x010d, B:361:0x0119, B:364:0x0124, B:366:0x012b, B:368:0x0137, B:373:0x014d, B:376:0x0154, B:379:0x016e, B:396:0x0653, B:402:0x0662, B:404:0x066c, B:406:0x0679, B:407:0x0681, B:411:0x0695, B:415:0x069d), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01dd A[Catch: IOException -> 0x06bc, XmlPullParserException -> 0x06c6, TRY_ENTER, TryCatch #17 {IOException -> 0x06bc, XmlPullParserException -> 0x06c6, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:17:0x008e, B:20:0x0098, B:23:0x00aa, B:24:0x00c9, B:26:0x00d7, B:27:0x00de, B:29:0x00ea, B:30:0x00f5, B:34:0x0178, B:38:0x01cf, B:41:0x01dd, B:43:0x01e3, B:45:0x01eb, B:47:0x01f3, B:49:0x01fb, B:51:0x0203, B:53:0x020b, B:55:0x0211, B:57:0x0219, B:59:0x0221, B:61:0x0227, B:63:0x022d, B:65:0x0235, B:67:0x023d, B:70:0x0246, B:72:0x06a4, B:74:0x0269, B:76:0x026f, B:78:0x0278, B:80:0x0287, B:82:0x0291, B:84:0x02a5, B:86:0x02ab, B:88:0x04dd, B:95:0x02af, B:98:0x02b9, B:100:0x02bf, B:102:0x02ca, B:104:0x02d0, B:105:0x02d7, B:109:0x02e3, B:114:0x04d8, B:115:0x02f0, B:117:0x02f8, B:122:0x0311, B:124:0x0318, B:126:0x0326, B:128:0x0372, B:130:0x037a, B:134:0x0389, B:136:0x0390, B:138:0x039e, B:140:0x03ed, B:142:0x03f5, B:155:0x043b, B:157:0x0443, B:173:0x048c, B:190:0x03a9, B:191:0x03b4, B:194:0x03bc, B:197:0x03c8, B:199:0x03cf, B:201:0x03db, B:204:0x0498, B:205:0x04a3, B:206:0x04ae, B:208:0x032f, B:209:0x0339, B:212:0x0343, B:215:0x034e, B:217:0x0355, B:219:0x0361, B:222:0x04b5, B:223:0x04c0, B:224:0x04cb, B:227:0x04f5, B:231:0x0512, B:250:0x05b2, B:260:0x056e, B:264:0x0577, B:256:0x0633, B:271:0x057f, B:274:0x0589, B:279:0x059e, B:281:0x05a3, B:283:0x05ab, B:307:0x05c7, B:311:0x05d1, B:314:0x05da, B:320:0x05ee, B:322:0x0603, B:325:0x0611, B:327:0x0616, B:335:0x05f5, B:347:0x0182, B:349:0x018e, B:352:0x0199, B:354:0x01a0, B:356:0x01ac, B:358:0x01b6, B:359:0x010d, B:361:0x0119, B:364:0x0124, B:366:0x012b, B:368:0x0137, B:373:0x014d, B:376:0x0154, B:379:0x016e, B:396:0x0653, B:402:0x0662, B:404:0x066c, B:406:0x0679, B:407:0x0681, B:411:0x0695, B:415:0x069d), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x026f A[Catch: IOException -> 0x06bc, XmlPullParserException -> 0x06c6, LOOP:1: B:76:0x026f->B:90:0x04e9, LOOP_START, PHI: r2 r5 r11
      0x026f: PHI (r2v35 java.lang.String) = (r2v16 java.lang.String), (r2v73 java.lang.String) binds: [B:75:0x026d, B:90:0x04e9] A[DONT_GENERATE, DONT_INLINE]
      0x026f: PHI (r5v7 java.util.HashMap) = (r5v1 java.util.HashMap), (r5v23 java.util.HashMap) binds: [B:75:0x026d, B:90:0x04e9] A[DONT_GENERATE, DONT_INLINE]
      0x026f: PHI (r11v10 com.google.android.gms.internal.ads.zzald) = (r11v5 com.google.android.gms.internal.ads.zzald), (r11v27 com.google.android.gms.internal.ads.zzald) binds: [B:75:0x026d, B:90:0x04e9] A[DONT_GENERATE, DONT_INLINE], TryCatch #17 {IOException -> 0x06bc, XmlPullParserException -> 0x06c6, blocks: (B:3:0x0006, B:6:0x0060, B:8:0x006b, B:11:0x0075, B:14:0x007f, B:16:0x0087, B:17:0x008e, B:20:0x0098, B:23:0x00aa, B:24:0x00c9, B:26:0x00d7, B:27:0x00de, B:29:0x00ea, B:30:0x00f5, B:34:0x0178, B:38:0x01cf, B:41:0x01dd, B:43:0x01e3, B:45:0x01eb, B:47:0x01f3, B:49:0x01fb, B:51:0x0203, B:53:0x020b, B:55:0x0211, B:57:0x0219, B:59:0x0221, B:61:0x0227, B:63:0x022d, B:65:0x0235, B:67:0x023d, B:70:0x0246, B:72:0x06a4, B:74:0x0269, B:76:0x026f, B:78:0x0278, B:80:0x0287, B:82:0x0291, B:84:0x02a5, B:86:0x02ab, B:88:0x04dd, B:95:0x02af, B:98:0x02b9, B:100:0x02bf, B:102:0x02ca, B:104:0x02d0, B:105:0x02d7, B:109:0x02e3, B:114:0x04d8, B:115:0x02f0, B:117:0x02f8, B:122:0x0311, B:124:0x0318, B:126:0x0326, B:128:0x0372, B:130:0x037a, B:134:0x0389, B:136:0x0390, B:138:0x039e, B:140:0x03ed, B:142:0x03f5, B:155:0x043b, B:157:0x0443, B:173:0x048c, B:190:0x03a9, B:191:0x03b4, B:194:0x03bc, B:197:0x03c8, B:199:0x03cf, B:201:0x03db, B:204:0x0498, B:205:0x04a3, B:206:0x04ae, B:208:0x032f, B:209:0x0339, B:212:0x0343, B:215:0x034e, B:217:0x0355, B:219:0x0361, B:222:0x04b5, B:223:0x04c0, B:224:0x04cb, B:227:0x04f5, B:231:0x0512, B:250:0x05b2, B:260:0x056e, B:264:0x0577, B:256:0x0633, B:271:0x057f, B:274:0x0589, B:279:0x059e, B:281:0x05a3, B:283:0x05ab, B:307:0x05c7, B:311:0x05d1, B:314:0x05da, B:320:0x05ee, B:322:0x0603, B:325:0x0611, B:327:0x0616, B:335:0x05f5, B:347:0x0182, B:349:0x018e, B:352:0x0199, B:354:0x01a0, B:356:0x01ac, B:358:0x01b6, B:359:0x010d, B:361:0x0119, B:364:0x0124, B:366:0x012b, B:368:0x0137, B:373:0x014d, B:376:0x0154, B:379:0x016e, B:396:0x0653, B:402:0x0662, B:404:0x066c, B:406:0x0679, B:407:0x0681, B:411:0x0695, B:415:0x069d), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x04e9 A[LOOP:1: B:76:0x026f->B:90:0x04e9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x04e3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzaka zzb(byte[] r42, int r43, int r44) {
        /*
            Method dump skipped, instructions count: 1770
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzalf.zzb(byte[], int, int):com.google.android.gms.internal.ads.zzaka");
    }
}
