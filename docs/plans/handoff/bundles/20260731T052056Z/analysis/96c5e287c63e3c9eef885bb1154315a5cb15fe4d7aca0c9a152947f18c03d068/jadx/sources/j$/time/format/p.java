package j$.time.format;

import j$.time.LocalDate;
import j$.time.chrono.ChronoLocalDate;
import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class p extends j {
    public static final LocalDate h = LocalDate.of(2000, 1, 1);
    public final ChronoLocalDate g;

    public p(j$.time.temporal.n nVar, int i, int i2, ChronoLocalDate chronoLocalDate, int i3) {
        super(nVar, i, i2, f0.NOT_NEGATIVE, i3);
        this.g = chronoLocalDate;
    }

    @Override // j$.time.format.j
    public final long a(y yVar, long j) {
        long abs = Math.abs(j);
        ChronoLocalDate chronoLocalDate = this.g;
        long f = chronoLocalDate != null ? j$.time.a.N(yVar.a).h(chronoLocalDate).f(this.a) : 0;
        long[] jArr = j.f;
        if (j >= f) {
            long j2 = jArr[this.b];
            if (j < f + j2) {
                return abs % j2;
            }
        }
        return abs % jArr[this.c];
    }

    @Override // j$.time.format.j
    public final boolean b(w wVar) {
        if (wVar.c) {
            return super.b(wVar);
        }
        return false;
    }

    @Override // j$.time.format.j
    public final int c(final w wVar, long j, final int i, final int i2) {
        final p pVar;
        w wVar2;
        final long j2;
        int i3;
        long j3;
        ChronoLocalDate chronoLocalDate = this.g;
        if (chronoLocalDate != null) {
            i3 = wVar.d().h(chronoLocalDate).f(this.a);
            pVar = this;
            j2 = j;
            Consumer consumer = new Consumer() { // from class: j$.time.format.o
                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void n(Object obj) {
                    p.this.c(wVar, j2, i, i2);
                }

                public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return Consumer$CC.$default$andThen(this, consumer2);
                }
            };
            wVar2 = wVar;
            ArrayList arrayList = wVar2.e;
            if (arrayList == null) {
                arrayList = new ArrayList();
                wVar2.e = arrayList;
            }
            arrayList.add(consumer);
        } else {
            pVar = this;
            wVar2 = wVar;
            j2 = j;
            i3 = 0;
        }
        int i4 = i2 - i;
        int i5 = pVar.b;
        if (i4 != i5 || j2 < 0) {
            j3 = j2;
        } else {
            long j4 = j.f[i5];
            long j5 = i3;
            long j6 = j5 - (j5 % j4);
            long j7 = i3 > 0 ? j6 + j2 : j6 - j2;
            j3 = j7 < j5 ? j4 + j7 : j7;
        }
        return wVar2.g(pVar.a, j3, i, i2);
    }

    @Override // j$.time.format.j
    public final j d() {
        if (this.e == -1) {
            return this;
        }
        return new p(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.j
    public final j e(int i) {
        return new p(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.j
    public final String toString() {
        return "ReducedValue(" + this.a + "," + this.b + "," + this.c + "," + Objects.requireNonNullElse(this.g, 0) + ")";
    }
}
