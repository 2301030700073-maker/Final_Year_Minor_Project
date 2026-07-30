package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.WireFormat$FieldType;
import com.google.protobuf.WireFormat$JavaType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class C {

    /* renamed from: d, reason: collision with root package name */
    public static final C f3106d = new C(true);

    /* renamed from: a, reason: collision with root package name */
    public final K0 f3107a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3108b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3109c;

    public C() {
        this.f3109c = false;
        this.f3107a = new D0(16);
    }

    public static int c(WireFormat$FieldType wireFormat$FieldType, int i, Object obj) {
        int G = AbstractC0476s.G(i);
        if (wireFormat$FieldType == WireFormat$FieldType.j) {
            G *= 2;
        }
        return d(wireFormat$FieldType, obj) + G;
    }

    public static int d(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                AbstractC0476s.g();
                return 8;
            case 1:
                ((Float) obj).floatValue();
                AbstractC0476s.n();
                return 4;
            case 2:
                return AbstractC0476s.K(((Long) obj).longValue());
            case 3:
                return AbstractC0476s.K(((Long) obj).longValue());
            case 4:
                return AbstractC0476s.r(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                AbstractC0476s.l();
                return 8;
            case 6:
                ((Integer) obj).intValue();
                AbstractC0476s.j();
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                AbstractC0476s.b();
                return 1;
            case 8:
                return obj instanceof ByteString ? AbstractC0476s.e((ByteString) obj) : AbstractC0476s.F((String) obj);
            case 9:
                return AbstractC0476s.p((InterfaceC0470o0) obj);
            case 10:
                return obj instanceof U ? AbstractC0476s.t((U) obj) : AbstractC0476s.v((InterfaceC0470o0) obj);
            case 11:
                return obj instanceof ByteString ? AbstractC0476s.e((ByteString) obj) : AbstractC0476s.c((byte[]) obj);
            case 12:
                return AbstractC0476s.I(((Integer) obj).intValue());
            case 13:
                return obj instanceof M ? AbstractC0476s.r(((M) obj).getNumber()) : AbstractC0476s.r(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                AbstractC0476s.x();
                return 4;
            case 15:
                ((Long) obj).longValue();
                AbstractC0476s.z();
                return 8;
            case 16:
                return AbstractC0476s.B(((Integer) obj).intValue());
            case 17:
                return AbstractC0476s.D(((Long) obj).longValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(B b2, Object obj) {
        WireFormat$FieldType b3 = b2.b();
        int number = b2.getNumber();
        if (!b2.a()) {
            return c(b3, number, obj);
        }
        int i = 0;
        if (b2.d()) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                i += d(b3, it.next());
            }
            return AbstractC0476s.G(number) + i + AbstractC0476s.I(i);
        }
        Iterator it2 = ((List) obj).iterator();
        while (it2.hasNext()) {
            i += c(b3, number, it2.next());
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
    
        if ((r3 instanceof c.b.b.M) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0027, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0015, code lost:
    
        if ((r3 instanceof c.b.b.U) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void n(com.google.protobuf.WireFormat$FieldType r2, java.lang.Object r3) {
        /*
            c.b.b.P.a(r3)
            com.google.protobuf.WireFormat$JavaType r2 = r2.javaType
            int r2 = r2.ordinal()
            r0 = 1
            r1 = 0
            switch(r2) {
                case 0: goto L3c;
                case 1: goto L39;
                case 2: goto L36;
                case 3: goto L33;
                case 4: goto L30;
                case 5: goto L2d;
                case 6: goto L21;
                case 7: goto L18;
                case 8: goto Lf;
                default: goto Le;
            }
        Le:
            goto L3e
        Lf:
            boolean r2 = r3 instanceof c.b.b.InterfaceC0470o0
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof c.b.b.U
            if (r2 == 0) goto L2a
            goto L2b
        L18:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof c.b.b.M
            if (r2 == 0) goto L2a
            goto L2b
        L21:
            boolean r2 = r3 instanceof com.google.protobuf.ByteString
            if (r2 != 0) goto L2b
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L2a
            goto L2b
        L2a:
            r0 = r1
        L2b:
            r1 = r0
            goto L3e
        L2d:
            boolean r1 = r3 instanceof java.lang.String
            goto L3e
        L30:
            boolean r1 = r3 instanceof java.lang.Boolean
            goto L3e
        L33:
            boolean r1 = r3 instanceof java.lang.Double
            goto L3e
        L36:
            boolean r1 = r3 instanceof java.lang.Float
            goto L3e
        L39:
            boolean r1 = r3 instanceof java.lang.Long
            goto L3e
        L3c:
            boolean r1 = r3 instanceof java.lang.Integer
        L3e:
            if (r1 == 0) goto L41
            return
        L41:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C.n(com.google.protobuf.WireFormat$FieldType, java.lang.Object):void");
    }

    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C clone() {
        C c2 = new C();
        for (int i = 0; i < this.f3107a.e(); i++) {
            Map.Entry d2 = this.f3107a.d(i);
            c2.m((B) d2.getKey(), d2.getValue());
        }
        for (Map.Entry entry : this.f3107a.f()) {
            c2.m((B) entry.getKey(), entry.getValue());
        }
        c2.f3109c = this.f3109c;
        return c2;
    }

    public final Object b(Object obj) {
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C) {
            return this.f3107a.equals(((C) obj).f3107a);
        }
        return false;
    }

    public Object f(B b2) {
        Object obj = this.f3107a.get(b2);
        return obj instanceof U ? ((U) obj).c() : obj;
    }

    public final int g(Map.Entry entry) {
        B b2 = (B) entry.getKey();
        Object value = entry.getValue();
        if (b2.c() != WireFormat$JavaType.MESSAGE || b2.a() || b2.d()) {
            return e(b2, value);
        }
        if (value instanceof U) {
            int number = ((B) entry.getKey()).getNumber();
            return AbstractC0476s.t((U) value) + AbstractC0476s.G(3) + AbstractC0476s.H(2, number) + (AbstractC0476s.G(1) * 2);
        }
        int number2 = ((B) entry.getKey()).getNumber();
        return AbstractC0476s.u(((InterfaceC0470o0) value).getSerializedSize()) + AbstractC0476s.G(3) + AbstractC0476s.H(2, number2) + (AbstractC0476s.G(1) * 2);
    }

    public boolean h() {
        return this.f3107a.isEmpty();
    }

    public int hashCode() {
        return this.f3107a.hashCode();
    }

    public boolean i() {
        for (int i = 0; i < this.f3107a.e(); i++) {
            if (!j(this.f3107a.d(i))) {
                return false;
            }
        }
        Iterator it = this.f3107a.f().iterator();
        while (it.hasNext()) {
            if (!j((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(Map.Entry entry) {
        B b2 = (B) entry.getKey();
        if (b2.c() == WireFormat$JavaType.MESSAGE) {
            if (b2.a()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((InterfaceC0470o0) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (!(value instanceof InterfaceC0470o0)) {
                    if (value instanceof U) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                if (!((InterfaceC0470o0) value).isInitialized()) {
                    return false;
                }
            }
        }
        return true;
    }

    public Iterator k() {
        return this.f3109c ? new T(this.f3107a.entrySet().iterator()) : this.f3107a.entrySet().iterator();
    }

    public final void l(Map.Entry entry) {
        B b2 = (B) entry.getKey();
        Object value = entry.getValue();
        if (value instanceof U) {
            value = ((U) value).c();
        }
        if (b2.a()) {
            Object f = f(b2);
            if (f == null) {
                f = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) f).add(b(it.next()));
            }
            this.f3107a.put(b2, f);
            return;
        }
        if (b2.c() != WireFormat$JavaType.MESSAGE) {
            this.f3107a.put(b2, b(value));
            return;
        }
        Object f2 = f(b2);
        if (f2 == null) {
            this.f3107a.put(b2, b(value));
        } else {
            this.f3107a.put(b2, ((F) b2.f(((InterfaceC0470o0) f2).toBuilder(), (InterfaceC0470o0) value)).build());
        }
    }

    public void m(B b2, Object obj) {
        if (!b2.a()) {
            n(b2.b(), obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                n(b2.b(), it.next());
            }
            obj = arrayList;
        }
        if (obj instanceof U) {
            this.f3109c = true;
        }
        this.f3107a.put(b2, obj);
    }

    public C(boolean z) {
        this.f3109c = false;
        D0 d0 = new D0(0);
        this.f3107a = d0;
        if (this.f3108b) {
            return;
        }
        d0.h();
        this.f3108b = true;
    }
}
