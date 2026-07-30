package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.config.RemoteConfigManager;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public final class L9 {

    /* renamed from: do, reason: not valid java name */
    public static volatile L9 f1929do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Q0 f1930do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2879he f1932do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RemoteConfigManager f1931do = RemoteConfigManager.getInstance();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3762tn f1933do = new C3762tn();

    public L9() {
        C2879he c2879he;
        Q0 q0 = C2879he.f13338do;
        synchronized (C2879he.class) {
            if (C2879he.f13339do == null) {
                C2879he.f13339do = new C2879he(Executors.newSingleThreadExecutor());
            }
            c2879he = C2879he.f13339do;
        }
        this.f1932do = c2879he;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m1282import(long j) {
        return j >= 0;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m1283native(String str) {
        if (str.trim().isEmpty()) {
            return false;
        }
        for (String str2 : str.split(";")) {
            String trim = str2.trim();
            Boolean bool = C0790c6.f8487do;
            if (trim.equals("21.0.2")) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m1284public(long j) {
        return j >= 0;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m1285static(double d) {
        return 0.0d <= d && d <= 1.0d;
    }

    /* renamed from: try, reason: not valid java name */
    public static synchronized L9 m1286try() {
        L9 l9;
        synchronized (L9.class) {
            if (f1929do == null) {
                f1929do = new L9();
            }
            l9 = f1929do;
        }
        return l9;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2779fw<java.lang.Double> m1287break(defpackage.AbstractC3134j6 r5) {
        /*
            r4 = this;
            tn r0 = r4.f1933do
            java.lang.String r5 = r5.mo2016goto()
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L14
            android.os.Bundle r3 = r0.f15767do
            boolean r3 = r3.containsKey(r5)
            if (r3 == 0) goto L17
            r3 = 1
            goto L18
        L14:
            r0.getClass()
        L17:
            r3 = 0
        L18:
            if (r3 != 0) goto L20
            fw r5 = new fw
            r5.<init>()
            goto L5f
        L20:
            android.os.Bundle r0 = r0.f15767do
            java.lang.Object r0 = r0.get(r5)
            if (r0 != 0) goto L2e
            fw r5 = new fw
            r5.<init>()
            goto L5f
        L2e:
            boolean r3 = r0 instanceof java.lang.Float
            if (r3 == 0) goto L43
            java.lang.Float r0 = (java.lang.Float) r0
            double r0 = r0.doubleValue()
            java.lang.Double r5 = java.lang.Double.valueOf(r0)
            fw r0 = new fw
            r0.<init>(r5)
            r5 = r0
            goto L5f
        L43:
            boolean r3 = r0 instanceof java.lang.Double
            if (r3 == 0) goto L4f
            java.lang.Double r0 = (java.lang.Double) r0
            fw r5 = new fw
            r5.<init>(r0)
            goto L5f
        L4f:
            java.lang.Object[] r0 = new java.lang.Object[r1]
            r0[r2] = r5
            Q0 r5 = defpackage.C3762tn.f15766do
            java.lang.String r1 = "Metadata key %s contains type other than double: %s"
            r5.m1823if(r1, r0)
            fw r5 = new fw
            r5.<init>()
        L5f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.L9.m1287break(j6):fw");
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m1288case() {
        T9 t9;
        synchronized (T9.class) {
            if (T9.f3603do == null) {
                T9.f3603do = new T9();
            }
            t9 = T9.f3603do;
        }
        C2779fw<Boolean> m1301this = m1301this(t9);
        if (m1301this.m6695if()) {
            return m1301this.m6694do().booleanValue();
        }
        C2779fw<Boolean> c2779fw = this.f1931do.getBoolean("fpr_experiment_app_start_ttid");
        if (c2779fw.m6695if()) {
            this.f1932do.m6822case("com.google.firebase.perf.ExperimentTTID", c2779fw.m6694do().booleanValue());
            return c2779fw.m6694do().booleanValue();
        }
        C2779fw<Boolean> m1292do = m1292do(t9);
        if (m1292do.m6695if()) {
            return m1292do.m6694do().booleanValue();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v14, types: [fw] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [Q0] */
    /* JADX WARN: Type inference failed for: r5v5, types: [fw] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [fw] */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2779fw<java.lang.Long> m1289catch(defpackage.AbstractC3134j6 r5) {
        /*
            r4 = this;
            tn r0 = r4.f1933do
            java.lang.String r5 = r5.mo2016goto()
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L14
            android.os.Bundle r3 = r0.f15767do
            boolean r3 = r3.containsKey(r5)
            if (r3 == 0) goto L17
            r3 = 1
            goto L18
        L14:
            r0.getClass()
        L17:
            r3 = 0
        L18:
            if (r3 != 0) goto L20
            fw r5 = new fw
            r5.<init>()
            goto L50
        L20:
            android.os.Bundle r0 = r0.f15767do     // Catch: java.lang.ClassCastException -> L38
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.ClassCastException -> L38
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch: java.lang.ClassCastException -> L38
            if (r0 != 0) goto L31
            fw r0 = new fw     // Catch: java.lang.ClassCastException -> L38
            r0.<init>()     // Catch: java.lang.ClassCastException -> L38
            r5 = r0
            goto L50
        L31:
            fw r3 = new fw     // Catch: java.lang.ClassCastException -> L38
            r3.<init>(r0)     // Catch: java.lang.ClassCastException -> L38
            r5 = r3
            goto L50
        L38:
            r0 = move-exception
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r5
            java.lang.String r5 = r0.getMessage()
            r3[r1] = r5
            Q0 r5 = defpackage.C3762tn.f15766do
            java.lang.String r0 = "Metadata key %s contains type other than int: %s"
            r5.m1823if(r0, r3)
            fw r5 = new fw
            r5.<init>()
        L50:
            boolean r0 = r5.m6695if()
            if (r0 == 0) goto L6b
            java.lang.Object r5 = r5.m6694do()
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            long r0 = (long) r5
            java.lang.Long r5 = java.lang.Long.valueOf(r0)
            fw r0 = new fw
            r0.<init>(r5)
            goto L70
        L6b:
            fw r0 = new fw
            r0.<init>()
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.L9.m1289catch(j6):fw");
    }

    /* renamed from: class, reason: not valid java name */
    public final long m1290class() {
        Z9 z9;
        synchronized (Z9.class) {
            if (Z9.f4787do == null) {
                Z9.f4787do = new Z9();
            }
            z9 = Z9.f4787do;
        }
        C2779fw<Long> m1291const = m1291const(z9);
        if (m1291const.m6695if()) {
            if (m1291const.m6694do().longValue() > 0) {
                this.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.TimeLimitSec");
                return m1291const.m6694do().longValue();
            }
        }
        C2779fw<Long> m1295for = m1295for(z9);
        if (m1295for.m6695if()) {
            if (m1295for.m6694do().longValue() > 0) {
                return m1295for.m6694do().longValue();
            }
        }
        Long l = 600L;
        return l.longValue();
    }

    /* renamed from: const, reason: not valid java name */
    public final C2779fw<Long> m1291const(AbstractC3134j6 abstractC3134j6) {
        return this.f1931do.getLong(abstractC3134j6.mo2222this());
    }

    /* renamed from: do, reason: not valid java name */
    public final C2779fw<Boolean> m1292do(AbstractC3134j6 abstractC3134j6) {
        C2879he c2879he = this.f1932do;
        String mo2116else = abstractC3134j6.mo2116else();
        if (mo2116else == null) {
            c2879he.getClass();
            C2879he.f13338do.m1820do();
            return new C2779fw<>();
        }
        if (c2879he.f13340do == null) {
            c2879he.m6824if(C2879he.m6821do());
            if (c2879he.f13340do == null) {
                return new C2779fw<>();
            }
        }
        if (!c2879he.f13340do.contains(mo2116else)) {
            return new C2779fw<>();
        }
        try {
            return new C2779fw<>(Boolean.valueOf(c2879he.f13340do.getBoolean(mo2116else, false)));
        } catch (ClassCastException e) {
            C2879he.f13338do.m1823if("Key %s from sharedPreferences has type other than long: %s", mo2116else, e.getMessage());
            return new C2779fw<>();
        }
    }

    /* renamed from: else, reason: not valid java name */
    public final Boolean m1293else() {
        R9 r9;
        synchronized (R9.class) {
            if (R9.f3151do == null) {
                R9.f3151do = new R9();
            }
            r9 = R9.f3151do;
        }
        C2779fw<Boolean> m1301this = m1301this(r9);
        if ((m1301this.m6695if() ? m1301this.m6694do() : Boolean.FALSE).booleanValue()) {
            return Boolean.FALSE;
        }
        S9 m2115throw = S9.m2115throw();
        C2779fw<Boolean> m1292do = m1292do(m2115throw);
        if (m1292do.m6695if()) {
            return m1292do.m6694do();
        }
        C2779fw<Boolean> m1301this2 = m1301this(m2115throw);
        if (m1301this2.m6695if()) {
            return m1301this2.m6694do();
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public final long m1294final() {
        C2640da c2640da;
        synchronized (C2640da.class) {
            if (C2640da.f12504do == null) {
                C2640da.f12504do = new C2640da();
            }
            c2640da = C2640da.f12504do;
        }
        C2779fw<Long> m1289catch = m1289catch(c2640da);
        if (m1289catch.m6695if() && m1284public(m1289catch.m6694do().longValue())) {
            return m1289catch.m6694do().longValue();
        }
        C2779fw<Long> m1291const = m1291const(c2640da);
        if (m1291const.m6695if() && m1284public(m1291const.m6694do().longValue())) {
            this.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs");
            return m1291const.m6694do().longValue();
        }
        C2779fw<Long> m1295for = m1295for(c2640da);
        if (m1295for.m6695if() && m1284public(m1295for.m6694do().longValue())) {
            return m1295for.m6694do().longValue();
        }
        if (this.f1931do.isLastFetchFailed()) {
            Long l = 100L;
            return Long.valueOf(l.longValue() * 3).longValue();
        }
        Long l2 = 100L;
        return l2.longValue();
    }

    /* renamed from: for, reason: not valid java name */
    public final C2779fw<Long> m1295for(AbstractC3134j6 abstractC3134j6) {
        C2879he c2879he = this.f1932do;
        String mo2116else = abstractC3134j6.mo2116else();
        if (mo2116else == null) {
            c2879he.getClass();
            C2879he.f13338do.m1820do();
            return new C2779fw<>();
        }
        if (c2879he.f13340do == null) {
            c2879he.m6824if(C2879he.m6821do());
            if (c2879he.f13340do == null) {
                return new C2779fw<>();
            }
        }
        if (!c2879he.f13340do.contains(mo2116else)) {
            return new C2779fw<>();
        }
        try {
            return new C2779fw<>(Long.valueOf(c2879he.f13340do.getLong(mo2116else, 0L)));
        } catch (ClassCastException e) {
            C2879he.f13338do.m1823if("Key %s from sharedPreferences has type other than long: %s", mo2116else, e.getMessage());
            return new C2779fw<>();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m1296goto() {
        C0698aa c0698aa;
        synchronized (C0698aa.class) {
            if (C0698aa.f4963do == null) {
                C0698aa.f4963do = new C0698aa();
            }
            c0698aa = C0698aa.f4963do;
        }
        RemoteConfigManager remoteConfigManager = this.f1931do;
        c0698aa.getClass();
        C2779fw<String> string = remoteConfigManager.getString("fpr_disabled_android_versions");
        if (string.m6695if()) {
            this.f1932do.m6826try("com.google.firebase.perf.SdkDisabledVersions", string.m6694do());
            return m1283native(string.m6694do());
        }
        C2779fw<String> m1298new = m1298new(c0698aa);
        return m1298new.m6695if() ? m1283native(m1298new.m6694do()) : m1283native(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    /* renamed from: if, reason: not valid java name */
    public final C2779fw<Double> m1297if(AbstractC3134j6 abstractC3134j6) {
        C2879he c2879he = this.f1932do;
        String mo2116else = abstractC3134j6.mo2116else();
        if (mo2116else == null) {
            c2879he.getClass();
            C2879he.f13338do.m1820do();
            return new C2779fw<>();
        }
        if (c2879he.f13340do == null) {
            c2879he.m6824if(C2879he.m6821do());
            if (c2879he.f13340do == null) {
                return new C2779fw<>();
            }
        }
        if (!c2879he.f13340do.contains(mo2116else)) {
            return new C2779fw<>();
        }
        try {
            try {
                return new C2779fw<>(Double.valueOf(Double.longBitsToDouble(c2879he.f13340do.getLong(mo2116else, 0L))));
            } catch (ClassCastException e) {
                C2879he.f13338do.m1823if("Key %s from sharedPreferences has type other than double: %s", mo2116else, e.getMessage());
                return new C2779fw<>();
            }
        } catch (ClassCastException unused) {
            return new C2779fw<>(Double.valueOf(Float.valueOf(c2879he.f13340do.getFloat(mo2116else, 0.0f)).doubleValue()));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public final C2779fw<String> m1298new(AbstractC3134j6 abstractC3134j6) {
        C2879he c2879he = this.f1932do;
        String mo2116else = abstractC3134j6.mo2116else();
        if (mo2116else == null) {
            c2879he.getClass();
            C2879he.f13338do.m1820do();
            return new C2779fw<>();
        }
        if (c2879he.f13340do == null) {
            c2879he.m6824if(C2879he.m6821do());
            if (c2879he.f13340do == null) {
                return new C2779fw<>();
            }
        }
        if (!c2879he.f13340do.contains(mo2116else)) {
            return new C2779fw<>();
        }
        try {
            return new C2779fw<>(c2879he.f13340do.getString(mo2116else, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        } catch (ClassCastException e) {
            C2879he.f13338do.m1823if("Key %s from sharedPreferences has type other than String: %s", mo2116else, e.getMessage());
            return new C2779fw<>();
        }
    }

    /* renamed from: return, reason: not valid java name */
    public final boolean m1299return() {
        C0758ba c0758ba;
        boolean booleanValue;
        Boolean m1293else = m1293else();
        if (m1293else != null && !m1293else.booleanValue()) {
            return false;
        }
        synchronized (C0758ba.class) {
            if (C0758ba.f8408do == null) {
                C0758ba.f8408do = new C0758ba();
            }
            c0758ba = C0758ba.f8408do;
        }
        RemoteConfigManager remoteConfigManager = this.f1931do;
        c0758ba.getClass();
        C2779fw<Boolean> c2779fw = remoteConfigManager.getBoolean("fpr_enabled");
        if (!c2779fw.m6695if()) {
            C2779fw<Boolean> m1292do = m1292do(c0758ba);
            booleanValue = m1292do.m6695if() ? m1292do.m6694do().booleanValue() : true;
        } else if (this.f1931do.isLastFetchFailed()) {
            booleanValue = false;
        } else {
            this.f1932do.m6822case("com.google.firebase.perf.SdkEnabled", c2779fw.m6694do().booleanValue());
            booleanValue = c2779fw.m6694do().booleanValue();
        }
        return booleanValue && !m1296goto();
    }

    /* renamed from: super, reason: not valid java name */
    public final long m1300super() {
        C2816ga c2816ga;
        synchronized (C2816ga.class) {
            if (C2816ga.f13190do == null) {
                C2816ga.f13190do = new C2816ga();
            }
            c2816ga = C2816ga.f13190do;
        }
        C2779fw<Long> m1289catch = m1289catch(c2816ga);
        if (m1289catch.m6695if() && m1284public(m1289catch.m6694do().longValue())) {
            return m1289catch.m6694do().longValue();
        }
        C2779fw<Long> m1291const = m1291const(c2816ga);
        if (m1291const.m6695if() && m1284public(m1291const.m6694do().longValue())) {
            this.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs");
            return m1291const.m6694do().longValue();
        }
        C2779fw<Long> m1295for = m1295for(c2816ga);
        if (m1295for.m6695if() && m1284public(m1295for.m6694do().longValue())) {
            return m1295for.m6694do().longValue();
        }
        if (this.f1931do.isLastFetchFailed()) {
            Long l = 100L;
            return Long.valueOf(l.longValue() * 3).longValue();
        }
        Long l2 = 100L;
        return l2.longValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v5, types: [android.os.BaseBundle, android.os.Bundle] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [Q0] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [fw<java.lang.Boolean>] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.C2779fw<java.lang.Boolean> m1301this(defpackage.AbstractC3134j6 r5) {
        /*
            r4 = this;
            tn r0 = r4.f1933do
            java.lang.String r5 = r5.mo2016goto()
            r1 = 1
            r2 = 0
            if (r5 == 0) goto L14
            android.os.Bundle r3 = r0.f15767do
            boolean r3 = r3.containsKey(r5)
            if (r3 == 0) goto L17
            r3 = 1
            goto L18
        L14:
            r0.getClass()
        L17:
            r3 = 0
        L18:
            if (r3 != 0) goto L20
            fw r5 = new fw
            r5.<init>()
            goto L50
        L20:
            android.os.Bundle r0 = r0.f15767do     // Catch: java.lang.ClassCastException -> L38
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.ClassCastException -> L38
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.ClassCastException -> L38
            if (r0 != 0) goto L31
            fw r0 = new fw     // Catch: java.lang.ClassCastException -> L38
            r0.<init>()     // Catch: java.lang.ClassCastException -> L38
            r5 = r0
            goto L50
        L31:
            fw r3 = new fw     // Catch: java.lang.ClassCastException -> L38
            r3.<init>(r0)     // Catch: java.lang.ClassCastException -> L38
            r5 = r3
            goto L50
        L38:
            r0 = move-exception
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r2] = r5
            java.lang.String r5 = r0.getMessage()
            r3[r1] = r5
            Q0 r5 = defpackage.C3762tn.f15766do
            java.lang.String r0 = "Metadata key %s contains type other than boolean: %s"
            r5.m1823if(r0, r3)
            fw r5 = new fw
            r5.<init>()
        L50:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.L9.m1301this(j6):fw");
    }

    /* renamed from: throw, reason: not valid java name */
    public final long m1302throw() {
        C2934ia c2934ia;
        synchronized (C2934ia.class) {
            if (C2934ia.f13524do == null) {
                C2934ia.f13524do = new C2934ia();
            }
            c2934ia = C2934ia.f13524do;
        }
        C2779fw<Long> m1291const = m1291const(c2934ia);
        if (m1291const.m6695if() && m1282import(m1291const.m6694do().longValue())) {
            this.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.TraceEventCountBackground");
            return m1291const.m6694do().longValue();
        }
        C2779fw<Long> m1295for = m1295for(c2934ia);
        if (m1295for.m6695if() && m1282import(m1295for.m6694do().longValue())) {
            return m1295for.m6694do().longValue();
        }
        Long l = 30L;
        return l.longValue();
    }

    /* renamed from: while, reason: not valid java name */
    public final long m1303while() {
        C3160ja c3160ja;
        synchronized (C3160ja.class) {
            if (C3160ja.f13731do == null) {
                C3160ja.f13731do = new C3160ja();
            }
            c3160ja = C3160ja.f13731do;
        }
        C2779fw<Long> m1291const = m1291const(c3160ja);
        if (m1291const.m6695if() && m1282import(m1291const.m6694do().longValue())) {
            this.f1932do.m6823for(m1291const.m6694do().longValue(), "com.google.firebase.perf.TraceEventCountForeground");
            return m1291const.m6694do().longValue();
        }
        C2779fw<Long> m1295for = m1295for(c3160ja);
        if (m1295for.m6695if() && m1282import(m1295for.m6694do().longValue())) {
            return m1295for.m6694do().longValue();
        }
        Long l = 300L;
        return l.longValue();
    }
}
