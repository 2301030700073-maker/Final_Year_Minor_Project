package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
                    StringBuilder m179m = Modifier.CC.m179m("Can't scroll to index ", intValue, ", it is out of bounds [0, ");
                    m179m.append(lazyLayoutItemProvider2.getItemCount());
                    m179m.append(')');
                    InlineClassHelperKt.throwIllegalArgumentException(m179m.toString());
                }
                JobKt.launch$default(lazyLayoutSemanticsModifierNode.getCoroutineScope(), null, null, new LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2(lazyLayoutSemanticsModifierNode, intValue, null), 3);
                return Boolean.TRUE;
        }
    }
}
