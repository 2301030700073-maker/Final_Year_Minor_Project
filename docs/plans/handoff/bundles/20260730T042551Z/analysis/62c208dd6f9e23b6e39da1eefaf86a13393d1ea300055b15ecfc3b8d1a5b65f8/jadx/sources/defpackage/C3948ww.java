package defpackage;

import android.app.Activity;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheckp.MainActivity;

/* renamed from: ww, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3948ww {

    /* renamed from: break, reason: not valid java name */
    public static String f16485break = "";

    /* renamed from: case, reason: not valid java name */
    public static String f16486case = "";

    /* renamed from: catch, reason: not valid java name */
    public static String f16487catch = "";

    /* renamed from: class, reason: not valid java name */
    public static String f16488class = "";

    /* renamed from: const, reason: not valid java name */
    public static String f16489const = "";

    /* renamed from: do, reason: not valid java name */
    public static volatile Vw f16490do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static String f16491do = "";

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f16492do = false;

    /* renamed from: else, reason: not valid java name */
    public static String f16493else = "";

    /* renamed from: final, reason: not valid java name */
    public static String f16494final = "";

    /* renamed from: for, reason: not valid java name */
    public static String f16495for = "";

    /* renamed from: goto, reason: not valid java name */
    public static String f16496goto = "";

    /* renamed from: if, reason: not valid java name */
    public static String f16497if = "";

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static boolean f16498if = false;

    /* renamed from: new, reason: not valid java name */
    public static String f16499new = "";

    /* renamed from: this, reason: not valid java name */
    public static String f16500this = "";

    /* renamed from: try, reason: not valid java name */
    public static String f16501try = "";

    /* renamed from: case, reason: not valid java name */
    public static String m8597case(Activity activity, String str) {
        if (RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String string = (str.contains("/system/bin/su") || str.contains("/system/xbin/su")) ? activity.getString(R.string.sysFileSLoc) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (str.contains("/su/bin/su")) {
            string = activity.getString(R.string.sysFileSystemless);
        }
        if (str.contains("/sbin/su") || str.contains("/system/xbin/sudo") || str.contains("/magisk/.core/bin/su")) {
            string = activity.getString(R.string.sysFileALoc);
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(string) ? activity.getString(R.string.sysFileASELoc) : string;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(23:5|6|7|(9:9|10|11|12|13|14|15|16|17)|(3:347|348|(18:350|(1:21)(1:346)|22|23|24|25|(12:27|(9:35|(1:37)(2:282|(2:314|(3:318|(4:323|(2:328|329)|331|332)|333))(3:286|287|(1:313)(3:291|(3:296|(2:301|(1:306)(1:305))|307)|308)))|38|39|(3:271|(2:281|52)|53)(3:43|(2:51|52)|53)|54|55|56|(25:58|(6:61|(2:63|(1:65)(5:69|(1:99)(2:71|(1:98)(2:75|(1:77)(3:80|(2:82|83)(2:84|(2:86|87)(2:88|(2:90|91)(2:92|(2:94|95)(2:96|97))))|68)))|78|79|68))(1:100)|66|67|68|59)|101|102|(4:105|(2:112|(2:114|115)(1:116))(2:109|110)|111|103)|117|118|(6:121|(2:129|(1:131)(2:132|128))(1:125)|126|127|128|119)|133|134|(6:137|(2:145|(1:147)(2:148|144))(1:141)|142|143|144|135)|149|150|(6:153|(2:161|(1:163)(2:164|160))(1:157)|158|159|160|151)|165|166|(6:169|(2:177|(1:179)(2:180|176))(1:173)|174|175|176|167)|181|182|(6:185|(2:193|(1:195)(2:196|192))(1:189)|190|191|192|183)|197|198|(6:201|(2:209|(1:211)(2:212|208))(1:205)|206|207|208|199)|213|214))|334|39|(1:41)|271|(6:273|275|277|279|281|52)|53|54|55|56|(0))(2:335|336)|330|38|39|(0)|271|(0)|53|54|55|56|(0)))|19|(0)(0)|22|23|24|25|(0)(0)|330|38|39|(0)|271|(0)|53|54|55|56|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0236, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0251, code lost:
    
        r2 = com.google.android.gms.ads.RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0234, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0238, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x0239, code lost:
    
        r19 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x023b, code lost:
    
        r22 = "line.separator";
        r21 = " ";
     */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05bd  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0697  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06a3  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x06da  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0720  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0724  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0203 A[Catch: Exception -> 0x0234, TryCatch #8 {Exception -> 0x0234, blocks: (B:41:0x01d4, B:43:0x01d9, B:45:0x01dd, B:47:0x01e3, B:49:0x01e9, B:51:0x01ef, B:271:0x0200, B:273:0x0203, B:275:0x0209, B:277:0x020f, B:279:0x0215, B:281:0x021b, B:329:0x016b, B:336:0x01af), top: B:25:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006d A[Catch: Exception -> 0x0236, TRY_ENTER, TryCatch #5 {Exception -> 0x0236, blocks: (B:27:0x006d, B:29:0x0071, B:31:0x0076, B:33:0x007b, B:35:0x0080, B:282:0x008c, B:284:0x0094, B:286:0x009e, B:289:0x00aa, B:291:0x00d1, B:293:0x00d9, B:296:0x00e2, B:298:0x00ea, B:301:0x00f3, B:303:0x00fc, B:305:0x0109, B:306:0x0112, B:307:0x011b, B:308:0x0124, B:309:0x00b2, B:311:0x00bb, B:313:0x00c8, B:314:0x012d, B:316:0x0135, B:318:0x013e, B:320:0x0147, B:323:0x0151, B:325:0x015a, B:328:0x0164, B:332:0x0189, B:333:0x018e, B:335:0x01a8), top: B:25:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x01a8 A[Catch: Exception -> 0x0236, TRY_LEAVE, TryCatch #5 {Exception -> 0x0236, blocks: (B:27:0x006d, B:29:0x0071, B:31:0x0076, B:33:0x007b, B:35:0x0080, B:282:0x008c, B:284:0x0094, B:286:0x009e, B:289:0x00aa, B:291:0x00d1, B:293:0x00d9, B:296:0x00e2, B:298:0x00ea, B:301:0x00f3, B:303:0x00fc, B:305:0x0109, B:306:0x0112, B:307:0x011b, B:308:0x0124, B:309:0x00b2, B:311:0x00bb, B:313:0x00c8, B:314:0x012d, B:316:0x0135, B:318:0x013e, B:320:0x0147, B:323:0x0151, B:325:0x015a, B:328:0x0164, B:332:0x0189, B:333:0x018e, B:335:0x01a8), top: B:25:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01d4 A[Catch: Exception -> 0x0234, TRY_ENTER, TryCatch #8 {Exception -> 0x0234, blocks: (B:41:0x01d4, B:43:0x01d9, B:45:0x01dd, B:47:0x01e3, B:49:0x01e9, B:51:0x01ef, B:271:0x0200, B:273:0x0203, B:275:0x0209, B:277:0x020f, B:279:0x0215, B:281:0x021b, B:329:0x016b, B:336:0x01af), top: B:25:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0305 A[Catch: Exception -> 0x059b, TryCatch #2 {Exception -> 0x059b, blocks: (B:56:0x0301, B:58:0x0305, B:59:0x033a, B:61:0x033d, B:63:0x034c, B:66:0x0407, B:68:0x0409, B:69:0x0367, B:71:0x0376, B:73:0x0385, B:75:0x0394, B:78:0x03f9, B:80:0x03a4, B:82:0x03ae, B:84:0x03b2, B:86:0x03c1, B:88:0x03c5, B:90:0x03d4, B:92:0x03d8, B:94:0x03e7, B:96:0x03eb, B:103:0x040f, B:105:0x0412, B:107:0x0416, B:109:0x041c, B:111:0x0442, B:112:0x041f, B:114:0x0423, B:119:0x0446, B:121:0x0449, B:123:0x044d, B:125:0x0453, B:128:0x047a, B:129:0x0456, B:131:0x045a, B:135:0x047e, B:137:0x0481, B:139:0x0485, B:141:0x048b, B:144:0x04b2, B:145:0x048e, B:147:0x0492, B:151:0x04b6, B:153:0x04b9, B:155:0x04bd, B:157:0x04c3, B:160:0x04ea, B:161:0x04c6, B:163:0x04ca, B:167:0x04ee, B:169:0x04f1, B:171:0x04f5, B:173:0x04fb, B:176:0x0522, B:177:0x04fe, B:179:0x0502, B:183:0x0526, B:185:0x0529, B:187:0x052d, B:189:0x0533, B:192:0x055a, B:193:0x0536, B:195:0x053a, B:199:0x055e, B:201:0x0561, B:203:0x0565, B:205:0x056b, B:208:0x0592, B:209:0x056e, B:211:0x0572, B:214:0x0595), top: B:55:0x0301 }] */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8598do(android.app.Activity r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 1832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3948ww.m8598do(android.app.Activity, java.lang.String):void");
    }

    /* renamed from: else, reason: not valid java name */
    public static String m8599else(String str, String[] strArr) {
        if (strArr[3] == null || strArr.length < 4) {
            C0766bi m4854do = C0766bi.m4854do();
            StringBuilder m2493break = V1.m2493break("SysFileParsing-Field3Null: ", str, ", fields.length: ");
            m2493break.append(strArr.length);
            m4854do.m4856if(m2493break.toString());
            return "Device did not respond properly";
        }
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        for (int i = 3; i < strArr.length; i++) {
            StringBuilder m6916goto = Cif.m6916goto(str2, " ");
            m6916goto.append(strArr[i]);
            str2 = m6916goto.toString();
        }
        return str2;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8600for(String str) {
        String str2;
        try {
            if (str.contains("uid") && str.contains(")")) {
                f16500this = str.substring(str.indexOf("uid"), str.indexOf(")") + 1);
            } else if (str.contains("uid=0")) {
                f16500this = str.substring(str.indexOf("uid=0"), str.indexOf("uid=0") + 5);
            } else {
                f16500this = "Root not properly returning its user id";
            }
            if (str.contains("gid") && str.lastIndexOf(")") != -1) {
                f16485break = str.substring(str.indexOf("gid"), str.lastIndexOf(")") + 1);
            } else if (str.contains("gid=0")) {
                f16485break = str.substring(str.indexOf("gid=0"), str.indexOf("gid=0") + 5);
            } else {
                f16485break = "Root not properly returning its group id";
            }
            if (str.contains("context")) {
                f16487catch = str.substring(str.indexOf("context"));
            }
        } catch (Exception e) {
            f16488class = str;
            C0766bi.m4854do().m4855for(e);
        }
        StringBuilder sb = new StringBuilder("Root user id: ");
        sb.append(f16500this);
        sb.append(System.getProperty("line.separator"));
        sb.append(System.getProperty("line.separator"));
        sb.append("Root group id: ");
        sb.append(f16485break);
        String str3 = f16487catch;
        String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str3)) {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            str2 = System.getProperty("line.separator") + System.getProperty("line.separator") + "Root SELinux context: " + f16487catch;
        }
        sb.append(str2);
        if ("Root not properly returning its user id".equals(f16500this) && "Root not properly returning its group id".equals(f16485break)) {
            str4 = System.getProperty("line.separator") + System.getProperty("line.separator") + "Details: " + str;
        }
        sb.append(str4);
        f16488class = sb.toString();
        boolean z = MainActivity.f12316case;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8601if(Activity activity, String str) {
        String[] split = str.split("  *");
        if (split[0] != null) {
            try {
                int indexOf = f16489const.indexOf("ls -l " + split[0]);
                int indexOf2 = f16489const.indexOf(System.getProperty("line.separator") + activity.getString(R.string.rcrAnalysis), indexOf);
                StringBuilder sb = new StringBuilder("--version: ");
                sb.append(System.getProperty("line.separator"));
                String sb2 = sb.toString();
                String substring = str.substring(str.indexOf(sb2) + sb2.length());
                if (substring.contains("not allowed") || substring.contains("Permission denied")) {
                    substring = activity.getString(R.string.resultNotProvided);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(f16489const.substring(0, indexOf2));
                sb3.append(System.getProperty("line.separator"));
                sb3.append(activity.getString(R.string.rcrVersion));
                sb3.append(" ");
                sb3.append(substring);
                String str2 = f16489const;
                sb3.append(str2.substring(indexOf2, str2.length()));
                f16489const = sb3.toString();
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                C0766bi.m4854do().m4856if("SuBinaryVersionException: " + f16489const);
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8602new() {
        boolean[] zArr = QF.f2891do;
        boolean z = zArr[0];
        if (!z && !zArr[1] && !zArr[2] && !zArr[3] && !zArr[4] && !zArr[6] && !zArr[7] && !zArr[5] && !zArr[8]) {
            if (QF.f2889do) {
                f16494final = Creturn.m7984try(new StringBuilder(), f16494final, "Android was unable to confirm Superuser application installation status");
                C3210kN.m7246class("runtimeException");
                MainActivity.f12320goto = false;
                return;
            } else {
                f16494final = Creturn.m7984try(new StringBuilder(), f16494final, "NOT installed: SuperSU by Chainfire, Superuser by ChainsDD, or Superuser by Koush");
                C3210kN.m7246class("NotInstalled");
                MainActivity.f12320goto = false;
                return;
            }
        }
        if (z) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Superuser by ChainsDD - version " + QF.f2892for[0];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[0], QF.f2890do[0]));
        }
        if (zArr[2]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: SuperSU Pro by Chainfire - version " + QF.f2892for[2];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[2], QF.f2890do[2]));
        }
        if (zArr[1]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: SuperSU by Chainfire - version " + QF.f2892for[1];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[1], QF.f2890do[1]));
        }
        if (zArr[3]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Superuser by Koush - version " + QF.f2892for[3];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[3], QF.f2890do[3]));
        }
        if (zArr[4]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Kinguser by KingRoot - version " + QF.f2892for[4];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[4], QF.f2890do[4]));
        }
        if (zArr[6]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Superuser by Kingo - version " + QF.f2892for[6];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[6], QF.f2890do[6]));
        }
        if (zArr[7]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Superuser by Koush and phh - version " + QF.f2892for[7];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[7], QF.f2890do[7]));
        }
        if (zArr[5]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: CafeUser by KingRoot - version " + QF.f2892for[5];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[5], QF.f2890do[5]));
        }
        if (zArr[8]) {
            if (f16494final.length() > 0) {
                f16494final += System.getProperty("line.separator");
            }
            f16494final += "Installed: Magisk Manager by topjohnwu - version " + QF.f2892for[8];
            C3210kN.m7246class(VJ.m2561const(QF.f2893if[8], QF.f2890do[8]));
        }
        MainActivity.f12320goto = true;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m8603try(String[] strArr) {
        String str;
        if (strArr[0] == null || strArr[1] == null || (str = strArr[2]) == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String[] split = str.split(": *");
        StringBuilder sb = new StringBuilder();
        sb.append(strArr[0]);
        sb.append(" ");
        sb.append(strArr[1]);
        sb.append(" ");
        String str2 = split[0];
        if (str2 == null) {
            str2 = strArr[2];
        }
        sb.append(str2);
        return sb.toString();
    }
}
