package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableScatterSet;
import androidx.collection.MutableSetWrapper;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.internal.Expect_jvmKt;
import coil3.network.HttpException;
import com.caverock.androidsvg.SVG;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.functions.Function2;
import org.wikipedia.databinding.ActivityLoginBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PausedCompositionImpl {
    public final AbstractApplier applier;
    public final GapComposer composer;
    public final CompositionImpl composition;
    public final Function2 content;
    public final CompositionContext context;
    public MutableScatterSet invalidScopes;
    public final Object lock;
    public final SVG pausableApplier;
    public final ActivityLoginBinding rememberManager;
    public final boolean reusable;
    public final AtomicReference state = new AtomicReference(PausedCompositionState.InitialPending);
    public long owningThread = Expect_jvmKt.currentThreadId();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PausedCompositionState.values().length];
            try {
                iArr[PausedCompositionState.InitialPending.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PausedCompositionState.RecomposePending.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PausedCompositionState.Recomposing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PausedCompositionState.ApplyPending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PausedCompositionState.Applied.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PausedCompositionState.Cancelled.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PausedCompositionState.Invalid.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PausedCompositionImpl(CompositionImpl compositionImpl, CompositionContext compositionContext, GapComposer gapComposer, MutableSetWrapper mutableSetWrapper, Function2 function2, boolean z, AbstractApplier abstractApplier, Object obj) {
        this.composition = compositionImpl;
        this.context = compositionContext;
        this.composer = gapComposer;
        this.content = function2;
        this.reusable = z;
        this.applier = abstractApplier;
        this.lock = obj;
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        mutableScatterSet.getClass();
        this.invalidScopes = mutableScatterSet;
        ActivityLoginBinding activityLoginBinding = new ActivityLoginBinding(1);
        activityLoginBinding.prepare(mutableSetWrapper, gapComposer.getErrorContext$runtime());
        this.rememberManager = activityLoginBinding;
        this.pausableApplier = new SVG(abstractApplier.current);
    }

    public final void apply() {
        AtomicReference atomicReference = this.state;
        try {
            switch (WhenMappings.$EnumSwitchMapping$0[((PausedCompositionState) atomicReference.get()).ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new IllegalStateException("The paused composition has not completed yet");
                case 4:
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
                case 5:
                    throw new IllegalStateException("The paused composition has already been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new HttpException();
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
        AtomicReference atomicReference;
        PausedCompositionState pausedCompositionState = PausedCompositionState.RecomposePending;
        PausedCompositionState pausedCompositionState2 = PausedCompositionState.ApplyPending;
        do {
            atomicReference = this.state;
            if (atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2)) {
                return;
            }
        } while (atomicReference.get() == pausedCompositionState);
        PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState + " to: " + pausedCompositionState2 + '.');
    }

    public final boolean resume(ShouldPauseCallback shouldPauseCallback) {
        AtomicReference atomicReference = this.state;
        try {
            int i = WhenMappings.$EnumSwitchMapping$0[((PausedCompositionState) atomicReference.get()).ordinal()];
            CompositionImpl compositionImpl = this.composition;
            CompositionContext compositionContext = this.context;
            switch (i) {
                case 1:
                    GapComposer gapComposer = this.composer;
                    boolean z = this.reusable;
                    if (z) {
                        gapComposer.reusingGroup = 0;
                        gapComposer.reusing = true;
                    }
                    try {
                        this.invalidScopes = compositionContext.composeInitialPaused$runtime(compositionImpl, shouldPauseCallback, this.content);
                        PausedCompositionState pausedCompositionState = PausedCompositionState.InitialPending;
                        PausedCompositionState pausedCompositionState2 = PausedCompositionState.RecomposePending;
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
                    } finally {
                        if (z) {
                            gapComposer.endReuseFromRoot$runtime();
                        }
                    }
                case 2:
                    PausedCompositionState pausedCompositionState3 = PausedCompositionState.RecomposePending;
                    PausedCompositionState pausedCompositionState4 = PausedCompositionState.Recomposing;
                    while (true) {
                        if (!atomicReference.compareAndSet(pausedCompositionState3, pausedCompositionState4)) {
                            if (atomicReference.get() != pausedCompositionState3) {
                                PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState3 + " to: " + pausedCompositionState4 + '.');
                            }
                        }
                    }
                    long j = this.owningThread;
                    try {
                        this.owningThread = Expect_jvmKt.currentThreadId();
                        this.invalidScopes = compositionContext.recomposePaused$runtime(compositionImpl, shouldPauseCallback, this.invalidScopes);
                        this.owningThread = j;
                        PausedCompositionState pausedCompositionState5 = PausedCompositionState.Recomposing;
                        PausedCompositionState pausedCompositionState6 = PausedCompositionState.RecomposePending;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState5, pausedCompositionState6)) {
                                if (atomicReference.get() != pausedCompositionState5) {
                                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState5 + " to: " + pausedCompositionState6 + '.');
                                }
                            }
                        }
                        if (this.invalidScopes.isEmpty()) {
                            markComplete();
                        }
                        return isComplete();
                    } catch (Throwable th) {
                        this.owningThread = j;
                        PausedCompositionState pausedCompositionState7 = PausedCompositionState.Recomposing;
                        PausedCompositionState pausedCompositionState8 = PausedCompositionState.RecomposePending;
                        while (true) {
                            if (!atomicReference.compareAndSet(pausedCompositionState7, pausedCompositionState8)) {
                                if (atomicReference.get() != pausedCompositionState7) {
                                    PreconditionsKt.throwIllegalStateException("Unexpected state change from: " + pausedCompositionState7 + " to: " + pausedCompositionState8 + '.');
                                }
                            }
                        }
                        throw th;
                    }
                case 3:
                    ComposerKt.composeRuntimeError("Recursive call to resume()");
                    throw new HttpException();
                case 4:
                    throw new IllegalStateException("Pausable composition is complete and apply() should be applied");
                case 5:
                    throw new IllegalStateException("The paused composition has been applied");
                case 6:
                    throw new IllegalStateException("The paused composition has been cancelled");
                case 7:
                    throw new IllegalStateException("The paused composition is invalid because of a previous exception");
                default:
                    throw new HttpException();
            }
        } catch (Exception e) {
            atomicReference.set(PausedCompositionState.Invalid);
            throw e;
        }
    }
}
