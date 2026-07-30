package j$.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Comparator;
import java.util.Locale;

/* loaded from: classes2.dex */
abstract class t {
    private static final Comparator a;
    public static final /* synthetic */ int b = 0;

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
        a = new c();
    }

    t() {
    }

    public abstract String b(j$.time.chrono.n nVar, j$.time.temporal.r rVar, long j, x xVar, Locale locale);

    public abstract String c(j$.time.temporal.r rVar, long j, x xVar, Locale locale);
}
