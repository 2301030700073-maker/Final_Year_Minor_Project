package androidx.compose.runtime;

import android.util.Log;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult$Failure;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.core.view.MenuHostHelper;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.openid.appauth.AuthorizationRequest;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Recomposer extends CompositionContext {
    public final ArrayList _knownCompositions;
    public List _knownCompositionsCache;
    public final StateFlowImpl _state;
    public final BroadcastFrameClock broadcastFrameClock;
    public long changeCount;
    public Throwable closeCause;
    public final MutableVector compositionInvalidations;
    public final ArrayList compositionsAwaitingApply;
    public MutableScatterSet compositionsRemoved;
    public final CoroutineContext effectCoroutineContext;
    public final JobImpl effectJob;
    public final StateFlowImpl errorState;
    public ArrayList failedCompositions;
    public boolean frameClockPaused;
    public final ArrayList movableContentAwaitingInsert;
    public final MutableScatterMap movableContentNestedExtractionsPending;
    public final CardView.AnonymousClass1 movableContentNestedStatesAvailable;
    public final MutableScatterMap movableContentRemoved;
    public final MutableScatterMap movableContentStatesAvailable;
    public final MenuHostHelper nextFrameEndCallbackQueue;
    public final MenuHostHelper pausedScopes;
    public final NeverEqualPolicy recomposerInfo;
    public Job runnerJob;
    public MutableScatterSet snapshotInvalidations;
    public final Object stateLock;
    public CancellableContinuationImpl workContinuation;
    public static final StateFlowImpl _runningRecomposers = FlowKt.MutableStateFlow(PersistentOrderedSet.EMPTY);
    public static final AtomicReference _hotReloadEnabled = new AtomicReference(Boolean.FALSE);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class RecomposerErrorState {
        public final Throwable cause;

        public RecomposerErrorState(Throwable th) {
            this.cause = th;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State Idle;
        public static final State Inactive;
        public static final State InactivePendingWork;
        public static final State PendingWork;
        public static final State ShutDown;
        public static final State ShuttingDown;

        static {
            State state = new State("ShutDown", 0);
            ShutDown = state;
            State state2 = new State("ShuttingDown", 1);
            ShuttingDown = state2;
            State state3 = new State("Inactive", 2);
            Inactive = state3;
            State state4 = new State("InactivePendingWork", 3);
            InactivePendingWork = state4;
            State state5 = new State("Idle", 4);
            Idle = state5;
            State state6 = new State("PendingWork", 5);
            PendingWork = state6;
            $VALUES = new State[]{state, state2, state3, state4, state5, state6};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    public Recomposer(CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new Recomposer$$ExternalSyntheticLambda1(this, 0));
        this.broadcastFrameClock = broadcastFrameClock;
        this.nextFrameEndCallbackQueue = new MenuHostHelper(new Recomposer$$ExternalSyntheticLambda1(this, 1));
        this.stateLock = new Object();
        this._knownCompositions = new ArrayList();
        this.snapshotInvalidations = new MutableScatterSet();
        this.compositionInvalidations = new MutableVector(new CompositionImpl[16]);
        this.compositionsAwaitingApply = new ArrayList();
        this.movableContentAwaitingInsert = new ArrayList();
        this.movableContentRemoved = new MutableScatterMap();
        this.movableContentNestedStatesAvailable = new CardView.AnonymousClass1(29);
        this.movableContentStatesAvailable = new MutableScatterMap();
        this.movableContentNestedExtractionsPending = new MutableScatterMap();
        this.errorState = FlowKt.MutableStateFlow(null);
        this._state = FlowKt.MutableStateFlow(State.Inactive);
        this.pausedScopes = new MenuHostHelper(18);
        JobImpl jobImpl = new JobImpl((Job) coroutineContext.get(Job.Key.$$INSTANCE));
        jobImpl.invokeOnCompletion(new DiskLruCache$$ExternalSyntheticLambda0(9, this));
        this.effectJob = jobImpl;
        this.effectCoroutineContext = coroutineContext.plus(broadcastFrameClock).plus(jobImpl);
        this.recomposerInfo = new NeverEqualPolicy(9);
    }

    public static final Object access$awaitWorkAvailable(Recomposer recomposer, Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2) {
        CancellableContinuationImpl cancellableContinuationImpl;
        if (recomposer.getHasSchedulingWork()) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(1, AtomicFU.intercepted(recomposer$runRecomposeAndApplyChanges$2));
        cancellableContinuationImpl2.initCancellability();
        synchronized (recomposer.stateLock) {
            if (recomposer.getHasSchedulingWork()) {
                cancellableContinuationImpl = cancellableContinuationImpl2;
            } else {
                recomposer.workContinuation = cancellableContinuationImpl2;
                cancellableContinuationImpl = null;
            }
        }
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
        }
        Object result = cancellableContinuationImpl2.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void access$discardUnusedMovableContentState(Recomposer recomposer) {
        MutableObjectList mutableObjectList;
        Object[] objArr;
        synchronized (recomposer.stateLock) {
            try {
                boolean z = false;
                objArr = 0;
                if (recomposer.movableContentRemoved.isNotEmpty()) {
                    MutableObjectList m384valuesimpl = MultiValueMap.m384valuesimpl(recomposer.movableContentRemoved);
                    recomposer.movableContentRemoved.clear();
                    CardView.AnonymousClass1 anonymousClass1 = recomposer.movableContentNestedStatesAvailable;
                    ((MutableScatterMap) anonymousClass1.mCardBackground).clear();
                    ((MutableScatterMap) anonymousClass1.this$0).clear();
                    recomposer.movableContentNestedExtractionsPending.clear();
                    mutableObjectList = new MutableObjectList(m384valuesimpl._size);
                    Object[] objArr2 = m384valuesimpl.content;
                    int i = m384valuesimpl._size;
                    for (int i2 = 0; i2 < i; i2++) {
                        MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr2[i2];
                        mutableObjectList.add(new Pair(movableContentStateReference, recomposer.movableContentStatesAvailable.get(movableContentStateReference)));
                    }
                    recomposer.movableContentStatesAvailable.clear();
                } else {
                    mutableObjectList = ObjectListKt.EmptyObjectList;
                    mutableObjectList.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object[] objArr3 = mutableObjectList.content;
        int i3 = mutableObjectList._size;
        for (int i4 = 0; i4 < i3; i4++) {
            Pair pair = (Pair) objArr3[i4];
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) pair.first;
            MovableContentState movableContentState = (MovableContentState) pair.second;
            if (movableContentState != null) {
                CompositionImpl compositionImpl = movableContentStateReference2.composition;
                AuthorizationRequest.Builder builder = compositionImpl.rememberManager;
                try {
                    builder.prepare(compositionImpl.abandonSet, compositionImpl.composer.getErrorContext$runtime());
                    SlotWriter openWriter = movableContentState.slotStorage.openWriter();
                    try {
                        openWriter.forAllDataInRememberOrder(openWriter.currentGroup, new ComposerKt$$ExternalSyntheticLambda0(objArr == true ? 1 : 0, builder));
                        openWriter.removeGroup();
                        openWriter.close(true);
                        builder.dispatchRememberObservers();
                    } finally {
                    }
                } finally {
                    builder.clear();
                }
            }
        }
    }

    public static final boolean access$getHasBroadcastFrameClockAwaiters(Recomposer recomposer) {
        boolean hasBroadcastFrameClockAwaitersLocked;
        synchronized (recomposer.stateLock) {
            hasBroadcastFrameClockAwaitersLocked = recomposer.getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    public static final List access$knownCompositions(Recomposer recomposer) {
        List knownCompositionsLocked;
        synchronized (recomposer.stateLock) {
            knownCompositionsLocked = recomposer.knownCompositionsLocked();
        }
        return knownCompositionsLocked;
    }

    public static final void access$registerRunnerJob(Recomposer recomposer, Job job) {
        synchronized (recomposer.stateLock) {
            Throwable th = recomposer.closeCause;
            if (th != null) {
                throw th;
            }
            if (((State) recomposer._state.getValue()).compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down");
            }
            if (recomposer.runnerJob != null) {
                throw new IllegalStateException("Recomposer already running");
            }
            recomposer.runnerJob = job;
            if (recomposer.deriveStateLocked() != null) {
                ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
            }
        }
    }

    public static void applyAndCheck(MutableSnapshot mutableSnapshot) {
        try {
            if (mutableSnapshot.apply() instanceof SnapshotApplyResult$Failure) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
        } finally {
            mutableSnapshot.dispose();
        }
    }

    public static final void deletedMovableContent$lambda$0$recordNestedStatesOf(Recomposer recomposer, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        List list = movableContentStateReference2.nestedReferences;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                MovableContentStateReference movableContentStateReference3 = (MovableContentStateReference) list.get(i);
                CardView.AnonymousClass1 anonymousClass1 = recomposer.movableContentNestedStatesAvailable;
                MovableContent movableContent = movableContentStateReference3.content;
                MultiValueMap.m381addimpl((MutableScatterMap) anonymousClass1.mCardBackground, movableContent, new NestedMovableContent(movableContentStateReference3, movableContentStateReference));
                MultiValueMap.m381addimpl((MutableScatterMap) anonymousClass1.this$0, movableContentStateReference, movableContent);
                deletedMovableContent$lambda$0$recordNestedStatesOf(recomposer, movableContentStateReference, movableContentStateReference3);
            }
        }
    }

    public static final void performInitialMovableContentInserts$fillToInsert(ArrayList arrayList, Recomposer recomposer, CompositionImpl compositionImpl) {
        arrayList.clear();
        synchronized (recomposer.stateLock) {
            Iterator it = recomposer.movableContentAwaitingInsert.iterator();
            while (it.hasNext()) {
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) it.next();
                if (movableContentStateReference.composition.equals(compositionImpl)) {
                    arrayList.add(movableContentStateReference);
                    it.remove();
                }
            }
        }
    }

    public final void cancel() {
        synchronized (this.stateLock) {
            if (((State) this._state.getValue()).compareTo(State.Idle) >= 0) {
                StateFlowImpl stateFlowImpl = this._state;
                State state = State.ShuttingDown;
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, state);
            }
        }
        this.effectJob.cancel(null);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void composeInitial$runtime(CompositionImpl compositionImpl, Function2 function2) {
        State state;
        boolean contains;
        MutableSnapshot takeNestedMutableSnapshot;
        boolean z = compositionImpl.composer.isComposing;
        synchronized (this.stateLock) {
            State state2 = (State) this._state.getValue();
            state = State.ShuttingDown;
            contains = state2.compareTo(state) > 0 ? true ^ knownCompositionsLocked().contains(compositionImpl) : true;
        }
        try {
            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(8, compositionImpl);
            Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda1 = new Navigator$$ExternalSyntheticLambda1(25, compositionImpl, null);
            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
            MutableSnapshot mutableSnapshot = currentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) currentSnapshot : null;
            if (mutableSnapshot == null || (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(diskLruCache$$ExternalSyntheticLambda0, navigator$$ExternalSyntheticLambda1)) == null) {
                throw new IllegalStateException("Cannot create a mutable snapshot of an read-only snapshot");
            }
            try {
                Snapshot makeCurrent = takeNestedMutableSnapshot.makeCurrent();
                try {
                    compositionImpl.composeContent(function2);
                    synchronized (this.stateLock) {
                        if (((State) this._state.getValue()).compareTo(state) > 0 && !knownCompositionsLocked().contains(compositionImpl)) {
                            this._knownCompositions.add(compositionImpl);
                            this._knownCompositionsCache = null;
                        }
                    }
                    if (!z) {
                        SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
                    }
                    try {
                        performInitialMovableContentInserts(compositionImpl);
                        try {
                            compositionImpl.applyChanges();
                            compositionImpl.applyLateChanges();
                            if (z) {
                                return;
                            }
                            SnapshotKt.currentSnapshot().notifyObjectsInitialized$runtime();
                        } catch (Throwable th) {
                            processCompositionError(th, null);
                        }
                    } catch (Throwable th2) {
                        processCompositionError(th2, compositionImpl);
                    }
                } finally {
                    Snapshot.restoreCurrent(makeCurrent);
                }
            } finally {
                applyAndCheck(takeNestedMutableSnapshot);
            }
        } catch (Throwable th3) {
            if (contains) {
                synchronized (this.stateLock) {
                }
            }
            processCompositionError(th3, compositionImpl);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final MutableScatterSet composeInitialPaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
        MenuHostHelper menuHostHelper = this.pausedScopes;
        try {
            ShouldPauseCallback shouldPauseCallback2 = compositionImpl.shouldPause;
            compositionImpl.shouldPause = shouldPauseCallback;
            try {
                composeInitial$runtime(compositionImpl, function2);
                MutableScatterSet mutableScatterSet = (MutableScatterSet) menuHostHelper.get();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.EmptyScatterSet;
                    mutableScatterSet.getClass();
                }
                return mutableScatterSet;
            } finally {
                compositionImpl.shouldPause = shouldPauseCallback2;
            }
        } finally {
            menuHostHelper.set(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
        CancellableContinuation deriveStateLocked;
        synchronized (this.stateLock) {
            try {
                MultiValueMap.m381addimpl(this.movableContentRemoved, movableContentStateReference.content, movableContentStateReference);
                if (movableContentStateReference.nestedReferences != null) {
                    deletedMovableContent$lambda$0$recordNestedStatesOf(this, movableContentStateReference, movableContentStateReference);
                }
                deriveStateLocked = deriveStateLocked();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (deriveStateLocked != null) {
            ((CancellableContinuationImpl) deriveStateLocked).resumeWith(Unit.INSTANCE);
        }
    }

    public final CancellableContinuation deriveStateLocked() {
        StateFlowImpl stateFlowImpl = this._state;
        int compareTo = ((State) stateFlowImpl.getValue()).compareTo(State.ShuttingDown);
        StateFlowImpl stateFlowImpl2 = this.errorState;
        ArrayList arrayList = this.movableContentAwaitingInsert;
        ArrayList arrayList2 = this.compositionsAwaitingApply;
        MutableVector mutableVector = this.compositionInvalidations;
        if (compareTo > 0) {
            Object value = stateFlowImpl2.getValue();
            State state = State.PendingWork;
            State state2 = State.Inactive;
            if (value == null) {
                if (this.runnerJob == null) {
                    this.snapshotInvalidations = new MutableScatterSet();
                    mutableVector.clear();
                    if (getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked()) {
                        state2 = State.InactivePendingWork;
                    }
                } else {
                    state2 = (mutableVector.size != 0 || this.snapshotInvalidations.isNotEmpty() || !arrayList2.isEmpty() || !arrayList.isEmpty() || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || this.movableContentRemoved.isNotEmpty()) ? state : State.Idle;
                }
            }
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, state2);
            if (state2 != state) {
                return null;
            }
            CancellableContinuationImpl cancellableContinuationImpl = this.workContinuation;
            this.workContinuation = null;
            return cancellableContinuationImpl;
        }
        List knownCompositionsLocked = knownCompositionsLocked();
        int size = knownCompositionsLocked.size();
        for (int i = 0; i < size; i++) {
        }
        this._knownCompositions.clear();
        this._knownCompositionsCache = EmptyList.INSTANCE;
        this.snapshotInvalidations = new MutableScatterSet();
        mutableVector.clear();
        arrayList2.clear();
        arrayList.clear();
        this.failedCompositions = null;
        CancellableContinuationImpl cancellableContinuationImpl2 = this.workContinuation;
        if (cancellableContinuationImpl2 != null) {
            cancellableContinuationImpl2.cancel(null);
        }
        this.workContinuation = null;
        stateFlowImpl2.setValue(null);
        return null;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean getCollectingCallByInformation$runtime() {
        return ((Boolean) _hotReloadEnabled.get()).booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean getCollectingParameterInformation$runtime() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean getCollectingSourceInformation$runtime() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final long getCompositeKeyHashCode$runtime() {
        return 1000L;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final Composition getComposition$runtime() {
        return null;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final CoroutineContext getEffectCoroutineContext() {
        return this.effectCoroutineContext;
    }

    public final boolean getHasBroadcastFrameClockAwaitersLocked() {
        return !this.frameClockPaused && (((AtomicInt) ((LocalStore.AnonymousClass7) this.broadcastFrameClock.queue).val$folder).get() & 134217727) > 0;
    }

    public final boolean getHasFrameWorkLocked() {
        return this.compositionInvalidations.size != 0 || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || this.movableContentRemoved.isNotEmpty();
    }

    public final boolean getHasNextFrameEndAwaitersLocked() {
        return !this.frameClockPaused && (((AtomicInt) ((LocalStore.AnonymousClass7) this.nextFrameEndCallbackQueue.mMenuProviders).val$folder).get() & 134217727) > 0;
    }

    public final boolean getHasSchedulingWork() {
        boolean z;
        synchronized (this.stateLock) {
            if (!this.snapshotInvalidations.isNotEmpty() && this.compositionInvalidations.size == 0 && !getHasBroadcastFrameClockAwaitersLocked()) {
                z = getHasNextFrameEndAwaitersLocked();
            }
        }
        return z;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean getStackTraceEnabled$runtime() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
        CancellableContinuation deriveStateLocked;
        synchronized (this.stateLock) {
            this.movableContentAwaitingInsert.add(movableContentStateReference);
            deriveStateLocked = deriveStateLocked();
        }
        if (deriveStateLocked != null) {
            ((CancellableContinuationImpl) deriveStateLocked).resumeWith(Unit.INSTANCE);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void invalidate$runtime(CompositionImpl compositionImpl) {
        CancellableContinuation cancellableContinuation;
        synchronized (this.stateLock) {
            if (this.compositionInvalidations.contains(compositionImpl)) {
                cancellableContinuation = null;
            } else {
                this.compositionInvalidations.add(compositionImpl);
                cancellableContinuation = deriveStateLocked();
            }
        }
        if (cancellableContinuation != null) {
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(Unit.INSTANCE);
        }
    }

    public final List knownCompositionsLocked() {
        List list = this._knownCompositionsCache;
        if (list != null) {
            return list;
        }
        ArrayList arrayList = this._knownCompositions;
        List arrayList2 = arrayList.isEmpty() ? EmptyList.INSTANCE : new ArrayList(arrayList);
        this._knownCompositionsCache = arrayList2;
        return arrayList2;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier) {
        MutableObjectList mutableObjectList;
        synchronized (this.stateLock) {
            this.movableContentStatesAvailable.set(movableContentStateReference, movableContentState);
            Object obj = this.movableContentNestedExtractionsPending.get(movableContentStateReference);
            if (obj == null) {
                mutableObjectList = ObjectListKt.EmptyObjectList;
                mutableObjectList.getClass();
            } else if (obj instanceof MutableObjectList) {
                mutableObjectList = (MutableObjectList) obj;
            } else {
                Object[] objArr = ObjectListKt.EmptyArray;
                MutableObjectList mutableObjectList2 = new MutableObjectList(1);
                mutableObjectList2.add(obj);
                mutableObjectList = mutableObjectList2;
            }
            if (mutableObjectList.isNotEmpty()) {
                MutableScatterMap extractNestedStates = movableContentState.slotStorage.extractNestedStates(applier, mutableObjectList);
                Object[] objArr2 = extractNestedStates.keys;
                Object[] objArr3 = extractNestedStates.values;
                long[] jArr = extractNestedStates.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    int i4 = (i << 3) + i3;
                                    Object obj2 = objArr2[i4];
                                    this.movableContentStatesAvailable.set((MovableContentStateReference) obj2, (MovableContentState) objArr3[i4]);
                                }
                                j >>= 8;
                            }
                            if (i2 != 8) {
                                break;
                            }
                        }
                        if (i == length) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
        MovableContentState movableContentState;
        synchronized (this.stateLock) {
            movableContentState = (MovableContentState) this.movableContentStatesAvailable.remove(movableContentStateReference);
        }
        return movableContentState;
    }

    public final void onNewFrameAwaiter() {
        CancellableContinuation deriveStateLocked;
        synchronized (this.stateLock) {
            deriveStateLocked = deriveStateLocked();
            if (((State) this._state.getValue()).compareTo(State.ShuttingDown) <= 0) {
                throw JobKt.CancellationException("Recomposer shutdown; frame clock awaiter will never resume", this.closeCause);
            }
        }
        if (deriveStateLocked != null) {
            ((CancellableContinuationImpl) deriveStateLocked).resumeWith(Unit.INSTANCE);
        }
    }

    public final void pauseCompositionFrameClock() {
        synchronized (this.stateLock) {
            this.frameClockPaused = true;
        }
    }

    public final void performInitialMovableContentInserts(CompositionImpl compositionImpl) {
        synchronized (this.stateLock) {
            ArrayList arrayList = this.movableContentAwaitingInsert;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((MovableContentStateReference) arrayList.get(i)).composition.equals(compositionImpl)) {
                    ArrayList arrayList2 = new ArrayList();
                    performInitialMovableContentInserts$fillToInsert(arrayList2, this, compositionImpl);
                    while (!arrayList2.isEmpty()) {
                        performInsertValues(arrayList2, null);
                        performInitialMovableContentInserts$fillToInsert(arrayList2, this, compositionImpl);
                    }
                    return;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0156, code lost:
    
        r3 = r10.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015b, code lost:
    
        if (r4 >= r3) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0165, code lost:
    
        if (((kotlin.Pair) r10.get(r4)).second == null) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0167, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016a, code lost:
    
        r3 = new java.util.ArrayList(r10.size());
        r4 = r10.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0178, code lost:
    
        if (r8 >= r4) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x017a, code lost:
    
        r11 = (kotlin.Pair) r10.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0182, code lost:
    
        if (r11.second != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0184, code lost:
    
        r11 = (androidx.compose.runtime.MovableContentStateReference) r11.first;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x018d, code lost:
    
        if (r11 == null) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x018f, code lost:
    
        r3.add(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0192, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018b, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0195, code lost:
    
        r4 = r16.stateLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0197, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0198, code lost:
    
        kotlin.collections.CollectionsKt.addAll(r3, r16.movableContentAwaitingInsert);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x019d, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x019e, code lost:
    
        r3 = new java.util.ArrayList(r10.size());
        r4 = r10.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01ac, code lost:
    
        if (r8 >= r4) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01ae, code lost:
    
        r11 = r10.get(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01b7, code lost:
    
        if (((kotlin.Pair) r11).second == null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01b9, code lost:
    
        r3.add(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01bc, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01bf, code lost:
    
        r10 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List performInsertValues(java.util.List r17, androidx.collection.MutableScatterSet r18) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer.performInsertValues(java.util.List, androidx.collection.MutableScatterSet):java.util.List");
    }

    public final CompositionImpl performRecompose(CompositionImpl compositionImpl, MutableScatterSet mutableScatterSet) {
        MutableSnapshot takeNestedMutableSnapshot;
        if (compositionImpl.composer.isComposing || compositionImpl.state == 3) {
            return null;
        }
        MutableScatterSet mutableScatterSet2 = this.compositionsRemoved;
        if (mutableScatterSet2 == null || !mutableScatterSet2.contains(compositionImpl)) {
            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(8, compositionImpl);
            Navigator$$ExternalSyntheticLambda1 navigator$$ExternalSyntheticLambda1 = new Navigator$$ExternalSyntheticLambda1(25, compositionImpl, mutableScatterSet);
            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
            MutableSnapshot mutableSnapshot = currentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) currentSnapshot : null;
            if (mutableSnapshot == null || (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(diskLruCache$$ExternalSyntheticLambda0, navigator$$ExternalSyntheticLambda1)) == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot create a mutable snapshot of an read-only snapshot");
            } else {
                try {
                    Snapshot makeCurrent = takeNestedMutableSnapshot.makeCurrent();
                    if (mutableScatterSet != null) {
                        try {
                            if (mutableScatterSet.isNotEmpty()) {
                                Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(0, mutableScatterSet, compositionImpl);
                                GapComposer gapComposer = compositionImpl.composer;
                                if (gapComposer.isComposing) {
                                    ComposerKt.composeImmediateRuntimeError("Preparing a composition while composing is not supported");
                                }
                                gapComposer.isComposing = true;
                                try {
                                    recomposer$$ExternalSyntheticLambda6.invoke();
                                    gapComposer.isComposing = false;
                                } catch (Throwable th) {
                                    gapComposer.isComposing = false;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            Snapshot.restoreCurrent(makeCurrent);
                            throw th2;
                        }
                    }
                    boolean recompose = compositionImpl.recompose();
                    Snapshot.restoreCurrent(makeCurrent);
                    if (recompose) {
                        return compositionImpl;
                    }
                } finally {
                    applyAndCheck(takeNestedMutableSnapshot);
                }
            }
        }
        return null;
    }

    public final void processCompositionError(Throwable th, CompositionImpl compositionImpl) {
        if (!((Boolean) _hotReloadEnabled.get()).booleanValue() || (th instanceof ComposeRuntimeError)) {
            synchronized (this.stateLock) {
                Log.e("ComposeInternal", "Error was captured in composition.", th);
                RecomposerErrorState recomposerErrorState = (RecomposerErrorState) this.errorState.getValue();
                if (recomposerErrorState != null) {
                    throw recomposerErrorState.cause;
                }
                StateFlowImpl stateFlowImpl = this.errorState;
                RecomposerErrorState recomposerErrorState2 = new RecomposerErrorState(th);
                stateFlowImpl.getClass();
                stateFlowImpl.updateState(null, recomposerErrorState2);
            }
            throw th;
        }
        synchronized (this.stateLock) {
            try {
                Log.e("ComposeInternal", "Error was captured in composition while live edit was enabled.", th);
                this.compositionsAwaitingApply.clear();
                this.compositionInvalidations.clear();
                this.snapshotInvalidations = new MutableScatterSet();
                this.movableContentAwaitingInsert.clear();
                this.movableContentRemoved.clear();
                this.movableContentStatesAvailable.clear();
                StateFlowImpl stateFlowImpl2 = this.errorState;
                RecomposerErrorState recomposerErrorState3 = new RecomposerErrorState(th);
                stateFlowImpl2.getClass();
                stateFlowImpl2.updateState(null, recomposerErrorState3);
                if (compositionImpl != null) {
                    recordFailedCompositionLocked(compositionImpl);
                }
                if (deriveStateLocked() != null) {
                    ComposerKt.composeImmediateRuntimeError("expected to go to inactive state due to composition error");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final MutableScatterSet recomposePaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, MutableScatterSet mutableScatterSet) {
        MenuHostHelper menuHostHelper = this.pausedScopes;
        try {
            recordComposerModifications();
            compositionImpl.recordModificationsOf(new ScatterSetWrapper(mutableScatterSet));
            ShouldPauseCallback shouldPauseCallback2 = compositionImpl.shouldPause;
            compositionImpl.shouldPause = shouldPauseCallback;
            try {
                CompositionImpl performRecompose = performRecompose(compositionImpl, null);
                if (performRecompose != null) {
                    performInitialMovableContentInserts(compositionImpl);
                    performRecompose.applyChanges();
                    performRecompose.applyLateChanges();
                }
                MutableScatterSet mutableScatterSet2 = (MutableScatterSet) menuHostHelper.get();
                if (mutableScatterSet2 == null) {
                    mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                    mutableScatterSet2.getClass();
                }
                return mutableScatterSet2;
            } finally {
                compositionImpl.shouldPause = shouldPauseCallback2;
            }
        } finally {
            menuHostHelper.set(null);
        }
    }

    public final boolean recordComposerModifications() {
        boolean hasFrameWorkLocked;
        synchronized (this.stateLock) {
            if (this.snapshotInvalidations.isEmpty()) {
                return getHasFrameWorkLocked();
            }
            List knownCompositionsLocked = knownCompositionsLocked();
            ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(this.snapshotInvalidations);
            this.snapshotInvalidations = new MutableScatterSet();
            try {
                int size = knownCompositionsLocked.size();
                for (int i = 0; i < size; i++) {
                    ((CompositionImpl) knownCompositionsLocked.get(i)).recordModificationsOf(scatterSetWrapper);
                    if (((State) this._state.getValue()).compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.stateLock) {
                    if (deriveStateLocked() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    hasFrameWorkLocked = getHasFrameWorkLocked();
                }
                return hasFrameWorkLocked;
            } catch (Throwable th) {
                synchronized (this.stateLock) {
                    MutableScatterSet mutableScatterSet = this.snapshotInvalidations;
                    mutableScatterSet.getClass();
                    Iterator<E> it = scatterSetWrapper.iterator();
                    while (it.hasNext()) {
                        mutableScatterSet.plusAssign(it.next());
                    }
                    throw th;
                }
            }
        }
    }

    public final void recordFailedCompositionLocked(CompositionImpl compositionImpl) {
        ArrayList arrayList = this.failedCompositions;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.failedCompositions = arrayList;
        }
        if (!arrayList.contains(compositionImpl)) {
            arrayList.add(compositionImpl);
        }
        if (this._knownCompositions.remove(compositionImpl)) {
            this._knownCompositionsCache = null;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
        MenuHostHelper menuHostHelper = this.pausedScopes;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) menuHostHelper.get();
        if (mutableScatterSet == null) {
            MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
            mutableScatterSet = new MutableScatterSet();
            menuHostHelper.set(mutableScatterSet);
        }
        mutableScatterSet.add(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void reportRemovedComposition$runtime(CompositionImpl compositionImpl) {
        synchronized (this.stateLock) {
            try {
                MutableScatterSet mutableScatterSet = this.compositionsRemoved;
                if (mutableScatterSet == null) {
                    MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                    mutableScatterSet = new MutableScatterSet();
                    this.compositionsRemoved = mutableScatterSet;
                }
                mutableScatterSet.add(compositionImpl);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void resumeCompositionFrameClock() {
        CancellableContinuation cancellableContinuation;
        synchronized (this.stateLock) {
            if (this.frameClockPaused) {
                this.frameClockPaused = false;
                cancellableContinuation = deriveStateLocked();
            } else {
                cancellableContinuation = null;
            }
        }
        if (cancellableContinuation != null) {
            ((CancellableContinuationImpl) cancellableContinuation).resumeWith(Unit.INSTANCE);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final CancellationHandle scheduleFrameEndCallback(LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
        MenuHostHelper menuHostHelper = this.nextFrameEndCallbackQueue;
        LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) menuHostHelper.mMenuProviders;
        NextFrameEndCallbackQueue$NextFrameEndAwaiter nextFrameEndCallbackQueue$NextFrameEndAwaiter = new NextFrameEndCallbackQueue$NextFrameEndAwaiter();
        nextFrameEndCallbackQueue$NextFrameEndAwaiter.onNextFrameEnd = layoutNode$_foldedChildren$1;
        return anonymousClass7.addAwaiter(nextFrameEndCallbackQueue$NextFrameEndAwaiter, (Recomposer$$ExternalSyntheticLambda6) menuHostHelper.mProviderToLifecycleContainers);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void unregisterComposition$runtime(CompositionImpl compositionImpl) {
        synchronized (this.stateLock) {
            if (this._knownCompositions.remove(compositionImpl)) {
                this._knownCompositionsCache = null;
            }
            this.compositionInvalidations.remove(compositionImpl);
            this.compositionsAwaitingApply.remove(compositionImpl);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void recordInspectionTable$runtime(Set set) {
    }
}
