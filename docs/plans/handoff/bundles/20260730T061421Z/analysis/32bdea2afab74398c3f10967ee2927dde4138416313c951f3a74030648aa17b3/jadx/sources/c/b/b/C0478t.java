package c.b.b;

import com.google.protobuf.ByteString;
import java.util.Objects;

/* renamed from: c.b.b.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0478t {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0476s f3212a;

    public C0478t(AbstractC0476s abstractC0476s) {
        P.b(abstractC0476s, "output");
        this.f3212a = abstractC0476s;
        abstractC0476s.f3211a = this;
    }

    public void a(int i, boolean z) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 0);
        rVar.P(z ? (byte) 1 : (byte) 0);
    }

    public void b(int i, ByteString byteString) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 2);
        rVar.Z(byteString);
    }

    public void c(int i, double d2) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d2);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 1);
        rVar.S(doubleToRawLongBits);
    }

    public void d(int i, int i2) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 5);
        rVar.R(i2);
    }

    public void e(int i, long j) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 1);
        rVar.S(j);
    }

    public void f(int i, float f) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        int floatToRawIntBits = Float.floatToRawIntBits(f);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 5);
        rVar.R(floatToRawIntBits);
    }

    public void g(int i, Object obj, A0 a0) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        r rVar = (r) abstractC0476s;
        int i2 = i << 3;
        rVar.V(i2 | 3);
        a0.c((InterfaceC0470o0) obj, abstractC0476s.f3211a);
        rVar.V(i2 | 4);
    }

    public void h(int i, long j) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 0);
        rVar.W(j);
    }

    public void i(int i, Object obj, A0 a0) {
        InterfaceC0470o0 interfaceC0470o0 = (InterfaceC0470o0) obj;
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 2);
        rVar.V(((AbstractC0443b) interfaceC0470o0).getSerializedSize(a0));
        a0.c(interfaceC0470o0, rVar.f3211a);
    }

    public final void j(int i, Object obj) {
        if (obj instanceof ByteString) {
            r rVar = (r) this.f3212a;
            rVar.b0(1, 3);
            rVar.c0(2, i);
            rVar.Y(3, (ByteString) obj);
            rVar.b0(1, 4);
            return;
        }
        InterfaceC0470o0 interfaceC0470o0 = (InterfaceC0470o0) obj;
        r rVar2 = (r) this.f3212a;
        rVar2.b0(1, 3);
        rVar2.c0(2, i);
        rVar2.V(26);
        rVar2.V(interfaceC0470o0.getSerializedSize());
        interfaceC0470o0.writeTo(rVar2);
        rVar2.b0(1, 4);
    }

    public void k(int i, int i2) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 5);
        rVar.R(i2);
    }

    public void l(int i, long j) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 1);
        rVar.S(j);
    }

    public void m(int i, int i2) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        int L = AbstractC0476s.L(i2);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 0);
        rVar.V(L);
    }

    public void n(int i, long j) {
        AbstractC0476s abstractC0476s = this.f3212a;
        Objects.requireNonNull(abstractC0476s);
        long M = AbstractC0476s.M(j);
        r rVar = (r) abstractC0476s;
        rVar.V((i << 3) | 0);
        rVar.W(M);
    }

    public void o(int i, int i2) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 0);
        rVar.V(i2);
    }

    public void p(int i, long j) {
        r rVar = (r) this.f3212a;
        rVar.V((i << 3) | 0);
        rVar.W(j);
    }
}
