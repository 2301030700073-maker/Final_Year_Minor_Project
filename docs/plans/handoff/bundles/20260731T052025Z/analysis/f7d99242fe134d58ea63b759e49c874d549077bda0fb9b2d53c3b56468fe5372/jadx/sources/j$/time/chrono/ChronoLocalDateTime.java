package j$.time.chrono;

import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.Temporal;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends ChronoLocalDate> extends Temporal, j$.time.temporal.k, Comparable<ChronoLocalDateTime<?>> {
    ChronoZonedDateTime G(ZoneId zoneId);

    j a();

    int compareTo(ChronoLocalDateTime chronoLocalDateTime);

    ChronoLocalDate e();

    LocalTime toLocalTime();
}
