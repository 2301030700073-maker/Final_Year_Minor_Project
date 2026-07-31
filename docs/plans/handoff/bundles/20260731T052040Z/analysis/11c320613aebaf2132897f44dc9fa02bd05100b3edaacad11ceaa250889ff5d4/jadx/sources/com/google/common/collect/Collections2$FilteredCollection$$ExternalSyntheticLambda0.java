package com.google.common.collect;

import j$.util.function.Predicate$CC;
import java.util.Collection;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Collections2$FilteredCollection$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Collection f$0;

    public /* synthetic */ Collections2$FilteredCollection$$ExternalSyntheticLambda0(int i, Collection collection) {
        this.$r8$classId = i;
        this.f$0 = collection;
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        int i = this.$r8$classId;
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.$r8$classId;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        int i = this.$r8$classId;
        Collection collection = this.f$0;
        switch (i) {
            case 0:
                return collection.contains(obj);
            default:
                return !collection.contains(obj);
        }
    }
}
