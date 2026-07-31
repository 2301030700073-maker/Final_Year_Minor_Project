package j$.time.temporal;

import j$.time.LocalDate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface Temporal extends TemporalAccessor {
    Temporal F(long j, ChronoUnit chronoUnit);

    Temporal b(long j, TemporalField temporalField);

    Temporal c(long j, TemporalUnit temporalUnit);

    Temporal m(LocalDate localDate);

    long until(Temporal temporal, TemporalUnit temporalUnit);
}
