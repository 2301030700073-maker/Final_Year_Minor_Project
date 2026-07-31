package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class HitPathTracker$addHitPath$1 extends Lambda implements Function0 {
    final /* synthetic */ Modifier.Node $pointerInputNode;
    final /* synthetic */ HitPathTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HitPathTracker$addHitPath$1(HitPathTracker hitPathTracker, Modifier.Node node) {
        super(0);
        this.this$0 = hitPathTracker;
        this.$pointerInputNode = node;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        this.this$0.removePointerInputModifierNode(this.$pointerInputNode);
        return Unit.INSTANCE;
    }
}
