package j$.time.chrono;

import j$.time.temporal.TemporalUnit;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface b extends j$.time.temporal.l, j$.time.temporal.m, Comparable {
    /* renamed from: G */
    b n(j$.time.temporal.m mVar);

    long N();

    e O(j$.time.i iVar);

    m P();

    b T(j$.time.temporal.o oVar);

    int W();

    /* renamed from: X */
    int compareTo(b bVar);

    l a();

    @Override // j$.time.temporal.l
    b c(long j, j$.time.temporal.p pVar);

    @Override // j$.time.temporal.l
    b d(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.TemporalAccessor
    boolean e(j$.time.temporal.p pVar);

    boolean equals(Object obj);

    int hashCode();

    String toString();

    boolean x();

    b z(long j, TemporalUnit temporalUnit);
}
