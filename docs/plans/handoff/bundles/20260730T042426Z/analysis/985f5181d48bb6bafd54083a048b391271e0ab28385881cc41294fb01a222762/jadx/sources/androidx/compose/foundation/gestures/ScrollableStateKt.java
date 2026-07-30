package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import kotlin.jvm.functions.Function1;

/* compiled from: ScrollableState.kt */
/* loaded from: classes.dex */
public abstract class ScrollableStateKt {
    public static final ScrollableState ScrollableState(Function1 function1) {
        return new DefaultScrollableState(function1);
    }

    public static final ScrollableState rememberScrollableState(Function1 function1, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-180460798, i, -1, "androidx.compose.foundation.gestures.rememberScrollableState (ScrollableState.kt:161)");
        }
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function1, composer, i & 14);
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = ScrollableState(new Function1() { // from class: androidx.compose.foundation.gestures.ScrollableStateKt$rememberScrollableState$1$1
                {
                    super(1);
                }

                public final Float invoke(float f) {
                    return (Float) ((Function1) State.this.getValue()).invoke(Float.valueOf(f));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke(((Number) obj).floatValue());
                }
            });
            composer.updateRememberedValue(rememberedValue);
        }
        ScrollableState scrollableState = (ScrollableState) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return scrollableState;
    }
}
