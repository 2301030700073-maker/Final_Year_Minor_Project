package androidx.compose.ui.platform;

import androidx.collection.IntObjectMap;
import androidx.compose.ui.semantics.SemanticsNode;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1 extends Lambda implements Function1 {
    final /* synthetic */ IntObjectMap $currentSemanticsNodes;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeViewAccessibilityDelegateCompat_androidKt$setTraversalValues$semanticsOrderList$1(IntObjectMap intObjectMap) {
        super(1);
        this.$currentSemanticsNodes = intObjectMap;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(this.$currentSemanticsNodes.containsKey(((SemanticsNode) obj).id));
    }
}
