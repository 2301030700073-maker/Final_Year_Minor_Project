package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1;
import java.util.Set;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CompositionContext {
    public abstract void composeInitial$runtime(CompositionImpl compositionImpl, Function2 function2);

    public abstract ScatterSet composeInitialPaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, Function2 function2);

    public abstract void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference);

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

    public abstract void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference);

    public abstract void invalidate$runtime(CompositionImpl compositionImpl);

    public abstract void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier);

    public abstract MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference);

    public abstract ScatterSet recomposePaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet);

    public abstract void recordInspectionTable$runtime(Set set);

    public abstract void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl);

    public abstract void reportRemovedComposition$runtime(CompositionImpl compositionImpl);

    public abstract CancellationHandle scheduleFrameEndCallback(LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 lifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1);

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
