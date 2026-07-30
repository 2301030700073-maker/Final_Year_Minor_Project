package c.b.b;

import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.google.protobuf.ByteString;
import com.google.protobuf.FieldType;
import com.google.protobuf.InvalidProtocolBufferException;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;

/* renamed from: c.b.b.q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0474q0 implements A0 {
    public static final int[] r = new int[0];
    public static final Unsafe s;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f3200a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f3201b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3202c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3203d;
    public final InterfaceC0470o0 e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int[] j;
    public final int k;
    public final int l;
    public final InterfaceC0477s0 m;
    public final AbstractC0444b0 n;
    public final M0 o;
    public final AbstractC0488y p;
    public final InterfaceC0458i0 q;

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new S0());
        } catch (Throwable unused) {
            unsafe = null;
        }
        s = unsafe;
    }

    public C0474q0(int[] iArr, Object[] objArr, int i, int i2, InterfaceC0470o0 interfaceC0470o0, boolean z, boolean z2, int[] iArr2, int i3, int i4, InterfaceC0477s0 interfaceC0477s0, AbstractC0444b0 abstractC0444b0, M0 m0, AbstractC0488y abstractC0488y, InterfaceC0458i0 interfaceC0458i0) {
        this.f3200a = iArr;
        this.f3201b = objArr;
        this.f3202c = i;
        this.f3203d = i2;
        this.g = interfaceC0470o0 instanceof K;
        this.h = z;
        this.f = abstractC0488y != null && (interfaceC0470o0 instanceof H);
        this.i = z2;
        this.j = iArr2;
        this.k = i3;
        this.l = i4;
        this.m = interfaceC0477s0;
        this.n = abstractC0444b0;
        this.o = m0;
        this.p = abstractC0488y;
        this.e = interfaceC0470o0;
        this.q = interfaceC0458i0;
    }

    public static int A(Object obj, long j) {
        return ((Integer) U0.k(obj, j)).intValue();
    }

    public static long B(Object obj, long j) {
        return ((Long) U0.k(obj, j)).longValue();
    }

    public static Field H(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static int L(int i) {
        return (i & 267386880) >>> 20;
    }

    public static N0 o(Object obj) {
        K k = (K) obj;
        N0 n0 = k.unknownFields;
        if (n0 != N0.f) {
            return n0;
        }
        N0 b2 = N0.b();
        k.unknownFields = b2;
        return b2;
    }

    public static List s(Object obj, long j) {
        return (List) U0.k(obj, j);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static c.b.b.C0474q0 v(c.b.b.InterfaceC0464l0 r36, c.b.b.InterfaceC0477s0 r37, c.b.b.AbstractC0444b0 r38, c.b.b.M0 r39, c.b.b.AbstractC0488y r40, c.b.b.InterfaceC0458i0 r41) {
        /*
            Method dump skipped, instructions count: 1087
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.v(c.b.b.l0, c.b.b.s0, c.b.b.b0, c.b.b.M0, c.b.b.y, c.b.b.i0):c.b.b.q0");
    }

    public static long w(int i) {
        return i & 1048575;
    }

    public static boolean x(Object obj, long j) {
        return ((Boolean) U0.k(obj, j)).booleanValue();
    }

    public static double y(Object obj, long j) {
        return ((Double) U0.k(obj, j)).doubleValue();
    }

    public static float z(Object obj, long j) {
        return ((Float) U0.k(obj, j)).floatValue();
    }

    public final int C(Object obj, byte[] bArr, int i, int i2, int i3, long j, C0449e c0449e) {
        Unsafe unsafe = s;
        Object obj2 = this.f3201b[(i3 / 3) * 2];
        Object object = unsafe.getObject(obj, j);
        if (this.q.f(object)) {
            Object c2 = this.q.c(obj2);
            this.q.a(c2, object);
            unsafe.putObject(obj, j, c2);
            object = c2;
        }
        this.q.h(obj2);
        this.q.e(object);
        int B = c.b.a.c.b.a.B(bArr, i, c0449e);
        int i4 = c0449e.f3179a;
        if (i4 < 0 || i4 > i2 - B) {
            throw InvalidProtocolBufferException.f();
        }
        throw null;
    }

    public final int D(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C0449e c0449e) {
        Unsafe unsafe = s;
        long j2 = this.f3200a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(c.b.a.c.b.a.h(bArr, i)));
                    int i9 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i9;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(c.b.a.c.b.a.k(bArr, i)));
                    int i10 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i10;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int D = c.b.a.c.b.a.D(bArr, i, c0449e);
                    unsafe.putObject(obj, j, Long.valueOf(c0449e.f3180b));
                    unsafe.putInt(obj, j2, i4);
                    return D;
                }
                break;
            case 55:
            case SysUiStatsLog.KEYGUARD_STATE_CHANGED /* 62 */:
                if (i5 == 0) {
                    int B = c.b.a.c.b.a.B(bArr, i, c0449e);
                    unsafe.putObject(obj, j, Integer.valueOf(c0449e.f3179a));
                    unsafe.putInt(obj, j2, i4);
                    return B;
                }
                break;
            case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(c.b.a.c.b.a.j(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i11;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(c.b.a.c.b.a.i(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i12;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int D2 = c.b.a.c.b.a.D(bArr, i, c0449e);
                    unsafe.putObject(obj, j, Boolean.valueOf(c0449e.f3180b != 0));
                    unsafe.putInt(obj, j2, i4);
                    return D2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int B2 = c.b.a.c.b.a.B(bArr, i, c0449e);
                    int i13 = c0449e.f3179a;
                    if (i13 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !Y0.f(bArr, B2, B2 + i13)) {
                            throw InvalidProtocolBufferException.b();
                        }
                        unsafe.putObject(obj, j, new String(bArr, B2, i13, P.f3141a));
                        B2 += i13;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return B2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    int m = c.b.a.c.b.a.m(n(i8), bArr, i, i2, c0449e);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, c0449e.f3181c);
                    } else {
                        unsafe.putObject(obj, j, P.f(object, c0449e.f3181c));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return m;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int g = c.b.a.c.b.a.g(bArr, i, c0449e);
                    unsafe.putObject(obj, j, c0449e.f3181c);
                    unsafe.putInt(obj, j2, i4);
                    return g;
                }
                break;
            case SysUiStatsLog.KEYGUARD_BOUNCER_STATE_CHANGED /* 63 */:
                if (i5 == 0) {
                    int B3 = c.b.a.c.b.a.B(bArr, i, c0449e);
                    int i14 = c0449e.f3179a;
                    N n = (N) this.f3201b[((i8 / 3) * 2) + 1];
                    if (n == null || n.isInRange(i14)) {
                        unsafe.putObject(obj, j, Integer.valueOf(i14));
                        unsafe.putInt(obj, j2, i4);
                    } else {
                        o(obj).c(i3, Long.valueOf(i14));
                    }
                    return B3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int B4 = c.b.a.c.b.a.B(bArr, i, c0449e);
                    unsafe.putObject(obj, j, Integer.valueOf(AbstractC0471p.a(c0449e.f3179a)));
                    unsafe.putInt(obj, j2, i4);
                    return B4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int D3 = c.b.a.c.b.a.D(bArr, i, c0449e);
                    unsafe.putObject(obj, j, Long.valueOf(AbstractC0471p.b(c0449e.f3180b)));
                    unsafe.putInt(obj, j2, i4);
                    return D3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    int l = c.b.a.c.b.a.l(n(i8), bArr, i, i2, (i3 & (-8)) | 4, c0449e);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, c0449e.f3181c);
                    } else {
                        unsafe.putObject(obj, j, P.f(object2, c0449e.f3181c));
                    }
                    unsafe.putInt(obj, j2, i4);
                    return l;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:189:0x0375, code lost:
    
        if (r0 != r28) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x03d9, code lost:
    
        r9 = r32;
        r6 = r34;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x03c5, code lost:
    
        r10 = r29;
        r13 = r30;
        r9 = r32;
        r1 = r34;
        r11 = r35;
        r12 = r17;
        r7 = r18;
        r3 = r19;
        r8 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x03c3, code lost:
    
        if (r0 != r14) goto L139;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x004a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0434  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int E(java.lang.Object r30, byte[] r31, int r32, int r33, int r34, c.b.b.C0449e r35) {
        /*
            Method dump skipped, instructions count: 1212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.E(java.lang.Object, byte[], int, int, int, c.b.b.e):int");
    }

    public final int F(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, C0449e c0449e) {
        int C;
        int i8 = i;
        O o = (O) s.getObject(obj, j2);
        if (!o.f()) {
            int size = o.size();
            o = o.d(size == 0 ? 10 : size * 2);
            s.putObject(obj, j2, o);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return c.b.a.c.b.a.p(bArr, i8, o, c0449e);
                }
                if (i5 == 1) {
                    C0480u c0480u = (C0480u) o;
                    c0480u.h(c0480u.f3215c, c.b.a.c.b.a.h(bArr, i));
                    int i9 = i8 + 8;
                    while (i9 < i2) {
                        int B = c.b.a.c.b.a.B(bArr, i9, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return i9;
                        }
                        c0480u.h(c0480u.f3215c, c.b.a.c.b.a.h(bArr, B));
                        i9 = B + 8;
                    }
                    return i9;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    return c.b.a.c.b.a.s(bArr, i8, o, c0449e);
                }
                if (i5 == 5) {
                    D d2 = (D) o;
                    d2.h(d2.f3116c, c.b.a.c.b.a.k(bArr, i));
                    int i10 = i8 + 4;
                    while (i10 < i2) {
                        int B2 = c.b.a.c.b.a.B(bArr, i10, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return i10;
                        }
                        d2.h(d2.f3116c, c.b.a.c.b.a.k(bArr, B2));
                        i10 = B2 + 4;
                    }
                    return i10;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return c.b.a.c.b.a.w(bArr, i8, o, c0449e);
                }
                if (i5 == 0) {
                    C0446c0 c0446c0 = (C0446c0) o;
                    int D = c.b.a.c.b.a.D(bArr, i8, c0449e);
                    c0446c0.h(c0446c0.f3176c, c0449e.f3180b);
                    while (D < i2) {
                        int B3 = c.b.a.c.b.a.B(bArr, D, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return D;
                        }
                        D = c.b.a.c.b.a.D(bArr, B3, c0449e);
                        c0446c0.h(c0446c0.f3176c, c0449e.f3180b);
                    }
                    return D;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return c.b.a.c.b.a.v(bArr, i8, o, c0449e);
                }
                if (i5 == 0) {
                    return c.b.a.c.b.a.C(i3, bArr, i, i2, o, c0449e);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return c.b.a.c.b.a.r(bArr, i8, o, c0449e);
                }
                if (i5 == 1) {
                    C0446c0 c0446c02 = (C0446c0) o;
                    c0446c02.h(c0446c02.f3176c, c.b.a.c.b.a.j(bArr, i));
                    int i11 = i8 + 8;
                    while (i11 < i2) {
                        int B4 = c.b.a.c.b.a.B(bArr, i11, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return i11;
                        }
                        c0446c02.h(c0446c02.f3176c, c.b.a.c.b.a.j(bArr, B4));
                        i11 = B4 + 8;
                    }
                    return i11;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return c.b.a.c.b.a.q(bArr, i8, o, c0449e);
                }
                if (i5 == 5) {
                    L l = (L) o;
                    l.h(l.f3136c, c.b.a.c.b.a.i(bArr, i));
                    int i12 = i8 + 4;
                    while (i12 < i2) {
                        int B5 = c.b.a.c.b.a.B(bArr, i12, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return i12;
                        }
                        l.h(l.f3136c, c.b.a.c.b.a.i(bArr, B5));
                        i12 = B5 + 4;
                    }
                    return i12;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    return c.b.a.c.b.a.o(bArr, i8, o, c0449e);
                }
                if (i5 == 0) {
                    C0451f c0451f = (C0451f) o;
                    int D2 = c.b.a.c.b.a.D(bArr, i8, c0449e);
                    c0451f.h(c0451f.f3186c, c0449e.f3180b != 0);
                    while (D2 < i2) {
                        int B6 = c.b.a.c.b.a.B(bArr, D2, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return D2;
                        }
                        D2 = c.b.a.c.b.a.D(bArr, B6, c0449e);
                        c0451f.h(c0451f.f3186c, c0449e.f3180b != 0);
                    }
                    return D2;
                }
                break;
            case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        int B7 = c.b.a.c.b.a.B(bArr, i8, c0449e);
                        int i13 = c0449e.f3179a;
                        if (i13 < 0) {
                            throw InvalidProtocolBufferException.d();
                        }
                        if (i13 == 0) {
                            o.add("");
                        } else {
                            o.add(new String(bArr, B7, i13, P.f3141a));
                            B7 += i13;
                        }
                        while (B7 < i2) {
                            int B8 = c.b.a.c.b.a.B(bArr, B7, c0449e);
                            if (i3 != c0449e.f3179a) {
                                return B7;
                            }
                            B7 = c.b.a.c.b.a.B(bArr, B8, c0449e);
                            int i14 = c0449e.f3179a;
                            if (i14 < 0) {
                                throw InvalidProtocolBufferException.d();
                            }
                            if (i14 == 0) {
                                o.add("");
                            } else {
                                o.add(new String(bArr, B7, i14, P.f3141a));
                                B7 += i14;
                            }
                        }
                        return B7;
                    }
                    int B9 = c.b.a.c.b.a.B(bArr, i8, c0449e);
                    int i15 = c0449e.f3179a;
                    if (i15 < 0) {
                        throw InvalidProtocolBufferException.d();
                    }
                    if (i15 == 0) {
                        o.add("");
                    } else {
                        int i16 = B9 + i15;
                        if (!Y0.f(bArr, B9, i16)) {
                            throw InvalidProtocolBufferException.b();
                        }
                        o.add(new String(bArr, B9, i15, P.f3141a));
                        B9 = i16;
                    }
                    while (B9 < i2) {
                        int B10 = c.b.a.c.b.a.B(bArr, B9, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return B9;
                        }
                        B9 = c.b.a.c.b.a.B(bArr, B10, c0449e);
                        int i17 = c0449e.f3179a;
                        if (i17 < 0) {
                            throw InvalidProtocolBufferException.d();
                        }
                        if (i17 == 0) {
                            o.add("");
                        } else {
                            int i18 = B9 + i17;
                            if (!Y0.f(bArr, B9, i18)) {
                                throw InvalidProtocolBufferException.b();
                            }
                            o.add(new String(bArr, B9, i17, P.f3141a));
                            B9 = i18;
                        }
                    }
                    return B9;
                }
                break;
            case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                if (i5 == 2) {
                    return c.b.a.c.b.a.n(n(i6), i3, bArr, i, i2, o, c0449e);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int B11 = c.b.a.c.b.a.B(bArr, i8, c0449e);
                    int i19 = c0449e.f3179a;
                    if (i19 < 0) {
                        throw InvalidProtocolBufferException.d();
                    }
                    if (i19 > bArr.length - B11) {
                        throw InvalidProtocolBufferException.f();
                    }
                    if (i19 == 0) {
                        o.add(ByteString.f3492a);
                    } else {
                        o.add(ByteString.i(bArr, B11, i19));
                        B11 += i19;
                    }
                    while (B11 < i2) {
                        int B12 = c.b.a.c.b.a.B(bArr, B11, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return B11;
                        }
                        B11 = c.b.a.c.b.a.B(bArr, B12, c0449e);
                        int i20 = c0449e.f3179a;
                        if (i20 < 0) {
                            throw InvalidProtocolBufferException.d();
                        }
                        if (i20 > bArr.length - B11) {
                            throw InvalidProtocolBufferException.f();
                        }
                        if (i20 == 0) {
                            o.add(ByteString.f3492a);
                        } else {
                            o.add(ByteString.i(bArr, B11, i20));
                            B11 += i20;
                        }
                    }
                    return B11;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    C = c.b.a.c.b.a.v(bArr, i8, o, c0449e);
                } else if (i5 == 0) {
                    C = c.b.a.c.b.a.C(i3, bArr, i, i2, o, c0449e);
                }
                K k = (K) obj;
                N0 n0 = k.unknownFields;
                if (n0 == N0.f) {
                    n0 = null;
                }
                N0 n02 = (N0) C0.z(i4, o, (N) this.f3201b[((i6 / 3) * 2) + 1], n0, this.o);
                if (n02 != null) {
                    k.unknownFields = n02;
                }
                return C;
            case 33:
            case 47:
                if (i5 == 2) {
                    return c.b.a.c.b.a.t(bArr, i8, o, c0449e);
                }
                if (i5 == 0) {
                    L l2 = (L) o;
                    int B13 = c.b.a.c.b.a.B(bArr, i8, c0449e);
                    l2.h(l2.f3136c, AbstractC0471p.a(c0449e.f3179a));
                    while (B13 < i2) {
                        int B14 = c.b.a.c.b.a.B(bArr, B13, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return B13;
                        }
                        B13 = c.b.a.c.b.a.B(bArr, B14, c0449e);
                        l2.h(l2.f3136c, AbstractC0471p.a(c0449e.f3179a));
                    }
                    return B13;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    return c.b.a.c.b.a.u(bArr, i8, o, c0449e);
                }
                if (i5 == 0) {
                    C0446c0 c0446c03 = (C0446c0) o;
                    int D3 = c.b.a.c.b.a.D(bArr, i8, c0449e);
                    c0446c03.h(c0446c03.f3176c, AbstractC0471p.b(c0449e.f3180b));
                    while (D3 < i2) {
                        int B15 = c.b.a.c.b.a.B(bArr, D3, c0449e);
                        if (i3 != c0449e.f3179a) {
                            return D3;
                        }
                        D3 = c.b.a.c.b.a.D(bArr, B15, c0449e);
                        c0446c03.h(c0446c03.f3176c, AbstractC0471p.b(c0449e.f3180b));
                    }
                    return D3;
                }
                break;
            case 49:
                if (i5 == 3) {
                    A0 n = n(i6);
                    int i21 = (i3 & (-8)) | 4;
                    i8 = c.b.a.c.b.a.l(n, bArr, i, i2, i21, c0449e);
                    o.add(c0449e.f3181c);
                    while (i8 < i2) {
                        int B16 = c.b.a.c.b.a.B(bArr, i8, c0449e);
                        if (i3 != c0449e.f3179a) {
                            break;
                        } else {
                            i8 = c.b.a.c.b.a.l(n, bArr, B16, i2, i21, c0449e);
                            o.add(c0449e.f3181c);
                        }
                    }
                    break;
                }
                break;
        }
        return i8;
    }

    public final int G(int i) {
        if (i < this.f3202c || i > this.f3203d) {
            return -1;
        }
        return K(i, 0);
    }

    public final void I(Object obj, int i) {
        if (this.h) {
            return;
        }
        int i2 = this.f3200a[i + 2];
        long j = i2 & 1048575;
        U0.p(obj, j, U0.i(obj, j) | (1 << (i2 >>> 20)));
    }

    public final void J(Object obj, int i, int i2) {
        U0.p(obj, this.f3200a[i2 + 2] & 1048575, i);
    }

    public final int K(int i, int i2) {
        int length = (this.f3200a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.f3200a[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    public final int M(int i) {
        return this.f3200a[i + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:268:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x058e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void N(java.lang.Object r12, c.b.b.C0478t r13) {
        /*
            Method dump skipped, instructions count: 1570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.N(java.lang.Object, c.b.b.t):void");
    }

    public final void O(C0478t c0478t, int i, Object obj, int i2) {
        if (obj != null) {
            this.q.h(this.f3201b[(i2 / 3) * 2]);
            Map b2 = this.q.b(obj);
            Objects.requireNonNull(c0478t.f3212a);
            Iterator it = b2.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                ((r) c0478t.f3212a).V((i << 3) | 2);
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
    }

    public final void P(int i, Object obj, C0478t c0478t) {
        if (obj instanceof String) {
            r rVar = (r) c0478t.f3212a;
            rVar.V((i << 3) | 2);
            rVar.a0((String) obj);
        } else {
            r rVar2 = (r) c0478t.f3212a;
            rVar2.V((i << 3) | 2);
            rVar2.Z((ByteString) obj);
        }
    }

    public final void Q(M0 m0, Object obj, C0478t c0478t) {
        Objects.requireNonNull((O0) m0);
        ((K) obj).unknownFields.e(c0478t);
    }

    @Override // c.b.b.A0
    public void a(Object obj, Object obj2) {
        if (obj2 == null) {
            throw null;
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f3200a;
            if (i >= iArr.length) {
                if (this.h) {
                    return;
                }
                C0.D(this.o, obj, obj2);
                if (this.f) {
                    C0.B(this.p, obj, obj2);
                    return;
                }
                return;
            }
            int i2 = iArr[i + 1];
            long w = w(i2);
            int i3 = this.f3200a[i];
            switch (L(i2)) {
                case 0:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.n(obj, w, U0.g(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 1:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.o(obj, w, U0.h(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 2:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.q(obj, w, U0.j(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 3:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.q(obj, w, U0.j(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 4:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 5:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.q(obj, w, U0.j(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 6:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 7:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.l(obj, w, U0.e(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 8:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.r(obj, w, U0.k(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 9:
                    t(obj, obj2, i);
                    break;
                case 10:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.r(obj, w, U0.k(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 11:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 12:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 13:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 14:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.q(obj, w, U0.j(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 15:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.p(obj, w, U0.i(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 16:
                    if (!p(obj2, i)) {
                        break;
                    } else {
                        U0.q(obj, w, U0.j(obj2, w));
                        I(obj, i);
                        break;
                    }
                case 17:
                    t(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.n.b(obj, obj2, w);
                    break;
                case 50:
                    C0.C(this.q, obj, obj2, w);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                case 57:
                case 58:
                case 59:
                    if (!r(obj2, i3, i)) {
                        break;
                    } else {
                        U0.r(obj, w, U0.k(obj2, w));
                        J(obj, i3, i);
                        break;
                    }
                case 60:
                    u(obj, obj2, i);
                    break;
                case 61:
                case SysUiStatsLog.KEYGUARD_STATE_CHANGED /* 62 */:
                case SysUiStatsLog.KEYGUARD_BOUNCER_STATE_CHANGED /* 63 */:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!r(obj2, i3, i)) {
                        break;
                    } else {
                        U0.r(obj, w, U0.k(obj2, w));
                        J(obj, i3, i);
                        break;
                    }
                case 68:
                    u(obj, obj2, i);
                    break;
            }
            i += 3;
        }
    }

    @Override // c.b.b.A0
    public final boolean b(Object obj) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            boolean z = true;
            if (i3 >= this.k) {
                if (this.f) {
                    Objects.requireNonNull((C0490z) this.p);
                    if (!((H) obj).extensions.i()) {
                        return false;
                    }
                }
                return true;
            }
            int i5 = this.j[i3];
            int i6 = this.f3200a[i5];
            int M = M(i5);
            if (this.h) {
                i = 0;
            } else {
                int i7 = this.f3200a[i5 + 2];
                int i8 = 1048575 & i7;
                i = 1 << (i7 >>> 20);
                if (i8 != i2) {
                    i4 = s.getInt(obj, i8);
                    i2 = i8;
                }
            }
            if (((268435456 & M) != 0) && !q(obj, i5, i4, i)) {
                return false;
            }
            int L = L(M);
            if (L != 9 && L != 17) {
                if (L != 27) {
                    if (L == 60 || L == 68) {
                        if (r(obj, i6, i5) && !n(i5).b(U0.k(obj, w(M)))) {
                            return false;
                        }
                    } else if (L != 49) {
                        if (L == 50 && !this.q.b(U0.k(obj, w(M))).isEmpty()) {
                            this.q.h(this.f3201b[(i5 / 3) * 2]);
                            throw null;
                        }
                    }
                }
                List list = (List) U0.k(obj, w(M));
                if (!list.isEmpty()) {
                    A0 n = n(i5);
                    int i9 = 0;
                    while (true) {
                        if (i9 >= list.size()) {
                            break;
                        }
                        if (!n.b(list.get(i9))) {
                            z = false;
                            break;
                        }
                        i9++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (q(obj, i5, i4, i) && !n(i5).b(U0.k(obj, w(M)))) {
                return false;
            }
            i3++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0498  */
    @Override // c.b.b.A0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(java.lang.Object r18, c.b.b.C0478t r19) {
        /*
            Method dump skipped, instructions count: 1326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.c(java.lang.Object, c.b.b.t):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
    
        if (c.b.b.C0.F(c.b.b.U0.k(r10, r5), c.b.b.U0.k(r11, r5)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
    
        if (c.b.b.C0.F(c.b.b.U0.k(r10, r5), c.b.b.U0.k(r11, r5)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0087, code lost:
    
        if (c.b.b.U0.j(r10, r5) == c.b.b.U0.j(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00ad, code lost:
    
        if (c.b.b.U0.j(r10, r5) == c.b.b.U0.j(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00bf, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d1, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00e3, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f9, code lost:
    
        if (c.b.b.C0.F(c.b.b.U0.k(r10, r5), c.b.b.U0.k(r11, r5)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x010f, code lost:
    
        if (c.b.b.C0.F(c.b.b.U0.k(r10, r5), c.b.b.U0.k(r11, r5)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0125, code lost:
    
        if (c.b.b.C0.F(c.b.b.U0.k(r10, r5), c.b.b.U0.k(r11, r5)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0137, code lost:
    
        if (c.b.b.U0.e(r10, r5) == c.b.b.U0.e(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0149, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015d, code lost:
    
        if (c.b.b.U0.j(r10, r5) == c.b.b.U0.j(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x016f, code lost:
    
        if (c.b.b.U0.i(r10, r5) == c.b.b.U0.i(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0182, code lost:
    
        if (c.b.b.U0.j(r10, r5) == c.b.b.U0.j(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0195, code lost:
    
        if (c.b.b.U0.j(r10, r5) == c.b.b.U0.j(r11, r5)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ae, code lost:
    
        if (java.lang.Float.floatToIntBits(c.b.b.U0.h(r10, r5)) == java.lang.Float.floatToIntBits(c.b.b.U0.h(r11, r5))) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01c9, code lost:
    
        if (java.lang.Double.doubleToLongBits(c.b.b.U0.g(r10, r5)) == java.lang.Double.doubleToLongBits(c.b.b.U0.g(r11, r5))) goto L109;
     */
    @Override // c.b.b.A0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean d(java.lang.Object r10, java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.d(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x01e6, code lost:
    
        if (r0 != r15) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0233, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0230, code lost:
    
        if (r0 != r15) goto L112;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x006a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:139:0x004b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    @Override // c.b.b.A0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(java.lang.Object r28, byte[] r29, int r30, int r31, c.b.b.C0449e r32) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0474q0.e(java.lang.Object, byte[], int, int, c.b.b.e):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:300:0x055b. Please report as an issue. */
    @Override // c.b.b.A0
    public int f(Object obj) {
        int i;
        int i2;
        int i3;
        boolean z;
        int f;
        int s2;
        int a2;
        int d2;
        int w;
        int y;
        int f2;
        int i4;
        int G;
        int I;
        int f3;
        int m;
        int i5;
        int G2;
        int I2;
        int i6 = 1;
        int i7 = 1048575;
        if (this.h) {
            Unsafe unsafe = s;
            int i8 = 0;
            for (int i9 = 0; i9 < this.f3200a.length; i9 += 3) {
                int M = M(i9);
                int L = L(M);
                int i10 = this.f3200a[i9];
                long w2 = w(M);
                int i11 = (L < FieldType.J.id || L > FieldType.W.id) ? 0 : this.f3200a[i9 + 2] & 1048575;
                switch (L) {
                    case 0:
                        if (p(obj, i9)) {
                            f3 = AbstractC0476s.f(i10, 0.0d);
                            m = f3;
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.m(i10, RecentsState.NO_OFFSET);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.s(i10, U0.j(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.J(i10, U0.j(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.q(i10, U0.i(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.k(i10, 0L);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.i(i10, 0);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.a(i10, true);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (p(obj, i9)) {
                            Object k = U0.k(obj, w2);
                            m = k instanceof ByteString ? AbstractC0476s.d(i10, (ByteString) k) : AbstractC0476s.E(i10, (String) k);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (p(obj, i9)) {
                            m = C0.o(i10, U0.k(obj, w2), n(i9));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.d(i10, (ByteString) U0.k(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.H(i10, U0.i(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.h(i10, U0.i(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.w(i10, 0);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.y(i10, 0L);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.A(i10, U0.i(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.C(i10, U0.j(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (p(obj, i9)) {
                            m = AbstractC0476s.o(i10, (InterfaceC0470o0) U0.k(obj, w2), n(i9));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        m = C0.h(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 19:
                        m = C0.f(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 20:
                        m = C0.m(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 21:
                        m = C0.x(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 22:
                        m = C0.k(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 23:
                        m = C0.h(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 24:
                        m = C0.f(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 25:
                        m = C0.a(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                        m = C0.u(i10, s(obj, w2));
                        i8 += m;
                        break;
                    case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                        m = C0.p(i10, s(obj, w2), n(i9));
                        i8 += m;
                        break;
                    case 28:
                        m = C0.c(i10, s(obj, w2));
                        i8 += m;
                        break;
                    case 29:
                        m = C0.v(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 30:
                        m = C0.d(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 31:
                        m = C0.f(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 32:
                        m = C0.h(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 33:
                        m = C0.q(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 34:
                        m = C0.s(i10, s(obj, w2), false);
                        i8 += m;
                        break;
                    case 35:
                        i5 = C0.i((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 36:
                        i5 = C0.g((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 37:
                        i5 = C0.n((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 38:
                        i5 = C0.y((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 39:
                        i5 = C0.l((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 40:
                        i5 = C0.i((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 41:
                        i5 = C0.g((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 42:
                        i5 = C0.b((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 43:
                        i5 = C0.w((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 44:
                        i5 = C0.e((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 45:
                        i5 = C0.g((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 46:
                        i5 = C0.i((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 47:
                        i5 = C0.r((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 48:
                        i5 = C0.t((List) unsafe.getObject(obj, w2));
                        if (i5 <= 0) {
                            break;
                        } else {
                            if (this.i) {
                                unsafe.putInt(obj, i11, i5);
                            }
                            G2 = AbstractC0476s.G(i10);
                            I2 = AbstractC0476s.I(i5);
                            i8 += I2 + G2 + i5;
                            break;
                        }
                    case 49:
                        m = C0.j(i10, s(obj, w2), n(i9));
                        i8 += m;
                        break;
                    case 50:
                        m = this.q.d(i10, U0.k(obj, w2), m(i9));
                        i8 += m;
                        break;
                    case 51:
                        if (r(obj, i10, i9)) {
                            f3 = AbstractC0476s.f(i10, 0.0d);
                            m = f3;
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.m(i10, RecentsState.NO_OFFSET);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.s(i10, B(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.J(i10, B(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.q(i10, A(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.k(i10, 0L);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.i(i10, 0);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.a(i10, true);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (r(obj, i10, i9)) {
                            Object k2 = U0.k(obj, w2);
                            m = k2 instanceof ByteString ? AbstractC0476s.d(i10, (ByteString) k2) : AbstractC0476s.E(i10, (String) k2);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (r(obj, i10, i9)) {
                            m = C0.o(i10, U0.k(obj, w2), n(i9));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.d(i10, (ByteString) U0.k(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case SysUiStatsLog.KEYGUARD_STATE_CHANGED /* 62 */:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.H(i10, A(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case SysUiStatsLog.KEYGUARD_BOUNCER_STATE_CHANGED /* 63 */:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.h(i10, A(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.w(i10, 0);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.y(i10, 0L);
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.A(i10, A(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.C(i10, B(obj, w2));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (r(obj, i10, i9)) {
                            m = AbstractC0476s.o(i10, (InterfaceC0470o0) U0.k(obj, w2), n(i9));
                            i8 += m;
                            break;
                        } else {
                            break;
                        }
                }
            }
            Objects.requireNonNull((O0) this.o);
            return ((K) obj).unknownFields.a() + i8;
        }
        Unsafe unsafe2 = s;
        int i12 = -1;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (i13 < this.f3200a.length) {
            int M2 = M(i13);
            int i16 = this.f3200a[i13];
            int L2 = L(M2);
            if (L2 <= 17) {
                i = this.f3200a[i13 + 2];
                int i17 = i & i7;
                i3 = i6 << (i >>> 20);
                if (i17 != i12) {
                    i15 = unsafe2.getInt(obj, i17);
                    i12 = i17;
                    i2 = i14;
                    i = i;
                } else {
                    i2 = i14;
                }
            } else {
                i = (!this.i || L2 < FieldType.J.id || L2 > FieldType.W.id) ? 0 : this.f3200a[i13 + 2] & i7;
                i2 = i14;
                i3 = 0;
            }
            long w3 = w(M2);
            switch (L2) {
                case 0:
                    z = false;
                    if ((i15 & i3) != 0) {
                        f = AbstractC0476s.f(i16, 0.0d);
                        i14 = f + i2;
                        break;
                    }
                    i14 = i2;
                    break;
                case 1:
                    if ((i15 & i3) != 0) {
                        z = false;
                        f = AbstractC0476s.m(i16, RecentsState.NO_OFFSET);
                        i14 = f + i2;
                        break;
                    } else {
                        z = false;
                        i14 = i2;
                        break;
                    }
                case 2:
                    if ((i15 & i3) != 0) {
                        s2 = AbstractC0476s.s(i16, unsafe2.getLong(obj, w3));
                        f = s2;
                        z = false;
                        i14 = f + i2;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 3:
                    if ((i15 & i3) != 0) {
                        s2 = AbstractC0476s.J(i16, unsafe2.getLong(obj, w3));
                        f = s2;
                        z = false;
                        i14 = f + i2;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 4:
                    if ((i15 & i3) != 0) {
                        s2 = AbstractC0476s.q(i16, unsafe2.getInt(obj, w3));
                        f = s2;
                        z = false;
                        i14 = f + i2;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 5:
                    if ((i15 & i3) != 0) {
                        s2 = AbstractC0476s.k(i16, 0L);
                        f = s2;
                        z = false;
                        i14 = f + i2;
                        break;
                    }
                    i14 = i2;
                    z = false;
                    break;
                case 6:
                    if ((i15 & i3) != 0) {
                        f = AbstractC0476s.i(i16, 0);
                        z = false;
                        i14 = f + i2;
                        break;
                    } else {
                        i14 = i2;
                        z = false;
                        break;
                    }
                case 7:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.a(i16, true);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 8:
                    if ((i15 & i3) != 0) {
                        Object object = unsafe2.getObject(obj, w3);
                        d2 = object instanceof ByteString ? AbstractC0476s.d(i16, (ByteString) object) : AbstractC0476s.E(i16, (String) object);
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 9:
                    if ((i15 & i3) != 0) {
                        a2 = C0.o(i16, unsafe2.getObject(obj, w3), n(i13));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 10:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.d(i16, (ByteString) unsafe2.getObject(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 11:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.H(i16, unsafe2.getInt(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 12:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.h(i16, unsafe2.getInt(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 13:
                    if ((i15 & i3) != 0) {
                        w = AbstractC0476s.w(i16, 0);
                        i14 = i2 + w;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 14:
                    if ((i15 & i3) != 0) {
                        y = AbstractC0476s.y(i16, 0L);
                        a2 = y;
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 15:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.A(i16, unsafe2.getInt(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 16:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.C(i16, unsafe2.getLong(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 17:
                    if ((i15 & i3) != 0) {
                        a2 = AbstractC0476s.o(i16, (InterfaceC0470o0) unsafe2.getObject(obj, w3), n(i13));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 18:
                    y = C0.h(i16, (List) unsafe2.getObject(obj, w3), false);
                    a2 = y;
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 19:
                    f2 = C0.f(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 20:
                    f2 = C0.m(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 21:
                    f2 = C0.x(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 22:
                    f2 = C0.k(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 23:
                    f2 = C0.h(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 24:
                    f2 = C0.f(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 25:
                    f2 = C0.a(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                    a2 = C0.u(i16, (List) unsafe2.getObject(obj, w3));
                    i14 = i2 + a2;
                    z = false;
                    break;
                case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                    a2 = C0.p(i16, (List) unsafe2.getObject(obj, w3), n(i13));
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 28:
                    a2 = C0.c(i16, (List) unsafe2.getObject(obj, w3));
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 29:
                    y = C0.v(i16, (List) unsafe2.getObject(obj, w3), false);
                    a2 = y;
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 30:
                    f2 = C0.d(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 31:
                    f2 = C0.f(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 32:
                    f2 = C0.h(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 33:
                    f2 = C0.q(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 34:
                    f2 = C0.s(i16, (List) unsafe2.getObject(obj, w3), false);
                    i14 = i2 + f2;
                    z = false;
                    break;
                case 35:
                    i4 = C0.i((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 36:
                    i4 = C0.g((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 37:
                    i4 = C0.n((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 38:
                    i4 = C0.y((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 39:
                    i4 = C0.l((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 40:
                    i4 = C0.i((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 41:
                    i4 = C0.g((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 42:
                    i4 = C0.b((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 43:
                    i4 = C0.w((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 44:
                    i4 = C0.e((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 45:
                    i4 = C0.g((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 46:
                    i4 = C0.i((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 47:
                    i4 = C0.r((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 48:
                    i4 = C0.t((List) unsafe2.getObject(obj, w3));
                    if (i4 > 0) {
                        if (this.i) {
                            unsafe2.putInt(obj, i, i4);
                        }
                        G = AbstractC0476s.G(i16);
                        I = AbstractC0476s.I(i4);
                        d2 = I + G + i4;
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 49:
                    a2 = C0.j(i16, (List) unsafe2.getObject(obj, w3), n(i13));
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 50:
                    a2 = this.q.d(i16, unsafe2.getObject(obj, w3), m(i13));
                    i14 = i2 + a2;
                    z = false;
                    break;
                case 51:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.f(i16, 0.0d);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 52:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.m(i16, RecentsState.NO_OFFSET);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 53:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.s(i16, B(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 54:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.J(i16, B(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 55:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.q(i16, A(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.k(i16, 0L);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 57:
                    if (r(obj, i16, i13)) {
                        w = AbstractC0476s.i(i16, 0);
                        i14 = i2 + w;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 58:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.a(i16, true);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 59:
                    if (r(obj, i16, i13)) {
                        Object object2 = unsafe2.getObject(obj, w3);
                        d2 = object2 instanceof ByteString ? AbstractC0476s.d(i16, (ByteString) object2) : AbstractC0476s.E(i16, (String) object2);
                        i14 = d2 + i2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 60:
                    if (r(obj, i16, i13)) {
                        a2 = C0.o(i16, unsafe2.getObject(obj, w3), n(i13));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 61:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.d(i16, (ByteString) unsafe2.getObject(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case SysUiStatsLog.KEYGUARD_STATE_CHANGED /* 62 */:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.H(i16, A(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case SysUiStatsLog.KEYGUARD_BOUNCER_STATE_CHANGED /* 63 */:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.h(i16, A(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 64:
                    if (r(obj, i16, i13)) {
                        w = AbstractC0476s.w(i16, 0);
                        i14 = i2 + w;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 65:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.y(i16, 0L);
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 66:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.A(i16, A(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 67:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.C(i16, B(obj, w3));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                case 68:
                    if (r(obj, i16, i13)) {
                        a2 = AbstractC0476s.o(i16, (InterfaceC0470o0) unsafe2.getObject(obj, w3), n(i13));
                        i14 = i2 + a2;
                        z = false;
                        break;
                    }
                    z = false;
                    i14 = i2;
                    break;
                default:
                    z = false;
                    i14 = i2;
                    break;
            }
            i13 += 3;
            i6 = 1;
            i7 = 1048575;
        }
        Objects.requireNonNull((O0) this.o);
        int a3 = ((K) obj).unknownFields.a() + i14;
        if (this.f) {
            Objects.requireNonNull((C0490z) this.p);
            C c2 = ((H) obj).extensions;
            int i18 = 0;
            for (int i19 = 0; i19 < c2.f3107a.e(); i19++) {
                Map.Entry d3 = c2.f3107a.d(i19);
                i18 += C.e((B) d3.getKey(), d3.getValue());
            }
            for (Map.Entry entry : c2.f3107a.f()) {
                i18 += C.e((B) entry.getKey(), entry.getValue());
            }
            a3 += i18;
        }
        return a3;
    }

    @Override // c.b.b.A0
    public Object g() {
        return this.m.a(this.e);
    }

    @Override // c.b.b.A0
    public void h(Object obj) {
        int i;
        int i2 = this.k;
        while (true) {
            i = this.l;
            if (i2 >= i) {
                break;
            }
            long w = w(M(this.j[i2]));
            Object k = U0.k(obj, w);
            if (k != null) {
                U0.r(obj, w, this.q.g(k));
            }
            i2++;
        }
        int length = this.j.length;
        while (i < length) {
            this.n.a(obj, this.j[i]);
            i++;
        }
        Objects.requireNonNull((O0) this.o);
        ((K) obj).unknownFields.e = false;
        if (this.f) {
            Objects.requireNonNull((C0490z) this.p);
            C c2 = ((H) obj).extensions;
            if (c2.f3108b) {
                return;
            }
            c2.f3107a.h();
            c2.f3108b = true;
        }
    }

    @Override // c.b.b.A0
    public int i(Object obj) {
        int i;
        int e;
        int length = this.f3200a.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int M = M(i3);
            int i4 = this.f3200a[i3];
            long w = w(M);
            int i5 = 37;
            switch (L(M)) {
                case 0:
                    i = i2 * 53;
                    e = P.e(Double.doubleToLongBits(U0.g(obj, w)));
                    i2 = e + i;
                    break;
                case 1:
                    i = i2 * 53;
                    e = Float.floatToIntBits(U0.h(obj, w));
                    i2 = e + i;
                    break;
                case 2:
                    i = i2 * 53;
                    e = P.e(U0.j(obj, w));
                    i2 = e + i;
                    break;
                case 3:
                    i = i2 * 53;
                    e = P.e(U0.j(obj, w));
                    i2 = e + i;
                    break;
                case 4:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 5:
                    i = i2 * 53;
                    e = P.e(U0.j(obj, w));
                    i2 = e + i;
                    break;
                case 6:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 7:
                    i = i2 * 53;
                    e = P.c(U0.e(obj, w));
                    i2 = e + i;
                    break;
                case 8:
                    i = i2 * 53;
                    e = ((String) U0.k(obj, w)).hashCode();
                    i2 = e + i;
                    break;
                case 9:
                    Object k = U0.k(obj, w);
                    if (k != null) {
                        i5 = k.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    e = U0.k(obj, w).hashCode();
                    i2 = e + i;
                    break;
                case 11:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 12:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 13:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 14:
                    i = i2 * 53;
                    e = P.e(U0.j(obj, w));
                    i2 = e + i;
                    break;
                case 15:
                    i = i2 * 53;
                    e = U0.i(obj, w);
                    i2 = e + i;
                    break;
                case 16:
                    i = i2 * 53;
                    e = P.e(U0.j(obj, w));
                    i2 = e + i;
                    break;
                case 17:
                    Object k2 = U0.k(obj, w);
                    if (k2 != null) {
                        i5 = k2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                case ISystemUiProxy.Stub.TRANSACTION_handleImageBundleAsScreenshot /* 27 */:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    e = U0.k(obj, w).hashCode();
                    i2 = e + i;
                    break;
                case 50:
                    i = i2 * 53;
                    e = U0.k(obj, w).hashCode();
                    i2 = e + i;
                    break;
                case 51:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(Double.doubleToLongBits(y(obj, w)));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = Float.floatToIntBits(z(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(B(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(B(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(B(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.c(x(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = ((String) U0.k(obj, w)).hashCode();
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = U0.k(obj, w).hashCode();
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = U0.k(obj, w).hashCode();
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case SysUiStatsLog.KEYGUARD_STATE_CHANGED /* 62 */:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case SysUiStatsLog.KEYGUARD_BOUNCER_STATE_CHANGED /* 63 */:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(B(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = A(obj, w);
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = P.e(B(obj, w));
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (r(obj, i4, i3)) {
                        i = i2 * 53;
                        e = U0.k(obj, w).hashCode();
                        i2 = e + i;
                        break;
                    } else {
                        break;
                    }
            }
        }
        Objects.requireNonNull((O0) this.o);
        int hashCode = ((K) obj).unknownFields.hashCode() + (i2 * 53);
        if (!this.f) {
            return hashCode;
        }
        Objects.requireNonNull((C0490z) this.p);
        return (hashCode * 53) + ((H) obj).extensions.hashCode();
    }

    public final boolean j(Object obj, Object obj2, int i) {
        return p(obj, i) == p(obj2, i);
    }

    public final Object k(Object obj, int i, Object obj2, M0 m0) {
        int[] iArr = this.f3200a;
        int i2 = iArr[i];
        Object k = U0.k(obj, w(iArr[i + 1]));
        if (k == null) {
            return obj2;
        }
        int i3 = (i / 3) * 2;
        N n = (N) this.f3201b[i3 + 1];
        if (n == null) {
            return obj2;
        }
        Map e = this.q.e(k);
        this.q.h(this.f3201b[i3]);
        for (Map.Entry entry : e.entrySet()) {
            if (!n.isInRange(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    Objects.requireNonNull((O0) m0);
                }
                entry.getKey();
                entry.getValue();
                throw null;
            }
        }
        return obj2;
    }

    public final N l(int i) {
        return (N) this.f3201b[((i / 3) * 2) + 1];
    }

    public final Object m(int i) {
        return this.f3201b[(i / 3) * 2];
    }

    public final A0 n(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f3201b;
        A0 a0 = (A0) objArr[i2];
        if (a0 != null) {
            return a0;
        }
        A0 a2 = C0487x0.f3224c.a((Class) objArr[i2 + 1]);
        this.f3201b[i2] = a2;
        return a2;
    }

    public final boolean p(Object obj, int i) {
        if (!this.h) {
            int i2 = this.f3200a[i + 2];
            return (U0.i(obj, (long) (i2 & 1048575)) & (1 << (i2 >>> 20))) != 0;
        }
        int i3 = this.f3200a[i + 1];
        long w = w(i3);
        switch (L(i3)) {
            case 0:
                return U0.g(obj, w) != 0.0d;
            case 1:
                return U0.h(obj, w) != RecentsState.NO_OFFSET;
            case 2:
                return U0.j(obj, w) != 0;
            case 3:
                return U0.j(obj, w) != 0;
            case 4:
                return U0.i(obj, w) != 0;
            case 5:
                return U0.j(obj, w) != 0;
            case 6:
                return U0.i(obj, w) != 0;
            case 7:
                return U0.e(obj, w);
            case 8:
                Object k = U0.k(obj, w);
                if (k instanceof String) {
                    return !((String) k).isEmpty();
                }
                if (k instanceof ByteString) {
                    return !ByteString.f3492a.equals(k);
                }
                throw new IllegalArgumentException();
            case 9:
                return U0.k(obj, w) != null;
            case 10:
                return !ByteString.f3492a.equals(U0.k(obj, w));
            case 11:
                return U0.i(obj, w) != 0;
            case 12:
                return U0.i(obj, w) != 0;
            case 13:
                return U0.i(obj, w) != 0;
            case 14:
                return U0.j(obj, w) != 0;
            case 15:
                return U0.i(obj, w) != 0;
            case 16:
                return U0.j(obj, w) != 0;
            case 17:
                return U0.k(obj, w) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    public final boolean q(Object obj, int i, int i2, int i3) {
        return this.h ? p(obj, i) : (i2 & i3) != 0;
    }

    public final boolean r(Object obj, int i, int i2) {
        return U0.i(obj, (long) (this.f3200a[i2 + 2] & 1048575)) == i;
    }

    public final void t(Object obj, Object obj2, int i) {
        long w = w(this.f3200a[i + 1]);
        if (p(obj2, i)) {
            Object k = U0.k(obj, w);
            Object k2 = U0.k(obj2, w);
            if (k != null && k2 != null) {
                U0.r(obj, w, P.f(k, k2));
                I(obj, i);
            } else if (k2 != null) {
                U0.r(obj, w, k2);
                I(obj, i);
            }
        }
    }

    public final void u(Object obj, Object obj2, int i) {
        int[] iArr = this.f3200a;
        int i2 = iArr[i + 1];
        int i3 = iArr[i];
        long w = w(i2);
        if (r(obj2, i3, i)) {
            Object k = U0.k(obj, w);
            Object k2 = U0.k(obj2, w);
            if (k != null && k2 != null) {
                U0.r(obj, w, P.f(k, k2));
                J(obj, i3, i);
            } else if (k2 != null) {
                U0.r(obj, w, k2);
                J(obj, i3, i);
            }
        }
    }
}
