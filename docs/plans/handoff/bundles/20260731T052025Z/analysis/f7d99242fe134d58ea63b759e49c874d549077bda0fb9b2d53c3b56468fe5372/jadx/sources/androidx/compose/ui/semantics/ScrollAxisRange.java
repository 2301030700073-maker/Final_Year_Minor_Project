package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ScrollAxisRange {
    public final Function0 maxValue;
    public final Function0 value;

    public ScrollAxisRange(Function0 function0, Function0 function02) {
        this.value = function0;
        this.maxValue = function02;
    }

    public final String toString() {
        return "ScrollAxisRange(value=" + ((Number) this.value.invoke()).floatValue() + ", maxValue=" + ((Number) this.maxValue.invoke()).floatValue() + ", reverseScrolling=false)";
    }
}
