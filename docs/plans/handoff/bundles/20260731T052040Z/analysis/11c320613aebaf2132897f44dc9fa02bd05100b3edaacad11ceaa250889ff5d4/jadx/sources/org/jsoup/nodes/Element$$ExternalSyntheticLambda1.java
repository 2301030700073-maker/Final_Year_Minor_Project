package org.jsoup.nodes;

import j$.util.function.Predicate$CC;
import java.util.function.Predicate;
import org.schabi.newpipe.player.ui.PlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Element$$ExternalSyntheticLambda1 implements Predicate {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Class f$0;

    public /* synthetic */ Element$$ExternalSyntheticLambda1(int i, Class cls) {
        this.$r8$classId = i;
        this.f$0 = cls;
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
        Object obj2;
        int i = this.$r8$classId;
        Class cls = this.f$0;
        switch (i) {
            case 0:
                obj2 = (Node) obj;
                break;
            default:
                obj2 = (PlayerUi) obj;
                break;
        }
        return cls.isInstance(obj2);
    }
}
