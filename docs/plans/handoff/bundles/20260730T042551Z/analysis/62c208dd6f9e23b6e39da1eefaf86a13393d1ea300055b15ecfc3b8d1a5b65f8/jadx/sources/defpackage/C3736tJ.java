package defpackage;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* renamed from: tJ, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3736tJ {

    /* renamed from: do, reason: not valid java name */
    public static final long f15684do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?> f15685do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Logger f15686do = Logger.getLogger(C3736tJ.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Unsafe f15687do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f15688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f15689do;

    /* renamed from: for, reason: not valid java name */
    public static final boolean f15690for;

    /* renamed from: if, reason: not valid java name */
    public static final boolean f15691if;

    /* renamed from: tJ$do, reason: invalid class name */
    public static class Cdo implements PrivilegedExceptionAction<Unsafe> {
        /* renamed from: do, reason: not valid java name */
        public static Unsafe m8262do() {
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }

        @Override // java.security.PrivilegedExceptionAction
        public final /* bridge */ /* synthetic */ Unsafe run() {
            return m8262do();
        }
    }

    /* renamed from: tJ$for, reason: invalid class name */
    public static final class Cfor extends Ctry {
        public Cfor(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: case, reason: not valid java name */
        public final float mo8263case(long j, Object obj) {
            return Float.intBitsToFloat(m8273else(j, obj));
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: catch, reason: not valid java name */
        public final void mo8264catch(Object obj, long j, boolean z) {
            if (C3736tJ.f15690for) {
                C3736tJ.m8261while(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C3736tJ.m8252import(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: class, reason: not valid java name */
        public final void mo8265class(Object obj, long j, byte b) {
            if (C3736tJ.f15690for) {
                C3736tJ.m8261while(obj, j, b);
            } else {
                C3736tJ.m8252import(obj, j, b);
            }
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: const, reason: not valid java name */
        public final void mo8266const(Object obj, long j, double d) {
            m8278throw(obj, j, Double.doubleToLongBits(d));
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: final, reason: not valid java name */
        public final void mo8267final(Object obj, long j, float f) {
            m8276super(obj, Float.floatToIntBits(f), j);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: for, reason: not valid java name */
        public final boolean mo8268for(long j, Object obj) {
            return C3736tJ.f15690for ? C3736tJ.m8250goto(j, obj) != 0 : C3736tJ.m8258this(j, obj) != 0;
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: new, reason: not valid java name */
        public final byte mo8269new(long j, Object obj) {
            return C3736tJ.f15690for ? C3736tJ.m8250goto(j, obj) : C3736tJ.m8258this(j, obj);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: try, reason: not valid java name */
        public final double mo8270try(long j, Object obj) {
            return Double.longBitsToDouble(m8274goto(j, obj));
        }
    }

    /* renamed from: tJ$if, reason: invalid class name */
    public static final class Cif extends Ctry {
        public Cif(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: case */
        public final float mo8263case(long j, Object obj) {
            return Float.intBitsToFloat(m8273else(j, obj));
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: catch */
        public final void mo8264catch(Object obj, long j, boolean z) {
            if (C3736tJ.f15690for) {
                C3736tJ.m8261while(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C3736tJ.m8252import(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: class */
        public final void mo8265class(Object obj, long j, byte b) {
            if (C3736tJ.f15690for) {
                C3736tJ.m8261while(obj, j, b);
            } else {
                C3736tJ.m8252import(obj, j, b);
            }
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: const */
        public final void mo8266const(Object obj, long j, double d) {
            m8278throw(obj, j, Double.doubleToLongBits(d));
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: final */
        public final void mo8267final(Object obj, long j, float f) {
            m8276super(obj, Float.floatToIntBits(f), j);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: for */
        public final boolean mo8268for(long j, Object obj) {
            return C3736tJ.f15690for ? C3736tJ.m8250goto(j, obj) != 0 : C3736tJ.m8258this(j, obj) != 0;
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: new */
        public final byte mo8269new(long j, Object obj) {
            return C3736tJ.f15690for ? C3736tJ.m8250goto(j, obj) : C3736tJ.m8258this(j, obj);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: try */
        public final double mo8270try(long j, Object obj) {
            return Double.longBitsToDouble(m8274goto(j, obj));
        }
    }

    /* renamed from: tJ$new, reason: invalid class name */
    public static final class Cnew extends Ctry {
        public Cnew(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: case */
        public final float mo8263case(long j, Object obj) {
            return this.f15692do.getFloat(obj, j);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: catch */
        public final void mo8264catch(Object obj, long j, boolean z) {
            this.f15692do.putBoolean(obj, j, z);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: class */
        public final void mo8265class(Object obj, long j, byte b) {
            this.f15692do.putByte(obj, j, b);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: const */
        public final void mo8266const(Object obj, long j, double d) {
            this.f15692do.putDouble(obj, j, d);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: final */
        public final void mo8267final(Object obj, long j, float f) {
            this.f15692do.putFloat(obj, j, f);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: for */
        public final boolean mo8268for(long j, Object obj) {
            return this.f15692do.getBoolean(obj, j);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: new */
        public final byte mo8269new(long j, Object obj) {
            return this.f15692do.getByte(obj, j);
        }

        @Override // defpackage.C3736tJ.Ctry
        /* renamed from: try */
        public final double mo8270try(long j, Object obj) {
            return this.f15692do.getDouble(obj, j);
        }
    }

    /* renamed from: tJ$try, reason: invalid class name */
    public static abstract class Ctry {

        /* renamed from: do, reason: not valid java name */
        public final Unsafe f15692do;

        public Ctry(Unsafe unsafe) {
            this.f15692do = unsafe;
        }

        /* renamed from: break, reason: not valid java name */
        public final long m8271break(Field field) {
            return this.f15692do.objectFieldOffset(field);
        }

        /* renamed from: case */
        public abstract float mo8263case(long j, Object obj);

        /* renamed from: catch */
        public abstract void mo8264catch(Object obj, long j, boolean z);

        /* renamed from: class */
        public abstract void mo8265class(Object obj, long j, byte b);

        /* renamed from: const */
        public abstract void mo8266const(Object obj, long j, double d);

        /* renamed from: do, reason: not valid java name */
        public final int m8272do(Class<?> cls) {
            return this.f15692do.arrayBaseOffset(cls);
        }

        /* renamed from: else, reason: not valid java name */
        public final int m8273else(long j, Object obj) {
            return this.f15692do.getInt(obj, j);
        }

        /* renamed from: final */
        public abstract void mo8267final(Object obj, long j, float f);

        /* renamed from: for */
        public abstract boolean mo8268for(long j, Object obj);

        /* renamed from: goto, reason: not valid java name */
        public final long m8274goto(long j, Object obj) {
            return this.f15692do.getLong(obj, j);
        }

        /* renamed from: if, reason: not valid java name */
        public final int m8275if(Class<?> cls) {
            return this.f15692do.arrayIndexScale(cls);
        }

        /* renamed from: new */
        public abstract byte mo8269new(long j, Object obj);

        /* renamed from: super, reason: not valid java name */
        public final void m8276super(Object obj, int i, long j) {
            this.f15692do.putInt(obj, j, i);
        }

        /* renamed from: this, reason: not valid java name */
        public final Object m8277this(long j, Object obj) {
            return this.f15692do.getObject(obj, j);
        }

        /* renamed from: throw, reason: not valid java name */
        public final void m8278throw(Object obj, long j, long j2) {
            this.f15692do.putLong(obj, j, j2);
        }

        /* renamed from: try */
        public abstract double mo8270try(long j, Object obj);

        /* renamed from: while, reason: not valid java name */
        public final void m8279while(Object obj, long j, Object obj2) {
            this.f15692do.putObject(obj, j, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0103 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3736tJ.<clinit>():void");
    }

    /* renamed from: break, reason: not valid java name */
    public static double m8241break(long j, Object obj) {
        return f15688do.mo8270try(j, obj);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m8242case(long j, Object obj) {
        return f15688do.mo8268for(j, obj);
    }

    /* renamed from: catch, reason: not valid java name */
    public static float m8243catch(long j, Object obj) {
        return f15688do.mo8263case(j, obj);
    }

    /* renamed from: class, reason: not valid java name */
    public static int m8244class(long j, Object obj) {
        return f15688do.m8273else(j, obj);
    }

    /* renamed from: const, reason: not valid java name */
    public static long m8245const(long j, Object obj) {
        return f15688do.m8274goto(j, obj);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> T m8246do(Class<T> cls) {
        try {
            return (T) f15687do.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static byte m8247else(byte[] bArr, long j) {
        return f15688do.mo8269new(f15684do + j, bArr);
    }

    /* renamed from: final, reason: not valid java name */
    public static Object m8248final(long j, Object obj) {
        return f15688do.m8277this(j, obj);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m8249for(Class cls) {
        if (f15691if) {
            f15688do.m8275if(cls);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte m8250goto(long j, Object obj) {
        return (byte) ((m8244class((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m8251if(Class<?> cls) {
        if (f15691if) {
            return f15688do.m8272do(cls);
        }
        return -1;
    }

    /* renamed from: import, reason: not valid java name */
    public static void m8252import(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m8253native(obj, ((255 & b) << i) | (m8244class(j2, obj) & (~(255 << i))), j2);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m8253native(Object obj, int i, long j) {
        f15688do.m8276super(obj, i, j);
    }

    /* renamed from: new, reason: not valid java name */
    public static Field m8254new() {
        Field field;
        Field field2;
        if (K0.m1100do()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField(IntegrityManager.INTEGRITY_TYPE_ADDRESS);
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8255public(Object obj, long j, long j2) {
        f15688do.m8278throw(obj, j, j2);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8256return(Object obj, long j, Object obj2) {
        f15688do.m8279while(obj, j, obj2);
    }

    /* renamed from: super, reason: not valid java name */
    public static Unsafe m8257super() {
        try {
            return (Unsafe) AccessController.doPrivileged(new Cdo());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static byte m8258this(long j, Object obj) {
        return (byte) ((m8244class((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m8259throw(byte[] bArr, long j, byte b) {
        f15688do.mo8265class(bArr, f15684do + j, b);
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m8260try(Class<?> cls) {
        if (!K0.m1100do()) {
            return false;
        }
        try {
            Class<?> cls2 = f15685do;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static void m8261while(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m8244class = m8244class(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        m8253native(obj, ((255 & b) << i) | (m8244class & (~(255 << i))), j2);
    }
}
