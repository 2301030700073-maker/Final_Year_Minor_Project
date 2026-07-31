package org.jsoup.nodes;

import java.util.IdentityHashMap;
import java.util.function.Supplier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$$ExternalSyntheticThreadLocal1 extends ThreadLocal {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Supplier initialValueSupplier;

    public /* synthetic */ Entities$$ExternalSyntheticThreadLocal1(Supplier supplier, int i) {
        this.$r8$classId = i;
        this.initialValueSupplier = supplier;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        int i = this.$r8$classId;
        Entities$$ExternalSyntheticLambda0 entities$$ExternalSyntheticLambda0 = (Entities$$ExternalSyntheticLambda0) this.initialValueSupplier;
        switch (i) {
            case 0:
                entities$$ExternalSyntheticLambda0.getClass();
                return new char[2];
            case 1:
                return entities$$ExternalSyntheticLambda0.get();
            case 2:
                return entities$$ExternalSyntheticLambda0.get();
            case 3:
                return entities$$ExternalSyntheticLambda0.get();
            case 4:
                return entities$$ExternalSyntheticLambda0.get();
            default:
                entities$$ExternalSyntheticLambda0.getClass();
                return new IdentityHashMap();
        }
    }
}
