package j$.time.chrono;

import j$.time.AbstractC2959a;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public final class s extends AbstractC2965e {
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient q a;
    private final transient int b;
    private final transient int c;
    private final transient int d;

    private s(q qVar, int i, int i2, int i3) {
        qVar.y(i, i2, i3);
        this.a = qVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private s(q qVar, long j) {
        int[] D = qVar.D((int) j);
        this.a = qVar;
        this.b = D[0];
        this.c = D[1];
        this.d = D[2];
    }

    private int K() {
        return this.a.v(this.b, this.c) + this.d;
    }

    static s L(q qVar, int i, int i2, int i3) {
        return new s(qVar, i, i2, i3);
    }

    static s M(q qVar, long j) {
        return new s(qVar, j);
    }

    private s P(int i, int i2, int i3) {
        q qVar = this.a;
        int G = qVar.G(i, i2);
        if (i3 > G) {
            i3 = G;
        }
        return new s(qVar, i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 6, this);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final o E() {
        return t.AH;
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: F */
    public final InterfaceC2963c r(long j, j$.time.temporal.b bVar) {
        return (s) super.r(j, bVar);
    }

    @Override // j$.time.chrono.AbstractC2965e
    final InterfaceC2963c I(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return P(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: J */
    public final InterfaceC2963c j(j$.time.i iVar) {
        return (s) super.j(iVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final s G(long j) {
        return new s(this.a, w() + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC2965e
    /* renamed from: O, reason: merged with bridge method [inline-methods] */
    public final s H(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        long h = AbstractC2959a.h(j2, 12L);
        q qVar = this.a;
        if (h >= qVar.F() && h <= qVar.E()) {
            return P((int) h, ((int) AbstractC2959a.g(j2, 12L)) + 1, this.d);
        }
        throw new j$.time.d("Invalid Hijrah year: " + h);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final s c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (s) super.c(j, rVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        q qVar = this.a;
        qVar.J(aVar).b(j, aVar);
        int i = (int) j;
        int i2 = r.a[aVar.ordinal()];
        int i3 = this.d;
        int i4 = this.c;
        int i5 = this.b;
        switch (i2) {
            case 1:
                return P(i5, i4, i);
            case 2:
                return G(Math.min(i, qVar.H(i5)) - K());
            case 3:
                return G((j - v(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return G(j - (((int) AbstractC2959a.g(w() + 3, 7)) + 1));
            case 5:
                return G(j - v(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return G(j - v(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new s(qVar, j);
            case 8:
                return G((j - v(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return P(i5, i, i3);
            case 10:
                return H(j - (((i5 * 12) + i4) - 1));
            case 11:
                if (i5 < 1) {
                    i = 1 - i;
                }
                return P(i, i4, i3);
            case 12:
                return P(i, i4, i3);
            case 13:
                return P(1 - i5, i4, i3);
            default:
                throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final n a() {
        return this.a;
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c, j$.time.temporal.m
    public final InterfaceC2963c d(long j, j$.time.temporal.u uVar) {
        return (s) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.u uVar) {
        return (s) super.d(j, uVar);
    }

    @Override // j$.time.chrono.AbstractC2965e
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.b == sVar.b && this.c == sVar.c && this.d == sVar.d && this.a.equals(sVar.a);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final int hashCode() {
        int hashCode = this.a.h().hashCode();
        int i = this.b;
        return (hashCode ^ (i & (-2048))) ^ (((i << 11) + (this.c << 6)) + this.d);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m j(j$.time.i iVar) {
        return (s) super.j(iVar);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        int G;
        long j;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        if (!AbstractC2962b.j(this, rVar)) {
            throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i = r.a[aVar.ordinal()];
        int i2 = this.b;
        q qVar = this.a;
        if (i == 1) {
            G = qVar.G(i2, this.c);
        } else {
            if (i != 2) {
                if (i != 3) {
                    return qVar.J(aVar);
                }
                j = 5;
                return j$.time.temporal.w.j(1L, j);
            }
            G = qVar.H(i2);
        }
        j = G;
        return j$.time.temporal.w.j(1L, j);
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return (s) super.r(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.n(this);
        }
        int i = r.a[((j$.time.temporal.a) rVar).ordinal()];
        int i2 = this.c;
        int i3 = this.b;
        int i4 = this.d;
        switch (i) {
            case 1:
                return i4;
            case 2:
                return K();
            case 3:
                return ((i4 - 1) / 7) + 1;
            case 4:
                return ((int) AbstractC2959a.g(w() + 3, 7)) + 1;
            case 5:
                return ((i4 - 1) % 7) + 1;
            case 6:
                return ((K() - 1) % 7) + 1;
            case 7:
                return w();
            case 8:
                return ((K() - 1) / 7) + 1;
            case 9:
                return i2;
            case 10:
                return ((i3 * 12) + i2) - 1;
            case 11:
                return i3;
            case 12:
                return i3;
            case 13:
                return i3 <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.v(j$.time.e.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final long w() {
        return this.a.y(this.b, this.c, this.d);
    }

    final void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.a);
        objectOutput.writeInt(j$.time.temporal.q.a(this, j$.time.temporal.a.YEAR));
        objectOutput.writeByte(j$.time.temporal.q.a(this, j$.time.temporal.a.MONTH_OF_YEAR));
        objectOutput.writeByte(j$.time.temporal.q.a(this, j$.time.temporal.a.DAY_OF_MONTH));
    }

    @Override // j$.time.chrono.AbstractC2965e, j$.time.chrono.InterfaceC2963c
    public final InterfaceC2966f x(j$.time.l lVar) {
        return C2968h.F(this, lVar);
    }
}
