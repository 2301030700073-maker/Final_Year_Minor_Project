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
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult$Failure;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import coil3.RealImageLoader$execute$result$1;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final SVG nextFrameEndCallbackQueue;
    public final SVG pausedScopes;
    public final NeverEqualPolicy recomposerInfo;
    public Job runnerJob;
    public MutableScatterSet snapshotInvalidations;
    public final Object stateLock;
    public CancellableContinuationImpl workContinuation;
    public static final StateFlowImpl _runningRecomposers = StateFlowKt.MutableStateFlow(PersistentOrderedSet.EMPTY);
    public static final AtomicReference _hotReloadEnabled = new AtomicReference(Boolean.FALSE);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RecomposerErrorState {
        public final Throwable cause;

        public RecomposerErrorState(Throwable th) {
            this.cause = th;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
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
            State[] stateArr = {state, state2, state3, state4, state5, state6};
            $VALUES = stateArr;
            $ENTRIES = new EnumEntriesList(stateArr);
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
        this.nextFrameEndCallbackQueue = new SVG(new Recomposer$$ExternalSyntheticLambda1(this, 1));
        this.stateLock = new Object();
        this._knownCompositions = new ArrayList();
        this.snapshotInvalidations = new MutableScatterSet();
        this.compositionInvalidations = new MutableVector(new CompositionImpl[16]);
        this.compositionsAwaitingApply = new ArrayList();
        this.movableContentAwaitingInsert = new ArrayList();
        this.movableContentRemoved = new MutableScatterMap();
        this.movableContentNestedStatesAvailable = new CardView.AnonymousClass1(9);
        this.movableContentStatesAvailable = new MutableScatterMap();
        this.movableContentNestedExtractionsPending = new MutableScatterMap();
        this.errorState = StateFlowKt.MutableStateFlow(null);
        this._state = StateFlowKt.MutableStateFlow(State.Inactive);
        this.pausedScopes = new SVG(7);
        JobImpl jobImpl = new JobImpl((Job) coroutineContext.get(Job.Key.$$INSTANCE));
        jobImpl.invokeOnCompletion(new DiskLruCache$$ExternalSyntheticLambda0(6, this));
        this.effectJob = jobImpl;
        this.effectCoroutineContext = coroutineContext.plus(broadcastFrameClock).plus(jobImpl);
        this.recomposerInfo = new NeverEqualPolicy(8);
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

    public static final void performInitialMovableContentInserts$fillToInsert(ArrayList arrayList, Recomposer recomposer, CompositionImpl compositionImpl) {
        arrayList.clear();
        synchronized (recomposer.stateLock) {
            Iterator it = recomposer.movableContentAwaitingInsert.iterator();
            if (it.hasNext()) {
                ((MovableContentStateReference) it.next()).getClass();
                throw null;
            }
        }
    }

    public final Object awaitWorkAvailable(Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2) {
        CancellableContinuationImpl cancellableContinuationImpl;
        if (getHasSchedulingWork()) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(recomposer$runRecomposeAndApplyChanges$2));
        cancellableContinuationImpl2.initCancellability();
        synchronized (this.stateLock) {
            if (getHasSchedulingWork()) {
                cancellableContinuationImpl = cancellableContinuationImpl2;
            } else {
                this.workContinuation = cancellableContinuationImpl2;
                cancellableContinuationImpl = null;
            }
        }
        if (cancellableContinuationImpl != null) {
            cancellableContinuationImpl.resumeWith(Unit.INSTANCE);
        }
        Object result = cancellableContinuationImpl2.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.INSTANCE;
    }

    public final void cancel() {
        synchronized (this.stateLock) {
            if (((State) this._state.getValue()).compareTo(State.Idle) >= 0) {
                this._state.setValue(State.ShuttingDown);
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
            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(5, compositionImpl);
            NavController$$ExternalSyntheticLambda3 navController$$ExternalSyntheticLambda3 = new NavController$$ExternalSyntheticLambda3(20, compositionImpl, null);
            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
            MutableSnapshot mutableSnapshot = currentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) currentSnapshot : null;
            if (mutableSnapshot == null || (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(diskLruCache$$ExternalSyntheticLambda0, navController$$ExternalSyntheticLambda3)) == null) {
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
        SVG svg = this.pausedScopes;
        try {
            ShouldPauseCallback shouldPauseCallback2 = compositionImpl.shouldPause;
            compositionImpl.shouldPause = shouldPauseCallback;
            try {
                composeInitial$runtime(compositionImpl, function2);
                MutableScatterSet mutableScatterSet = (MutableScatterSet) svg.get();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.EmptyScatterSet;
                    mutableScatterSet.getClass();
                }
                return mutableScatterSet;
            } finally {
                compositionImpl.shouldPause = shouldPauseCallback2;
            }
        } finally {
            svg.set((Object) null);
        }
    }

    public final CancellableContinuation deriveStateLocked() {
        State state;
        StateFlowImpl stateFlowImpl = this._state;
        int compareTo = ((State) stateFlowImpl.getValue()).compareTo(State.ShuttingDown);
        StateFlowImpl stateFlowImpl2 = this.errorState;
        ArrayList arrayList = this.movableContentAwaitingInsert;
        ArrayList arrayList2 = this.compositionsAwaitingApply;
        MutableVector mutableVector = this.compositionInvalidations;
        if (compareTo > 0) {
            if (stateFlowImpl2.getValue() != null) {
                state = State.Inactive;
            } else if (this.runnerJob == null) {
                this.snapshotInvalidations = new MutableScatterSet();
                mutableVector.clear();
                state = (getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked()) ? State.InactivePendingWork : State.Inactive;
            } else {
                state = (mutableVector.size != 0 || this.snapshotInvalidations.isNotEmpty() || !arrayList2.isEmpty() || !arrayList.isEmpty() || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || this.movableContentRemoved.isNotEmpty()) ? State.PendingWork : State.Idle;
            }
            stateFlowImpl.setValue(state);
            if (state != State.PendingWork) {
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

    public final void discardUnusedMovableContentState() {
        int i;
        MutableObjectList mutableObjectList;
        synchronized (this.stateLock) {
            try {
                if (this.movableContentRemoved.isNotEmpty()) {
                    MutableObjectList m329valuesimpl = MultiValueMap.m329valuesimpl(this.movableContentRemoved);
                    this.movableContentRemoved.clear();
                    CardView.AnonymousClass1 anonymousClass1 = this.movableContentNestedStatesAvailable;
                    ((MutableScatterMap) anonymousClass1.mCardBackground).clear();
                    ((MutableScatterMap) anonymousClass1.this$0).clear();
                    this.movableContentNestedExtractionsPending.clear();
                    mutableObjectList = new MutableObjectList(m329valuesimpl._size);
                    Object[] objArr = m329valuesimpl.content;
                    int i2 = m329valuesimpl._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr[i3];
                        mutableObjectList.add(new Pair(movableContentStateReference, this.movableContentStatesAvailable.get(movableContentStateReference)));
                    }
                    this.movableContentStatesAvailable.clear();
                } else {
                    mutableObjectList = ObjectListKt.EmptyObjectList;
                    mutableObjectList.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object[] objArr2 = mutableObjectList.content;
        int i4 = mutableObjectList._size;
        for (i = 0; i < i4; i++) {
            Pair pair = (Pair) objArr2[i];
        }
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

    public final boolean getHasBroadcastFrameClockAwaiters() {
        boolean hasBroadcastFrameClockAwaitersLocked;
        synchronized (this.stateLock) {
            hasBroadcastFrameClockAwaitersLocked = getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    public final boolean getHasBroadcastFrameClockAwaitersLocked() {
        return !this.frameClockPaused && (((AtomicInt) ((Request.Builder) this.broadcastFrameClock.queue).headers).get() & 134217727) > 0;
    }

    public final boolean getHasFrameWorkLocked() {
        return this.compositionInvalidations.size != 0 || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || this.movableContentRemoved.isNotEmpty();
    }

    public final boolean getHasNextFrameEndAwaitersLocked() {
        return !this.frameClockPaused && (((AtomicInt) ((Request.Builder) this.nextFrameEndCallbackQueue.cssRules).headers).get() & 134217727) > 0;
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

    public final List knownCompositions() {
        List knownCompositionsLocked;
        synchronized (this.stateLock) {
            knownCompositionsLocked = knownCompositionsLocked();
        }
        return knownCompositionsLocked;
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
                throw AwaitKt.CancellationException("Recomposer shutdown; frame clock awaiter will never resume", this.closeCause);
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
            if (arrayList.size() > 0) {
                ((MovableContentStateReference) arrayList.get(0)).getClass();
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0139, code lost:
    
        r3 = r11.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x013e, code lost:
    
        if (r4 >= r3) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0148, code lost:
    
        if (((kotlin.Pair) r11.get(r4)).second == null) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014a, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014d, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015b, code lost:
    
        if (r9 >= r4) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x015d, code lost:
    
        r12 = (kotlin.Pair) r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0165, code lost:
    
        if (r12.second != null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0167, code lost:
    
        r12 = (androidx.compose.runtime.MovableContentStateReference) r12.first;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016e, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0171, code lost:
    
        r4 = r18.stateLock;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0173, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0174, code lost:
    
        kotlin.collections.CollectionsKt.addAll(r18.movableContentAwaitingInsert, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0179, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x017a, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0188, code lost:
    
        if (r9 >= r4) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018a, code lost:
    
        r12 = r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0193, code lost:
    
        if (((kotlin.Pair) r12).second == null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0195, code lost:
    
        r3.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0198, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x019b, code lost:
    
        r11 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List performInsertValues(java.util.List r19, androidx.collection.MutableScatterSet r20) {
        /*
            Method dump skipped, instructions count: 456
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
            DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = new DiskLruCache$$ExternalSyntheticLambda0(5, compositionImpl);
            NavController$$ExternalSyntheticLambda3 navController$$ExternalSyntheticLambda3 = new NavController$$ExternalSyntheticLambda3(20, compositionImpl, mutableScatterSet);
            Snapshot currentSnapshot = SnapshotKt.currentSnapshot();
            MutableSnapshot mutableSnapshot = currentSnapshot instanceof MutableSnapshot ? (MutableSnapshot) currentSnapshot : null;
            if (mutableSnapshot == null || (takeNestedMutableSnapshot = mutableSnapshot.takeNestedMutableSnapshot(diskLruCache$$ExternalSyntheticLambda0, navController$$ExternalSyntheticLambda3)) == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Cannot create a mutable snapshot of an read-only snapshot");
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
        SVG svg = this.pausedScopes;
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
                MutableScatterSet mutableScatterSet2 = (MutableScatterSet) svg.get();
                if (mutableScatterSet2 == null) {
                    mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
                    mutableScatterSet2.getClass();
                }
                return mutableScatterSet2;
            } finally {
                compositionImpl.shouldPause = shouldPauseCallback2;
            }
        } finally {
            svg.set((Object) null);
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
                    int i2 = mutableScatterSet._size;
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

    public final void registerRunnerJob(Job job) {
        synchronized (this.stateLock) {
            Throwable th = this.closeCause;
            if (th != null) {
                throw th;
            }
            if (((State) this._state.getValue()).compareTo(State.ShuttingDown) <= 0) {
                throw new IllegalStateException("Recomposer shut down");
            }
            if (this.runnerJob != null) {
                throw new IllegalStateException("Recomposer already running");
            }
            this.runnerJob = job;
            if (deriveStateLocked() != null) {
                ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
        SVG svg = this.pausedScopes;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) svg.get();
        if (mutableScatterSet == null) {
            MutableScatterSet mutableScatterSet2 = ScatterSetKt.EmptyScatterSet;
            mutableScatterSet = new MutableScatterSet();
            svg.set(mutableScatterSet);
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

    public final Object runRecomposeAndApplyChanges(SuspendLambda suspendLambda) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this, null);
        CoroutineContext coroutineContext = suspendLambda._context;
        coroutineContext.getClass();
        Object withContext = AwaitKt.withContext(this.broadcastFrameClock, new RealImageLoader$execute$result$1(this, recomposer$runRecomposeAndApplyChanges$2, Updater.getMonotonicFrameClock(coroutineContext), null, 7), suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        Unit unit = Unit.INSTANCE;
        if (withContext != coroutineSingletons) {
            withContext = unit;
        }
        return withContext == coroutineSingletons ? withContext : unit;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final CancellationHandle scheduleFrameEndCallback(LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
        SVG svg = this.nextFrameEndCallbackQueue;
        Request.Builder builder = (Request.Builder) svg.cssRules;
        NextFrameEndCallbackQueue$NextFrameEndAwaiter nextFrameEndCallbackQueue$NextFrameEndAwaiter = new NextFrameEndCallbackQueue$NextFrameEndAwaiter();
        nextFrameEndCallbackQueue$NextFrameEndAwaiter.onNextFrameEnd = layoutNode$_foldedChildren$1;
        return builder.addAwaiter(nextFrameEndCallbackQueue$NextFrameEndAwaiter, (Recomposer$$ExternalSyntheticLambda6) svg.idToElementMap);
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
