package androidx.compose.runtime;

import android.os.Trace;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.MutableSetWrapper;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.FixupList;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.unit.DpKt;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.room.Room;
import androidx.work.OperationKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.uuid.UuidKt;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GapComposer {
    public GapCompositionDataImpl _compositionData;
    public final MutableSetWrapper abandonSet;
    public final AbstractApplier applier;
    public final CoroutineContext applyCoroutineContext;
    public final ComposerChangeListWriter changeListWriter;
    public final ChangeList changes;
    public int childrenComposing;
    public long compositeKeyHashCode;
    public final CompositionImpl composition;
    public int compositionToken;
    public ChangeList deferredChanges;
    public final GapComposer$derivedStateObserver$1 derivedStateObserver;
    public final CompositionErrorContextImpl errorContext;
    public boolean forceRecomposeScopes;
    public int groupNodeCount;
    public GapAnchor insertAnchor;
    public FixupList insertFixups;
    public SlotTable insertTable;
    public boolean inserting;
    public final ArrayList invalidateStack;
    public boolean isComposing;
    public final ChangeList lateChanges;
    public int[] nodeCountOverrides;
    public MutableIntIntMap nodeCountVirtualOverrides;
    public boolean nodeExpected;
    public int nodeIndex;
    public final PopupMenu$1 observerHolder;
    public final CompositionContext parentContext;
    public GapPending pending;
    public PersistentCompositionLocalHashMap providerCache;
    public MutableIntObjectMap providerUpdates;
    public boolean providersInvalid;
    public int rGroupIndex;
    public SlotReader reader;
    public boolean reusing;
    public ShouldPauseCallback shouldPauseCallback;
    public final SlotTable slotTable;
    public boolean sourceMarkersEnabled;
    public SlotWriter writer;
    public boolean writerHasAProvider;
    public final ArrayList pendingStack = new ArrayList();
    public final IntStack parentStateStack = new IntStack();
    public final ArrayList invalidations = new ArrayList();
    public final IntStack entersStack = new IntStack();
    public PersistentCompositionLocalHashMap rootProvider = PersistentCompositionLocalHashMap.Empty;
    public final IntStack providersInvalidStack = new IntStack();
    public int reusingGroup = -1;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CompositionContextImpl extends CompositionContext {
        public final boolean collectingParameterInformation;
        public final boolean collectingSourceInformation;
        public final MutableScatterSet composers;
        public final long compositeKeyHashCode;
        public final ParcelableSnapshotMutableState compositionLocalScope$delegate;
        public HashSet inspectionTables;

        public CompositionContextImpl(long j, boolean z, boolean z2, PopupMenu$1 popupMenu$1) {
            this.compositeKeyHashCode = j;
            this.collectingParameterInformation = z;
            this.collectingSourceInformation = z2;
            MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
            this.composers = new MutableScatterSet();
            this.compositionLocalScope$delegate = new ParcelableSnapshotMutableState(PersistentCompositionLocalHashMap.Empty, NeverEqualPolicy.INSTANCE$1);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void composeInitial$runtime(CompositionImpl compositionImpl, Function2 function2) {
            GapComposer.this.parentContext.composeInitial$runtime(compositionImpl, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final MutableScatterSet composeInitialPaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
            return GapComposer.this.parentContext.composeInitialPaused$runtime(compositionImpl, shouldPauseCallback, function2);
        }

        public final void dispose() {
            MutableScatterSet mutableScatterSet = this.composers;
            if (mutableScatterSet.isNotEmpty()) {
                HashSet hashSet = this.inspectionTables;
                if (hashSet != null) {
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr = mutableScatterSet.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i = 0;
                        while (true) {
                            long j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i2 = 8 - ((~(i - length)) >>> 31);
                                for (int i3 = 0; i3 < i2; i3++) {
                                    if ((255 & j) < 128) {
                                        GapComposer gapComposer = (GapComposer) objArr[(i << 3) + i3];
                                        Iterator it = hashSet.iterator();
                                        while (it.hasNext()) {
                                            ((Set) it.next()).remove(gapComposer.getCompositionData());
                                        }
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
                mutableScatterSet.clear();
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void doneComposing$runtime() {
            GapComposer gapComposer = GapComposer.this;
            gapComposer.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean getCollectingCallByInformation$runtime() {
            return GapComposer.this.parentContext.getCollectingCallByInformation$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean getCollectingParameterInformation$runtime() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean getCollectingSourceInformation$runtime() {
            return this.collectingSourceInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final long getCompositeKeyHashCode$runtime() {
            return this.compositeKeyHashCode;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final Composition getComposition$runtime() {
            return GapComposer.this.composition;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final PersistentCompositionLocalHashMap getCompositionLocalScope$runtime() {
            return (PersistentCompositionLocalHashMap) this.compositionLocalScope$delegate.getValue();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final CoroutineContext getEffectCoroutineContext() {
            return GapComposer.this.parentContext.getEffectCoroutineContext();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean getStackTraceEnabled$runtime() {
            return GapComposer.this.parentContext.getStackTraceEnabled$runtime();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void invalidate$runtime(CompositionImpl compositionImpl) {
            GapComposer gapComposer = GapComposer.this;
            CompositionContext compositionContext = gapComposer.parentContext;
            compositionContext.invalidate$runtime(gapComposer.composition);
            compositionContext.invalidate$runtime(compositionImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
            return GapComposer.this.parentContext.movableContentStateResolve$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final MutableScatterSet recomposePaused$runtime(CompositionImpl compositionImpl, ShouldPauseCallback shouldPauseCallback, MutableScatterSet mutableScatterSet) {
            return GapComposer.this.parentContext.recomposePaused$runtime(compositionImpl, shouldPauseCallback, mutableScatterSet);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void recordInspectionTable$runtime(Set set) {
            HashSet hashSet = this.inspectionTables;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.inspectionTables = hashSet;
            }
            hashSet.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void registerComposer$runtime(GapComposer gapComposer) {
            this.composers.add(gapComposer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
            GapComposer.this.parentContext.reportPausedScope$runtime(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void reportRemovedComposition$runtime(CompositionImpl compositionImpl) {
            GapComposer.this.parentContext.reportRemovedComposition$runtime(compositionImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final CancellationHandle scheduleFrameEndCallback(LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1) {
            return GapComposer.this.parentContext.scheduleFrameEndCallback(layoutNode$_foldedChildren$1);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void startComposing$runtime() {
            GapComposer.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void unregisterComposer$runtime(GapComposer gapComposer) {
            HashSet hashSet = this.inspectionTables;
            if (hashSet != null) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    Set set = (Set) it.next();
                    gapComposer.getClass();
                    set.remove(gapComposer.getCompositionData());
                }
            }
            if (Animation.CC.m23m((Object) gapComposer)) {
                this.composers.remove(gapComposer);
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void unregisterComposition$runtime(CompositionImpl compositionImpl) {
            GapComposer.this.parentContext.unregisterComposition$runtime(compositionImpl);
        }
    }

    public GapComposer(AbstractApplier abstractApplier, CompositionContext compositionContext, SlotTable slotTable, MutableSetWrapper mutableSetWrapper, ChangeList changeList, ChangeList changeList2, PopupMenu$1 popupMenu$1, CompositionImpl compositionImpl) {
        this.applier = abstractApplier;
        this.parentContext = compositionContext;
        this.slotTable = slotTable;
        this.abandonSet = mutableSetWrapper;
        this.changes = changeList;
        this.lateChanges = changeList2;
        this.observerHolder = popupMenu$1;
        this.composition = compositionImpl;
        this.sourceMarkersEnabled = compositionContext.getCollectingSourceInformation$runtime() || compositionContext.getCollectingCallByInformation$runtime();
        this.derivedStateObserver = new GapComposer$derivedStateObserver$1(0, this);
        this.invalidateStack = new ArrayList();
        SlotReader openReader = slotTable.openReader();
        openReader.close();
        this.reader = openReader;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.getCollectingSourceInformation$runtime()) {
            slotTable2.collectSourceInformation();
        }
        if (compositionContext.getCollectingCallByInformation$runtime()) {
            slotTable2.calledByMap = new MutableIntObjectMap();
        }
        this.insertTable = slotTable2;
        SlotWriter openWriter = slotTable2.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
        this.changeListWriter = new ComposerChangeListWriter(this, changeList);
        SlotReader openReader2 = this.insertTable.openReader();
        try {
            GapAnchor anchor = openReader2.anchor(0);
            openReader2.close();
            this.insertAnchor = anchor;
            this.insertFixups = new FixupList();
            this.errorContext = new CompositionErrorContextImpl(this);
            CoroutineContext effectCoroutineContext = compositionContext.getEffectCoroutineContext();
            CoroutineContext errorContext$runtime = getErrorContext$runtime();
            this.applyCoroutineContext = effectCoroutineContext.plus(errorContext$runtime == null ? EmptyCoroutineContext.INSTANCE : errorContext$runtime);
        } catch (Throwable th) {
            openReader2.close();
            throw th;
        }
    }

    public static final int reportFreeMovableContent$reportGroup(GapComposer gapComposer, int i, boolean z, int i2) {
        int i3;
        long[] jArr;
        int i4;
        long[] jArr2;
        int i5;
        int i6;
        SlotReader slotReader;
        SlotReader slotReader2 = gapComposer.reader;
        int i7 = 0;
        if (slotReader2.hasMark(i)) {
            int groupKey = slotReader2.groupKey(i);
            Object objectKey = slotReader2.objectKey(slotReader2.groups, i);
            if (groupKey == 206 && Intrinsics.areEqual(objectKey, ComposerKt.reference)) {
                Object groupGet = slotReader2.groupGet(i, 0);
                GapRememberObserverHolder gapRememberObserverHolder = groupGet instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) groupGet : null;
                Object obj = gapRememberObserverHolder != null ? gapRememberObserverHolder.wrapped : null;
                CompositionContextHolder compositionContextHolder = obj instanceof CompositionContextHolder ? (CompositionContextHolder) obj : null;
                if (compositionContextHolder != null) {
                    MutableScatterSet mutableScatterSet = compositionContextHolder.ref.composers;
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr3 = mutableScatterSet.metadata;
                    int length = jArr3.length - 2;
                    if (length >= 0) {
                        int i8 = 0;
                        while (true) {
                            long j = jArr3[i8];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i9 = 8;
                                int i10 = 8 - ((~(i8 - length)) >>> 31);
                                int i11 = i7;
                                while (i11 < i10) {
                                    if ((255 & j) < 128) {
                                        GapComposer gapComposer2 = (GapComposer) objArr[(i8 << 3) + i11];
                                        SlotTable slotTable = gapComposer2.slotTable;
                                        if (slotTable.groupsSize <= 0 || (slotTable.groups[1] & 67108864) == 0) {
                                            jArr2 = jArr3;
                                            i5 = i7;
                                            i6 = i9;
                                        } else {
                                            CompositionImpl compositionImpl = gapComposer2.composition;
                                            synchronized (compositionImpl.lock) {
                                                compositionImpl.drainPendingModificationsOutOfBandLocked();
                                                i6 = i9;
                                                MutableScatterMap mutableScatterMap = compositionImpl.invalidations;
                                                compositionImpl.invalidations = DpKt.m699constructorimpl$default();
                                                try {
                                                    compositionImpl.composer.m324updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMap);
                                                } finally {
                                                }
                                            }
                                            ChangeList changeList = new ChangeList();
                                            gapComposer2.deferredChanges = changeList;
                                            SlotReader openReader = gapComposer2.slotTable.openReader();
                                            try {
                                                gapComposer2.reader = openReader;
                                                ComposerChangeListWriter composerChangeListWriter = gapComposer2.changeListWriter;
                                                ChangeList changeList2 = composerChangeListWriter.changeList;
                                                try {
                                                    composerChangeListWriter.changeList = changeList;
                                                    gapComposer2.reportFreeMovableContent(0);
                                                    ComposerChangeListWriter composerChangeListWriter2 = gapComposer2.changeListWriter;
                                                    composerChangeListWriter2.pushPendingUpsAndDowns();
                                                    jArr2 = jArr3;
                                                    try {
                                                        if (composerChangeListWriter2.startedGroup) {
                                                            slotReader = openReader;
                                                            try {
                                                                composerChangeListWriter2.changeList.operations.pushOp(Operation.SkipToEndOfCurrentGroup.INSTANCE);
                                                                if (composerChangeListWriter2.startedGroup) {
                                                                    composerChangeListWriter2.realizeOperationLocation(false);
                                                                    composerChangeListWriter2.realizeOperationLocation(false);
                                                                    composerChangeListWriter2.changeList.operations.pushOp(Operation.EndCurrentGroup.INSTANCE);
                                                                    i5 = 0;
                                                                    composerChangeListWriter2.startedGroup = false;
                                                                    composerChangeListWriter.changeList = changeList2;
                                                                    slotReader.close();
                                                                }
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                composerChangeListWriter.changeList = changeList2;
                                                                throw th;
                                                            }
                                                        } else {
                                                            slotReader = openReader;
                                                        }
                                                        composerChangeListWriter.changeList = changeList2;
                                                        slotReader.close();
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        slotReader.close();
                                                        throw th;
                                                    }
                                                    i5 = 0;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    slotReader = openReader;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                slotReader = openReader;
                                            }
                                        }
                                        gapComposer.parentContext.reportRemovedComposition$runtime(gapComposer2.composition);
                                    } else {
                                        jArr2 = jArr3;
                                        i5 = i7;
                                        i6 = i9;
                                    }
                                    j >>= i6;
                                    i11++;
                                    i9 = i6;
                                    i7 = i5;
                                    jArr3 = jArr2;
                                }
                                jArr = jArr3;
                                i4 = i7;
                                if (i10 != i9) {
                                    break;
                                }
                            } else {
                                jArr = jArr3;
                                i4 = i7;
                            }
                            if (i8 == length) {
                                break;
                            }
                            i8++;
                            i7 = i4;
                            jArr3 = jArr;
                        }
                    }
                }
                return slotReader2.nodeCount(i);
            }
            i3 = 1;
            if (!slotReader2.isNode(i)) {
                return slotReader2.nodeCount(i);
            }
        } else {
            i3 = 1;
            if (slotReader2.containsMark(i)) {
                int i12 = slotReader2.groups[(i * 5) + 3] + i;
                int i13 = 0;
                for (int i14 = i + 1; i14 < i12; i14 += slotReader2.groups[(i14 * 5) + 3]) {
                    boolean isNode = slotReader2.isNode(i14);
                    if (isNode) {
                        gapComposer.changeListWriter.realizeNodeMovementOperations();
                        ComposerChangeListWriter composerChangeListWriter3 = gapComposer.changeListWriter;
                        Object node = slotReader2.node(i14);
                        composerChangeListWriter3.realizeNodeMovementOperations();
                        composerChangeListWriter3.pendingDownNodes.add(node);
                    }
                    i13 += reportFreeMovableContent$reportGroup(gapComposer, i14, isNode || z, isNode ? 0 : i2 + i13);
                    if (isNode) {
                        gapComposer.changeListWriter.realizeNodeMovementOperations();
                        gapComposer.changeListWriter.moveUp();
                    }
                }
                if (!slotReader2.isNode(i)) {
                    return i13;
                }
            } else if (!slotReader2.isNode(i)) {
                return slotReader2.nodeCount(i);
            }
        }
        return i3;
    }

    public final void abortRoot() {
        cleanUpCompose();
        this.pendingStack.clear();
        this.parentStateStack.tos = 0;
        this.entersStack.tos = 0;
        this.providersInvalidStack.tos = 0;
        this.providerUpdates = null;
        FixupList fixupList = this.insertFixups;
        fixupList.pendingOperations.clear();
        fixupList.operations.clear();
        this.compositeKeyHashCode = 0L;
        this.childrenComposing = 0;
        this.nodeExpected = false;
        this.inserting = false;
        this.reusing = false;
        this.isComposing = false;
        this.reusingGroup = -1;
        SlotReader slotReader = this.reader;
        if (!slotReader.closed) {
            slotReader.close();
        }
        if (this.writer.closed) {
            return;
        }
        forceFreshInsertTable();
    }

    public final void apply(Object obj, Function2 function2) {
        if (this.inserting) {
            Operations operations = this.insertFixups.operations;
            operations.pushOp(Operation.UpdateNode.INSTANCE);
            UnsignedKt.m826setObjectsGr0YRc(operations, 0, obj);
            function2.getClass();
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            UnsignedKt.m826setObjectsGr0YRc(operations, 1, function2);
            return;
        }
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.pushPendingUpsAndDowns();
        Operations operations2 = composerChangeListWriter.changeList.operations;
        operations2.pushOp(Operation.UpdateNode.INSTANCE);
        function2.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        UnsignedKt.m827setObjectsEsEZvaA(operations2, 0, obj, 1, function2);
    }

    public final boolean changed(float f) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Float) && f == ((Number) nextSlot).floatValue()) {
            return false;
        }
        updateValue(Float.valueOf(f));
        return true;
    }

    public final boolean changedInstance(Object obj) {
        if (nextSlot() == obj) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    public final void cleanUpCompose() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.compositeKeyHashCode = 0L;
        this.nodeExpected = false;
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.startedGroup = false;
        composerChangeListWriter.startedGroups.tos = 0;
        composerChangeListWriter.writersReaderDelta = 0;
        composerChangeListWriter.implicitRootStart = true;
        composerChangeListWriter.pendingUps = 0;
        composerChangeListWriter.pendingDownNodes.clear();
        composerChangeListWriter.removeFrom = -1;
        composerChangeListWriter.moveFrom = -1;
        composerChangeListWriter.moveTo = -1;
        composerChangeListWriter.moveCount = 0;
        this.invalidateStack.clear();
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    public final Object consume(ProvidableCompositionLocal providableCompositionLocal) {
        return Updater.read(currentCompositionLocalScope(), providableCompositionLocal);
    }

    public final void createNode(Function0 function0) {
        if (!this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.nodeExpected = false;
        if (!this.inserting) {
            ComposerKt.composeImmediateRuntimeError("createNode() can only be called when inserting");
        }
        IntStack intStack = this.parentStateStack;
        int i = intStack.slots[intStack.tos - 1];
        SlotWriter slotWriter = this.writer;
        GapAnchor anchor = slotWriter.anchor(slotWriter.parent);
        this.groupNodeCount++;
        FixupList fixupList = this.insertFixups;
        Operations operations = fixupList.operations;
        operations.pushOp(Operation.UpdateValue.INSTANCE$1);
        UnsignedKt.m826setObjectsGr0YRc(operations, 0, function0);
        operations.intArgs[operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].ints] = i;
        UnsignedKt.m826setObjectsGr0YRc(operations, 1, anchor);
        Operations operations2 = fixupList.pendingOperations;
        operations2.pushOp(Operation.UpdateValue.INSTANCE$2);
        operations2.intArgs[operations2.intArgsSize - operations2.opCodes[operations2.opCodesSize - 1].ints] = i;
        UnsignedKt.m826setObjectsGr0YRc(operations2, 0, anchor);
    }

    public final PersistentCompositionLocalHashMap currentCompositionLocalScope() {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = this.providerCache;
        if (persistentCompositionLocalHashMap2 != null) {
            return persistentCompositionLocalHashMap2;
        }
        int i = this.reader.parent;
        boolean z = this.inserting;
        OpaqueKey opaqueKey = ComposerKt.compositionLocalMap;
        if (z && this.writerHasAProvider) {
            int i2 = this.writer.parent;
            while (i2 > 0) {
                if (this.writer.groupKey(i2) == 202 && Intrinsics.areEqual(this.writer.groupObjectKey(i2), opaqueKey)) {
                    Object groupAux = this.writer.groupAux(i2);
                    groupAux.getClass();
                    PersistentCompositionLocalHashMap persistentCompositionLocalHashMap3 = (PersistentCompositionLocalHashMap) groupAux;
                    this.providerCache = persistentCompositionLocalHashMap3;
                    return persistentCompositionLocalHashMap3;
                }
                SlotWriter slotWriter = this.writer;
                i2 = slotWriter.parent(slotWriter.groups, i2);
            }
        }
        if (this.reader.groupsSize > 0) {
            while (i > 0) {
                if (this.reader.groupKey(i) == 202) {
                    SlotReader slotReader = this.reader;
                    if (Intrinsics.areEqual(slotReader.objectKey(slotReader.groups, i), opaqueKey)) {
                        MutableIntObjectMap mutableIntObjectMap = this.providerUpdates;
                        if (mutableIntObjectMap == null || (persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) mutableIntObjectMap.get(i)) == null) {
                            SlotReader slotReader2 = this.reader;
                            Object aux = slotReader2.aux(slotReader2.groups, i);
                            aux.getClass();
                            persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) aux;
                        }
                        this.providerCache = persistentCompositionLocalHashMap;
                        return persistentCompositionLocalHashMap;
                    }
                }
                i = this.reader.parent(i);
            }
        }
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap4 = this.rootProvider;
        this.providerCache = persistentCompositionLocalHashMap4;
        return persistentCompositionLocalHashMap4;
    }

    public final ComposeStackTrace currentStackTrace() {
        Collection collection;
        if (!this.parentContext.getStackTraceEnabled$runtime()) {
            return null;
        }
        ListBuilder createListBuilder = Room.createListBuilder();
        SlotWriter slotWriter = this.writer;
        createListBuilder.addAll(UuidKt.buildTrace(slotWriter, null, slotWriter.currentGroup, null));
        SlotReader slotReader = this.reader;
        boolean z = slotReader.closed;
        int[] iArr = slotReader.groups;
        if (z || slotReader.groupsSize == 0) {
            collection = EmptyList.INSTANCE;
        } else {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int i = slotReader.parent;
            Object valueOf = Integer.valueOf(slotReader.currentSlot - SlotTableKt.slotAnchor(iArr, i));
            while (i >= 0) {
                readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.objectKey(iArr, i) : Composer$Companion.Empty, slotReader.table.sourceInformationOf(i), valueOf);
                valueOf = slotReader.anchor(i);
                i = slotReader.parent(i);
            }
            collection = readerTraceBuilder._trace;
        }
        createListBuilder.addAll(collection);
        createListBuilder.addAll(parentStackTrace$runtime());
        return new ComposeStackTrace(Room.build(createListBuilder), this.sourceMarkersEnabled);
    }

    /* renamed from: doCompose-aFTiNEg, reason: not valid java name */
    public final void m322doComposeaFTiNEg(MutableScatterMap mutableScatterMap, Function2 function2) {
        ArrayList arrayList = this.invalidations;
        if (this.isComposing) {
            ComposerKt.composeImmediateRuntimeError("Reentrant composition is not supported");
        }
        this.observerHolder.current();
        Trace.beginSection("Compose:recompose");
        try {
            long snapshotId = SnapshotKt.currentSnapshot().getSnapshotId();
            this.compositionToken = (int) (snapshotId ^ (snapshotId >>> 32));
            this.providerUpdates = null;
            m324updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMap);
            this.nodeIndex = 0;
            this.isComposing = true;
            try {
                startRoot();
                Object nextSlot = nextSlot();
                if (nextSlot != function2 && function2 != null) {
                    updateValue(function2);
                }
                GapComposer$derivedStateObserver$1 gapComposer$derivedStateObserver$1 = this.derivedStateObserver;
                MutableVector derivedStateObservers = SnapshotStateKt__DerivedStateKt.derivedStateObservers();
                try {
                    derivedStateObservers.add(gapComposer$derivedStateObserver$1);
                    OpaqueKey opaqueKey = ComposerKt.invocation;
                    if (function2 != null) {
                        startGroup(200, opaqueKey);
                        Expect_jvmKt.invokeComposable(this, function2);
                        end(false);
                    } else if (!this.providersInvalid || nextSlot == null || nextSlot.equals(Composer$Companion.Empty)) {
                        skipCurrentGroup();
                    } else {
                        startGroup(200, opaqueKey);
                        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, nextSlot);
                        Expect_jvmKt.invokeComposable(this, (Function2) nextSlot);
                        end(false);
                    }
                    derivedStateObservers.removeAt(derivedStateObservers.size - 1);
                    endRoot();
                    this.isComposing = false;
                    arrayList.clear();
                    if (!this.writer.closed) {
                        ComposerKt.composeImmediateRuntimeError("Check failed");
                    }
                    forceFreshInsertTable();
                } catch (Throwable th) {
                    derivedStateObservers.removeAt(derivedStateObservers.size - 1);
                    throw th;
                }
            } finally {
            }
        } finally {
            Trace.endSection();
        }
    }

    public final void doRecordDownsFor(int i, int i2) {
        if (i <= 0 || i == i2) {
            return;
        }
        doRecordDownsFor(this.reader.parent(i), i2);
        if (this.reader.isNode(i)) {
            Object node = this.reader.node(i);
            ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
            composerChangeListWriter.realizeNodeMovementOperations();
            composerChangeListWriter.pendingDownNodes.add(node);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05b2  */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v29, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void end(boolean r43) {
        /*
            Method dump skipped, instructions count: 1608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.end(boolean):void");
    }

    public final void endDefaults() {
        end(false);
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null) {
            int i = currentRecomposeScope$runtime.flags;
            if ((i & 1) != 0) {
                currentRecomposeScope$runtime.flags = i | 2;
            }
        }
    }

    public final void endNode() {
        end(true);
    }

    public final void endReplaceGroup() {
        end(false);
    }

    public final RecomposeScopeImpl endRestartGroup() {
        RecomposeScopeImpl recomposeScopeImpl;
        GapAnchor anchor;
        ScrollNode$$ExternalSyntheticLambda0 scrollNode$$ExternalSyntheticLambda0;
        ArrayList arrayList = this.invalidateStack;
        RecomposeScopeImpl recomposeScopeImpl2 = !arrayList.isEmpty() ? (RecomposeScopeImpl) arrayList.remove(arrayList.size() - 1) : null;
        if (recomposeScopeImpl2 != null) {
            recomposeScopeImpl2.flags &= -9;
            this.observerHolder.current();
            int i = this.compositionToken;
            MutableObjectIntMap mutableObjectIntMap = recomposeScopeImpl2.trackedInstances;
            if (mutableObjectIntMap != null && (recomposeScopeImpl2.flags & 16) == 0) {
                Object[] objArr = mutableObjectIntMap.keys;
                int[] iArr = mutableObjectIntMap.values;
                long[] jArr = mutableObjectIntMap.metadata;
                int i2 = 2;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    loop0: while (true) {
                        long j = jArr[i3];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((j & 255) < 128) {
                                    int i6 = (i3 << 3) + i5;
                                    Object obj = objArr[i6];
                                    if (iArr[i6] != i) {
                                        scrollNode$$ExternalSyntheticLambda0 = new ScrollNode$$ExternalSyntheticLambda0(recomposeScopeImpl2, i, mutableObjectIntMap, i2);
                                        break loop0;
                                    }
                                }
                                j >>= 8;
                            }
                            if (i4 != 8) {
                                break;
                            }
                        }
                        if (i3 == length) {
                            break;
                        }
                        i3++;
                    }
                }
            }
            scrollNode$$ExternalSyntheticLambda0 = null;
            ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
            if (scrollNode$$ExternalSyntheticLambda0 != null) {
                Operations operations = composerChangeListWriter.changeList.operations;
                operations.pushOp(Operation.EndCompositionScope.INSTANCE);
                UnsignedKt.m827setObjectsEsEZvaA(operations, 0, scrollNode$$ExternalSyntheticLambda0, 1, this.composition);
            }
            int i7 = recomposeScopeImpl2.flags;
            if ((i7 & 512) != 0) {
                recomposeScopeImpl2.flags = i7 & (-513);
                Operations operations2 = composerChangeListWriter.changeList.operations;
                operations2.pushOp(Operation.EndResumingScope.INSTANCE);
                UnsignedKt.m826setObjectsGr0YRc(operations2, 0, recomposeScopeImpl2);
                int i8 = recomposeScopeImpl2.flags;
                recomposeScopeImpl2.flags = i8 & (-129);
                if ((i8 & 1024) != 0) {
                    recomposeScopeImpl2.flags = i8 & (-1153);
                    if (this.reusingGroup == this.reader.parent) {
                        this.reusing = false;
                        this.reusingGroup = -1;
                    }
                }
            }
        }
        if (recomposeScopeImpl2 != null) {
            int i9 = recomposeScopeImpl2.flags;
            if ((i9 & 16) == 0 && ((i9 & 1) != 0 || this.forceRecomposeScopes)) {
                if (recomposeScopeImpl2.anchor == null) {
                    if (this.inserting) {
                        SlotWriter slotWriter = this.writer;
                        anchor = slotWriter.anchor(slotWriter.parent);
                    } else {
                        SlotReader slotReader = this.reader;
                        anchor = slotReader.anchor(slotReader.parent);
                    }
                    recomposeScopeImpl2.anchor = anchor;
                }
                recomposeScopeImpl2.flags &= -5;
                recomposeScopeImpl = recomposeScopeImpl2;
                end(false);
                return recomposeScopeImpl;
            }
        }
        recomposeScopeImpl = null;
        end(false);
        return recomposeScopeImpl;
    }

    public final void endReuseFromRoot$runtime() {
        if (this.isComposing || this.reusingGroup != 0) {
            PreconditionsKt.throwIllegalArgumentException("Cannot disable reuse from root if it was caused by other groups");
        }
        this.reusingGroup = -1;
        this.reusing = false;
    }

    public final void endRoot() {
        end(false);
        this.parentContext.doneComposing$runtime();
        end(false);
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (composerChangeListWriter.startedGroup) {
            composerChangeListWriter.realizeOperationLocation(false);
            composerChangeListWriter.realizeOperationLocation(false);
            composerChangeListWriter.changeList.operations.pushOp(Operation.EndCurrentGroup.INSTANCE);
            composerChangeListWriter.startedGroup = false;
        }
        composerChangeListWriter.pushPendingUpsAndDowns();
        if (composerChangeListWriter.startedGroups.tos != 0) {
            ComposerKt.composeImmediateRuntimeError("Missed recording an endGroup()");
        }
        if (!this.pendingStack.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Start/end imbalance");
        }
        cleanUpCompose();
        this.reader.close();
        this.providersInvalid = this.providersInvalidStack.pop() != 0;
    }

    public final void enterGroup(boolean z, GapPending gapPending) {
        this.pendingStack.add(this.pending);
        this.pending = gapPending;
        int i = this.groupNodeCount;
        IntStack intStack = this.parentStateStack;
        intStack.push(i);
        intStack.push(this.rGroupIndex);
        intStack.push(this.nodeIndex);
        if (z) {
            this.nodeIndex = 0;
        }
        this.groupNodeCount = 0;
        this.rGroupIndex = 0;
    }

    public final void forceFreshInsertTable() {
        SlotTable slotTable = new SlotTable();
        if (this.sourceMarkersEnabled) {
            slotTable.collectSourceInformation();
        }
        if (this.parentContext.getCollectingCallByInformation$runtime()) {
            slotTable.calledByMap = new MutableIntObjectMap();
        }
        this.insertTable = slotTable;
        SlotWriter openWriter = slotTable.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
    }

    public final Applier getApplier() {
        return this.applier;
    }

    public final CompositionData getCompositionData() {
        GapCompositionDataImpl gapCompositionDataImpl = this._compositionData;
        if (gapCompositionDataImpl != null) {
            return gapCompositionDataImpl;
        }
        GapCompositionDataImpl gapCompositionDataImpl2 = new GapCompositionDataImpl(this.composition);
        this._compositionData = gapCompositionDataImpl2;
        return gapCompositionDataImpl2;
    }

    public final PersistentCompositionLocalHashMap getCurrentCompositionLocalMap() {
        return currentCompositionLocalScope();
    }

    public final RecomposeScopeImpl getCurrentRecomposeScope$runtime() {
        if (this.childrenComposing != 0) {
            return null;
        }
        ArrayList arrayList = this.invalidateStack;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (RecomposeScopeImpl) Animation.CC.m(1, arrayList);
    }

    public final boolean getDefaultsInvalid() {
        if (!getSkipping() || this.providersInvalid) {
            return true;
        }
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        return (currentRecomposeScope$runtime == null || (currentRecomposeScope$runtime.flags & 4) == 0) ? false : true;
    }

    public final CompositionErrorContextImpl getErrorContext$runtime() {
        if (this.parentContext.getStackTraceEnabled$runtime()) {
            return this.errorContext;
        }
        return null;
    }

    public final boolean getInserting() {
        return this.inserting;
    }

    public final boolean getSkipping() {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        return (this.inserting || this.reusing || this.providersInvalid || (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) == null || (currentRecomposeScope$runtime.flags & 8) != 0) ? false : true;
    }

    public final void insertMovableContentGuarded(ArrayList arrayList) {
        GapComposer gapComposer = this;
        ChangeList changeList = gapComposer.lateChanges;
        ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
        ChangeList changeList2 = composerChangeListWriter.changeList;
        try {
            composerChangeListWriter.changeList = changeList;
            changeList.operations.pushOp(Operation.ResetSlots.INSTANCE);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Pair pair = (Pair) arrayList.get(i);
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) pair.first;
                movableContentStateReference.getClass();
                GapAnchor asGapAnchor = OperationKt.asGapAnchor(null);
                SlotTable asGapBufferSlotTable = SlotTableKt.asGapBufferSlotTable(null);
                int anchorIndex = asGapBufferSlotTable.anchorIndex(asGapAnchor);
                IntRef intRef = new IntRef();
                composerChangeListWriter.pushPendingUpsAndDowns();
                Operations operations = composerChangeListWriter.changeList.operations;
                operations.pushOp(Operation.DetermineMovableContentNodeIndex.INSTANCE);
                UnsignedKt.m827setObjectsEsEZvaA(operations, 0, intRef, 1, asGapAnchor);
                if (asGapBufferSlotTable == gapComposer.insertTable) {
                    if (!gapComposer.writer.closed) {
                        ComposerKt.composeImmediateRuntimeError("Check failed");
                    }
                    gapComposer.forceFreshInsertTable();
                }
                SlotReader openReader = asGapBufferSlotTable.openReader();
                try {
                    openReader.reposition(anchorIndex);
                    composerChangeListWriter.writersReaderDelta = anchorIndex;
                    ChangeList changeList3 = new ChangeList();
                    gapComposer.recomposeMovableContent(null, null, null, EmptyList.INSTANCE, new HomeScreenKt$$ExternalSyntheticLambda29(gapComposer, changeList3, openReader, movableContentStateReference));
                    ChangeList changeList4 = composerChangeListWriter.changeList;
                    changeList4.getClass();
                    if (!changeList3.operations.isEmpty()) {
                        Operations operations2 = changeList4.operations;
                        operations2.pushOp(Operation.ApplyChangeList.INSTANCE);
                        UnsignedKt.m827setObjectsEsEZvaA(operations2, 0, changeList3, 1, intRef);
                    }
                    openReader.close();
                    composerChangeListWriter.changeList.operations.pushOp(Operation.SkipToEndOfCurrentGroup.INSTANCE);
                    i++;
                    gapComposer = this;
                } catch (Throwable th) {
                    openReader.close();
                    throw th;
                }
            }
            composerChangeListWriter.pushPendingUpsAndDowns();
            composerChangeListWriter.changeList.operations.pushOp(Operation.EndMovableContentPlacement.INSTANCE);
            composerChangeListWriter.writersReaderDelta = 0;
            composerChangeListWriter.changeList = changeList2;
        } catch (Throwable th2) {
            composerChangeListWriter.changeList = changeList2;
            throw th2;
        }
    }

    public final void invokeMovableContentLambda(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, Object obj) {
        startMovableGroup(126665345, null);
        nextSlot();
        updateValue(obj);
        long j = this.compositeKeyHashCode;
        try {
            this.compositeKeyHashCode = 126665345L;
            if (this.inserting) {
                SlotWriter.markGroup$default(this.writer);
            }
            boolean z = (this.inserting || Intrinsics.areEqual(this.reader.getGroupAux(), persistentCompositionLocalHashMap)) ? false : true;
            if (z) {
                recordProviderUpdate(persistentCompositionLocalHashMap);
            }
            m323startAzEfcrM(ComposerKt.compositionLocalMap, 202, persistentCompositionLocalHashMap, 0);
            this.providerCache = null;
            boolean z2 = this.providersInvalid;
            this.providersInvalid = z;
            Expect_jvmKt.invokeComposable(this, new ComposableLambdaImpl(new HintHandler$$ExternalSyntheticLambda0(18, obj), true, -59194059));
            this.providersInvalid = z2;
        } finally {
        }
    }

    public final Object nextSlot() {
        boolean z = this.inserting;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (!z) {
            Object next = this.reader.next();
            if (!this.reusing || (next instanceof ReusableGapRememberObserverHolder)) {
                return next;
            }
        } else if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
            return neverEqualPolicy;
        }
        return neverEqualPolicy;
    }

    public final List parentStackTrace$runtime() {
        CompositionContext compositionContext = this.parentContext;
        Composition composition$runtime = compositionContext.getComposition$runtime();
        CompositionImpl compositionImpl = Animation.CC.m23m((Object) composition$runtime) ? (CompositionImpl) composition$runtime : null;
        if (compositionImpl != null) {
            SlotTable slotTable = compositionImpl.slotStorage;
            SlotReader openReader = SlotTableKt.asGapBufferSlotTable(slotTable).openReader();
            try {
                Integer findSubcompositionContextGroup$lambda$0$scanGroup = UuidKt.findSubcompositionContextGroup$lambda$0$scanGroup(openReader, compositionContext, 0, openReader.groupsSize);
                if (findSubcompositionContextGroup$lambda$0$scanGroup != null) {
                    openReader = SlotTableKt.asGapBufferSlotTable(slotTable).openReader();
                    try {
                        ArrayList traceForGroup = UuidKt.traceForGroup(openReader, findSubcompositionContextGroup$lambda$0$scanGroup.intValue(), 0);
                        openReader.close();
                        return CollectionsKt.plus((Collection) traceForGroup, (Iterable) compositionImpl.composer.parentStackTrace$runtime());
                    } finally {
                    }
                }
            } finally {
            }
        }
        return EmptyList.INSTANCE;
    }

    public final int rGroupIndexOf(int i) {
        int parent = this.reader.parent(i) + 1;
        int i2 = 0;
        while (parent < i) {
            if (!this.reader.hasObjectKey(parent)) {
                i2++;
            }
            parent += this.reader.groups[(parent * 5) + 3];
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if (r10 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object recomposeMovableContent(androidx.compose.runtime.CompositionImpl r9, androidx.compose.runtime.CompositionImpl r10, java.lang.Integer r11, java.util.List r12, kotlin.jvm.functions.Function0 r13) {
        /*
            r8 = this;
            boolean r0 = r8.isComposing
            int r1 = r8.nodeIndex
            r2 = 1
            r8.isComposing = r2     // Catch: java.lang.Throwable -> L24
            r2 = 0
            r8.nodeIndex = r2     // Catch: java.lang.Throwable -> L24
            int r3 = r12.size()     // Catch: java.lang.Throwable -> L24
            r4 = r2
        Lf:
            r5 = 0
            if (r4 >= r3) goto L2c
            java.lang.Object r6 = r12.get(r4)     // Catch: java.lang.Throwable -> L24
            kotlin.Pair r6 = (kotlin.Pair) r6     // Catch: java.lang.Throwable -> L24
            java.lang.Object r7 = r6.first     // Catch: java.lang.Throwable -> L24
            androidx.compose.runtime.RecomposeScopeImpl r7 = (androidx.compose.runtime.RecomposeScopeImpl) r7     // Catch: java.lang.Throwable -> L24
            java.lang.Object r6 = r6.second     // Catch: java.lang.Throwable -> L24
            if (r6 == 0) goto L26
            r8.tryImminentInvalidation$runtime(r7, r6)     // Catch: java.lang.Throwable -> L24
            goto L29
        L24:
            r9 = move-exception
            goto L5e
        L26:
            r8.tryImminentInvalidation$runtime(r7, r5)     // Catch: java.lang.Throwable -> L24
        L29:
            int r4 = r4 + 1
            goto Lf
        L2c:
            if (r9 == 0) goto L55
            if (r11 == 0) goto L35
            int r11 = r11.intValue()     // Catch: java.lang.Throwable -> L24
            goto L36
        L35:
            r11 = -1
        L36:
            if (r10 == 0) goto L4f
            if (r10 == r9) goto L4f
            if (r11 < 0) goto L4f
            r9.invalidationDelegate = r10     // Catch: java.lang.Throwable -> L24
            r9.invalidationDelegateGroup = r11     // Catch: java.lang.Throwable -> L24
            java.lang.Object r10 = r13.invoke()     // Catch: java.lang.Throwable -> L49
            r9.invalidationDelegate = r5     // Catch: java.lang.Throwable -> L24
            r9.invalidationDelegateGroup = r2     // Catch: java.lang.Throwable -> L24
            goto L53
        L49:
            r10 = move-exception
            r9.invalidationDelegate = r5     // Catch: java.lang.Throwable -> L24
            r9.invalidationDelegateGroup = r2     // Catch: java.lang.Throwable -> L24
            throw r10     // Catch: java.lang.Throwable -> L24
        L4f:
            java.lang.Object r10 = r13.invoke()     // Catch: java.lang.Throwable -> L24
        L53:
            if (r10 != 0) goto L59
        L55:
            java.lang.Object r10 = r13.invoke()     // Catch: java.lang.Throwable -> L24
        L59:
            r8.isComposing = r0
            r8.nodeIndex = r1
            return r10
        L5e:
            r8.isComposing = r0
            r8.nodeIndex = r1
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.recomposeMovableContent(androidx.compose.runtime.CompositionImpl, androidx.compose.runtime.CompositionImpl, java.lang.Integer, java.util.List, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x003b, code lost:
    
        if (r4.location < r6) goto L11;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0339  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recomposeToGroupEnd() {
        /*
            Method dump skipped, instructions count: 887
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.recomposeToGroupEnd():void");
    }

    public final void recordDelete() {
        int i;
        reportFreeMovableContent(this.reader.currentGroup);
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.realizeOperationLocation(false);
        IntStack intStack = composerChangeListWriter.startedGroups;
        GapComposer gapComposer = composerChangeListWriter.composer;
        SlotReader slotReader = gapComposer.reader;
        if (slotReader.groupsSize > 0 && intStack.peekOr(-2) != (i = slotReader.parent)) {
            if (!composerChangeListWriter.startedGroup && composerChangeListWriter.implicitRootStart) {
                composerChangeListWriter.realizeOperationLocation(false);
                composerChangeListWriter.changeList.operations.pushOp(Operation.EnsureRootGroupStarted.INSTANCE);
                composerChangeListWriter.startedGroup = true;
            }
            if (i > 0) {
                GapAnchor anchor = slotReader.anchor(i);
                intStack.push(i);
                composerChangeListWriter.realizeOperationLocation(false);
                Operations operations = composerChangeListWriter.changeList.operations;
                operations.pushOp(Operation.EnsureGroupStarted.INSTANCE);
                UnsignedKt.m826setObjectsGr0YRc(operations, 0, anchor);
                composerChangeListWriter.startedGroup = true;
            }
        }
        composerChangeListWriter.changeList.operations.pushOp(Operation.RemoveCurrentGroup.INSTANCE);
        int i2 = composerChangeListWriter.writersReaderDelta;
        SlotReader slotReader2 = gapComposer.reader;
        composerChangeListWriter.writersReaderDelta = slotReader2.groups[(slotReader2.currentGroup * 5) + 3] + i2;
    }

    public final void recordProviderUpdate(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        MutableIntObjectMap mutableIntObjectMap = this.providerUpdates;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap();
            this.providerUpdates = mutableIntObjectMap;
        }
        mutableIntObjectMap.set(this.reader.currentGroup, persistentCompositionLocalHashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recordUpsAndDowns(int r7, int r8, int r9) {
        /*
            r6 = this;
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r6.reader
            if (r7 != r8) goto L5
            goto L1a
        L5:
            if (r7 == r9) goto L6b
            if (r8 != r9) goto Lb
            goto L6b
        Lb:
            int r1 = r0.parent(r7)
            if (r1 != r8) goto L14
            r9 = r8
            goto L6b
        L14:
            int r1 = r0.parent(r8)
            if (r1 != r7) goto L1c
        L1a:
            r9 = r7
            goto L6b
        L1c:
            int r1 = r0.parent(r7)
            int r2 = r0.parent(r8)
            if (r1 != r2) goto L2b
            int r9 = r0.parent(r7)
            goto L6b
        L2b:
            r1 = 0
            r2 = r7
            r3 = r1
        L2e:
            if (r2 <= 0) goto L39
            if (r2 == r9) goto L39
            int r2 = r0.parent(r2)
            int r3 = r3 + 1
            goto L2e
        L39:
            r2 = r8
            r4 = r1
        L3b:
            if (r2 <= 0) goto L46
            if (r2 == r9) goto L46
            int r2 = r0.parent(r2)
            int r4 = r4 + 1
            goto L3b
        L46:
            int r9 = r3 - r4
            r5 = r7
            r2 = r1
        L4a:
            if (r2 >= r9) goto L53
            int r5 = r0.parent(r5)
            int r2 = r2 + 1
            goto L4a
        L53:
            int r4 = r4 - r3
            r9 = r8
        L55:
            if (r1 >= r4) goto L5e
            int r9 = r0.parent(r9)
            int r1 = r1 + 1
            goto L55
        L5e:
            r1 = r9
            r9 = r5
        L60:
            if (r9 == r1) goto L6b
            int r9 = r0.parent(r9)
            int r1 = r0.parent(r1)
            goto L60
        L6b:
            if (r7 <= 0) goto L7f
            if (r7 == r9) goto L7f
            boolean r1 = r0.isNode(r7)
            if (r1 == 0) goto L7a
            androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter r1 = r6.changeListWriter
            r1.moveUp()
        L7a:
            int r7 = r0.parent(r7)
            goto L6b
        L7f:
            r6.doRecordDownsFor(r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.recordUpsAndDowns(int, int, int):void");
    }

    public final Object rememberedValue() {
        boolean z = this.inserting;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (!z) {
            Object next = this.reader.next();
            if (!this.reusing || (next instanceof ReusableGapRememberObserverHolder)) {
                return next instanceof GapRememberObserverHolder ? ((GapRememberObserverHolder) next).wrapped : next;
            }
        } else if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
            return neverEqualPolicy;
        }
        return neverEqualPolicy;
    }

    public final void reportFreeMovableContent(int i) {
        boolean isNode = this.reader.isNode(i);
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (isNode) {
            composerChangeListWriter.realizeNodeMovementOperations();
            Object node = this.reader.node(i);
            composerChangeListWriter.realizeNodeMovementOperations();
            composerChangeListWriter.pendingDownNodes.add(node);
        }
        reportFreeMovableContent$reportGroup(this, i, isNode, 0);
        composerChangeListWriter.realizeNodeMovementOperations();
        if (isNode) {
            composerChangeListWriter.moveUp();
        }
    }

    public final boolean shouldExecute(int i, boolean z) {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        if ((i & 1) == 0 && (this.inserting || this.reusing)) {
            ShouldPauseCallback shouldPauseCallback = this.shouldPauseCallback;
            if (shouldPauseCallback != null && (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) != null && shouldPauseCallback.shouldPause()) {
                int i2 = currentRecomposeScope$runtime.flags;
                if ((i2 & 512) != 0) {
                    return true;
                }
                int i3 = i2 | 1;
                currentRecomposeScope$runtime.flags = i3;
                currentRecomposeScope$runtime.flags = (this.reusing ? i2 | 129 : i3 & (-129)) | 256;
                Operations operations = this.changeListWriter.changeList.operations;
                operations.pushOp(Operation.RememberPausingScope.INSTANCE);
                UnsignedKt.m826setObjectsGr0YRc(operations, 0, currentRecomposeScope$runtime);
                this.parentContext.reportPausedScope$runtime(currentRecomposeScope$runtime);
                return false;
            }
        } else if (!z && getSkipping()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void skipCurrentGroup() {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.skipCurrentGroup():void");
    }

    public final void skipReaderToGroupEnd() {
        SlotReader slotReader = this.reader;
        int i = slotReader.parent;
        this.groupNodeCount = i >= 0 ? slotReader.groups[(i * 5) + 1] & 67108863 : 0;
        slotReader.skipToGroupEnd();
    }

    public final void skipToGroupEnd() {
        if (this.groupNodeCount != 0) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (this.inserting) {
            return;
        }
        RecomposeScopeImpl currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime();
        if (currentRecomposeScope$runtime != null) {
            int i = currentRecomposeScope$runtime.flags;
            if ((i & 128) == 0) {
                currentRecomposeScope$runtime.flags = i | 16;
            }
        }
        if (this.invalidations.isEmpty()) {
            skipReaderToGroupEnd();
        } else {
            recomposeToGroupEnd();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014c  */
    /* renamed from: start-AzEfcrM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m323startAzEfcrM(java.lang.Object r29, int r30, java.lang.Object r31, int r32) {
        /*
            Method dump skipped, instructions count: 937
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.m323startAzEfcrM(java.lang.Object, int, java.lang.Object, int):void");
    }

    public final void startDefaults() {
        m323startAzEfcrM(null, -127, null, 0);
    }

    public final void startGroup(int i, OpaqueKey opaqueKey) {
        m323startAzEfcrM(opaqueKey, i, null, 0);
    }

    public final void startMovableGroup(int i, Object obj) {
        m323startAzEfcrM(obj, i, null, 0);
    }

    public final void startNode() {
        m323startAzEfcrM(null, 125, null, 1);
        this.nodeExpected = true;
    }

    public final void startReaderGroup(Object obj, boolean z) {
        if (z) {
            SlotReader slotReader = this.reader;
            if (slotReader.emptyCount <= 0) {
                if ((slotReader.groups[(slotReader.currentGroup * 5) + 1] & 1073741824) == 0) {
                    PreconditionsKt.throwIllegalArgumentException("Expected a node group");
                }
                slotReader.startGroup();
                return;
            }
            return;
        }
        if (obj != null && this.reader.getGroupAux() != obj) {
            ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
            composerChangeListWriter.getClass();
            composerChangeListWriter.realizeOperationLocation(false);
            Operations operations = composerChangeListWriter.changeList.operations;
            operations.pushOp(Operation.UpdateAuxData.INSTANCE);
            UnsignedKt.m826setObjectsGr0YRc(operations, 0, obj);
        }
        this.reader.startGroup();
    }

    public final void startReplaceGroup(int i) {
        int i2;
        int i3;
        if (this.pending != null) {
            m323startAzEfcrM(null, i, null, 0);
            return;
        }
        if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
        }
        this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(this.compositeKeyHashCode, 3) ^ i, 3) ^ this.rGroupIndex;
        this.rGroupIndex++;
        SlotReader slotReader = this.reader;
        boolean z = this.inserting;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (z) {
            slotReader.emptyCount++;
            this.writer.startGroup(i, neverEqualPolicy, neverEqualPolicy, false);
            enterGroup(false, null);
            return;
        }
        if (slotReader.getGroupKey() == i && ((i3 = slotReader.currentGroup) >= slotReader.currentEnd || (slotReader.groups[(i3 * 5) + 1] & 536870912) == 0)) {
            slotReader.startGroup();
            enterGroup(false, null);
            return;
        }
        if (slotReader.emptyCount <= 0 && (i2 = slotReader.currentGroup) != slotReader.currentEnd) {
            int i4 = this.nodeIndex;
            recordDelete();
            this.changeListWriter.removeNode(i4, slotReader.skipGroup());
            Updater.removeRange(i2, slotReader.currentGroup, this.invalidations);
        }
        slotReader.emptyCount++;
        this.inserting = true;
        this.providerCache = null;
        if (this.writer.closed) {
            SlotWriter openWriter = this.insertTable.openWriter();
            this.writer = openWriter;
            openWriter.skipToGroupEnd();
            this.writerHasAProvider = false;
            this.providerCache = null;
        }
        SlotWriter slotWriter = this.writer;
        slotWriter.beginInsert();
        int i5 = slotWriter.currentGroup;
        slotWriter.startGroup(i, neverEqualPolicy, neverEqualPolicy, false);
        this.insertAnchor = slotWriter.anchor(i5);
        enterGroup(false, null);
    }

    public final void startReplaceableGroup(int i) {
        m323startAzEfcrM(null, i, null, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.runtime.GapComposer startRestartGroup(int r7) {
        /*
            r6 = this;
            r6.startReplaceGroup(r7)
            boolean r7 = r6.inserting
            androidx.appcompat.widget.PopupMenu$1 r0 = r6.observerHolder
            java.util.ArrayList r1 = r6.invalidateStack
            androidx.compose.runtime.CompositionImpl r2 = r6.composition
            if (r7 == 0) goto L26
            androidx.compose.runtime.RecomposeScopeImpl r7 = new androidx.compose.runtime.RecomposeScopeImpl
            r7.<init>(r2)
            r1.add(r7)
            r6.updateValue(r7)
            int r1 = r6.compositionToken
            r7.currentToken = r1
            int r1 = r7.flags
            r1 = r1 & (-17)
            r7.flags = r1
            r0.current()
            return r6
        L26:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r7 = r6.reader
            int r7 = r7.parent
            java.util.ArrayList r3 = r6.invalidations
            int r7 = androidx.compose.runtime.Updater.findLocation(r3, r7)
            if (r7 < 0) goto L39
            java.lang.Object r7 = r3.remove(r7)
            androidx.compose.runtime.Invalidation r7 = (androidx.compose.runtime.Invalidation) r7
            goto L3a
        L39:
            r7 = 0
        L3a:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r3 = r6.reader
            java.lang.Object r3 = r3.next()
            androidx.compose.runtime.NeverEqualPolicy r4 = androidx.compose.runtime.Composer$Companion.Empty
            boolean r4 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r4 == 0) goto L51
            androidx.compose.runtime.RecomposeScopeImpl r3 = new androidx.compose.runtime.RecomposeScopeImpl
            r3.<init>(r2)
            r6.updateValue(r3)
            goto L56
        L51:
            r3.getClass()
            androidx.compose.runtime.RecomposeScopeImpl r3 = (androidx.compose.runtime.RecomposeScopeImpl) r3
        L56:
            r2 = 0
            r4 = 1
            if (r7 != 0) goto L6e
            int r7 = r3.flags
            r5 = r7 & 64
            if (r5 == 0) goto L62
            r5 = r4
            goto L63
        L62:
            r5 = r2
        L63:
            if (r5 == 0) goto L69
            r7 = r7 & (-65)
            r3.flags = r7
        L69:
            if (r5 == 0) goto L6c
            goto L6e
        L6c:
            r7 = r2
            goto L6f
        L6e:
            r7 = r4
        L6f:
            int r5 = r3.flags
            if (r7 == 0) goto L76
            r7 = r5 | 8
            goto L78
        L76:
            r7 = r5 & (-9)
        L78:
            r3.flags = r7
            r1.add(r3)
            int r7 = r6.compositionToken
            r3.currentToken = r7
            int r7 = r3.flags
            r7 = r7 & (-17)
            r3.flags = r7
            r0.current()
            int r7 = r3.flags
            r0 = r7 & 256(0x100, float:3.59E-43)
            if (r0 == 0) goto Lba
            r7 = r7 & (-257(0xfffffffffffffeff, float:NaN))
            r7 = r7 | 512(0x200, float:7.17E-43)
            r3.flags = r7
            androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter r7 = r6.changeListWriter
            androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList r7 = r7.changeList
            androidx.compose.runtime.composer.gapbuffer.changelist.Operations r7 = r7.operations
            androidx.compose.runtime.composer.gapbuffer.changelist.Operation$StartResumingScope r0 = androidx.compose.runtime.composer.gapbuffer.changelist.Operation.StartResumingScope.INSTANCE
            r7.pushOp(r0)
            kotlin.UnsignedKt.m826setObjectsGr0YRc(r7, r2, r3)
            boolean r7 = r6.reusing
            if (r7 != 0) goto Lba
            int r7 = r3.flags
            r0 = r7 & 128(0x80, float:1.8E-43)
            if (r0 == 0) goto Lba
            r6.reusing = r4
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r6.reader
            int r0 = r0.parent
            r6.reusingGroup = r0
            r7 = r7 | 1024(0x400, float:1.435E-42)
            r3.flags = r7
        Lba:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.startRestartGroup(int):androidx.compose.runtime.GapComposer");
    }

    public final void startReusableGroup(Object obj) {
        if (!this.inserting && this.reader.getGroupKey() == 207 && !Intrinsics.areEqual(this.reader.getGroupAux(), obj) && this.reusingGroup < 0) {
            this.reusingGroup = this.reader.currentGroup;
            this.reusing = true;
        }
        m323startAzEfcrM(null, 207, obj, 0);
    }

    public final void startReusableNode() {
        m323startAzEfcrM(null, 125, null, 2);
        this.nodeExpected = true;
    }

    public final void startRoot() {
        this.rGroupIndex = 0;
        this.reader = this.slotTable.openReader();
        m323startAzEfcrM(null, 100, null, 0);
        CompositionContext compositionContext = this.parentContext;
        compositionContext.startComposing$runtime();
        PersistentCompositionLocalHashMap compositionLocalScope$runtime = compositionContext.getCompositionLocalScope$runtime();
        this.providersInvalidStack.push(this.providersInvalid ? 1 : 0);
        this.providersInvalid = changed(compositionLocalScope$runtime);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = compositionContext.getCollectingParameterInformation$runtime();
        }
        boolean z = this.sourceMarkersEnabled;
        if (!z) {
            z = compositionContext.getCollectingSourceInformation$runtime();
            this.sourceMarkersEnabled = z;
        }
        if (z) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.LocalCompositionErrorContext;
            staticProvidableCompositionLocal.getClass();
            compositionLocalScope$runtime = compositionLocalScope$runtime.putValue(staticProvidableCompositionLocal, new StaticValueHolder(getErrorContext$runtime()));
        }
        this.rootProvider = compositionLocalScope$runtime;
        Set set = (Set) Updater.read(compositionLocalScope$runtime, InspectionTablesKt.LocalInspectionTables);
        if (set != null) {
            set.add(getCompositionData());
            compositionContext.recordInspectionTable$runtime(set);
        }
        long compositeKeyHashCode$runtime = compositionContext.getCompositeKeyHashCode$runtime();
        m323startAzEfcrM(null, (int) (compositeKeyHashCode$runtime ^ (compositeKeyHashCode$runtime >>> 32)), null, 0);
    }

    public final boolean tryImminentInvalidation$runtime(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        GapAnchor gapAnchor = recomposeScopeImpl.anchor;
        if (gapAnchor == null) {
            return false;
        }
        int anchorIndex = this.reader.table.anchorIndex(OperationKt.asGapAnchor(gapAnchor));
        if (!this.isComposing || anchorIndex < this.reader.currentGroup) {
            return false;
        }
        ArrayList arrayList = this.invalidations;
        int findLocation = Updater.findLocation(arrayList, anchorIndex);
        if (findLocation < 0) {
            int i = -(findLocation + 1);
            if (!(obj instanceof DerivedSnapshotState)) {
                obj = null;
            }
            arrayList.add(i, new Invalidation(recomposeScopeImpl, anchorIndex, obj));
            return true;
        }
        Invalidation invalidation = (Invalidation) arrayList.get(findLocation);
        if (!(obj instanceof DerivedSnapshotState)) {
            invalidation.instances = null;
            return true;
        }
        Object obj2 = invalidation.instances;
        if (obj2 == null) {
            invalidation.instances = obj;
            return true;
        }
        if (obj2 instanceof MutableScatterSet) {
            ((MutableScatterSet) obj2).add(obj);
            return true;
        }
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        MutableScatterSet mutableScatterSet2 = new MutableScatterSet(2);
        mutableScatterSet2.plusAssign(obj2);
        mutableScatterSet2.plusAssign(obj);
        invalidation.instances = mutableScatterSet2;
        return true;
    }

    /* renamed from: updateComposerInvalidations-RY85e9Y$runtime, reason: not valid java name */
    public final void m324updateComposerInvalidationsRY85e9Y$runtime(MutableScatterMap mutableScatterMap) {
        ArrayList arrayList = this.invalidations;
        for (int lastIndex = Room.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
            Invalidation invalidation = (Invalidation) arrayList.get(lastIndex);
            GapAnchor gapAnchor = invalidation.scope.anchor;
            GapAnchor asGapAnchor = gapAnchor != null ? OperationKt.asGapAnchor(gapAnchor) : null;
            if (asGapAnchor == null || !asGapAnchor.getValid()) {
                arrayList.remove(lastIndex);
            } else {
                int i = invalidation.location;
                int i2 = asGapAnchor.location;
                if (i != i2) {
                    invalidation.location = i2;
                }
            }
        }
        Object[] objArr = mutableScatterMap.keys;
        Object[] objArr2 = mutableScatterMap.values;
        long[] jArr = mutableScatterMap.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j = jArr[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128) {
                            int i6 = (i3 << 3) + i5;
                            Object obj = objArr[i6];
                            Object obj2 = objArr2[i6];
                            obj.getClass();
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            GapAnchor gapAnchor2 = recomposeScopeImpl.anchor;
                            if (gapAnchor2 != null) {
                                int i7 = OperationKt.asGapAnchor(gapAnchor2).location;
                                if (obj2 == NeverEqualPolicy.INSTANCE$2) {
                                    obj2 = null;
                                }
                                arrayList.add(new Invalidation(recomposeScopeImpl, i7, obj2));
                            }
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                }
                if (i3 == length) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, Updater.InvalidationLocationAscending);
    }

    public final void updateNodeCount(int i, int i2) {
        if (updatedNodeCount(i) != i2) {
            if (i < 0) {
                MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap();
                    this.nodeCountVirtualOverrides = mutableIntIntMap;
                }
                mutableIntIntMap.set(i, i2);
                return;
            }
            int[] iArr = this.nodeCountOverrides;
            if (iArr == null) {
                iArr = new int[this.reader.groupsSize];
                ArraysKt___ArraysKt.fill$default(iArr, -1, 0, 6);
                this.nodeCountOverrides = iArr;
            }
            iArr[i] = i2;
        }
    }

    public final void updateNodeCountOverrides(int i, int i2) {
        int updatedNodeCount = updatedNodeCount(i);
        if (updatedNodeCount != i2) {
            int i3 = i2 - updatedNodeCount;
            ArrayList arrayList = this.pendingStack;
            int size = arrayList.size() - 1;
            while (i != -1) {
                int updatedNodeCount2 = updatedNodeCount(i) + i3;
                updateNodeCount(i, updatedNodeCount2);
                int i4 = size;
                while (true) {
                    if (-1 < i4) {
                        GapPending gapPending = (GapPending) arrayList.get(i4);
                        if (gapPending != null && gapPending.updateNodeCount(i, updatedNodeCount2)) {
                            size = i4 - 1;
                            break;
                        }
                        i4--;
                    } else {
                        break;
                    }
                }
                SlotReader slotReader = this.reader;
                if (i < 0) {
                    i = slotReader.parent;
                } else if (slotReader.isNode(i)) {
                    return;
                } else {
                    i = this.reader.parent(i);
                }
            }
        }
    }

    public final void updateRememberedValue(Object obj) {
        if (obj instanceof RememberObserver) {
            GapRememberObserverHolder gapRememberObserverHolder = new GapRememberObserverHolder((RememberObserver) obj, this.rGroupIndex - 1);
            if (this.inserting) {
                Operations operations = this.changeListWriter.changeList.operations;
                operations.pushOp(Operation.Remember.INSTANCE);
                UnsignedKt.m826setObjectsGr0YRc(operations, 0, gapRememberObserverHolder);
            }
            this.abandonSet.add(obj);
            obj = gapRememberObserverHolder;
        }
        updateValue(obj);
    }

    public final void updateValue(Object obj) {
        if (this.inserting) {
            SlotWriter slotWriter = this.writer;
            if (slotWriter.insertCount <= 0 || slotWriter.currentSlot == slotWriter.slotsGapStart) {
                slotWriter.rawUpdate(obj);
                return;
            }
            MutableIntObjectMap mutableIntObjectMap = slotWriter.deferredSlotWrites;
            if (mutableIntObjectMap == null) {
                mutableIntObjectMap = new MutableIntObjectMap();
            }
            slotWriter.deferredSlotWrites = mutableIntObjectMap;
            int i = slotWriter.parent;
            Object obj2 = mutableIntObjectMap.get(i);
            if (obj2 == null) {
                obj2 = new MutableObjectList();
                mutableIntObjectMap.set(i, obj2);
            }
            ((MutableObjectList) obj2).add(obj);
            return;
        }
        SlotReader slotReader = this.reader;
        boolean z = slotReader.hadNext;
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (!z) {
            GapAnchor anchor = slotReader.anchor(slotReader.parent);
            Operations operations = composerChangeListWriter.changeList.operations;
            operations.pushOp(Operation.AppendValue.INSTANCE);
            UnsignedKt.m827setObjectsEsEZvaA(operations, 0, anchor, 1, obj);
            return;
        }
        int slotAnchor = (slotReader.currentSlot - SlotTableKt.slotAnchor(slotReader.groups, slotReader.parent)) - 1;
        if (composerChangeListWriter.composer.reader.parent - composerChangeListWriter.writersReaderDelta >= 0) {
            composerChangeListWriter.realizeOperationLocation(true);
            Operations operations2 = composerChangeListWriter.changeList.operations;
            operations2.pushOp(Operation.UpdateValue.INSTANCE);
            UnsignedKt.m826setObjectsGr0YRc(operations2, 0, obj);
            operations2.intArgs[operations2.intArgsSize - operations2.opCodes[operations2.opCodesSize - 1].ints] = slotAnchor;
            return;
        }
        SlotReader slotReader2 = this.reader;
        GapAnchor anchor2 = slotReader2.anchor(slotReader2.parent);
        Operations operations3 = composerChangeListWriter.changeList.operations;
        operations3.pushOp(Operation.UpdateValue.INSTANCE$3);
        UnsignedKt.m827setObjectsEsEZvaA(operations3, 0, obj, 1, anchor2);
        operations3.intArgs[operations3.intArgsSize - operations3.opCodes[operations3.opCodesSize - 1].ints] = slotAnchor;
    }

    public final int updatedNodeCount(int i) {
        int i2;
        if (i >= 0) {
            int[] iArr = this.nodeCountOverrides;
            return (iArr == null || (i2 = iArr[i]) < 0) ? this.reader.nodeCount(i) : i2;
        }
        MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
        if (mutableIntIntMap != null && mutableIntIntMap.findKeyIndex(i) >= 0) {
            int findKeyIndex = mutableIntIntMap.findKeyIndex(i);
            if (findKeyIndex >= 0) {
                return mutableIntIntMap.values[findKeyIndex];
            }
            Gson$$ExternalSyntheticBUOutline0.m$3(Animation.CC.m(i, "Cannot find value for key "));
        }
        return 0;
    }

    public final void useNode() {
        if (!this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.nodeExpected = false;
        if (this.inserting) {
            ComposerKt.composeImmediateRuntimeError("useNode() called while inserting");
        }
        SlotReader slotReader = this.reader;
        Object node = slotReader.node(slotReader.parent);
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.realizeNodeMovementOperations();
        composerChangeListWriter.pendingDownNodes.add(node);
        if (this.reusing && (node instanceof ComposeNodeLifecycleCallback)) {
            composerChangeListWriter.pushPendingUpsAndDowns();
            composerChangeListWriter.changeList.operations.pushOp(Operation.UseCurrentNode.INSTANCE);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CompositionContextHolder implements RememberObserver {
        public final CompositionContextImpl ref;

        public CompositionContextHolder(CompositionContextImpl compositionContextImpl) {
            this.ref = compositionContextImpl;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void onAbandoned() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void onForgotten() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void onRemembered() {
        }
    }

    public final boolean changed(boolean z) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Boolean) && z == ((Boolean) nextSlot).booleanValue()) {
            return false;
        }
        updateValue(Boolean.valueOf(z));
        return true;
    }

    public final boolean changed(Object obj) {
        if (Intrinsics.areEqual(nextSlot(), obj)) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    public final boolean changed(long j) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Long) && j == ((Number) nextSlot).longValue()) {
            return false;
        }
        updateValue(Long.valueOf(j));
        return true;
    }

    public final boolean changed(int i) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Integer) && i == ((Number) nextSlot).intValue()) {
            return false;
        }
        updateValue(Integer.valueOf(i));
        return true;
    }
}
