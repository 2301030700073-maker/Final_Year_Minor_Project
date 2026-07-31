package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableScatterSet;
import androidx.collection.MutableSetWrapper;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.functions.Function2;
import org.acra.util.ProcessFinisher;
import org.jsoup.SerializationException;
import org.schabi.newpipe.databinding.ActivityErrorBinding;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PausedCompositionImpl {
    public final ProcessFinisher applier;
    public final GapComposer composer;
    public final CompositionImpl composition;
    public final Function2 content;
    public final CompositionContext context;
    public ScatterSet invalidScopes;
    public final Object lock;
    public final ProcessFinisher pausableApplier;
    public final ActivityErrorBinding rememberManager;
    public final boolean reusable;
    public final AtomicReference state = new AtomicReference(PausedCompositionState.InitialPending);
    public long owningThread = Expect_jvmKt.currentThreadId();

    public PausedCompositionImpl(CompositionImpl compositionImpl, CompositionContext compositionContext, GapComposer gapComposer, MutableSetWrapper mutableSetWrapper, Function2 function2, boolean z, ProcessFinisher processFinisher, Object obj) {
        this.composition = compositionImpl;
        this.context = compositionContext;
        this.composer = gapComposer;
        this.content = function2;
        this.reusable = z;
        this.applier = processFinisher;
        this.lock = obj;
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        mutableScatterSet.getClass();
        this.invalidScopes = mutableScatterSet;
        ActivityErrorBinding activityErrorBinding = new ActivityErrorBinding();
        activityErrorBinding.prepare(mutableSetWrapper, gapComposer.getErrorContext$runtime());
        this.rememberManager = activityErrorBinding;
        this.pausableApplier = new ProcessFinisher(processFinisher.lastActivityManager);
    }

    public final void apply() {
        AtomicReference atomicReference = this.state;
        try {
            switch (((PausedCompositionState) atomicReference.get()).ordinal()) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 2:
                case 3:
                case 4:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 5:
                    applyChanges();
                    PausedCompositionState pausedCompositionState = PausedCompositionState.ApplyPending;
                    PausedCompositionState pausedCompositionState2 = PausedCompositionState.Applied;
                    while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                        if (atomicReference.get() != pausedCompositionState) {
                            PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                            return;
                        }
                    }
                    return;
                case 6:
                    throw new IllegalStateException("The paused composition has already been applied");
                default:
                    throw new SerializationException();
            }
        } catch (Exception e) {
            atomicReference.set(PausedCompositionState.Invalid);
            throw e;
        }
    }

    public final void applyChanges() {
        Trace.beginSection("PausedComposition:applyChanges");
        try {
            synchronized (this.lock) {
                try {
                    this.pausableApplier.playTo(this.applier, this.rememberManager);
                    this.rememberManager.dispatchRememberObservers();
                    this.rememberManager.dispatchSideEffects();
                } finally {
                    this.rememberManager.dispatchAbandons();
                    this.composition.pendingPausedComposition = null;
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    public final boolean isComplete() {
        return ((PausedCompositionState) this.state.get()).compareTo(PausedCompositionState.ApplyPending) >= 0;
    }

    public final void markComplete() {
        PausedCompositionState pausedCompositionState;
        PausedCompositionState pausedCompositionState2;
        boolean z;
        while (true) {
            AtomicReference atomicReference = this.state;
            pausedCompositionState = PausedCompositionState.RecomposePending;
            pausedCompositionState2 = PausedCompositionState.ApplyPending;
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                z = true;
                break;
            } else if (atomicReference.get() != pausedCompositionState) {
                z = false;
                break;
            }
        }
        if (z) {
            return;
        }
        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean resume(ShouldPauseCallback shouldPauseCallback) {
        PausedCompositionState pausedCompositionState = PausedCompositionState.Recomposing;
        AtomicReference atomicReference = this.state;
        try {
            int ordinal = ((PausedCompositionState) atomicReference.get()).ordinal();
            PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
            CompositionImpl compositionImpl = this.composition;
            CompositionContext compositionContext = this.context;
            switch (ordinal) {
                case 0:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                case 1:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 2:
                    GapComposer gapComposer = this.composer;
                    boolean z = this.reusable;
                    if (z) {
                        gapComposer.reusingGroup = 0;
                        gapComposer.reusing = true;
                    }
                    try {
                        this.invalidScopes = compositionContext.composeInitialPaused$runtime(compositionImpl, shouldPauseCallback, this.content);
                        PausedCompositionState pausedCompositionState3 = PausedCompositionState.InitialPending;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState3, pausedCompositionState2)) {
                                if (atomicReference.get() != pausedCompositionState3) {
                                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState2 + '.');
                                }
                            }
                        }
                        if (this.invalidScopes.isEmpty()) {
                            markComplete();
                        }
                        return isComplete();
                    } finally {
                        if (z) {
                            gapComposer.endReuseFromRoot$runtime();
                        }
                    }
                case 3:
                    while (true) {
                        if (!atomicReference.compareAndSet(pausedCompositionState2, pausedCompositionState)) {
                            if (atomicReference.get() != pausedCompositionState2) {
                                PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState2 + " to: " + pausedCompositionState + '.');
                            }
                        }
                    }
                    long j = this.owningThread;
                    try {
                        this.owningThread = Expect_jvmKt.currentThreadId();
                        this.invalidScopes = compositionContext.recomposePaused$runtime(compositionImpl, shouldPauseCallback, this.invalidScopes);
                        this.owningThread = j;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                                if (atomicReference.get() != pausedCompositionState) {
                                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                                }
                            }
                        }
                        if (this.invalidScopes.isEmpty()) {
                            markComplete();
                        }
                        return isComplete();
                    } catch (Throwable th) {
                        this.owningThread = j;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                                if (atomicReference.get() != pausedCompositionState) {
                                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
                                }
                            }
                        }
                        throw th;
                    }
                case 4:
                    ComposerKt.composeRuntimeError("Recursive call to resume()");
                    throw new SerializationException();
                case 5:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been applied");
                default:
                    throw new SerializationException();
            }
        } catch (Exception e) {
            atomicReference.set(PausedCompositionState.Invalid);
            throw e;
        }
    }
}
