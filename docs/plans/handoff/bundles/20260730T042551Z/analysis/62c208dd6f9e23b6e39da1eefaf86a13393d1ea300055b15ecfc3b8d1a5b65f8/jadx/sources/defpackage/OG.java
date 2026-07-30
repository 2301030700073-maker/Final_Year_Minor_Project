package defpackage;

import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class OG {

    /* renamed from: do, reason: not valid java name */
    public static final int f2611do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final long f2612do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0189Ei f2613do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0617Xt f2614do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String f2615do;

    /* renamed from: if, reason: not valid java name */
    public static final int f2616if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final long f2617if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final C0189Ei f2618if;

    static {
        String str;
        int i = C4087zG.f16882do;
        try {
            str = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            str = "DefaultDispatcher";
        }
        f2615do = str;
        f2612do = C3645ro.m8010protected(100000L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.resolution.ns");
        int i2 = C4087zG.f16882do;
        if (i2 < 2) {
            i2 = 2;
        }
        f2611do = C3645ro.m8021transient("kotlinx.coroutines.scheduler.core.pool.size", i2, 1, 0, 8);
        f2616if = C3645ro.m8021transient("kotlinx.coroutines.scheduler.max.pool.size", 2097150, 0, 2097150, 4);
        f2617if = TimeUnit.SECONDS.toNanos(C3645ro.m8010protected(60L, 1L, Long.MAX_VALUE, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f2614do = C0617Xt.f4614do;
        f2613do = new C0189Ei(0);
        f2618if = new C0189Ei(1);
    }
}
