package org.jsoup.nodes;

import java.util.WeakHashMap;
import java.util.function.Supplier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
            default:
                entities$$ExternalSyntheticLambda0.getClass();
                return new WeakHashMap();
        }
    }
}
