package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface l extends Comparable {
    List A();

    m B(int i);

    int D(m mVar, int i);

    b J(TemporalAccessor temporalAccessor);

    e K(LocalDateTime localDateTime);

    b S(int i, int i2, int i3);

    b U(Map map, j$.time.format.e0 e0Var);

    ChronoZonedDateTime V(Instant instant, ZoneId zoneId);

    boolean Y(long j);

    boolean equals(Object obj);

    b h(long j);

    int hashCode();

    String i();

    String q();

    b s(int i, int i2);

    String toString();

    j$.time.temporal.s y(j$.time.temporal.a aVar);
}
