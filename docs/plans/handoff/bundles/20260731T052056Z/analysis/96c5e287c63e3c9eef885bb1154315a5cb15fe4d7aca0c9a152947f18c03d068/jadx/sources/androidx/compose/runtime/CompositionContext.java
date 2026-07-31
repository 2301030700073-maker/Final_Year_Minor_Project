package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import java.util.Set;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CompositionContext {
    public abstract void composeInitial$runtime(CompositionImpl compositionImpl, Function2 function2);

    public abstract MutableScatterSet composeInitialPaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, Function2 function2);

    public abstract boolean getCollectingCallByInformation$runtime();

    public abstract boolean getCollectingParameterInformation$runtime();

    public abstract boolean getCollectingSourceInformation$runtime();

    public abstract long getCompositeKeyHashCode$runtime();

    public abstract Composition getComposition$runtime();

    public PersistentCompositionLocalHashMap getCompositionLocalScope$runtime() {
        return CompositionContextKt.EmptyPersistentCompositionLocalMap;
    }

    public abstract CoroutineContext getEffectCoroutineContext();

    public abstract boolean getStackTraceEnabled$runtime();

    public abstract void invalidate$runtime(CompositionImpl compositionImpl);

    public abstract MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference);

    public abstract MutableScatterSet recomposePaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, MutableScatterSet mutableScatterSet);

    public abstract void recordInspectionTable$runtime(Set set);

    public abstract void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void reportRemovedComposition$runtime(CompositionImpl compositionImpl);

    public abstract CancellationHandle scheduleFrameEndCallback(LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1);

    public abstract void unregisterComposition$runtime(CompositionImpl compositionImpl);

    public void doneComposing$runtime() {
    }

    public void startComposing$runtime() {
    }

    public void registerComposer$runtime(GapComposer gapComposer) {
    }

    public void unregisterComposer$runtime(GapComposer gapComposer) {
    }
}
