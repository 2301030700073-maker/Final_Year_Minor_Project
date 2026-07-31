package us.shandian.giga.ui.common;

import j$.util.function.Function$CC;
import java.util.function.Function;
import kotlin.Pair;
import org.schabi.newpipe.util.image.ImageStrategy$choosePreferredImage$1;
import us.shandian.giga.get.Mission;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Deleter$$ExternalSyntheticLambda3 implements Function {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Deleter$$ExternalSyntheticLambda3(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo646andThen(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((Mission) ((Pair) obj).getFirst()).storage.getName();
            default:
                return (String) ImageStrategy$choosePreferredImage$1.INSTANCE.invoke(obj);
        }
    }

    public /* synthetic */ Function compose(Function function) {
        int i = this.$r8$classId;
        return Function$CC.$default$compose(this, function);
    }
}
