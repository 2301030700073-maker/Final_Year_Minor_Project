package defpackage;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.A3;
import defpackage.AbstractC0533Ub;
import defpackage.C2644de;
import defpackage.C3720t3;
import defpackage.D3;
import defpackage.J8;
import defpackage.S3;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NavigableSet;
import java.util.TreeSet;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: Mb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0357Mb {

    /* renamed from: do, reason: not valid java name */
    public static final C0204Fb f2193do = new C0204Fb(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final E0 f2194do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0182Eb f2195do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0271Ic f2197do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final KJ f2198do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final OC f2199do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0467Rb f2200do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0482Rq f2201do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f2202do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final X1 f2203do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f2204do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C2642dc f2205do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2739fE f2206do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3162jc f2207do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3232kn f2208do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GG<Boolean> f2196do = new GG<>();

    /* renamed from: if, reason: not valid java name */
    public final GG<Boolean> f2210if = new GG<>();

    /* renamed from: for, reason: not valid java name */
    public final GG<Void> f2209for = new GG<>();

    public C0357Mb(Context context, C3232kn c3232kn, C0271Ic c0271Ic, C0495Sh c0495Sh, C2739fE c2739fE, X1 x1, KJ kj, C0482Rq c0482Rq, OC oc, InterfaceC0467Rb interfaceC0467Rb, E0 e0, C0182Eb c0182Eb, C3162jc c3162jc) {
        new AtomicBoolean(false);
        this.f2204do = context;
        this.f2208do = c3232kn;
        this.f2197do = c0271Ic;
        this.f2202do = c0495Sh;
        this.f2206do = c2739fE;
        this.f2203do = x1;
        this.f2198do = kj;
        this.f2201do = c0482Rq;
        this.f2200do = interfaceC0467Rb;
        this.f2194do = e0;
        this.f2195do = c0182Eb;
        this.f2199do = oc;
        this.f2207do = c3162jc;
    }

    /* renamed from: do, reason: not valid java name */
    public static XV m1438do(C0357Mb c0357Mb) {
        boolean z;
        c0357Mb.getClass();
        ArrayList arrayList = new ArrayList();
        for (File file : C0495Sh.m2182try(c0357Mb.f2202do.f3538if.listFiles(f2193do))) {
            try {
                long parseLong = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    z = true;
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                arrayList.add(z ? LG.m1320try(null) : LG.m1316for(new CallableC0336Lb(c0357Mb, parseLong), new ScheduledThreadPoolExecutor(1)));
            } catch (NumberFormatException unused2) {
                file.getName();
            }
            file.delete();
        }
        return LG.m1313case(arrayList);
    }

    /* renamed from: case, reason: not valid java name */
    public final void m1439case(XV xv) {
        XV xv2;
        XV m4911do;
        C0495Sh c0495Sh = this.f2199do.f2594do.f4875do;
        boolean z = (C0495Sh.m2182try(c0495Sh.f3539new.listFiles()).isEmpty() && C0495Sh.m2182try(c0495Sh.f3540try.listFiles()).isEmpty() && C0495Sh.m2182try(c0495Sh.f3534case.listFiles()).isEmpty()) ? false : true;
        GG<Boolean> gg = this.f2196do;
        if (!z) {
            gg.m722new(Boolean.FALSE);
            return;
        }
        C0271Ic c0271Ic = this.f2197do;
        if (c0271Ic.m958do()) {
            gg.m722new(Boolean.FALSE);
            m4911do = LG.m1320try(Boolean.TRUE);
        } else {
            gg.m722new(Boolean.TRUE);
            synchronized (c0271Ic.f1540do) {
                xv2 = c0271Ic.f1537do.f1160do;
            }
            m4911do = C0819cc.m4911do(xv2.mo606while(new C3645ro()), this.f2210if.f1160do);
        }
        m4911do.mo600import(this.f2207do.f13734do, new C0314Kb(this, xv));
    }

    /* renamed from: for, reason: not valid java name */
    public final void m1440for(final String str, Boolean bool) {
        Integer num;
        J8.Cdo cdo;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Locale locale = Locale.US;
        String format = String.format(locale, "Crashlytics Android SDK/%s", "19.2.1");
        C3232kn c3232kn = this.f2208do;
        X1 x1 = this.f2203do;
        C3839v4 c3839v4 = new C3839v4(c3232kn.f14047do, x1.f4435try, x1.f4428case, ((C0788c4) c3232kn.m7279for()).f8483do, C4122zt.m8826if(x1.f4432for != null ? 4 : 1), x1.f4429do);
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.VERSION.CODENAME;
        C3957x4 c3957x4 = new C3957x4(str2, str3, J8.m1015goto());
        Context context = this.f2204do;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        J8.Cdo cdo2 = J8.Cdo.UNKNOWN;
        String str4 = Build.CPU_ABI;
        boolean isEmpty = TextUtils.isEmpty(str4);
        J8.Cdo cdo3 = J8.Cdo.UNKNOWN;
        if (!isEmpty && (cdo = (J8.Cdo) J8.Cdo.f1596do.get(str4.toLowerCase(locale))) != null) {
            cdo3 = cdo;
        }
        int ordinal = cdo3.ordinal();
        String str5 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m1012do = J8.m1012do(context);
        boolean m1013else = J8.m1013else();
        int m1014for = J8.m1014for();
        String str6 = Build.MANUFACTURER;
        String str7 = Build.PRODUCT;
        this.f2200do.mo2057for(str, format, currentTimeMillis, new C3780u4(c3839v4, c3957x4, new C3898w4(ordinal, str5, availableProcessors, m1012do, blockCount, m1013else, m1014for, str6, str7)));
        if (bool.booleanValue() && str != null) {
            final KJ kj = this.f2198do;
            synchronized (kj.f1786do) {
                kj.f1786do = str;
                final Map<String, String> m1554do = kj.f1784do.f1792do.getReference().m1554do();
                final List<AbstractC3551qA> m7936do = kj.f1789do.m7936do();
                kj.f1788do.f13736if.m6567do(new Runnable() { // from class: JJ
                    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
                    /* JADX WARN: Removed duplicated region for block: B:25:0x0066  */
                    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            r8 = this;
                            KJ r0 = defpackage.KJ.this
                            java.util.concurrent.atomic.AtomicMarkableReference<java.lang.String> r1 = r0.f1787do
                            java.lang.Object r1 = r1.getReference()
                            java.lang.String r1 = (java.lang.String) r1
                            java.lang.String r2 = r2
                            Ys r3 = r0.f1785do
                            if (r1 == 0) goto L52
                            java.util.concurrent.atomic.AtomicMarkableReference<java.lang.String> r0 = r0.f1787do
                            java.lang.Object r0 = r0.getReference()
                            java.lang.String r0 = (java.lang.String) r0
                            Sh r1 = r3.f4766do
                            java.lang.String r4 = "user-data"
                            java.io.File r1 = r1.m2184if(r2, r4)
                            r4 = 0
                            Xs r5 = new Xs     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            r5.<init>(r0)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            java.lang.String r0 = r5.toString()     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            java.io.BufferedWriter r5 = new java.io.BufferedWriter     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            java.io.OutputStreamWriter r6 = new java.io.OutputStreamWriter     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            r7.<init>(r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            java.nio.charset.Charset r1 = defpackage.C0638Ys.f4765do     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            r6.<init>(r7, r1)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            r5.<init>(r6)     // Catch: java.lang.Throwable -> L4a java.lang.Exception -> L4f
                            r5.write(r0)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L48
                            r5.flush()     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L48
                            defpackage.J8.m1016if(r5)
                            goto L52
                        L45:
                            r0 = move-exception
                            r4 = r5
                            goto L4b
                        L48:
                            r4 = r5
                            goto L4f
                        L4a:
                            r0 = move-exception
                        L4b:
                            defpackage.J8.m1016if(r4)
                            throw r0
                        L4f:
                            defpackage.J8.m1016if(r4)
                        L52:
                            java.util.Map r0 = r3
                            boolean r1 = r0.isEmpty()
                            if (r1 != 0) goto L5e
                            r1 = 0
                            r3.m2967else(r2, r0, r1)
                        L5e:
                            java.util.List r0 = r4
                            boolean r1 = r0.isEmpty()
                            if (r1 != 0) goto L69
                            r3.m2969goto(r2, r0)
                        L69:
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: defpackage.JJ.run():void");
                    }
                });
            }
        }
        this.f2201do.m2073do(str);
        this.f2195do.m488new(str);
        OC oc = this.f2199do;
        C0555Vb c0555Vb = oc.f2593do;
        c0555Vb.getClass();
        Charset charset = AbstractC0533Ub.f3933do;
        C3720t3.Cdo cdo4 = new C3720t3.Cdo();
        cdo4.f15603do = "19.2.1";
        X1 x12 = c0555Vb.f4148do;
        String str8 = x12.f4430do;
        if (str8 == null) {
            throw new NullPointerException("Null gmpAppId");
        }
        cdo4.f15607if = str8;
        C3232kn c3232kn2 = c0555Vb.f4151do;
        String str9 = ((C0788c4) c3232kn2.m7279for()).f8483do;
        if (str9 == null) {
            throw new NullPointerException("Null installationUuid");
        }
        cdo4.f15605for = str9;
        cdo4.f15608new = ((C0788c4) c3232kn2.m7279for()).f8485if;
        cdo4.f15609try = ((C0788c4) c3232kn2.m7279for()).f8484for;
        String str10 = x12.f4435try;
        if (str10 == null) {
            throw new NullPointerException("Null buildVersion");
        }
        cdo4.f15604else = str10;
        String str11 = x12.f4428case;
        if (str11 == null) {
            throw new NullPointerException("Null displayVersion");
        }
        cdo4.f15606goto = str11;
        cdo4.f15599do = 4;
        cdo4.f15598do = (byte) (cdo4.f15598do | 1);
        A3.Cdo cdo5 = new A3.Cdo();
        cdo5.f43do = false;
        byte b = (byte) (cdo5.f33do | 2);
        cdo5.f35do = currentTimeMillis;
        cdo5.f33do = (byte) (b | 1);
        if (str == null) {
            throw new NullPointerException("Null identifier");
        }
        cdo5.f45if = str;
        String str12 = C0555Vb.f4145do;
        if (str12 == null) {
            throw new NullPointerException("Null generator");
        }
        cdo5.f41do = str12;
        String str13 = c3232kn2.f14047do;
        if (str13 == null) {
            throw new NullPointerException("Null identifier");
        }
        String str14 = ((C0788c4) c3232kn2.m7279for()).f8483do;
        C2644de c2644de = x12.f4429do;
        if (c2644de.f12516do == null) {
            c2644de.f12516do = new C2644de.Cdo(c2644de);
        }
        C2644de.Cdo cdo6 = c2644de.f12516do;
        String str15 = cdo6.f12517do;
        if (cdo6 == null) {
            c2644de.f12516do = new C2644de.Cdo(c2644de);
        }
        cdo5.f37do = new B3(str13, str10, str11, str14, str15, c2644de.f12516do.f12518if);
        S3.Cdo cdo7 = new S3.Cdo();
        cdo7.f3439do = 3;
        cdo7.f3438do = (byte) (cdo7.f3438do | 1);
        cdo7.f3440do = str2;
        cdo7.f3442if = str3;
        cdo7.f3441do = J8.m1015goto();
        cdo7.f3438do = (byte) (cdo7.f3438do | 2);
        cdo5.f39do = cdo7.m2110do();
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int intValue = (TextUtils.isEmpty(str4) || (num = (Integer) C0555Vb.f4146do.get(str4.toLowerCase(locale))) == null) ? 7 : num.intValue();
        int availableProcessors2 = Runtime.getRuntime().availableProcessors();
        long m1012do2 = J8.m1012do(c0555Vb.f4149do);
        long blockCount2 = statFs2.getBlockCount() * statFs2.getBlockSize();
        boolean m1013else2 = J8.m1013else();
        int m1014for2 = J8.m1014for();
        D3.Cdo cdo8 = new D3.Cdo();
        cdo8.f484do = intValue;
        byte b2 = (byte) (cdo8.f483do | 1);
        cdo8.f486do = str5;
        cdo8.f490if = availableProcessors2;
        cdo8.f485do = m1012do2;
        cdo8.f491if = blockCount2;
        cdo8.f487do = m1013else2;
        cdo8.f488for = m1014for2;
        cdo8.f483do = (byte) (((byte) (((byte) (((byte) (((byte) (b2 | 2)) | 4)) | 8)) | 16)) | 32);
        cdo8.f492if = str6;
        cdo8.f489for = str7;
        cdo5.f38do = cdo8.m347do();
        cdo5.f34do = 3;
        cdo5.f33do = (byte) (cdo5.f33do | 4);
        cdo4.f15602do = cdo5.m42do();
        C3720t3 m8193do = cdo4.m8193do();
        C0495Sh c0495Sh = oc.f2594do.f4875do;
        AbstractC0533Ub.Ctry ctry = m8193do.f15589do;
        if (ctry == null) {
            return;
        }
        String mo37goto = ctry.mo37goto();
        try {
            C0643Zb.f4871do.getClass();
            C0643Zb.m3054try(c0495Sh.m2184if(mo37goto, "report"), C0577Wb.f4389do.m7396do(m8193do));
            File m2184if = c0495Sh.m2184if(mo37goto, "start-time");
            long mo29break = ctry.mo29break();
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(m2184if), C0643Zb.f4873do);
            try {
                outputStreamWriter.write(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                m2184if.setLastModified(mo29break * 1000);
                outputStreamWriter.close();
            } finally {
            }
        } catch (IOException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x03e4 A[LOOP:4: B:103:0x03e4->B:105:0x03ea, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0592  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x05aa A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0121 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x038d  */
    /* JADX WARN: Type inference failed for: r23v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r9v43, types: [long] */
    /* JADX WARN: Type inference failed for: r9v44 */
    /* JADX WARN: Type inference failed for: r9v45, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v46 */
    /* JADX WARN: Type inference failed for: r9v49 */
    /* JADX WARN: Type inference failed for: r9v51 */
    /* JADX WARN: Type inference failed for: r9v52 */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1441if(boolean r23, defpackage.InterfaceC3200kD r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 1451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0357Mb.m1441if(boolean, kD, boolean):void");
    }

    /* renamed from: new, reason: not valid java name */
    public final String m1442new() {
        C0643Zb c0643Zb = this.f2199do.f2594do;
        c0643Zb.getClass();
        NavigableSet descendingSet = new TreeSet(C0495Sh.m2182try(c0643Zb.f4875do.f3537for.list())).descendingSet();
        if (descendingSet.isEmpty()) {
            return null;
        }
        return (String) descendingSet.first();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0010, code lost:
    
        if (r0 == null) goto L7;
     */
    /* renamed from: try, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1443try() {
        /*
            r6 = this;
            java.lang.Class<Mb> r0 = defpackage.C0357Mb.class
            java.lang.ClassLoader r0 = r0.getClassLoader()     // Catch: java.io.IOException -> L53
            r1 = 0
            if (r0 != 0) goto La
            goto L12
        La:
            java.lang.String r2 = "META-INF/version-control-info.textproto"
            java.io.InputStream r0 = r0.getResourceAsStream(r2)     // Catch: java.io.IOException -> L53
            if (r0 != 0) goto L13
        L12:
            r0 = r1
        L13:
            r2 = 0
            if (r0 != 0) goto L17
            goto L33
        L17:
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L53
            r1.<init>()     // Catch: java.io.IOException -> L53
            r3 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r3]     // Catch: java.io.IOException -> L53
        L20:
            int r4 = r0.read(r3)     // Catch: java.io.IOException -> L53
            r5 = -1
            if (r4 == r5) goto L2b
            r1.write(r3, r2, r4)     // Catch: java.io.IOException -> L53
            goto L20
        L2b:
            byte[] r0 = r1.toByteArray()     // Catch: java.io.IOException -> L53
            java.lang.String r1 = android.util.Base64.encodeToString(r0, r2)     // Catch: java.io.IOException -> L53
        L33:
            if (r1 == 0) goto L53
            java.lang.String r0 = "com.crashlytics.version-control-info"
            KJ r3 = r6.f2198do     // Catch: java.lang.IllegalArgumentException -> L3f java.io.IOException -> L53
            KJ$do r3 = r3.f1790if     // Catch: java.lang.IllegalArgumentException -> L3f java.io.IOException -> L53
            r3.m1139do(r0, r1)     // Catch: java.lang.IllegalArgumentException -> L3f java.io.IOException -> L53
            goto L53
        L3f:
            r0 = move-exception
            android.content.Context r1 = r6.f2204do     // Catch: java.io.IOException -> L53
            if (r1 == 0) goto L53
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo()     // Catch: java.io.IOException -> L53
            int r1 = r1.flags     // Catch: java.io.IOException -> L53
            r1 = r1 & 2
            if (r1 == 0) goto L4f
            r2 = 1
        L4f:
            if (r2 != 0) goto L52
            goto L53
        L52:
            throw r0     // Catch: java.io.IOException -> L53
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C0357Mb.m1443try():void");
    }
}
