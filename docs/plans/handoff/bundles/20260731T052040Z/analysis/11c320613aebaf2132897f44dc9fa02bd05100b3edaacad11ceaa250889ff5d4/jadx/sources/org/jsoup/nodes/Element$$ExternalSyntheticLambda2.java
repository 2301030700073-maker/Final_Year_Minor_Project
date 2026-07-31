package org.jsoup.nodes;

import j$.util.function.Function$CC;
import java.util.function.Function;
import org.schabi.newpipe.player.ui.PlayerUi;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Element$$ExternalSyntheticLambda2 implements Function {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Class f$0;

    public /* synthetic */ Element$$ExternalSyntheticLambda2(int i, Class cls) {
        this.$r8$classId = i;
        this.f$0 = cls;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
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
        return cls.cast(obj2);
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
