package defpackage;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class V9 extends AbstractC3134j6 {

    /* renamed from: do, reason: not valid java name */
    public static V9 f4045do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Map<Long, String> f4046do = DesugarCollections.unmodifiableMap(new Cdo());

    /* renamed from: V9$do, reason: invalid class name */
    public class Cdo extends HashMap<Long, String> {
        public Cdo() {
            put(461L, "FIREPERF_AUTOPUSH");
            put(462L, "FIREPERF");
            put(675L, "FIREPERF_INTERNAL_LOW");
            put(676L, "FIREPERF_INTERNAL_HIGH");
        }
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: else */
    public final String mo2116else() {
        return "com.google.firebase.perf.LogSourceName";
    }

    @Override // defpackage.AbstractC3134j6
    /* renamed from: this */
    public final String mo2222this() {
        return "fpr_log_source";
    }
}
