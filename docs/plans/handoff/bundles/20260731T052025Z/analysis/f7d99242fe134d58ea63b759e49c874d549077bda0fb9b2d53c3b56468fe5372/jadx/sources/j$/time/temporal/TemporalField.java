package j$.time.temporal;

import j$.time.format.u;
import j$.time.format.v;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface TemporalField {
    long F(TemporalAccessor temporalAccessor);

    Temporal J(Temporal temporal, long j);

    boolean isDateBased();

    boolean k(TemporalAccessor temporalAccessor);

    p m(TemporalAccessor temporalAccessor);

    TemporalAccessor n(Map map, u uVar, v vVar);

    p u();
}
