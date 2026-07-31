package j$.time.temporal;

import j$.time.Duration;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface TemporalUnit {
    long between(Temporal temporal, Temporal temporal2);

    Temporal f(Temporal temporal, long j);

    Duration getDuration();
}
