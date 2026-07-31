.class public abstract Landroidx/compose/runtime/CompositionContext;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# virtual methods
.method public abstract composeInitial$runtime(Landroidx/compose/runtime/CompositionImpl;Lkotlin/jvm/functions/Function2;)V
.end method

.method public abstract composeInitialPaused$runtime(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/ShouldPauseCallback;Lkotlin/jvm/functions/Function2;)Landroidx/collection/MutableScatterSet;
.end method

.method public abstract deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
.end method

.method public doneComposing$runtime()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract getCollectingCallByInformation$runtime()Z
.end method

.method public abstract getCollectingParameterInformation$runtime()Z
.end method

.method public abstract getCollectingSourceInformation$runtime()Z
.end method

.method public abstract getCompositeKeyHashCode$runtime()J
.end method

.method public abstract getComposition$runtime()Landroidx/compose/runtime/Composition;
.end method

.method public getCompositionLocalScope$runtime()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 0

    .line 1
    sget-object p0, Landroidx/compose/runtime/CompositionContextKt;->EmptyPersistentCompositionLocalMap:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public abstract getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract getStackTraceEnabled$runtime()Z
.end method

.method public abstract insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V
.end method

.method public abstract invalidate$runtime(Landroidx/compose/runtime/CompositionImpl;)V
.end method

.method public abstract movableContentStateReleased$runtime(Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/Applier;)V
.end method

.method public abstract movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;
.end method

.method public abstract recomposePaused$runtime(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/ShouldPauseCallback;Landroidx/collection/MutableScatterSet;)Landroidx/collection/MutableScatterSet;
.end method

.method public abstract recordInspectionTable$runtime(Ljava/util/Set;)V
.end method

.method public registerComposer$runtime(Landroidx/compose/runtime/GapComposer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V
.end method

.method public abstract reportRemovedComposition$runtime(Landroidx/compose/runtime/CompositionImpl;)V
.end method

.method public abstract scheduleFrameEndCallback(Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;)Landroidx/compose/runtime/CancellationHandle;
.end method

.method public startComposing$runtime()V
    .locals 0

    .line 1
    return-void
.end method

.method public unregisterComposer$runtime(Landroidx/compose/runtime/GapComposer;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract unregisterComposition$runtime(Landroidx/compose/runtime/CompositionImpl;)V
.end method
