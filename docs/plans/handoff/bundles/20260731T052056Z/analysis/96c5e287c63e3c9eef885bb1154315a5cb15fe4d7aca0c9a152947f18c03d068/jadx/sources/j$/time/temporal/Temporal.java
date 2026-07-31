package j$.time.temporal;

import j$.time.LocalDate;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface Temporal extends TemporalAccessor {
    Temporal a(long j, n nVar);

    Temporal b(long j, TemporalUnit temporalUnit);

    long d(Temporal temporal, TemporalUnit temporalUnit);

    /* renamed from: g */
    Temporal n(LocalDate localDate);

    Temporal o(long j, ChronoUnit chronoUnit);
}
