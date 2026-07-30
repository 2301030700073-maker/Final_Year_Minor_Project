package c.b.b;

import com.google.protobuf.ByteString;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class C0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f3110a;

    /* renamed from: b, reason: collision with root package name */
    public static final M0 f3111b;

    /* renamed from: c, reason: collision with root package name */
    public static final M0 f3112c;

    /* renamed from: d, reason: collision with root package name */
    public static final M0 f3113d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f3110a = cls;
        f3111b = A(false);
        f3112c = A(true);
        f3113d = new O0();
    }

    public static M0 A(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (M0) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void B(AbstractC0488y abstractC0488y, Object obj, Object obj2) {
        Objects.requireNonNull((C0490z) abstractC0488y);
        C c2 = ((H) obj2).extensions;
        if (c2.h()) {
            return;
        }
        C c3 = abstractC0488y.c(obj);
        Objects.requireNonNull(c3);
        for (int i = 0; i < c2.f3107a.e(); i++) {
            c3.l(c2.f3107a.d(i));
        }
        Iterator it = c2.f3107a.f().iterator();
        while (it.hasNext()) {
            c3.l((Map.Entry) it.next());
        }
    }

    public static void C(InterfaceC0458i0 interfaceC0458i0, Object obj, Object obj2, long j) {
        U0.r(obj, j, interfaceC0458i0.a(U0.k(obj, j), U0.k(obj2, j)));
    }

    public static void D(M0 m0, Object obj, Object obj2) {
        Objects.requireNonNull((O0) m0);
        K k = (K) obj;
        N0 n0 = k.unknownFields;
        N0 n02 = ((K) obj2).unknownFields;
        if (!n02.equals(N0.f)) {
            int i = n0.f3137a + n02.f3137a;
            int[] copyOf = Arrays.copyOf(n0.f3138b, i);
            System.arraycopy(n02.f3138b, 0, copyOf, n0.f3137a, n02.f3137a);
            Object[] copyOf2 = Arrays.copyOf(n0.f3139c, i);
            System.arraycopy(n02.f3139c, 0, copyOf2, n0.f3137a, n02.f3137a);
            n0 = new N0(i, copyOf, copyOf2, true);
        }
        k.unknownFields = n0;
    }

    public static void E(Class cls) {
        Class cls2;
        if (!K.class.isAssignableFrom(cls) && (cls2 = f3110a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean F(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static Object G(int i, int i2, Object obj, M0 m0) {
        if (obj == null) {
            Objects.requireNonNull((O0) m0);
            obj = N0.b();
        }
        Objects.requireNonNull((O0) m0);
        ((N0) obj).c((i << 3) | 0, Long.valueOf(i2));
        return obj;
    }

    public static void H(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                boolean booleanValue = ((Boolean) list.get(i2)).booleanValue();
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 0);
                rVar.P(booleanValue ? (byte) 1 : (byte) 0);
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Boolean) list.get(i4)).booleanValue();
            i3++;
        }
        c0478t.f3212a.V(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0478t.f3212a.P(((Boolean) list.get(i5)).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    public static void I(int i, List list, C0478t c0478t) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        for (int i2 = 0; i2 < list.size(); i2++) {
            AbstractC0476s abstractC0476s = c0478t.f3212a;
            ByteString byteString = (ByteString) list.get(i2);
            r rVar = (r) abstractC0476s;
            rVar.V((i << 3) | 2);
            rVar.Z(byteString);
        }
    }

    public static void J(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                double doubleValue = ((Double) list.get(i2)).doubleValue();
                Objects.requireNonNull(abstractC0476s);
                long doubleToRawLongBits = Double.doubleToRawLongBits(doubleValue);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 1);
                rVar.S(doubleToRawLongBits);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Double) list.get(i4)).doubleValue();
            i3 += 8;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            AbstractC0476s abstractC0476s2 = c0478t.f3212a;
            double doubleValue2 = ((Double) list.get(i2)).doubleValue();
            Objects.requireNonNull(abstractC0476s2);
            abstractC0476s2.S(Double.doubleToRawLongBits(doubleValue2));
            i2++;
        }
    }

    public static void K(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0478t.f3212a.T(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC0476s.r(((Integer) list.get(i4)).intValue());
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.Q(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void L(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                int intValue = ((Integer) list.get(i2)).intValue();
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 5);
                rVar.R(intValue);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.R(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void M(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                long longValue = ((Long) list.get(i2)).longValue();
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 1);
                rVar.S(longValue);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.S(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void N(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                float floatValue = ((Float) list.get(i2)).floatValue();
                Objects.requireNonNull(abstractC0476s);
                int floatToRawIntBits = Float.floatToRawIntBits(floatValue);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 5);
                rVar.R(floatToRawIntBits);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Float) list.get(i4)).floatValue();
            i3 += 4;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            AbstractC0476s abstractC0476s2 = c0478t.f3212a;
            float floatValue2 = ((Float) list.get(i2)).floatValue();
            Objects.requireNonNull(abstractC0476s2);
            abstractC0476s2.R(Float.floatToRawIntBits(floatValue2));
            i2++;
        }
    }

    public static void O(int i, List list, C0478t c0478t, A0 a0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        for (int i2 = 0; i2 < list.size(); i2++) {
            c0478t.g(i, list.get(i2), a0);
        }
    }

    public static void P(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                c0478t.f3212a.T(i, ((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC0476s.r(((Integer) list.get(i4)).intValue());
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.U(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void Q(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                long longValue = ((Long) list.get(i2)).longValue();
                Objects.requireNonNull(abstractC0476s);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 0);
                rVar.W(longValue);
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC0476s.K(((Long) list.get(i4)).longValue());
        }
        c0478t.f3212a.V(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0478t.f3212a.W(((Long) list.get(i5)).longValue());
        }
    }

    public static void R(int i, List list, C0478t c0478t, A0 a0) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        for (int i2 = 0; i2 < list.size(); i2++) {
            c0478t.i(i, list.get(i2), a0);
        }
    }

    public static void S(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                int intValue = ((Integer) list.get(i2)).intValue();
                Objects.requireNonNull(abstractC0476s);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 5);
                rVar.R(intValue);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Integer) list.get(i4)).intValue();
            i3 += 4;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.R(((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public static void T(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!z) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                long longValue = ((Long) list.get(i2)).longValue();
                Objects.requireNonNull(abstractC0476s);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 1);
                rVar.S(longValue);
                i2++;
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((Long) list.get(i4)).longValue();
            i3 += 8;
        }
        c0478t.f3212a.V(i3);
        while (i2 < list.size()) {
            c0478t.f3212a.S(((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public static void U(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (z) {
            ((r) c0478t.f3212a).V((i << 3) | 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC0476s.B(((Integer) list.get(i3)).intValue());
            }
            c0478t.f3212a.V(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                c0478t.f3212a.V(AbstractC0476s.L(((Integer) list.get(i4)).intValue()));
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC0476s abstractC0476s = c0478t.f3212a;
            int intValue = ((Integer) list.get(i5)).intValue();
            Objects.requireNonNull(abstractC0476s);
            int L = AbstractC0476s.L(intValue);
            r rVar = (r) abstractC0476s;
            rVar.V((i << 3) | 0);
            rVar.V(L);
        }
    }

    public static void V(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (z) {
            ((r) c0478t.f3212a).V((i << 3) | 2);
            int i2 = 0;
            for (int i3 = 0; i3 < list.size(); i3++) {
                i2 += AbstractC0476s.D(((Long) list.get(i3)).longValue());
            }
            c0478t.f3212a.V(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                c0478t.f3212a.W(AbstractC0476s.M(((Long) list.get(i4)).longValue()));
            }
            return;
        }
        for (int i5 = 0; i5 < list.size(); i5++) {
            AbstractC0476s abstractC0476s = c0478t.f3212a;
            long longValue = ((Long) list.get(i5)).longValue();
            Objects.requireNonNull(abstractC0476s);
            long M = AbstractC0476s.M(longValue);
            r rVar = (r) abstractC0476s;
            rVar.V((i << 3) | 0);
            rVar.W(M);
        }
    }

    public static void W(int i, List list, C0478t c0478t) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        int i2 = 0;
        if (!(list instanceof X)) {
            while (i2 < list.size()) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                String str = (String) list.get(i2);
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 2);
                rVar.a0(str);
                i2++;
            }
            return;
        }
        X x = (X) list;
        while (i2 < list.size()) {
            Object c2 = x.c(i2);
            if (c2 instanceof String) {
                r rVar2 = (r) c0478t.f3212a;
                rVar2.V((i << 3) | 2);
                rVar2.a0((String) c2);
            } else {
                r rVar3 = (r) c0478t.f3212a;
                rVar3.V((i << 3) | 2);
                rVar3.Z((ByteString) c2);
            }
            i2++;
        }
    }

    public static void X(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                int intValue = ((Integer) list.get(i2)).intValue();
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 0);
                rVar.V(intValue);
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC0476s.I(((Integer) list.get(i4)).intValue());
        }
        c0478t.f3212a.V(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0478t.f3212a.V(((Integer) list.get(i5)).intValue());
        }
    }

    public static void Y(int i, List list, C0478t c0478t, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Objects.requireNonNull(c0478t);
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                AbstractC0476s abstractC0476s = c0478t.f3212a;
                long longValue = ((Long) list.get(i2)).longValue();
                r rVar = (r) abstractC0476s;
                rVar.V((i << 3) | 0);
                rVar.W(longValue);
            }
            return;
        }
        ((r) c0478t.f3212a).V((i << 3) | 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += AbstractC0476s.K(((Long) list.get(i4)).longValue());
        }
        c0478t.f3212a.V(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0478t.f3212a.W(((Long) list.get(i5)).longValue());
        }
    }

    public static int a(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return AbstractC0476s.a(i, true) * size;
        }
        return AbstractC0476s.u(size) + AbstractC0476s.G(i);
    }

    public static int b(List list) {
        return list.size();
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int G = AbstractC0476s.G(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            G += AbstractC0476s.e((ByteString) list.get(i2));
        }
        return G;
    }

    public static int d(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = e(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + e;
        }
        return AbstractC0476s.u(e) + AbstractC0476s.G(i);
    }

    public static int e(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof L) {
            L l = (L) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.r(l.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.r(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int f(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return AbstractC0476s.i(i, 0) * size;
        }
        return AbstractC0476s.u(size * 4) + AbstractC0476s.G(i);
    }

    public static int g(List list) {
        return list.size() * 4;
    }

    public static int h(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        if (!z) {
            return AbstractC0476s.k(i, 0L) * size;
        }
        return AbstractC0476s.u(size * 8) + AbstractC0476s.G(i);
    }

    public static int i(List list) {
        return list.size() * 8;
    }

    public static int j(int i, List list, A0 a0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC0476s.o(i, (InterfaceC0470o0) list.get(i3), a0);
        }
        return i2;
    }

    public static int k(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int l = l(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + l;
        }
        return AbstractC0476s.u(l) + AbstractC0476s.G(i);
    }

    public static int l(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof L) {
            L l = (L) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.r(l.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.r(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int m(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        int n = n(list);
        if (z) {
            return AbstractC0476s.u(n) + AbstractC0476s.G(i);
        }
        return (AbstractC0476s.G(i) * list.size()) + n;
    }

    public static int n(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0446c0) {
            C0446c0 c0446c0 = (C0446c0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.K(c0446c0.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.K(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int o(int i, Object obj, A0 a0) {
        int G;
        int u;
        if (obj instanceof V) {
            G = AbstractC0476s.G(i);
            u = AbstractC0476s.t((V) obj);
        } else {
            G = AbstractC0476s.G(i);
            u = AbstractC0476s.u(((AbstractC0443b) ((InterfaceC0470o0) obj)).getSerializedSize(a0));
        }
        return u + G;
    }

    public static int p(int i, List list, A0 a0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int G = AbstractC0476s.G(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            G = obj instanceof V ? AbstractC0476s.t((V) obj) + G : G + AbstractC0476s.u(((AbstractC0443b) ((InterfaceC0470o0) obj)).getSerializedSize(a0));
        }
        return G;
    }

    public static int q(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int r = r(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + r;
        }
        return AbstractC0476s.u(r) + AbstractC0476s.G(i);
    }

    public static int r(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof L) {
            L l = (L) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.B(l.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.B(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int s(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int t = t(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + t;
        }
        return AbstractC0476s.u(t) + AbstractC0476s.G(i);
    }

    public static int t(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0446c0) {
            C0446c0 c0446c0 = (C0446c0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.D(c0446c0.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.D(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int u(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int G = AbstractC0476s.G(i) * size;
        if (list instanceof X) {
            X x = (X) list;
            while (i2 < size) {
                Object c2 = x.c(i2);
                G = (c2 instanceof ByteString ? AbstractC0476s.e((ByteString) c2) : AbstractC0476s.F((String) c2)) + G;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                G = (obj instanceof ByteString ? AbstractC0476s.e((ByteString) obj) : AbstractC0476s.F((String) obj)) + G;
                i2++;
            }
        }
        return G;
    }

    public static int v(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int w = w(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + w;
        }
        return AbstractC0476s.u(w) + AbstractC0476s.G(i);
    }

    public static int w(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof L) {
            L l = (L) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.I(l.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.I(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int x(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = y(list);
        if (!z) {
            return (AbstractC0476s.G(i) * size) + y;
        }
        return AbstractC0476s.u(y) + AbstractC0476s.G(i);
    }

    public static int y(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0446c0) {
            C0446c0 c0446c0 = (C0446c0) list;
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.K(c0446c0.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += AbstractC0476s.K(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static Object z(int i, List list, N n, Object obj, M0 m0) {
        if (n == null) {
            return obj;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (n.isInRange(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj = G(i, intValue, obj, m0);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!n.isInRange(intValue2)) {
                    obj = G(i, intValue2, obj, m0);
                    it.remove();
                }
            }
        }
        return obj;
    }
}
