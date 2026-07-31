package j$.time.chrono;

import j$.time.LocalTime;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAdjuster;
import j$.time.temporal.TemporalUnit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface ChronoLocalDate extends Temporal, TemporalAdjuster, Comparable<ChronoLocalDate> {
    @Override // j$.time.temporal.Temporal
    ChronoLocalDate a(long j, j$.time.temporal.n nVar);

    @Override // j$.time.temporal.Temporal
    ChronoLocalDate b(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.TemporalAccessor
    boolean c(j$.time.temporal.n nVar);

    int compareTo(ChronoLocalDate chronoLocalDate);

    @Override // j$.time.temporal.Temporal
    long d(Temporal temporal, TemporalUnit temporalUnit);

    boolean equals(Object obj);

    a getChronology();

    j getEra();

    int hashCode();

    boolean isLeapYear();

    /* renamed from: l */
    ChronoLocalDate o(long j, TemporalUnit temporalUnit);

    int lengthOfYear();

    ChronoLocalDate n(TemporalAdjuster temporalAdjuster);

    ChronoLocalDateTime r(LocalTime localTime);

    ChronoLocalDate t(j$.time.temporal.m mVar);

    long toEpochDay();

    String toString();
}
