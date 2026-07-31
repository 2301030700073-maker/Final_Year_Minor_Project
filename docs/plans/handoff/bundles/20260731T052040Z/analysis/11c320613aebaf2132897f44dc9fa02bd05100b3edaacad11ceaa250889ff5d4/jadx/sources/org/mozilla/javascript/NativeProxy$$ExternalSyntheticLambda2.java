package org.mozilla.javascript;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeProxy$$ExternalSyntheticLambda2 implements Predicate {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ NativeProxy$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
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
        boolean lambda$getIds$0;
        boolean lambda$visitObjectLiteral$0;
        switch (this.$r8$classId) {
            case 0:
                lambda$getIds$0 = NativeProxy.lambda$getIds$0(obj);
                return lambda$getIds$0;
            default:
                lambda$visitObjectLiteral$0 = CodeGenerator.lambda$visitObjectLiteral$0(obj);
                return lambda$visitObjectLiteral$0;
        }
    }
}
