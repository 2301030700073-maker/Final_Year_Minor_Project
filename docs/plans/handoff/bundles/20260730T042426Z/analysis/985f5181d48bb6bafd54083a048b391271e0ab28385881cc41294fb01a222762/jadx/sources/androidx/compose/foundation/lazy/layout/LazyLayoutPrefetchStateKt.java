package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.ConstraintsKt;

/* compiled from: LazyLayoutPrefetchState.kt */
/* loaded from: classes.dex */
public abstract class LazyLayoutPrefetchStateKt {
    private static final long ZeroConstraints = ConstraintsKt.Constraints$default(0, 0, 0, 0, 5, null);

    public static final Modifier traversablePrefetchState(Modifier modifier, LazyLayoutPrefetchState lazyLayoutPrefetchState) {
        Modifier then;
        return (lazyLayoutPrefetchState == null || (then = modifier.then(new TraversablePrefetchStateModifierElement(lazyLayoutPrefetchState))) == null) ? modifier : then;
    }
}
