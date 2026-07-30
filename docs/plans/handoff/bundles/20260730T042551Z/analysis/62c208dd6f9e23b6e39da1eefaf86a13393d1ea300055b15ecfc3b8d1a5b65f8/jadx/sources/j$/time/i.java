package j$.time;

import j$.time.chrono.AbstractC2962b;
import j$.time.chrono.InterfaceC2963c;
import j$.time.chrono.InterfaceC2966f;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class i implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC2963c, Serializable {
    public static final i d = O(-999999999, 1, 1);
    public static final i e = O(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    private final int a;
    private final short b;
    private final short c;

    static {
        O(1970, 1, 1);
    }

    private i(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    private static i E(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                j$.time.chrono.u.d.getClass();
                if (j$.time.chrono.u.n(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new d("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new d("Invalid date '" + n.G(i2).name() + " " + i3 + "'");
            }
        }
        return new i(i, i2, i3);
    }

    public static i F(j$.time.temporal.n nVar) {
        Objects.requireNonNull(nVar, "temporal");
        i iVar = (i) nVar.y(j$.time.temporal.q.f());
        if (iVar != null) {
            return iVar;
        }
        throw new d("Unable to obtain LocalDate from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName());
    }

    private int G(j$.time.temporal.r rVar) {
        int i;
        int i2 = h.a[((j$.time.temporal.a) rVar).ordinal()];
        int i3 = this.a;
        short s = this.c;
        switch (i2) {
            case 1:
                return s;
            case 2:
                return I();
            case 3:
                i = (s - 1) / 7;
                break;
            case 4:
                return i3 >= 1 ? i3 : 1 - i3;
            case 5:
                return H().getValue();
            case 6:
                i = (s - 1) % 7;
                break;
            case 7:
                return ((I() - 1) % 7) + 1;
            case 8:
                throw new j$.time.temporal.v("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((I() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new j$.time.temporal.v("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return i3;
            case 13:
                return i3 >= 1 ? 1 : 0;
            default:
                throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        return i + 1;
    }

    public static i O(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.y(i);
        j$.time.temporal.a.MONTH_OF_YEAR.y(i2);
        j$.time.temporal.a.DAY_OF_MONTH.y(i3);
        return E(i, i2, i3);
    }

    public static i P(int i, n nVar, int i2) {
        j$.time.temporal.a.YEAR.y(i);
        Objects.requireNonNull(nVar, "month");
        j$.time.temporal.a.DAY_OF_MONTH.y(i2);
        return E(i, nVar.getValue(), i2);
    }

    public static i Q(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.y(j);
        long j3 = (j + 719528) - 60;
        if (j3 < 0) {
            long j4 = ((j3 + 1) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        return new i(j$.time.temporal.a.YEAR.v(j5 + j2 + (i2 / 10)), ((i2 + 2) % 12) + 1, (i - (((i2 * 306) + 5) / 10)) + 1);
    }

    private static i V(int i, int i2, int i3) {
        int i4;
        if (i2 != 2) {
            if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
                i4 = 30;
            }
            return new i(i, i2, i3);
        }
        j$.time.chrono.u.d.getClass();
        i4 = j$.time.chrono.u.n((long) i) ? 29 : 28;
        i3 = Math.min(i3, i4);
        return new i(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 3, this);
    }

    @Override // java.lang.Comparable
    /* renamed from: B, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2963c interfaceC2963c) {
        return interfaceC2963c instanceof i ? D((i) interfaceC2963c) : AbstractC2962b.d(this, interfaceC2963c);
    }

    final int D(i iVar) {
        int i = this.a - iVar.a;
        if (i != 0) {
            return i;
        }
        int i2 = this.b - iVar.b;
        return i2 == 0 ? this.c - iVar.c : i2;
    }

    public final f H() {
        return f.D(((int) AbstractC2959a.g(w() + 3, 7)) + 1);
    }

    public final int I() {
        return (n.G(this.b).D(M()) + this.c) - 1;
    }

    public final int J() {
        return this.b;
    }

    public final int K() {
        return this.a;
    }

    public final boolean L(i iVar) {
        return iVar instanceof i ? D(iVar) < 0 : w() < iVar.w();
    }

    public final boolean M() {
        j$.time.chrono.u uVar = j$.time.chrono.u.d;
        long j = this.a;
        uVar.getClass();
        return j$.time.chrono.u.n(j);
    }

    public final int N() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : M() ? 29 : 28;
    }

    @Override // j$.time.temporal.m
    /* renamed from: R, reason: merged with bridge method [inline-methods] */
    public final i d(long j, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (i) uVar.i(this, j);
        }
        switch (h.b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return S(j);
            case 2:
                return S(AbstractC2959a.i(j, 7));
            case 3:
                return T(j);
            case 4:
                return U(j);
            case 5:
                return U(AbstractC2959a.i(j, 10));
            case 6:
                return U(AbstractC2959a.i(j, 100));
            case 7:
                return U(AbstractC2959a.i(j, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(AbstractC2959a.d(v(aVar), j), aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final i S(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            short s = this.b;
            int i = this.a;
            if (j2 <= 28) {
                return new i(i, s, (int) j2);
            }
            if (j2 <= 59) {
                long N = N();
                if (j2 <= N) {
                    return new i(i, s, (int) j2);
                }
                if (s < 12) {
                    return new i(i, s + 1, (int) (j2 - N));
                }
                int i2 = i + 1;
                j$.time.temporal.a.YEAR.y(i2);
                return new i(i2, 1, (int) (j2 - N));
            }
        }
        return Q(AbstractC2959a.d(w(), j));
    }

    public final i T(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        long j3 = 12;
        return V(j$.time.temporal.a.YEAR.v(AbstractC2959a.h(j2, j3)), ((int) AbstractC2959a.g(j2, j3)) + 1, this.c);
    }

    public final i U(long j) {
        return j == 0 ? this : V(j$.time.temporal.a.YEAR.v(this.a + j), this.b, this.c);
    }

    @Override // j$.time.temporal.m
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final i c(long j, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (i) rVar.r(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.y(j);
        int i = h.a[aVar.ordinal()];
        short s = this.b;
        short s2 = this.c;
        int i2 = this.a;
        switch (i) {
            case 1:
                int i3 = (int) j;
                return s2 == i3 ? this : O(i2, s, i3);
            case 2:
                return Y((int) j);
            case 3:
                return S(AbstractC2959a.i(j - v(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH), 7));
            case 4:
                if (i2 < 1) {
                    j = 1 - j;
                }
                return Z((int) j);
            case 5:
                return S(j - H().getValue());
            case 6:
                return S(j - v(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return S(j - v(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return Q(j);
            case 9:
                return S(AbstractC2959a.i(j - v(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR), 7));
            case 10:
                int i4 = (int) j;
                if (s == i4) {
                    return this;
                }
                j$.time.temporal.a.MONTH_OF_YEAR.y(i4);
                return V(i2, i4, s2);
            case 11:
                return T(j - (((i2 * 12) + s) - 1));
            case 12:
                return Z((int) j);
            case 13:
                return v(j$.time.temporal.a.ERA) == j ? this : Z(1 - i2);
            default:
                throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.temporal.m
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final i j(j$.time.temporal.o oVar) {
        return oVar instanceof i ? (i) oVar : (i) oVar.n(this);
    }

    public final i Y(int i) {
        if (I() == i) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int i2 = this.a;
        long j = i2;
        aVar.y(j);
        j$.time.temporal.a.DAY_OF_YEAR.y(i);
        j$.time.chrono.u.d.getClass();
        boolean n = j$.time.chrono.u.n(j);
        if (i == 366 && !n) {
            throw new d("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        n G = n.G(((i - 1) / 31) + 1);
        if (i > (G.E(n) + G.D(n)) - 1) {
            G = G.H();
        }
        return new i(i2, G.getValue(), (i - G.D(n)) + 1);
    }

    public final i Z(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.y(i);
        return V(i, this.b, this.c);
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final j$.time.chrono.n a() {
        return j$.time.chrono.u.d;
    }

    final void a0(DataOutput dataOutput) {
        dataOutput.writeInt(this.a);
        dataOutput.writeByte(this.b);
        dataOutput.writeByte(this.c);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.r rVar) {
        return AbstractC2962b.j(this, rVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && D((i) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final int hashCode() {
        int i = this.a;
        return (((i << 11) + (this.b << 6)) + this.c) ^ (i & (-2048));
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? G(rVar) : j$.time.temporal.q.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.w k(j$.time.temporal.r rVar) {
        int N;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.j(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        if (!aVar.isDateBased()) {
            throw new j$.time.temporal.v(e.a("Unsupported field: ", rVar));
        }
        int i = h.a[aVar.ordinal()];
        if (i == 1) {
            N = N();
        } else {
            if (i != 2) {
                if (i == 3) {
                    return j$.time.temporal.w.j(1L, (n.G(this.b) != n.FEBRUARY || M()) ? 5L : 4L);
                }
                if (i != 4) {
                    return rVar.k();
                }
                return j$.time.temporal.w.j(1L, this.a <= 0 ? 1000000000L : 999999999L);
            }
            N = M() ? 366 : 365;
        }
        return j$.time.temporal.w.j(1L, N);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m n(j$.time.temporal.m mVar) {
        return AbstractC2962b.a(this, mVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m r(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final String toString() {
        int i;
        int i2 = this.a;
        int abs = Math.abs(i2);
        StringBuilder sb = new StringBuilder(10);
        if (abs < 1000) {
            if (i2 < 0) {
                sb.append(i2 - 10000);
                i = 1;
            } else {
                sb.append(i2 + 10000);
                i = 0;
            }
            sb.deleteCharAt(i);
        } else {
            if (i2 > 9999) {
                sb.append('+');
            }
            sb.append(i2);
        }
        short s = this.b;
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        short s2 = this.c;
        sb.append(s2 >= 10 ? "-" : "-0");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // j$.time.temporal.n
    public final long v(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.EPOCH_DAY ? w() : rVar == j$.time.temporal.a.PROLEPTIC_MONTH ? ((this.a * 12) + this.b) - 1 : G(rVar) : rVar.n(this);
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final long w() {
        long j;
        long j2 = this.a;
        long j3 = this.b;
        long j4 = (365 * j2) + 0;
        if (j2 >= 0) {
            j = ((j2 + 399) / 400) + (((3 + j2) / 4) - ((99 + j2) / 100)) + j4;
        } else {
            j = j4 - ((j2 / (-400)) + ((j2 / (-4)) - (j2 / (-100))));
        }
        long j5 = (((367 * j3) - 362) / 12) + j + (this.c - 1);
        if (j3 > 2) {
            j5--;
            if (!M()) {
                j5--;
            }
        }
        return j5 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC2963c
    public final InterfaceC2966f x(l lVar) {
        return LocalDateTime.L(this, lVar);
    }

    @Override // j$.time.temporal.n
    public final Object y(j$.time.temporal.t tVar) {
        return tVar == j$.time.temporal.q.f() ? this : AbstractC2962b.l(this, tVar);
    }
}
