package defpackage;

import com.facebook.appevents.integrity.IntegrityManager;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* renamed from: sJ, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3677sJ {

    /* renamed from: do, reason: not valid java name */
    public static final long f15431do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?> f15432do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f15433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Unsafe f15434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final boolean f15435do;

    /* renamed from: for, reason: not valid java name */
    public static final boolean f15436for;

    /* renamed from: if, reason: not valid java name */
    public static final boolean f15437if;

    /* renamed from: sJ$do, reason: invalid class name */
    public class Cdo implements PrivilegedExceptionAction<Unsafe> {
        /* renamed from: do, reason: not valid java name */
        public static Unsafe m8110do() {
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
            return m8110do();
        }
    }

    /* renamed from: sJ$for, reason: invalid class name */
    public static final class Cfor extends Ctry {
        public Cfor(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: case, reason: not valid java name */
        public final float mo8111case(long j, Object obj) {
            return Float.intBitsToFloat(m8123else(j, obj));
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: catch, reason: not valid java name */
        public final void mo8112catch(Object obj, long j, boolean z) {
            if (C3677sJ.f15436for) {
                C3677sJ.m8099import(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C3677sJ.m8100native(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: class, reason: not valid java name */
        public final void mo8113class(Object obj, long j, byte b) {
            if (C3677sJ.f15436for) {
                C3677sJ.m8099import(obj, j, b);
            } else {
                C3677sJ.m8100native(obj, j, b);
            }
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: const, reason: not valid java name */
        public final void mo8114const(Object obj, long j, double d) {
            m8128throw(obj, j, Double.doubleToLongBits(d));
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: final, reason: not valid java name */
        public final void mo8115final(Object obj, long j, float f) {
            m8126super(obj, Float.floatToIntBits(f), j);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: for, reason: not valid java name */
        public final boolean mo8116for(long j, Object obj) {
            return C3677sJ.f15436for ? C3677sJ.m8106this(j, obj) != 0 : C3677sJ.m8088break(j, obj) != 0;
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: native, reason: not valid java name */
        public final boolean mo8117native() {
            return false;
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: new, reason: not valid java name */
        public final byte mo8118new(long j, Object obj) {
            return C3677sJ.f15436for ? C3677sJ.m8106this(j, obj) : C3677sJ.m8088break(j, obj);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: try, reason: not valid java name */
        public final double mo8119try(long j, Object obj) {
            return Double.longBitsToDouble(m8124goto(j, obj));
        }
    }

    /* renamed from: sJ$if, reason: invalid class name */
    public static final class Cif extends Ctry {
        public Cif(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: case */
        public final float mo8111case(long j, Object obj) {
            return Float.intBitsToFloat(m8123else(j, obj));
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: catch */
        public final void mo8112catch(Object obj, long j, boolean z) {
            if (C3677sJ.f15436for) {
                C3677sJ.m8099import(obj, j, z ? (byte) 1 : (byte) 0);
            } else {
                C3677sJ.m8100native(obj, j, z ? (byte) 1 : (byte) 0);
            }
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: class */
        public final void mo8113class(Object obj, long j, byte b) {
            if (C3677sJ.f15436for) {
                C3677sJ.m8099import(obj, j, b);
            } else {
                C3677sJ.m8100native(obj, j, b);
            }
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: const */
        public final void mo8114const(Object obj, long j, double d) {
            m8128throw(obj, j, Double.doubleToLongBits(d));
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: final */
        public final void mo8115final(Object obj, long j, float f) {
            m8126super(obj, Float.floatToIntBits(f), j);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: for */
        public final boolean mo8116for(long j, Object obj) {
            return C3677sJ.f15436for ? C3677sJ.m8106this(j, obj) != 0 : C3677sJ.m8088break(j, obj) != 0;
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: native */
        public final boolean mo8117native() {
            return false;
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: new */
        public final byte mo8118new(long j, Object obj) {
            return C3677sJ.f15436for ? C3677sJ.m8106this(j, obj) : C3677sJ.m8088break(j, obj);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: try */
        public final double mo8119try(long j, Object obj) {
            return Double.longBitsToDouble(m8124goto(j, obj));
        }
    }

    /* renamed from: sJ$new, reason: invalid class name */
    public static final class Cnew extends Ctry {
        public Cnew(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: case */
        public final float mo8111case(long j, Object obj) {
            return this.f15438do.getFloat(obj, j);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: catch */
        public final void mo8112catch(Object obj, long j, boolean z) {
            this.f15438do.putBoolean(obj, j, z);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: class */
        public final void mo8113class(Object obj, long j, byte b) {
            this.f15438do.putByte(obj, j, b);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: const */
        public final void mo8114const(Object obj, long j, double d) {
            this.f15438do.putDouble(obj, j, d);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: final */
        public final void mo8115final(Object obj, long j, float f) {
            this.f15438do.putFloat(obj, j, f);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: for */
        public final boolean mo8116for(long j, Object obj) {
            return this.f15438do.getBoolean(obj, j);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: import, reason: not valid java name */
        public final boolean mo8120import() {
            if (!super.mo8120import()) {
                return false;
            }
            try {
                Class<?> cls = this.f15438do.getClass();
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getByte", Object.class, cls2);
                cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                cls.getMethod("getBoolean", Object.class, cls2);
                cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                cls.getMethod("getFloat", Object.class, cls2);
                cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                cls.getMethod("getDouble", Object.class, cls2);
                cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                return true;
            } catch (Throwable th) {
                C3677sJ.m8093do(th);
                return false;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x0039 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: native */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean mo8117native() {
            /*
                r11 = this;
                java.lang.String r0 = "copyMemory"
                java.lang.String r1 = "getLong"
                sun.misc.Unsafe r2 = r11.f15438do
                java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
                r4 = 2
                r5 = 1
                r6 = 0
                if (r2 != 0) goto Lf
            Ld:
                r7 = 0
                goto L37
            Lf:
                java.lang.Class r7 = r2.getClass()     // Catch: java.lang.Throwable -> L32
                java.lang.String r8 = "objectFieldOffset"
                java.lang.Class[] r9 = new java.lang.Class[r5]     // Catch: java.lang.Throwable -> L32
                java.lang.Class<java.lang.reflect.Field> r10 = java.lang.reflect.Field.class
                r9[r6] = r10     // Catch: java.lang.Throwable -> L32
                r7.getMethod(r8, r9)     // Catch: java.lang.Throwable -> L32
                java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L32
                r8[r6] = r3     // Catch: java.lang.Throwable -> L32
                java.lang.Class r9 = java.lang.Long.TYPE     // Catch: java.lang.Throwable -> L32
                r8[r5] = r9     // Catch: java.lang.Throwable -> L32
                r7.getMethod(r1, r8)     // Catch: java.lang.Throwable -> L32
                java.lang.reflect.Field r7 = defpackage.C3677sJ.m8108try()     // Catch: java.lang.Throwable -> L32
                if (r7 != 0) goto L30
                goto Ld
            L30:
                r7 = 1
                goto L37
            L32:
                r7 = move-exception
                defpackage.C3677sJ.m8093do(r7)
                goto Ld
            L37:
                if (r7 != 0) goto L3a
                return r6
            L3a:
                java.lang.Class r2 = r2.getClass()     // Catch: java.lang.Throwable -> L9c
                java.lang.String r7 = "getByte"
                java.lang.Class[] r8 = new java.lang.Class[r5]     // Catch: java.lang.Throwable -> L9c
                java.lang.Class r9 = java.lang.Long.TYPE     // Catch: java.lang.Throwable -> L9c
                r8[r6] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r7, r8)     // Catch: java.lang.Throwable -> L9c
                java.lang.String r7 = "putByte"
                java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L9c
                r8[r6] = r9     // Catch: java.lang.Throwable -> L9c
                java.lang.Class r10 = java.lang.Byte.TYPE     // Catch: java.lang.Throwable -> L9c
                r8[r5] = r10     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r7, r8)     // Catch: java.lang.Throwable -> L9c
                java.lang.String r7 = "getInt"
                java.lang.Class[] r8 = new java.lang.Class[r5]     // Catch: java.lang.Throwable -> L9c
                r8[r6] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r7, r8)     // Catch: java.lang.Throwable -> L9c
                java.lang.String r7 = "putInt"
                java.lang.Class[] r8 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L9c
                r8[r6] = r9     // Catch: java.lang.Throwable -> L9c
                java.lang.Class r10 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L9c
                r8[r5] = r10     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r7, r8)     // Catch: java.lang.Throwable -> L9c
                java.lang.Class[] r7 = new java.lang.Class[r5]     // Catch: java.lang.Throwable -> L9c
                r7[r6] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r1, r7)     // Catch: java.lang.Throwable -> L9c
                java.lang.String r1 = "putLong"
                java.lang.Class[] r7 = new java.lang.Class[r4]     // Catch: java.lang.Throwable -> L9c
                r7[r6] = r9     // Catch: java.lang.Throwable -> L9c
                r7[r5] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r1, r7)     // Catch: java.lang.Throwable -> L9c
                r1 = 3
                java.lang.Class[] r7 = new java.lang.Class[r1]     // Catch: java.lang.Throwable -> L9c
                r7[r6] = r9     // Catch: java.lang.Throwable -> L9c
                r7[r5] = r9     // Catch: java.lang.Throwable -> L9c
                r7[r4] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r0, r7)     // Catch: java.lang.Throwable -> L9c
                r7 = 5
                java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch: java.lang.Throwable -> L9c
                r7[r6] = r3     // Catch: java.lang.Throwable -> L9c
                r7[r5] = r9     // Catch: java.lang.Throwable -> L9c
                r7[r4] = r3     // Catch: java.lang.Throwable -> L9c
                r7[r1] = r9     // Catch: java.lang.Throwable -> L9c
                r1 = 4
                r7[r1] = r9     // Catch: java.lang.Throwable -> L9c
                r2.getMethod(r0, r7)     // Catch: java.lang.Throwable -> L9c
                return r5
            L9c:
                r0 = move-exception
                defpackage.C3677sJ.m8093do(r0)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C3677sJ.Cnew.mo8117native():boolean");
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: new */
        public final byte mo8118new(long j, Object obj) {
            return this.f15438do.getByte(obj, j);
        }

        @Override // defpackage.C3677sJ.Ctry
        /* renamed from: try */
        public final double mo8119try(long j, Object obj) {
            return this.f15438do.getDouble(obj, j);
        }
    }

    /* renamed from: sJ$try, reason: invalid class name */
    public static abstract class Ctry {

        /* renamed from: do, reason: not valid java name */
        public final Unsafe f15438do;

        public Ctry(Unsafe unsafe) {
            this.f15438do = unsafe;
        }

        /* renamed from: break, reason: not valid java name */
        public final long m8121break(Field field) {
            return this.f15438do.objectFieldOffset(field);
        }

        /* renamed from: case */
        public abstract float mo8111case(long j, Object obj);

        /* renamed from: catch */
        public abstract void mo8112catch(Object obj, long j, boolean z);

        /* renamed from: class */
        public abstract void mo8113class(Object obj, long j, byte b);

        /* renamed from: const */
        public abstract void mo8114const(Object obj, long j, double d);

        /* renamed from: do, reason: not valid java name */
        public final int m8122do(Class<?> cls) {
            return this.f15438do.arrayBaseOffset(cls);
        }

        /* renamed from: else, reason: not valid java name */
        public final int m8123else(long j, Object obj) {
            return this.f15438do.getInt(obj, j);
        }

        /* renamed from: final */
        public abstract void mo8115final(Object obj, long j, float f);

        /* renamed from: for */
        public abstract boolean mo8116for(long j, Object obj);

        /* renamed from: goto, reason: not valid java name */
        public final long m8124goto(long j, Object obj) {
            return this.f15438do.getLong(obj, j);
        }

        /* renamed from: if, reason: not valid java name */
        public final int m8125if(Class<?> cls) {
            return this.f15438do.arrayIndexScale(cls);
        }

        /* renamed from: import */
        public boolean mo8120import() {
            Unsafe unsafe = this.f15438do;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                C3677sJ.m8093do(th);
                return false;
            }
        }

        /* renamed from: native */
        public abstract boolean mo8117native();

        /* renamed from: new */
        public abstract byte mo8118new(long j, Object obj);

        /* renamed from: super, reason: not valid java name */
        public final void m8126super(Object obj, int i, long j) {
            this.f15438do.putInt(obj, j, i);
        }

        /* renamed from: this, reason: not valid java name */
        public final Object m8127this(long j, Object obj) {
            return this.f15438do.getObject(obj, j);
        }

        /* renamed from: throw, reason: not valid java name */
        public final void m8128throw(Object obj, long j, long j2) {
            this.f15438do.putLong(obj, j, j2);
        }

        /* renamed from: try */
        public abstract double mo8119try(long j, Object obj);

        /* renamed from: while, reason: not valid java name */
        public final void m8129while(Object obj, long j, Object obj2) {
            this.f15438do.putObject(obj, j, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003b  */
    static {
        /*
            sun.misc.Unsafe r0 = m8107throw()
            defpackage.C3677sJ.f15434do = r0
            java.lang.Class<?> r1 = defpackage.J0.f1580do
            defpackage.C3677sJ.f15432do = r1
            java.lang.Class r1 = java.lang.Long.TYPE
            boolean r1 = m8089case(r1)
            java.lang.Class r2 = java.lang.Integer.TYPE
            boolean r2 = m8089case(r2)
            if (r0 != 0) goto L19
            goto L2f
        L19:
            boolean r3 = defpackage.J0.m997do()
            if (r3 == 0) goto L31
            if (r1 == 0) goto L27
            sJ$for r1 = new sJ$for
            r1.<init>(r0)
            goto L36
        L27:
            if (r2 == 0) goto L2f
            sJ$if r1 = new sJ$if
            r1.<init>(r0)
            goto L36
        L2f:
            r1 = 0
            goto L36
        L31:
            sJ$new r1 = new sJ$new
            r1.<init>(r0)
        L36:
            defpackage.C3677sJ.f15433do = r1
            r0 = 0
            if (r1 != 0) goto L3d
            r2 = 0
            goto L41
        L3d:
            boolean r2 = r1.mo8117native()
        L41:
            defpackage.C3677sJ.f15435do = r2
            if (r1 != 0) goto L47
            r2 = 0
            goto L4b
        L47:
            boolean r2 = r1.mo8120import()
        L4b:
            defpackage.C3677sJ.f15437if = r2
            java.lang.Class<byte[]> r2 = byte[].class
            int r2 = m8096for(r2)
            long r2 = (long) r2
            defpackage.C3677sJ.f15431do = r2
            java.lang.Class<boolean[]> r2 = boolean[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.Class<int[]> r2 = int[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.Class<long[]> r2 = long[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.Class<float[]> r2 = float[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.Class<double[]> r2 = double[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.Class<java.lang.Object[]> r2 = java.lang.Object[].class
            m8096for(r2)
            m8101new(r2)
            java.lang.reflect.Field r2 = m8108try()
            if (r2 == 0) goto L92
            if (r1 != 0) goto L8f
            goto L92
        L8f:
            r1.m8121break(r2)
        L92:
            java.nio.ByteOrder r1 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r2 = java.nio.ByteOrder.BIG_ENDIAN
            if (r1 != r2) goto L9b
            r0 = 1
        L9b:
            defpackage.C3677sJ.f15436for = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3677sJ.<clinit>():void");
    }

    /* renamed from: break, reason: not valid java name */
    public static byte m8088break(long j, Object obj) {
        return (byte) ((m8092const((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m8089case(Class<?> cls) {
        if (!J0.m997do()) {
            return false;
        }
        try {
            Class<?> cls2 = f15432do;
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

    /* renamed from: catch, reason: not valid java name */
    public static double m8090catch(long j, Object obj) {
        return f15433do.mo8119try(j, obj);
    }

    /* renamed from: class, reason: not valid java name */
    public static float m8091class(long j, Object obj) {
        return f15433do.mo8111case(j, obj);
    }

    /* renamed from: const, reason: not valid java name */
    public static int m8092const(long j, Object obj) {
        return f15433do.m8123else(j, obj);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m8093do(Throwable th) {
        Logger.getLogger(C3677sJ.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m8094else(long j, Object obj) {
        return f15433do.mo8116for(j, obj);
    }

    /* renamed from: final, reason: not valid java name */
    public static long m8095final(long j, Object obj) {
        return f15433do.m8124goto(j, obj);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m8096for(Class<?> cls) {
        if (f15437if) {
            return f15433do.m8122do(cls);
        }
        return -1;
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte m8097goto(byte[] bArr, long j) {
        return f15433do.mo8118new(f15431do + j, bArr);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T m8098if(Class<T> cls) {
        try {
            return (T) f15434do.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static void m8099import(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m8092const = m8092const(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        m8102public(obj, ((255 & b) << i) | (m8092const & (~(255 << i))), j2);
    }

    /* renamed from: native, reason: not valid java name */
    public static void m8100native(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m8102public(obj, ((255 & b) << i) | (m8092const(j2, obj) & (~(255 << i))), j2);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m8101new(Class cls) {
        if (f15437if) {
            f15433do.m8125if(cls);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m8102public(Object obj, int i, long j) {
        f15433do.m8126super(obj, i, j);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m8103return(Object obj, long j, long j2) {
        f15433do.m8128throw(obj, j, j2);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m8104static(Object obj, long j, Object obj2) {
        f15433do.m8129while(obj, j, obj2);
    }

    /* renamed from: super, reason: not valid java name */
    public static Object m8105super(long j, Object obj) {
        return f15433do.m8127this(j, obj);
    }

    /* renamed from: this, reason: not valid java name */
    public static byte m8106this(long j, Object obj) {
        return (byte) ((m8092const((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & 255);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Unsafe m8107throw() {
        try {
            return (Unsafe) AccessController.doPrivileged(new Cdo());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Field m8108try() {
        Field field;
        Field field2;
        if (J0.m997do()) {
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

    /* renamed from: while, reason: not valid java name */
    public static void m8109while(byte[] bArr, long j, byte b) {
        f15433do.mo8113class(bArr, f15431do + j, b);
    }
}
