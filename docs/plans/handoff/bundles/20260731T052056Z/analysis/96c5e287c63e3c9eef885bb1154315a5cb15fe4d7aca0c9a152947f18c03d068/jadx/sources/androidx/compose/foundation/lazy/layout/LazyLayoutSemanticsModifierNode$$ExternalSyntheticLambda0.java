package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.random.RandomViewModel$loadMore$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LazyLayoutSemanticsModifierNode f$0;

    public /* synthetic */ LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda0(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i) {
        this.$r8$classId = i;
        this.f$0 = lazyLayoutSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = this.f$0;
        switch (i) {
            case 0:
                LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.itemProviderLambda.invoke();
                int itemCount = lazyLayoutItemProvider.getItemCount();
                int i2 = 0;
                while (true) {
                    if (i2 >= itemCount) {
                        i2 = -1;
                    } else if (!lazyLayoutItemProvider.getKey(i2).equals(obj)) {
                        i2++;
                    }
                }
                return Integer.valueOf(i2);
            default:
                int intValue = ((Integer) obj).intValue();
                LazyLayoutItemProvider lazyLayoutItemProvider2 = (LazyLayoutItemProvider) lazyLayoutSemanticsModifierNode.itemProviderLambda.invoke();
                if (intValue < 0 || intValue >= lazyLayoutItemProvider2.getItemCount()) {
                    StringBuilder m20m = Animation.CC.m20m(intValue, "Can't scroll to index ", ", it is out of bounds [0, ");
                    m20m.append(lazyLayoutItemProvider2.getItemCount());
                    m20m.append(')');
                    InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
                }
                AwaitKt.launch$default(lazyLayoutSemanticsModifierNode.getCoroutineScope(), null, null, new RandomViewModel$loadMore$2(lazyLayoutSemanticsModifierNode, intValue, null, 1), 3);
                return Boolean.TRUE;
        }
    }
}
