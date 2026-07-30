package j$.time.chrono;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class E extends AbstractC2965e {
    private static final long serialVersionUID = 1300372329181994526L;
    private final transient j$.time.i a;

    E(j$.time.i iVar) {
        Objects.requireNonNull(iVar, "isoDate");
        this.a = iVar;
    }

    private int K() {
        return this.a.K() - 1911;
    }

    private E M(j$.time.i iVar) {
        return iVar.equals(this.a) ? this : new E(iVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 7, this);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final o E() {
        return K() >= 1 ? F.ROC : F.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: F */
    public final InterfaceC2963c r(long j, j$.time.temporal.b bVar) {
        return (E) super.r(j, bVar);
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c G(long j) {
        return M(this.a.S(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c H(long j) {
        return M(this.a.T(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c I(long j) {
        return M(this.a.U(j));
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: J */
    public final InterfaceC2963c j(j$.time.i iVar) {
        return (E) super.j(iVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.chrono.E c(long r9, j$.time.temporal.r r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof j$.time.temporal.a
            if (r0 == 0) goto L9c
            r0 = r11
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r8.v(r0)
            int r3 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r3 != 0) goto L10
            return r8
        L10:
            int[] r1 = j$.time.chrono.D.a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            j$.time.i r3 = r8.a
            r4 = 7
            r5 = 6
            r6 = 4
            if (r2 == r6) goto L4c
            r7 = 5
            if (r2 == r7) goto L27
            if (r2 == r5) goto L4c
            if (r2 == r4) goto L4c
            goto L63
        L27:
            j$.time.chrono.C r11 = j$.time.chrono.C.d
            j$.time.temporal.w r11 = r11.n(r0)
            r11.b(r9, r0)
            int r11 = r8.K()
            long r0 = (long) r11
            r4 = 12
            long r0 = r0 * r4
            int r11 = r3.J()
            long r4 = (long) r11
            long r0 = r0 + r4
            r4 = 1
            long r0 = r0 - r4
            long r9 = r9 - r0
            j$.time.i r9 = r3.T(r9)
            j$.time.chrono.E r9 = r8.M(r9)
            return r9
        L4c:
            j$.time.chrono.C r2 = j$.time.chrono.C.d
            j$.time.temporal.w r2 = r2.n(r0)
            int r2 = r2.a(r9, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            if (r0 == r6) goto L87
            if (r0 == r5) goto L7c
            if (r0 == r4) goto L6c
        L63:
            j$.time.i r9 = r3.c(r9, r11)
            j$.time.chrono.E r9 = r8.M(r9)
            return r9
        L6c:
            int r9 = r8.K()
            int r1 = r1 - r9
            int r1 = r1 + 1911
            j$.time.i r9 = r3.Z(r1)
            j$.time.chrono.E r9 = r8.M(r9)
            return r9
        L7c:
            int r2 = r2 + 1911
            j$.time.i r9 = r3.Z(r2)
            j$.time.chrono.E r9 = r8.M(r9)
            return r9
        L87:
            int r9 = r8.K()
            if (r9 < r1) goto L90
            int r2 = r2 + 1911
            goto L93
        L90:
            int r1 = r1 - r2
            int r2 = r1 + 1911
        L93:
            j$.time.i r9 = r3.Z(r2)
            j$.time.chrono.E r9 = r8.M(r9)
            return r9
        L9c:
            j$.time.chrono.c r9 = super.c(r9, r11)
            j$.time.chrono.E r9 = (j$.time.chrono.E) r9
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.E.c(long, j$.time.temporal.r):j$.time.chrono.E");
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final n a() {
        return C.d;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c, j$.time.temporal.m
    public final InterfaceC2963c d(long j, j$.time.temporal.u uVar) {
        return (E) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.u uVar) {
        return (E) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof E) {
            return this.a.equals(((E) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final int hashCode() {
        C.d.getClass();
        return this.a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m j(j$.time.i iVar) {
        return (E) super.j(iVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (!AbstractC2962b.j(this, rVar)) {
            throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = D.a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.a.k(rVar);
        }
        if (i != 4) {
            return C.d.n(aVar);
        }
        j$.time.temporal.w k = j$.time.temporal.a.YEAR.k();
        return j$.time.temporal.w.j(1L, K() <= 0 ? (-k.e()) + 1 + 1911 : k.d() - 1911);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return (E) super.r(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = D.a[((j$.time.temporal.a) rVar).ordinal()];
        if (i == 4) {
            int K = K();
            if (K < 1) {
                K = 1 - K;
            }
            return K;
        }
        j$.time.i iVar = this.a;
        if (i == 5) {
            return ((K() * 12) + iVar.J()) - 1;
        }
        if (i == 6) {
            return K();
        }
        if (i != 7) {
            return iVar.v(rVar);
        }
        return K() < 1 ? 0 : 1;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final long w() {
        return this.a.w();
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final InterfaceC2966f x(j$.time.l lVar) {
        return C2968h.F(this, lVar);
    }
}
