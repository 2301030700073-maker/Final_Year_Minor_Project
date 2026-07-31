package j$.time.chrono;

import j$.time.LocalTime;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalField;
import j$.time.temporal.TemporalUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface ChronoLocalDate extends Temporal, j$.time.temporal.k, Comparable<ChronoLocalDate> {
    /* renamed from: E */
    ChronoLocalDate m(j$.time.temporal.k kVar);

    ChronoLocalDateTime K(LocalTime localTime);

    k N();

    ChronoLocalDate Q(j$.time.temporal.m mVar);

    j a();

    @Override // j$.time.temporal.Temporal
    ChronoLocalDate b(long j, TemporalField temporalField);

    @Override // j$.time.temporal.Temporal
    ChronoLocalDate c(long j, TemporalUnit temporalUnit);

    int compareTo(ChronoLocalDate chronoLocalDate);

    @Override // j$.time.temporal.TemporalAccessor
    boolean d(TemporalField temporalField);

    boolean equals(Object obj);

    int hashCode();

    long toEpochDay();

    String toString();

    @Override // j$.time.temporal.Temporal
    long until(Temporal temporal, TemporalUnit temporalUnit);

    ChronoLocalDate y(long j, TemporalUnit temporalUnit);
}
