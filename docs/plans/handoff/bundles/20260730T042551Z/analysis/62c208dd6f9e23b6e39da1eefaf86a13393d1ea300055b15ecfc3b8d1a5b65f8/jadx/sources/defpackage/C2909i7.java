package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import java.net.MalformedURLException;
import java.net.URL;

/* renamed from: i7, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2909i7 implements InterfaceC3735tI {

    /* renamed from: do, reason: not valid java name */
    public final int f13429do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f13430do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConnectivityManager f13431do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC2792g8 f13432do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final URL f13433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3293lp f13434do;

    /* renamed from: if, reason: not valid java name */
    public final InterfaceC2792g8 f13435if;

    /* renamed from: i7$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final AbstractC2907i5 f13436do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String f13437do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final URL f13438do;

        public Cdo(URL url, AbstractC2907i5 abstractC2907i5, String str) {
            this.f13438do = url;
            this.f13436do = abstractC2907i5;
            this.f13437do = str;
        }
    }

    /* renamed from: i7$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f13439do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final long f13440do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final URL f13441do;

        public Cif(int i, URL url, long j) {
            this.f13439do = i;
            this.f13441do = url;
            this.f13440do = j;
        }
    }

    public C2909i7(Context context, InterfaceC2792g8 interfaceC2792g8, InterfaceC2792g8 interfaceC2792g82) {
        C3352mp c3352mp = new C3352mp();
        R2.f3095do.m2011do(c3352mp);
        c3352mp.f14399do = true;
        this.f13434do = new C3293lp(c3352mp);
        this.f13430do = context;
        this.f13431do = (ConnectivityManager) context.getSystemService("connectivity");
        String str = C3547q6.f15039for;
        try {
            this.f13433do = new URL(str);
            this.f13432do = interfaceC2792g82;
            this.f13435if = interfaceC2792g8;
            this.f13429do = 130000;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(C4122zt.m8824for("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a0, code lost:
    
        if (defpackage.AbstractC3946wu.Cdo.f16427do.get(r0) != null) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0105  */
    @Override // defpackage.InterfaceC3735tI
    /* renamed from: do, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.W3 mo6877do(defpackage.AbstractC3696sg r7) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2909i7.mo6877do(sg):W3");
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x046e A[Catch: IOException -> 0x04b6, TryCatch #2 {IOException -> 0x04b6, blocks: (B:97:0x02f6, B:100:0x02ff, B:104:0x030d, B:105:0x0317, B:107:0x035d, B:119:0x0384, B:121:0x0396, B:122:0x03a1, B:130:0x03c2, B:132:0x046a, B:134:0x046e, B:137:0x047d, B:140:0x0482, B:142:0x0486, B:151:0x049c, B:153:0x04a4, B:155:0x04ad, B:159:0x03cc, B:170:0x03ff, B:196:0x041e, B:195:0x041b, B:198:0x041f, B:225:0x044d, B:224:0x045c, B:161:0x03d0, B:163:0x03da, B:168:0x03fa, B:182:0x0410, B:181:0x040d, B:190:0x0415, B:110:0x0364, B:118:0x0381, B:215:0x044c, B:223:0x0449), top: B:96:0x02f6, inners: #6, #10, #11, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x047d A[Catch: IOException -> 0x04b6, TryCatch #2 {IOException -> 0x04b6, blocks: (B:97:0x02f6, B:100:0x02ff, B:104:0x030d, B:105:0x0317, B:107:0x035d, B:119:0x0384, B:121:0x0396, B:122:0x03a1, B:130:0x03c2, B:132:0x046a, B:134:0x046e, B:137:0x047d, B:140:0x0482, B:142:0x0486, B:151:0x049c, B:153:0x04a4, B:155:0x04ad, B:159:0x03cc, B:170:0x03ff, B:196:0x041e, B:195:0x041b, B:198:0x041f, B:225:0x044d, B:224:0x045c, B:161:0x03d0, B:163:0x03da, B:168:0x03fa, B:182:0x0410, B:181:0x040d, B:190:0x0415, B:110:0x0364, B:118:0x0381, B:215:0x044c, B:223:0x0449), top: B:96:0x02f6, inners: #6, #10, #11, #12 }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0482 A[EDGE_INSN: B:158:0x0482->B:140:0x0482 BREAK  A[LOOP:3: B:99:0x02fd->B:157:?], SYNTHETIC] */
    @Override // defpackage.InterfaceC3735tI
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C3426o3 mo6878if(defpackage.C3367n3 r33) {
        /*
            Method dump skipped, instructions count: 1218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C2909i7.mo6878if(n3):o3");
    }
}
