package androidx.compose.foundation.layout;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ConsumedInsetsModifierNode extends InsetsConsumingModifierNode {
    public Function1 block;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public final WindowInsets calculateInsets(WindowInsets windowInsets) {
        this.block.invoke(windowInsets);
        return windowInsets;
    }
}
