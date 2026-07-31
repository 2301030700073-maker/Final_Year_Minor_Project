package j$.time.temporal;

import j$.time.format.d0;
import j$.time.format.e0;
import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public interface n {
    boolean f(TemporalAccessor temporalAccessor);

    q g(TemporalAccessor temporalAccessor);

    TemporalAccessor h(Map map, d0 d0Var, e0 e0Var);

    long i(TemporalAccessor temporalAccessor);

    boolean isDateBased();

    Temporal k(Temporal temporal, long j);

    q range();
}
