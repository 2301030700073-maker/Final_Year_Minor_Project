package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.WireFormat$JavaType;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* renamed from: c.b.b.r0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0475r0 implements A0 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0470o0 f3205a;

    /* renamed from: b, reason: collision with root package name */
    public final M0 f3206b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3207c;

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0488y f3208d;

    public C0475r0(M0 m0, AbstractC0488y abstractC0488y, InterfaceC0470o0 interfaceC0470o0) {
        this.f3206b = m0;
        Objects.requireNonNull((C0490z) abstractC0488y);
        this.f3207c = interfaceC0470o0 instanceof H;
        this.f3208d = abstractC0488y;
        this.f3205a = interfaceC0470o0;
    }

    @Override // c.b.b.A0
    public void a(Object obj, Object obj2) {
        C0.D(this.f3206b, obj, obj2);
        if (this.f3207c) {
            C0.B(this.f3208d, obj, obj2);
        }
    }

    @Override // c.b.b.A0
    public final boolean b(Object obj) {
        Objects.requireNonNull((C0490z) this.f3208d);
        return ((H) obj).extensions.i();
    }

    @Override // c.b.b.A0
    public void c(Object obj, C0478t c0478t) {
        Objects.requireNonNull((C0490z) this.f3208d);
        Iterator k = ((H) obj).extensions.k();
        while (k.hasNext()) {
            Map.Entry entry = (Map.Entry) k.next();
            B b2 = (B) entry.getKey();
            if (b2.c() != WireFormat$JavaType.MESSAGE || b2.a() || b2.d()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof S) {
                c0478t.j(b2.getNumber(), ((U) ((S) entry).f3149a.getValue()).b());
            } else {
                c0478t.j(b2.getNumber(), entry.getValue());
            }
        }
        Objects.requireNonNull((O0) this.f3206b);
        N0 n0 = ((K) obj).unknownFields;
        Objects.requireNonNull(n0);
        Objects.requireNonNull(c0478t);
        for (int i = 0; i < n0.f3137a; i++) {
            c0478t.j(n0.f3138b[i] >>> 3, n0.f3139c[i]);
        }
    }

    @Override // c.b.b.A0
    public boolean d(Object obj, Object obj2) {
        Objects.requireNonNull((O0) this.f3206b);
        N0 n0 = ((K) obj).unknownFields;
        Objects.requireNonNull((O0) this.f3206b);
        if (!n0.equals(((K) obj2).unknownFields)) {
            return false;
        }
        if (!this.f3207c) {
            return true;
        }
        Objects.requireNonNull((C0490z) this.f3208d);
        C c2 = ((H) obj).extensions;
        Objects.requireNonNull((C0490z) this.f3208d);
        return c2.equals(((H) obj2).extensions);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008c A[EDGE_INSN: B:24:0x008c->B:25:0x008c BREAK  A[LOOP:1: B:10:0x004b->B:18:0x004b], SYNTHETIC] */
    @Override // c.b.b.A0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(java.lang.Object r10, byte[] r11, int r12, int r13, c.b.b.C0449e r14) {
        /*
            r9 = this;
            r0 = r10
            c.b.b.K r0 = (c.b.b.K) r0
            c.b.b.N0 r1 = r0.unknownFields
            c.b.b.N0 r2 = c.b.b.N0.f
            if (r1 != r2) goto Lf
            c.b.b.N0 r1 = c.b.b.N0.b()
            r0.unknownFields = r1
        Lf:
            c.b.b.H r10 = (c.b.b.H) r10
            r10.a()
            r10 = 0
            r0 = r10
        L16:
            if (r12 >= r13) goto L96
            int r4 = c.b.a.c.b.a.B(r11, r12, r14)
            int r2 = r14.f3179a
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L49
            r12 = r2 & 7
            if (r12 != r3) goto L44
            c.b.b.y r12 = r9.f3208d
            c.b.b.x r0 = r14.f3182d
            c.b.b.o0 r3 = r9.f3205a
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.b(r0, r3, r5)
            r0 = r12
            c.b.b.J r0 = (c.b.b.J) r0
            if (r0 != 0) goto L41
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = c.b.a.c.b.a.z(r2, r3, r4, r5, r6, r7)
            goto L16
        L41:
            c.b.b.x0 r9 = c.b.b.C0487x0.f3224c
            throw r10
        L44:
            int r12 = c.b.a.c.b.a.J(r2, r11, r4, r13, r14)
            goto L16
        L49:
            r12 = 0
            r2 = r10
        L4b:
            if (r4 >= r13) goto L8c
            int r4 = c.b.a.c.b.a.B(r11, r4, r14)
            int r5 = r14.f3179a
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L6d
            r8 = 3
            if (r6 == r8) goto L5d
            goto L82
        L5d:
            if (r0 != 0) goto L6a
            if (r7 != r3) goto L82
            int r4 = c.b.a.c.b.a.g(r11, r4, r14)
            java.lang.Object r2 = r14.f3181c
            com.google.protobuf.ByteString r2 = (com.google.protobuf.ByteString) r2
            goto L4b
        L6a:
            c.b.b.x0 r9 = c.b.b.C0487x0.f3224c
            throw r10
        L6d:
            if (r7 != 0) goto L82
            int r4 = c.b.a.c.b.a.B(r11, r4, r14)
            int r12 = r14.f3179a
            c.b.b.y r0 = r9.f3208d
            c.b.b.x r5 = r14.f3182d
            c.b.b.o0 r6 = r9.f3205a
            java.lang.Object r0 = r0.b(r5, r6, r12)
            c.b.b.J r0 = (c.b.b.J) r0
            goto L4b
        L82:
            r6 = 12
            if (r5 != r6) goto L87
            goto L8c
        L87:
            int r4 = c.b.a.c.b.a.J(r5, r11, r4, r13, r14)
            goto L4b
        L8c:
            if (r2 == 0) goto L94
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.c(r12, r2)
        L94:
            r12 = r4
            goto L16
        L96:
            if (r12 != r13) goto L99
            return
        L99:
            com.google.protobuf.InvalidProtocolBufferException r9 = com.google.protobuf.InvalidProtocolBufferException.e()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.b.C0475r0.e(java.lang.Object, byte[], int, int, c.b.b.e):void");
    }

    @Override // c.b.b.A0
    public int f(Object obj) {
        Objects.requireNonNull((O0) this.f3206b);
        N0 n0 = ((K) obj).unknownFields;
        int i = n0.f3140d;
        if (i == -1) {
            i = 0;
            for (int i2 = 0; i2 < n0.f3137a; i2++) {
                int i3 = n0.f3138b[i2] >>> 3;
                i += AbstractC0476s.d(3, (ByteString) n0.f3139c[i2]) + AbstractC0476s.H(2, i3) + (AbstractC0476s.G(1) * 2);
            }
            n0.f3140d = i;
        }
        int i4 = i + 0;
        if (!this.f3207c) {
            return i4;
        }
        Objects.requireNonNull((C0490z) this.f3208d);
        C c2 = ((H) obj).extensions;
        int i5 = 0;
        for (int i6 = 0; i6 < c2.f3107a.e(); i6++) {
            i5 += c2.g(c2.f3107a.d(i6));
        }
        Iterator it = c2.f3107a.f().iterator();
        while (it.hasNext()) {
            i5 += c2.g((Map.Entry) it.next());
        }
        return i4 + i5;
    }

    @Override // c.b.b.A0
    public Object g() {
        return ((F) this.f3205a.newBuilderForType()).buildPartial();
    }

    @Override // c.b.b.A0
    public void h(Object obj) {
        Objects.requireNonNull((O0) this.f3206b);
        ((K) obj).unknownFields.e = false;
        Objects.requireNonNull((C0490z) this.f3208d);
        C c2 = ((H) obj).extensions;
        if (c2.f3108b) {
            return;
        }
        c2.f3107a.h();
        c2.f3108b = true;
    }

    @Override // c.b.b.A0
    public int i(Object obj) {
        Objects.requireNonNull((O0) this.f3206b);
        int hashCode = ((K) obj).unknownFields.hashCode();
        if (!this.f3207c) {
            return hashCode;
        }
        Objects.requireNonNull((C0490z) this.f3208d);
        return (hashCode * 53) + ((H) obj).extensions.hashCode();
    }
}
