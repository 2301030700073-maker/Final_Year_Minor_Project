package c.b.b;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
public final class U0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3152a = Logger.getLogger(U0.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final Unsafe f3153b;

    /* renamed from: c, reason: collision with root package name */
    public static final T0 f3154c;

    /* renamed from: d, reason: collision with root package name */
    public static final boolean f3155d;
    public static final boolean e;
    public static final long f;

    /* JADX WARN: Removed duplicated region for block: B:15:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x011f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.U0.<clinit>():void");
    }

    public static Object a(Class cls) {
        try {
            return f3153b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static int b(Class cls) {
        if (e) {
            return f3154c.f3151a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int c(Class cls) {
        if (e) {
            return f3154c.f3151a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Field d() {
        Field field;
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    public static boolean e(Object obj, long j) {
        return f3154c.f3151a.getBoolean(obj, j);
    }

    public static byte f(byte[] bArr, long j) {
        T0 t0 = f3154c;
        return t0.f3151a.getByte(bArr, f + j);
    }

    public static double g(Object obj, long j) {
        return f3154c.f3151a.getDouble(obj, j);
    }

    public static float h(Object obj, long j) {
        return f3154c.f3151a.getFloat(obj, j);
    }

    public static int i(Object obj, long j) {
        return f3154c.f3151a.getInt(obj, j);
    }

    public static long j(Object obj, long j) {
        return f3154c.f3151a.getLong(obj, j);
    }

    public static Object k(Object obj, long j) {
        return f3154c.f3151a.getObject(obj, j);
    }

    public static void l(Object obj, long j, boolean z) {
        f3154c.f3151a.putBoolean(obj, j, z);
    }

    public static void m(byte[] bArr, long j, byte b2) {
        T0 t0 = f3154c;
        t0.f3151a.putByte(bArr, f + j, b2);
    }

    public static void n(Object obj, long j, double d2) {
        f3154c.f3151a.putDouble(obj, j, d2);
    }

    public static void o(Object obj, long j, float f2) {
        f3154c.f3151a.putFloat(obj, j, f2);
    }

    public static void p(Object obj, long j, int i) {
        f3154c.f3151a.putInt(obj, j, i);
    }

    public static void q(Object obj, long j, long j2) {
        f3154c.f3151a.putLong(obj, j, j2);
    }

    public static void r(Object obj, long j, Object obj2) {
        f3154c.f3151a.putObject(obj, j, obj2);
    }
}
