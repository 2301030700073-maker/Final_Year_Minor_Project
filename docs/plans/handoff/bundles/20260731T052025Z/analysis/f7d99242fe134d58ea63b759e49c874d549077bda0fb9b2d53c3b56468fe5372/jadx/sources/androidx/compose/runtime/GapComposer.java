package androidx.compose.runtime;

import android.os.Trace;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.view.PreviewView;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.MutableSetWrapper;
import androidx.collection.ScatterSetKt;
import androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
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
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.UiApplier;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.util.DebugUtils;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.Data;
import androidx.work.OperationKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GapComposer implements Composer {
    public GapCompositionDataImpl _compositionData;
    public final MutableSetWrapper abandonSet;
    public final UiApplier applier;
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
    public final PreviewView.AnonymousClass1 observerHolder;
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CompositionContextImpl extends CompositionContext {
        public final boolean collectingParameterInformation;
        public final boolean collectingSourceInformation;
        public final MutableScatterSet composers;
        public final long compositeKeyHashCode;
        public final ParcelableSnapshotMutableState compositionLocalScope$delegate;
        public HashSet inspectionTables;

        public CompositionContextImpl(long j, boolean z, boolean z2, PreviewView.AnonymousClass1 anonymousClass1) {
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

        @Override // androidx.compose.runtime.CompositionContext
        public final void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.parentContext.deletedMovableContent$runtime(movableContentStateReference);
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
        public final void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
            GapComposer.this.parentContext.insertMovableContent$runtime(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void invalidate$runtime(CompositionImpl compositionImpl) {
            GapComposer gapComposer = GapComposer.this;
            gapComposer.parentContext.invalidate$runtime(gapComposer.composition);
            gapComposer.parentContext.invalidate$runtime(compositionImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier applier) {
            GapComposer.this.parentContext.movableContentStateReleased$runtime(movableContentStateReference, movableContentState, applier);
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
            if (ImageAnalysis$$ExternalSyntheticLambda3.m(gapComposer)) {
                this.composers.remove(gapComposer);
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void unregisterComposition$runtime(CompositionImpl compositionImpl) {
            GapComposer.this.parentContext.unregisterComposition$runtime(compositionImpl);
        }
    }

    public GapComposer(UiApplier uiApplier, CompositionContext compositionContext, SlotTable slotTable, MutableSetWrapper mutableSetWrapper, ChangeList changeList, ChangeList changeList2, PreviewView.AnonymousClass1 anonymousClass1, CompositionImpl compositionImpl) {
        this.applier = uiApplier;
        this.parentContext = compositionContext;
        this.slotTable = slotTable;
        this.abandonSet = mutableSetWrapper;
        this.changes = changeList;
        this.lateChanges = changeList2;
        this.observerHolder = anonymousClass1;
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

    /* JADX WARN: Removed duplicated region for block: B:12:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.runtime.MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor(androidx.compose.runtime.GapComposer r13, int r14) {
        /*
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            int r0 = r0.groupKey(r14)
            androidx.compose.runtime.composer.gapbuffer.SlotReader r1 = r13.reader
            int[] r2 = r1.groups
            java.lang.Object r1 = r1.objectKey(r2, r14)
            r2 = 126665345(0x78cc281, float:2.1179178E-34)
            r3 = 0
            if (r0 != r2) goto L94
            boolean r0 = r1 instanceof androidx.compose.runtime.MovableContent
            if (r0 == 0) goto L94
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            boolean r0 = r0.containsMark(r14)
            if (r0 == 0) goto L30
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            reportFreeMovableContent$movableContentReferenceFor$traverseGroups(r13, r0, r14)
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L30
            r12 = r0
            goto L31
        L30:
            r12 = r3
        L31:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            int[] r1 = r0.groups
            java.lang.Object r0 = r0.objectKey(r1, r14)
            r0.getClass()
            r5 = r0
            androidx.compose.runtime.MovableContent r5 = (androidx.compose.runtime.MovableContent) r5
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            r1 = 0
            java.lang.Object r6 = r0.groupGet(r14, r1)
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            androidx.compose.runtime.composer.gapbuffer.GapAnchor r9 = r0.anchor(r14)
            androidx.compose.runtime.composer.gapbuffer.SlotReader r0 = r13.reader
            int[] r0 = r0.groups
            int r1 = r14 * 5
            int r1 = r1 + 3
            r0 = r0[r1]
            int r0 = r0 + r14
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.util.ArrayList r1 = r13.invalidations
            int r2 = androidx.compose.runtime.Updater.findLocation(r14, r1)
            if (r2 >= 0) goto L67
            int r2 = r2 + 1
            int r2 = -r2
        L67:
            int r3 = r1.size()
            if (r2 >= r3) goto L86
            java.lang.Object r3 = r1.get(r2)
            androidx.compose.runtime.Invalidation r3 = (androidx.compose.runtime.Invalidation) r3
            int r4 = r3.location
            if (r4 >= r0) goto L86
            androidx.compose.runtime.RecomposeScopeImpl r4 = r3.scope
            java.lang.Object r3 = r3.instances
            kotlin.Pair r7 = new kotlin.Pair
            r7.<init>(r4, r3)
            r10.add(r7)
            int r2 = r2 + 1
            goto L67
        L86:
            androidx.compose.runtime.MovableContentStateReference r4 = new androidx.compose.runtime.MovableContentStateReference
            androidx.compose.runtime.CompositionImpl r7 = r13.composition
            androidx.compose.runtime.composer.gapbuffer.SlotTable r8 = r13.slotTable
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r11 = r13.currentCompositionLocalScope(r14)
            r4.<init>(r5, r6, r7, r8, r9, r10, r11, r12)
            return r4
        L94:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.reportFreeMovableContent$movableContentReferenceFor(androidx.compose.runtime.GapComposer, int):androidx.compose.runtime.MovableContentStateReference");
    }

    public static final void reportFreeMovableContent$movableContentReferenceFor$traverseGroups(GapComposer gapComposer, ArrayList arrayList, int i) {
        int i2 = gapComposer.reader.groups[(i * 5) + 3] + i;
        int i3 = i + 1;
        while (i3 < i2) {
            if (gapComposer.reader.hasMark(i3)) {
                MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(gapComposer, i3);
                if (reportFreeMovableContent$movableContentReferenceFor != null) {
                    arrayList.add(reportFreeMovableContent$movableContentReferenceFor);
                }
            } else if (gapComposer.reader.containsMark(i3)) {
                reportFreeMovableContent$movableContentReferenceFor$traverseGroups(gapComposer, arrayList, i3);
            }
            i3 += gapComposer.reader.groups[(i3 * 5) + 3];
        }
    }

    public static final int reportFreeMovableContent$reportGroup(GapComposer gapComposer, int i, int i2, boolean z, int i3) {
        int i4;
        long[] jArr;
        Object[] objArr;
        int i5;
        long[] jArr2;
        Object[] objArr2;
        int i6;
        int i7;
        SlotReader slotReader = gapComposer.reader;
        int i8 = 0;
        if (slotReader.hasMark(i2)) {
            int groupKey = slotReader.groupKey(i2);
            Object objectKey = slotReader.objectKey(slotReader.groups, i2);
            if (groupKey == 126665345 && (objectKey instanceof MovableContent)) {
                MovableContentStateReference reportFreeMovableContent$movableContentReferenceFor = reportFreeMovableContent$movableContentReferenceFor(gapComposer, i2);
                if (reportFreeMovableContent$movableContentReferenceFor != null) {
                    gapComposer.parentContext.deletedMovableContent$runtime(reportFreeMovableContent$movableContentReferenceFor);
                    gapComposer.changeListWriter.recordSlotEditing();
                    ComposerChangeListWriter composerChangeListWriter = gapComposer.changeListWriter;
                    CompositionImpl compositionImpl = gapComposer.composition;
                    CompositionContext compositionContext = gapComposer.parentContext;
                    Operations operations = composerChangeListWriter.changeList.operations;
                    operations.pushOp(Operation.ReleaseMovableGroupAtCurrent.INSTANCE);
                    DebugUtils.m791setObjectsJOGOPjs(operations, compositionImpl, compositionContext, reportFreeMovableContent$movableContentReferenceFor);
                }
                if (!z || i2 == i) {
                    return slotReader.nodeCount(i2);
                }
                ComposerChangeListWriter composerChangeListWriter2 = gapComposer.changeListWriter;
                composerChangeListWriter2.realizeNodeMovementOperations();
                composerChangeListWriter2.pushPendingUpsAndDowns();
                GapComposer gapComposer2 = composerChangeListWriter2.composer;
                int nodeCount = gapComposer2.reader.isNode(i2) ? 1 : gapComposer2.reader.nodeCount(i2);
                if (nodeCount > 0) {
                    composerChangeListWriter2.removeNode(i3, nodeCount);
                }
                return 0;
            }
            if (groupKey == 206 && Intrinsics.areEqual(objectKey, ComposerKt.reference)) {
                Object groupGet = slotReader.groupGet(i2, 0);
                GapRememberObserverHolder gapRememberObserverHolder = groupGet instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) groupGet : null;
                Object obj = gapRememberObserverHolder != null ? gapRememberObserverHolder.wrapped : null;
                CompositionContextHolder compositionContextHolder = obj instanceof CompositionContextHolder ? (CompositionContextHolder) obj : null;
                if (compositionContextHolder != null) {
                    MutableScatterSet mutableScatterSet = compositionContextHolder.ref.composers;
                    Object[] objArr3 = mutableScatterSet.elements;
                    long[] jArr3 = mutableScatterSet.metadata;
                    int length = jArr3.length - 2;
                    if (length >= 0) {
                        int i9 = 0;
                        while (true) {
                            long j = jArr3[i9];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i10 = 8;
                                int i11 = 8 - ((~(i9 - length)) >>> 31);
                                int i12 = i8;
                                while (i12 < i11) {
                                    if ((255 & j) < 128) {
                                        GapComposer gapComposer3 = (GapComposer) objArr3[(i9 << 3) + i12];
                                        SlotTable slotTable = gapComposer3.slotTable;
                                        if (slotTable.groupsSize <= 0 || (slotTable.groups[1] & 67108864) == 0) {
                                            jArr2 = jArr3;
                                            objArr2 = objArr3;
                                            i6 = i8;
                                            i7 = i10;
                                        } else {
                                            CompositionImpl compositionImpl2 = gapComposer3.composition;
                                            synchronized (compositionImpl2.lock) {
                                                compositionImpl2.drainPendingModificationsOutOfBandLocked();
                                                i7 = i10;
                                                MutableScatterMap mutableScatterMap = compositionImpl2.invalidations;
                                                compositionImpl2.invalidations = OperationKt.m838constructorimpl$default();
                                                try {
                                                    compositionImpl2.composer.m377updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMap);
                                                } finally {
                                                }
                                            }
                                            ChangeList changeList = new ChangeList();
                                            gapComposer3.deferredChanges = changeList;
                                            SlotReader openReader = gapComposer3.slotTable.openReader();
                                            try {
                                                gapComposer3.reader = openReader;
                                                ComposerChangeListWriter composerChangeListWriter3 = gapComposer3.changeListWriter;
                                                ChangeList changeList2 = composerChangeListWriter3.changeList;
                                                try {
                                                    composerChangeListWriter3.changeList = changeList;
                                                    gapComposer3.reportFreeMovableContent(0);
                                                    ComposerChangeListWriter composerChangeListWriter4 = gapComposer3.changeListWriter;
                                                    composerChangeListWriter4.pushPendingUpsAndDowns();
                                                    jArr2 = jArr3;
                                                    if (composerChangeListWriter4.startedGroup) {
                                                        objArr2 = objArr3;
                                                        composerChangeListWriter4.changeList.operations.pushOp(Operation.SkipToEndOfCurrentGroup.INSTANCE);
                                                        if (composerChangeListWriter4.startedGroup) {
                                                            composerChangeListWriter4.realizeOperationLocation(false);
                                                            composerChangeListWriter4.realizeOperationLocation(false);
                                                            composerChangeListWriter4.changeList.operations.pushOp(Operation.EndCurrentGroup.INSTANCE);
                                                            i6 = 0;
                                                            composerChangeListWriter4.startedGroup = false;
                                                        }
                                                    } else {
                                                        objArr2 = objArr3;
                                                    }
                                                    i6 = 0;
                                                } finally {
                                                }
                                            } finally {
                                                openReader.close();
                                            }
                                        }
                                        gapComposer.parentContext.reportRemovedComposition$runtime(gapComposer3.composition);
                                    } else {
                                        jArr2 = jArr3;
                                        objArr2 = objArr3;
                                        i6 = i8;
                                        i7 = i10;
                                    }
                                    j >>= i7;
                                    i12++;
                                    i10 = i7;
                                    objArr3 = objArr2;
                                    i8 = i6;
                                    jArr3 = jArr2;
                                }
                                jArr = jArr3;
                                objArr = objArr3;
                                i5 = i8;
                                if (i11 != i10) {
                                    break;
                                }
                            } else {
                                jArr = jArr3;
                                objArr = objArr3;
                                i5 = i8;
                            }
                            if (i9 == length) {
                                break;
                            }
                            i9++;
                            objArr3 = objArr;
                            i8 = i5;
                            jArr3 = jArr;
                        }
                    }
                }
                return slotReader.nodeCount(i2);
            }
            i4 = 1;
            if (!slotReader.isNode(i2)) {
                return slotReader.nodeCount(i2);
            }
        } else {
            i4 = 1;
            if (slotReader.containsMark(i2)) {
                int i13 = slotReader.groups[(i2 * 5) + 3] + i2;
                int i14 = 0;
                for (int i15 = i2 + 1; i15 < i13; i15 += slotReader.groups[(i15 * 5) + 3]) {
                    boolean isNode = slotReader.isNode(i15);
                    if (isNode) {
                        gapComposer.changeListWriter.realizeNodeMovementOperations();
                        ComposerChangeListWriter composerChangeListWriter5 = gapComposer.changeListWriter;
                        Object node = slotReader.node(i15);
                        composerChangeListWriter5.realizeNodeMovementOperations();
                        composerChangeListWriter5.pendingDownNodes.add(node);
                    }
                    i14 += reportFreeMovableContent$reportGroup(gapComposer, i, i15, isNode || z, isNode ? 0 : i3 + i14);
                    if (isNode) {
                        gapComposer.changeListWriter.realizeNodeMovementOperations();
                        gapComposer.changeListWriter.moveUp();
                    }
                }
                if (!slotReader.isNode(i2)) {
                    return i14;
                }
            } else if (!slotReader.isNode(i2)) {
                return slotReader.nodeCount(i2);
            }
        }
        return i4;
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
            DebugUtils.m789setObjectsGr0YRc(operations, 0, obj);
            function2.getClass();
            TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
            DebugUtils.m789setObjectsGr0YRc(operations, 1, function2);
            return;
        }
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.pushPendingUpsAndDowns();
        Operations operations2 = composerChangeListWriter.changeList.operations;
        operations2.pushOp(Operation.UpdateNode.INSTANCE);
        function2.getClass();
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(2, function2);
        DebugUtils.m790setObjectsEsEZvaA(operations2, 0, obj, 1, function2);
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
        DebugUtils.m789setObjectsGr0YRc(operations, 0, function0);
        operations.intArgs[operations.intArgsSize - operations.opCodes[operations.opCodesSize - 1].ints] = i;
        DebugUtils.m789setObjectsGr0YRc(operations, 1, anchor);
        Operations operations2 = fixupList.pendingOperations;
        operations2.pushOp(Operation.UpdateValue.INSTANCE$2);
        operations2.intArgs[operations2.intArgsSize - operations2.opCodes[operations2.opCodesSize - 1].ints] = i;
        DebugUtils.m789setObjectsGr0YRc(operations2, 0, anchor);
    }

    public final PersistentCompositionLocalHashMap currentCompositionLocalScope(int i) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap;
        boolean z = this.inserting;
        OpaqueKey opaqueKey = ComposerKt.compositionLocalMap;
        if (z && this.writerHasAProvider) {
            int i2 = this.writer.parent;
            while (i2 > 0) {
                if (this.writer.groupKey(i2) == 202 && Intrinsics.areEqual(this.writer.groupObjectKey(i2), opaqueKey)) {
                    Object groupAux = this.writer.groupAux(i2);
                    groupAux.getClass();
                    PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) groupAux;
                    this.providerCache = persistentCompositionLocalHashMap2;
                    return persistentCompositionLocalHashMap2;
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
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap3 = this.rootProvider;
        this.providerCache = persistentCompositionLocalHashMap3;
        return persistentCompositionLocalHashMap3;
    }

    public final ComposeStackTrace currentStackTrace() {
        Collection collection;
        if (!this.parentContext.getStackTraceEnabled$runtime()) {
            return null;
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        SlotWriter slotWriter = this.writer;
        createListBuilder.addAll(Utf8.SafeProcessor.buildTrace(slotWriter, null, slotWriter.currentGroup, null));
        SlotReader slotReader = this.reader;
        boolean z = slotReader.closed;
        int[] iArr = slotReader.groups;
        if (z || slotReader.groupsSize == 0) {
            collection = EmptyList.INSTANCE;
        } else {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int i = slotReader.parent;
            Object valueOf = Integer.valueOf(slotReader.currentSlot - SlotTableKt.access$slotAnchor(iArr, i));
            while (i >= 0) {
                readerTraceBuilder.processEdge(slotReader.groupKey(i), slotReader.hasObjectKey(i) ? slotReader.objectKey(iArr, i) : Composer.Companion.Empty, ((SlotTable) slotReader.table).sourceInformationOf(i), valueOf);
                valueOf = slotReader.anchor(i);
                i = slotReader.parent(i);
            }
            collection = (ArrayList) readerTraceBuilder.response;
        }
        createListBuilder.addAll(collection);
        createListBuilder.addAll(parentStackTrace$runtime());
        return new ComposeStackTrace(IntOffsetKt.build(createListBuilder), this.sourceMarkersEnabled);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: doCompose-aFTiNEg, reason: not valid java name */
    public final void m375doComposeaFTiNEg(MutableScatterMap mutableScatterMap, Function2 function2) {
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
            m377updateComposerInvalidationsRY85e9Y$runtime(mutableScatterMap);
            this.nodeIndex = 0;
            this.isComposing = true;
            try {
                startRoot();
                Object nextSlot = nextSlot();
                if (nextSlot != function2 && function2 != null) {
                    updateValue(function2);
                }
                GapComposer$derivedStateObserver$1 gapComposer$derivedStateObserver$1 = this.derivedStateObserver;
                MutableVector derivedStateObservers = Updater.derivedStateObservers();
                try {
                    derivedStateObservers.add(gapComposer$derivedStateObserver$1);
                    OpaqueKey opaqueKey = ComposerKt.invocation;
                    if (function2 != null) {
                        startGroup(200, opaqueKey);
                        Expect_jvmKt.invokeComposable(this, function2);
                        end(false);
                    } else if (!this.providersInvalid || nextSlot == null || nextSlot.equals(Composer.Companion.Empty)) {
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
    /* JADX WARN: Removed duplicated region for block: B:147:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x04d0  */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v23, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v24 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void end(boolean r43) {
        /*
            Method dump skipped, instructions count: 1374
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

    public final RecomposeScopeImpl endRestartGroup() {
        RecomposeScopeImpl recomposeScopeImpl;
        GapAnchor anchor;
        ScrollNode$$ExternalSyntheticLambda0 scrollNode$$ExternalSyntheticLambda0;
        ArrayList arrayList = this.invalidateStack;
        RecomposeScopeImpl recomposeScopeImpl2 = !arrayList.isEmpty() ? (RecomposeScopeImpl) Modifier.CC.m(1, arrayList) : null;
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
                                        scrollNode$$ExternalSyntheticLambda0 = new ScrollNode$$ExternalSyntheticLambda0(i, i2, recomposeScopeImpl2, mutableObjectIntMap);
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
                DebugUtils.m790setObjectsEsEZvaA(operations, 0, scrollNode$$ExternalSyntheticLambda0, 1, this.composition);
            }
            int i7 = recomposeScopeImpl2.flags;
            if ((i7 & 512) != 0) {
                recomposeScopeImpl2.flags = i7 & (-513);
                Operations operations2 = composerChangeListWriter.changeList.operations;
                operations2.pushOp(Operation.EndResumingScope.INSTANCE);
                DebugUtils.m789setObjectsGr0YRc(operations2, 0, recomposeScopeImpl2);
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

    public final CompositionData getCompositionData() {
        GapCompositionDataImpl gapCompositionDataImpl = this._compositionData;
        if (gapCompositionDataImpl != null) {
            return gapCompositionDataImpl;
        }
        GapCompositionDataImpl gapCompositionDataImpl2 = new GapCompositionDataImpl(this.composition);
        this._compositionData = gapCompositionDataImpl2;
        return gapCompositionDataImpl2;
    }

    public final RecomposeScopeImpl getCurrentRecomposeScope$runtime() {
        if (this.childrenComposing != 0) {
            return null;
        }
        ArrayList arrayList = this.invalidateStack;
        if (arrayList.isEmpty()) {
            return null;
        }
        return (RecomposeScopeImpl) arrayList.get(arrayList.size() - 1);
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

    public final boolean getSkipping() {
        RecomposeScopeImpl currentRecomposeScope$runtime;
        return (this.inserting || this.reusing || this.providersInvalid || (currentRecomposeScope$runtime = getCurrentRecomposeScope$runtime()) == null || (currentRecomposeScope$runtime.flags & 8) != 0) ? false : true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:(14:(7:(7:39|(1:41)|42|(1:44)(1:132)|45|(1:47)(1:131)|(33:49|50|51|52|53|(4:55|(1:57)(1:124)|58|(1:60)(1:123))(1:125)|61|62|63|64|65|66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|81|82|83|(1:85)|86|87|88))(1:133)|82|83|(0)|86|87|88)|69|70|71|72|73|74|75|76|77|78|79|80|81)|62|63|64|65|66|67|68) */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x024d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x024e, code lost:
    
        r10 = r3;
        r23 = r7;
        r7 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012e A[Catch: all -> 0x00ac, TryCatch #6 {all -> 0x00ac, blocks: (B:3:0x000a, B:5:0x001b, B:7:0x0053, B:10:0x0066, B:18:0x00a2, B:19:0x020b, B:23:0x00b2, B:24:0x00b5, B:29:0x0058, B:31:0x005e, B:32:0x0063, B:33:0x00b6, B:35:0x00bc, B:37:0x00c6, B:39:0x00d0, B:41:0x00d4, B:42:0x00da, B:45:0x00e4, B:47:0x00f1, B:50:0x0111, B:53:0x0125, B:55:0x012e, B:57:0x0139, B:58:0x014a, B:61:0x0162, B:88:0x0208, B:90:0x025c, B:91:0x025f, B:123:0x014f, B:128:0x0261, B:129:0x0264, B:130:0x010f, B:131:0x00ff, B:132:0x00df, B:137:0x0265, B:52:0x011e), top: B:2:0x000a, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01f6 A[Catch: all -> 0x021e, TRY_LEAVE, TryCatch #13 {all -> 0x021e, blocks: (B:83:0x01e9, B:85:0x01f6, B:97:0x024a, B:98:0x024c), top: B:82:0x01e9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void insertMovableContentGuarded(java.util.ArrayList r25) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.insertMovableContentGuarded(java.util.ArrayList):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void invokeMovableContentLambda(MovableContent movableContent, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, Object obj, boolean z) {
        startMovableGroup(126665345, movableContent);
        nextSlot();
        updateValue(obj);
        long j = this.compositeKeyHashCode;
        boolean z2 = false;
        Object[] objArr = 0;
        boolean z3 = false;
        try {
            this.compositeKeyHashCode = 126665345L;
            if (this.inserting) {
                SlotWriter.markGroup$default(this.writer);
            }
            boolean z4 = (this.inserting || Intrinsics.areEqual(this.reader.getGroupAux(), persistentCompositionLocalHashMap)) ? false : true;
            if (z4) {
                recordProviderUpdate(persistentCompositionLocalHashMap);
            }
            m376startAzEfcrM(202, 0, ComposerKt.compositionLocalMap, persistentCompositionLocalHashMap);
            this.providerCache = null;
            if (!this.inserting || z) {
                boolean z5 = this.providersInvalid;
                this.providersInvalid = z4;
                Expect_jvmKt.invokeComposable(this, new ComposableLambdaImpl(-59194059, new GapComposer$$ExternalSyntheticLambda3(objArr == true ? 1 : 0, movableContent, obj), true));
                this.providersInvalid = z5;
            } else {
                this.writerHasAProvider = true;
                SlotWriter slotWriter = this.writer;
                this.parentContext.insertMovableContent$runtime(new MovableContentStateReference(movableContent, obj, this.composition, this.insertTable, slotWriter.anchor(slotWriter.parent(slotWriter.groups, slotWriter.parent)), EmptyList.INSTANCE, currentCompositionLocalScope(), null));
            }
        } catch (Throwable th) {
            try {
                Data.Companion.tryAttachComposeStackTrace(th, new GapComposer$$ExternalSyntheticLambda2(this, 1));
                throw th;
            } finally {
                end(false);
                this.providerCache = null;
                this.compositeKeyHashCode = j;
                end(false);
            }
        }
    }

    public final Object nextSlot() {
        boolean z = this.inserting;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
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
        CompositionImpl compositionImpl = ImageAnalysis$$ExternalSyntheticLambda3.m(composition$runtime) ? (CompositionImpl) composition$runtime : null;
        if (compositionImpl != null) {
            SlotTable slotTable = compositionImpl.slotStorage;
            SlotReader openReader = SlotTableKt.asGapBufferSlotTable(slotTable).openReader();
            try {
                Integer findSubcompositionContextGroup$lambda$0$scanGroup = Utf8.SafeProcessor.findSubcompositionContextGroup$lambda$0$scanGroup(openReader, compositionContext, 0, openReader.groupsSize);
                if (findSubcompositionContextGroup$lambda$0$scanGroup != null) {
                    openReader = SlotTableKt.asGapBufferSlotTable(slotTable).openReader();
                    try {
                        ArrayList traceForGroup = Utf8.SafeProcessor.traceForGroup(openReader, findSubcompositionContextGroup$lambda$0$scanGroup.intValue(), 0);
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
    /* JADX WARN: Removed duplicated region for block: B:112:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x033e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void recomposeToGroupEnd() {
        /*
            Method dump skipped, instructions count: 892
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.recomposeToGroupEnd():void");
    }

    public final void recordDelete() {
        reportFreeMovableContent(this.reader.currentGroup);
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        composerChangeListWriter.realizeOperationLocation(false);
        composerChangeListWriter.recordSlotEditing();
        composerChangeListWriter.changeList.operations.pushOp(Operation.RemoveCurrentGroup.INSTANCE);
        int i = composerChangeListWriter.writersReaderDelta;
        SlotReader slotReader = composerChangeListWriter.composer.reader;
        composerChangeListWriter.writersReaderDelta = slotReader.groups[(slotReader.currentGroup * 5) + 3] + i;
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
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
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
        reportFreeMovableContent$reportGroup(this, i, i, isNode, 0);
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
                DebugUtils.m789setObjectsGr0YRc(operations, 0, currentRecomposeScope$runtime);
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
    /* JADX WARN: Removed duplicated region for block: B:190:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014c  */
    /* renamed from: start-AzEfcrM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m376startAzEfcrM(int r26, int r27, java.lang.Object r28, java.lang.Object r29) {
        /*
            Method dump skipped, instructions count: 869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.GapComposer.m376startAzEfcrM(int, int, java.lang.Object, java.lang.Object):void");
    }

    public final void startDefaults() {
        m376startAzEfcrM(-127, 0, null, null);
    }

    public final void startGroup(int i, OpaqueKey opaqueKey) {
        m376startAzEfcrM(i, 0, opaqueKey, null);
    }

    public final void startMovableGroup(int i, Object obj) {
        m376startAzEfcrM(i, 0, obj, null);
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
            DebugUtils.m789setObjectsGr0YRc(operations, 0, obj);
        }
        this.reader.startGroup();
    }

    public final void startReplaceGroup(int i) {
        int i2;
        int i3;
        if (this.pending != null) {
            m376startAzEfcrM(i, 0, null, null);
            return;
        }
        if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
        }
        this.compositeKeyHashCode = Long.rotateLeft(Long.rotateLeft(this.compositeKeyHashCode, 3) ^ i, 3) ^ this.rGroupIndex;
        this.rGroupIndex++;
        SlotReader slotReader = this.reader;
        boolean z = this.inserting;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
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
            Updater.access$removeRange(this.invalidations, i2, slotReader.currentGroup);
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
        m376startAzEfcrM(i, 0, null, null);
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
            androidx.camera.view.PreviewView$1 r0 = r6.observerHolder
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
            int r7 = androidx.compose.runtime.Updater.findLocation(r7, r3)
            if (r7 < 0) goto L39
            java.lang.Object r7 = r3.remove(r7)
            androidx.compose.runtime.Invalidation r7 = (androidx.compose.runtime.Invalidation) r7
            goto L3a
        L39:
            r7 = 0
        L3a:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r3 = r6.reader
            java.lang.Object r3 = r3.next()
            androidx.compose.runtime.NeverEqualPolicy r4 = androidx.compose.runtime.Composer.Companion.Empty
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
            androidx.core.util.DebugUtils.m789setObjectsGr0YRc(r7, r2, r3)
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
        m376startAzEfcrM(207, 0, null, obj);
    }

    public final void startReusableNode() {
        m376startAzEfcrM(125, 2, null, null);
        this.nodeExpected = true;
    }

    public final void startRoot() {
        this.rGroupIndex = 0;
        this.reader = this.slotTable.openReader();
        m376startAzEfcrM(100, 0, null, null);
        CompositionContext compositionContext = this.parentContext;
        compositionContext.startComposing$runtime();
        PersistentCompositionLocalHashMap compositionLocalScope$runtime = compositionContext.getCompositionLocalScope$runtime();
        this.providersInvalidStack.push(this.providersInvalid ? 1 : 0);
        this.providersInvalid = changed(compositionLocalScope$runtime);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = compositionContext.getCollectingParameterInformation$runtime();
        }
        if (!this.sourceMarkersEnabled) {
            this.sourceMarkersEnabled = compositionContext.getCollectingSourceInformation$runtime();
        }
        if (this.sourceMarkersEnabled) {
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
        m376startAzEfcrM((int) (compositeKeyHashCode$runtime ^ (compositeKeyHashCode$runtime >>> 32)), 0, null, null);
    }

    public final boolean tryImminentInvalidation$runtime(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        GapAnchor gapAnchor = recomposeScopeImpl.anchor;
        if (gapAnchor == null) {
            return false;
        }
        int anchorIndex = ((SlotTable) this.reader.table).anchorIndex(IntRectKt.asGapAnchor(gapAnchor));
        if (!this.isComposing || anchorIndex < this.reader.currentGroup) {
            return false;
        }
        ArrayList arrayList = this.invalidations;
        int findLocation = Updater.findLocation(anchorIndex, arrayList);
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
    public final void m377updateComposerInvalidationsRY85e9Y$runtime(MutableScatterMap mutableScatterMap) {
        ArrayList arrayList = this.invalidations;
        for (int lastIndex = IntOffsetKt.getLastIndex(arrayList); -1 < lastIndex; lastIndex--) {
            Invalidation invalidation = (Invalidation) arrayList.get(lastIndex);
            GapAnchor gapAnchor = invalidation.scope.anchor;
            GapAnchor asGapAnchor = gapAnchor != null ? IntRectKt.asGapAnchor(gapAnchor) : null;
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
                                int i7 = IntRectKt.asGapAnchor(gapAnchor2).location;
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
                int i3 = this.reader.groupsSize;
                int[] iArr2 = new int[i3];
                Arrays.fill(iArr2, 0, i3, -1);
                this.nodeCountOverrides = iArr2;
                iArr = iArr2;
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

    public final PersistentCompositionLocalHashMap updateProviderMapGroup(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2) {
        persistentCompositionLocalHashMap.getClass();
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(persistentCompositionLocalHashMap);
        builder.putAll(persistentCompositionLocalHashMap2);
        PersistentCompositionLocalHashMap build$1 = builder.build$1();
        startGroup(204, ComposerKt.providerMaps);
        nextSlot();
        updateValue(build$1);
        nextSlot();
        updateValue(persistentCompositionLocalHashMap2);
        end(false);
        return build$1;
    }

    public final void updateRememberedValue(Object obj) {
        if (obj instanceof RememberObserver) {
            GapRememberObserverHolder gapRememberObserverHolder = new GapRememberObserverHolder((RememberObserver) obj, this.rGroupIndex - 1);
            if (this.inserting) {
                Operations operations = this.changeListWriter.changeList.operations;
                operations.pushOp(Operation.Remember.INSTANCE);
                DebugUtils.m789setObjectsGr0YRc(operations, 0, gapRememberObserverHolder);
            }
            this.abandonSet.add(obj);
            obj = gapRememberObserverHolder;
        }
        updateValue(obj);
    }

    public final void updateValue(Object obj) {
        if (this.inserting) {
            this.writer.update(obj);
            return;
        }
        SlotReader slotReader = this.reader;
        boolean z = slotReader.hadNext;
        ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
        if (!z) {
            GapAnchor anchor = slotReader.anchor(slotReader.parent);
            Operations operations = composerChangeListWriter.changeList.operations;
            operations.pushOp(Operation.AppendValue.INSTANCE);
            DebugUtils.m790setObjectsEsEZvaA(operations, 0, anchor, 1, obj);
            return;
        }
        int access$slotAnchor = (slotReader.currentSlot - SlotTableKt.access$slotAnchor(slotReader.groups, slotReader.parent)) - 1;
        if (composerChangeListWriter.composer.reader.parent - composerChangeListWriter.writersReaderDelta >= 0) {
            composerChangeListWriter.realizeOperationLocation(true);
            Operations operations2 = composerChangeListWriter.changeList.operations;
            operations2.pushOp(Operation.UpdateValue.INSTANCE);
            DebugUtils.m789setObjectsGr0YRc(operations2, 0, obj);
            operations2.intArgs[operations2.intArgsSize - operations2.opCodes[operations2.opCodesSize - 1].ints] = access$slotAnchor;
            return;
        }
        SlotReader slotReader2 = this.reader;
        GapAnchor anchor2 = slotReader2.anchor(slotReader2.parent);
        Operations operations3 = composerChangeListWriter.changeList.operations;
        operations3.pushOp(Operation.UpdateValue.INSTANCE$3);
        DebugUtils.m790setObjectsEsEZvaA(operations3, 0, obj, 1, anchor2);
        operations3.intArgs[operations3.intArgsSize - operations3.opCodes[operations3.opCodesSize - 1].ints] = access$slotAnchor;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m(CameraDevices$CC.m("Cannot find value for key ", i));
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    public final PersistentCompositionLocalHashMap currentCompositionLocalScope() {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = this.providerCache;
        return persistentCompositionLocalHashMap != null ? persistentCompositionLocalHashMap : currentCompositionLocalScope(this.reader.parent);
    }
}
