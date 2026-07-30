package defpackage;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.os.Build;
import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class I8 {

    /* renamed from: do, reason: not valid java name */
    public static final AtomicInteger f1456do = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* renamed from: I8$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final C2778fv f1457do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f1458do;

        public Cdo(C2778fv c2778fv, String str) {
            this.f1457do = c2778fv;
            this.f1458do = str;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(77:0|1|2|3|(1:5)|232|7|(3:211|212|(63:214|(2:218|(2:222|(3:224|(1:226)(1:228)|227)))|10|(1:12)|13|(1:15)|16|(3:197|(3:205|206|207)|(1:204))|22|(1:24)|25|(1:27)(2:187|(1:192)(1:191))|28|(1:30)|31|(1:33)(5:177|(1:179)|180|(1:182)(1:186)|(1:184)(1:185))|34|(1:36)(8:152|(5:155|(1:167)(1:161)|(2:163|164)(1:166)|165|153)|168|169|(1:171)|172|(1:174)(1:176)|175)|37|(1:39)(3:147|(1:149)(1:151)|150)|(1:41)|42|(36:143|144|(1:48)|49|(1:51)|52|(1:138)|(1:59)|60|(1:137)|(1:67)|68|(1:136)|(1:73)|74|(21:132|133|(1:78)|79|(3:122|123|(18:125|(1:127)|128|(1:83)|84|(4:86|87|88|(2:90|(12:92|(3:94|(1:97)|98)|99|(1:101)|102|(1:104)|105|(1:107)|108|(1:110)|111|112)(2:114|115))(2:116|117))|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112)(2:129|130))|81|(0)|84|(0)|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112)|76|(0)|79|(0)|81|(0)|84|(0)|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112)|44|(39:139|140|(0)|49|(0)|52|(1:54)|138|(0)|60|(1:62)|137|(0)|68|(1:70)|136|(0)|74|(0)|76|(0)|79|(0)|81|(0)|84|(0)|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112)|46|(0)|49|(0)|52|(0)|138|(0)|60|(0)|137|(0)|68|(0)|136|(0)|74|(0)|76|(0)|79|(0)|81|(0)|84|(0)|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112))|9|10|(0)|13|(0)|16|(2:18|193)|197|(1:199)|205|206|207|(1:202)|204|22|(0)|25|(0)(0)|28|(0)|31|(0)(0)|34|(0)(0)|37|(0)(0)|(0)|42|(0)|44|(0)|46|(0)|49|(0)|52|(0)|138|(0)|60|(0)|137|(0)|68|(0)|136|(0)|74|(0)|76|(0)|79|(0)|81|(0)|84|(0)|121|(0)|99|(0)|102|(0)|105|(0)|108|(0)|111|112) */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0117, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0118, code lost:
    
        r0.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r0 != null) goto L11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03fe  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0365 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0345 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x029e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0257  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x03d9  */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v126 */
    /* JADX WARN: Type inference failed for: r0v80, types: [int] */
    /* JADX WARN: Type inference failed for: r0v86 */
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.I8.Cdo m918do(android.content.Context r17, defpackage.C3240kv r18) {
        /*
            Method dump skipped, instructions count: 1082
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.I8.m918do(android.content.Context, kv):I8$do");
    }

    @TargetApi(26)
    /* renamed from: if, reason: not valid java name */
    public static boolean m919if(Resources resources, int i) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            return !(resources.getDrawable(i, null) instanceof AdaptiveIconDrawable);
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }
}
