package org.jsoup.select;

import com.google.common.collect.Collections2$FilteredCollection;
import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Evaluator$$ExternalSyntheticLambda0 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Evaluator$$ExternalSyntheticLambda0(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
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
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                return ((Evaluator) obj3).matches((Element) obj2, (Node) obj);
            case 1:
                return ((Evaluator) obj3).matches((Element) obj2, (Element) obj);
            default:
                return ((Collections2$FilteredCollection) obj3).predicate.apply(obj) && ((Predicate) obj2).test(obj);
        }
    }
}
