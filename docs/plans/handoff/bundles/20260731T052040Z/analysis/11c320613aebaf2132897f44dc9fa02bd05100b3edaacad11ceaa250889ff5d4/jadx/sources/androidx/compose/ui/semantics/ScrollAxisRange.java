package androidx.compose.ui.semantics;

import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ScrollAxisRange {
    public final LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 maxValue;
    public final LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 value;

    public ScrollAxisRange(LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1, LazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1 lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda12) {
        this.value = lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda1;
        this.maxValue = lazyLayoutSemanticsModifierNode$$ExternalSyntheticLambda12;
    }

    public final String toString() {
        return "ScrollAxisRange(value=" + ((Number) this.value.invoke()).floatValue() + ", maxValue=" + ((Number) this.maxValue.invoke()).floatValue() + ", reverseScrolling=false)";
    }
}
