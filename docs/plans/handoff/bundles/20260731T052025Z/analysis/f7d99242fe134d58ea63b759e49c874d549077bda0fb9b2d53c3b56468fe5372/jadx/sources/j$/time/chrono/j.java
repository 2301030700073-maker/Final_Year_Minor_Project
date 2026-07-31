package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.temporal.ChronoField;
import j$.time.temporal.TemporalAccessor;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface j extends Comparable {
    k A(int i);

    int C(k kVar, int i);

    ChronoLocalDate H(TemporalAccessor temporalAccessor);

    ChronoLocalDateTime M(TemporalAccessor temporalAccessor);

    ChronoLocalDate P(int i, int i2, int i3);

    ChronoLocalDate R(Map map, j$.time.format.v vVar);

    ChronoZonedDateTime S(Instant instant, ZoneId zoneId);

    boolean equals(Object obj);

    ChronoLocalDate h(long j);

    int hashCode();

    String i();

    String p();

    ChronoZonedDateTime r(TemporalAccessor temporalAccessor);

    ChronoLocalDate s(int i, int i2);

    String toString();

    j$.time.temporal.p x(ChronoField chronoField);

    List z();
}
