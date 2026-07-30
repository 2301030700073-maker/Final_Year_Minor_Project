package androidx.compose.runtime;

import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.changelist.ChangeList;
import androidx.compose.runtime.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.changelist.FixupList;
import androidx.compose.runtime.collection.IntMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import androidx.compose.runtime.snapshots.ListUtilsKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: Composer.kt */
/* loaded from: classes.dex */
public final class ComposerImpl implements Composer {
    private final Set abandonSet;
    private final Applier applier;
    private final ComposerChangeListWriter changeListWriter;
    private ChangeList changes;
    private int childrenComposing;
    private final ControlledComposition composition;
    private int compositionToken;
    private int compoundKeyHash;
    private ChangeList deferredChanges;
    private final ComposerImpl$derivedStateObserver$1 derivedStateObserver;
    private boolean forceRecomposeScopes;
    private boolean forciblyRecompose;
    private int groupNodeCount;
    private Anchor insertAnchor;
    private FixupList insertFixups;
    private SlotTable insertTable;
    private boolean inserting;
    private final Stack invalidateStack;
    private boolean isComposing;
    private boolean isDisposed;
    private ChangeList lateChanges;
    private int[] nodeCountOverrides;
    private MutableIntIntMap nodeCountVirtualOverrides;
    private boolean nodeExpected;
    private int nodeIndex;
    private final CompositionContext parentContext;
    private Pending pending;
    private PersistentCompositionLocalMap providerCache;
    private IntMap providerUpdates;
    private boolean providersInvalid;
    private int rGroupIndex;
    private SlotReader reader;
    private boolean reusing;
    private final SlotTable slotTable;
    private boolean sourceMarkersEnabled;
    private SlotWriter writer;
    private boolean writerHasAProvider;
    private final Stack pendingStack = new Stack();
    private final IntStack parentStateStack = new IntStack();
    private final List invalidations = new ArrayList();
    private final IntStack entersStack = new IntStack();
    private PersistentCompositionLocalMap parentProvider = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();
    private final IntStack providersInvalidStack = new IntStack();
    private int reusingGroup = -1;

    private final int insertedGroupVirtualIndex(int i) {
        return (-2) - i;
    }

    public final void dispose$runtime_release() {
        Trace trace = Trace.INSTANCE;
        Object beginSection = trace.beginSection("Compose:Composer.dispose");
        try {
            this.parentContext.unregisterComposer$runtime_release(this);
            deactivate$runtime_release();
            getApplier().clear();
            this.isDisposed = true;
            Unit unit = Unit.INSTANCE;
            trace.endSection(beginSection);
        } catch (Throwable th) {
            Trace.INSTANCE.endSection(beginSection);
            throw th;
        }
    }

    private final PersistentCompositionLocalMap updateProviderMapGroup(PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentCompositionLocalMap.Builder builder = persistentCompositionLocalMap.builder();
        builder.putAll(persistentCompositionLocalMap2);
        PersistentCompositionLocalMap build = builder.build();
        startGroup(204, ComposerKt.getProviderMaps());
        updateSlot(build);
        updateSlot(persistentCompositionLocalMap2);
        endGroup();
        return build;
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.runtime.ComposerImpl$derivedStateObserver$1] */
    public ComposerImpl(Applier applier, CompositionContext compositionContext, SlotTable slotTable, Set set, ChangeList changeList, ChangeList changeList2, ControlledComposition controlledComposition) {
        this.applier = applier;
        this.parentContext = compositionContext;
        this.slotTable = slotTable;
        this.abandonSet = set;
        this.changes = changeList;
        this.lateChanges = changeList2;
        this.composition = controlledComposition;
        this.sourceMarkersEnabled = compositionContext.getCollectingSourceInformation$runtime_release() || compositionContext.getCollectingCallByInformation$runtime_release();
        this.derivedStateObserver = new DerivedStateObserver() { // from class: androidx.compose.runtime.ComposerImpl$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public void start(DerivedState derivedState) {
                ComposerImpl.this.childrenComposing++;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public void done(DerivedState derivedState) {
                ComposerImpl composerImpl = ComposerImpl.this;
                composerImpl.childrenComposing--;
            }
        };
        this.invalidateStack = new Stack();
        SlotReader openReader = slotTable.openReader();
        openReader.close();
        this.reader = openReader;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.getCollectingSourceInformation$runtime_release()) {
            slotTable2.collectSourceInformation();
        }
        if (compositionContext.getCollectingCallByInformation$runtime_release()) {
            slotTable2.collectCalledByInformation();
        }
        this.insertTable = slotTable2;
        SlotWriter openWriter = slotTable2.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
        this.changeListWriter = new ComposerChangeListWriter(this, this.changes);
        SlotReader openReader2 = this.insertTable.openReader();
        try {
            Anchor anchor = openReader2.anchor(0);
            openReader2.close();
            this.insertAnchor = anchor;
            this.insertFixups = new FixupList();
        } catch (Throwable th) {
            openReader2.close();
            throw th;
        }
    }

    @Override // androidx.compose.runtime.Composer
    public Applier getApplier() {
        return this.applier;
    }

    public ControlledComposition getComposition() {
        return this.composition;
    }

    public final boolean isComposing$runtime_release() {
        return this.isComposing;
    }

    public final boolean getAreChildrenComposing$runtime_release() {
        return this.childrenComposing > 0;
    }

    public final SlotReader getReader$runtime_release() {
        return this.reader;
    }

    public final void setReader$runtime_release(SlotReader slotReader) {
        this.reader = slotReader;
    }

    public final ChangeList getDeferredChanges$runtime_release() {
        return this.deferredChanges;
    }

    @Override // androidx.compose.runtime.Composer
    public CoroutineContext getApplyCoroutineContext() {
        return this.parentContext.getEffectCoroutineContext();
    }

    @Override // androidx.compose.runtime.Composer
    public void startReplaceableGroup(int i) {
        m1017startBaiHCIY(i, null, GroupKind.Companion.m1022getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void endReplaceableGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void startReplaceGroup(int i) {
        if (this.pending != null) {
            m1017startBaiHCIY(i, null, GroupKind.Companion.m1022getGroupULZAiWs(), null);
            return;
        }
        validateNodeNotExpected();
        this.compoundKeyHash = this.rGroupIndex ^ Integer.rotateLeft(Integer.rotateLeft(getCompoundKeyHash(), 3) ^ i, 3);
        this.rGroupIndex++;
        SlotReader slotReader = this.reader;
        if (getInserting()) {
            slotReader.beginEmpty();
            this.writer.startGroup(i, Composer.Companion.getEmpty());
            enterGroup(false, null);
            return;
        }
        if (slotReader.getGroupKey() == i && !slotReader.getHasObjectKey()) {
            slotReader.startGroup();
            enterGroup(false, null);
            return;
        }
        if (!slotReader.isGroupEnd()) {
            int i2 = this.nodeIndex;
            int currentGroup = slotReader.getCurrentGroup();
            recordDelete();
            this.changeListWriter.removeNode(i2, slotReader.skipGroup());
            ComposerKt.removeRange(this.invalidations, currentGroup, slotReader.getCurrentGroup());
        }
        slotReader.beginEmpty();
        this.inserting = true;
        this.providerCache = null;
        ensureWriter();
        SlotWriter slotWriter = this.writer;
        slotWriter.beginInsert();
        int currentGroup2 = slotWriter.getCurrentGroup();
        slotWriter.startGroup(i, Composer.Companion.getEmpty());
        this.insertAnchor = slotWriter.anchor(currentGroup2);
        enterGroup(false, null);
    }

    @Override // androidx.compose.runtime.Composer
    public void endReplaceGroup() {
        endGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void startDefaults() {
        m1017startBaiHCIY(-127, null, GroupKind.Companion.m1022getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void endDefaults() {
        endGroup();
        RecomposeScopeImpl currentRecomposeScope$runtime_release = getCurrentRecomposeScope$runtime_release();
        if (currentRecomposeScope$runtime_release == null || !currentRecomposeScope$runtime_release.getUsed()) {
            return;
        }
        currentRecomposeScope$runtime_release.setDefaultsInScope(true);
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getDefaultsInvalid() {
        if (!getSkipping() || this.providersInvalid) {
            return true;
        }
        RecomposeScopeImpl currentRecomposeScope$runtime_release = getCurrentRecomposeScope$runtime_release();
        return currentRecomposeScope$runtime_release != null && currentRecomposeScope$runtime_release.getDefaultsInvalid();
    }

    @Override // androidx.compose.runtime.Composer
    public void startMovableGroup(int i, Object obj) {
        m1017startBaiHCIY(i, obj, GroupKind.Companion.m1022getGroupULZAiWs(), null);
    }

    @Override // androidx.compose.runtime.Composer
    public void endMovableGroup() {
        endGroup();
    }

    private final void startRoot() {
        int asInt;
        this.rGroupIndex = 0;
        this.reader = this.slotTable.openReader();
        startGroup(100);
        this.parentContext.startComposing$runtime_release();
        this.parentProvider = this.parentContext.getCompositionLocalScope$runtime_release();
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = changed(this.parentProvider);
        this.providerCache = null;
        if (!this.forceRecomposeScopes) {
            this.forceRecomposeScopes = this.parentContext.getCollectingParameterInformation$runtime_release();
        }
        if (!this.sourceMarkersEnabled) {
            this.sourceMarkersEnabled = this.parentContext.getCollectingSourceInformation$runtime_release();
        }
        Set set = (Set) CompositionLocalMapKt.read(this.parentProvider, InspectionTablesKt.getLocalInspectionTables());
        if (set != null) {
            set.add(this.slotTable);
            this.parentContext.recordInspectionTable$runtime_release(set);
        }
        startGroup(this.parentContext.getCompoundHashKey$runtime_release());
    }

    private final void endRoot() {
        boolean asBool;
        endGroup();
        this.parentContext.doneComposing$runtime_release();
        endGroup();
        this.changeListWriter.endRoot();
        finalizeCompose();
        this.reader.close();
        this.forciblyRecompose = false;
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
    }

    private final void abortRoot() {
        cleanUpCompose();
        this.pendingStack.clear();
        this.parentStateStack.clear();
        this.entersStack.clear();
        this.providersInvalidStack.clear();
        this.providerUpdates = null;
        this.insertFixups.clear();
        this.compoundKeyHash = 0;
        this.childrenComposing = 0;
        this.nodeExpected = false;
        this.inserting = false;
        this.reusing = false;
        this.isComposing = false;
        this.forciblyRecompose = false;
        this.reusingGroup = -1;
        if (!this.reader.getClosed()) {
            this.reader.close();
        }
        if (this.writer.getClosed()) {
            return;
        }
        forceFreshInsertTable();
    }

    public final void changesApplied$runtime_release() {
        this.providerUpdates = null;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getInserting() {
        return this.inserting;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean getSkipping() {
        RecomposeScopeImpl currentRecomposeScope$runtime_release;
        return (getInserting() || this.reusing || this.providersInvalid || (currentRecomposeScope$runtime_release = getCurrentRecomposeScope$runtime_release()) == null || currentRecomposeScope$runtime_release.getRequiresRecompose() || this.forciblyRecompose) ? false : true;
    }

    @Override // androidx.compose.runtime.Composer
    public int getCompoundKeyHash() {
        return this.compoundKeyHash;
    }

    @Override // androidx.compose.runtime.Composer
    public void collectParameterInformation() {
        this.forceRecomposeScopes = true;
        this.sourceMarkersEnabled = true;
        this.slotTable.collectSourceInformation();
        this.insertTable.collectSourceInformation();
        this.writer.updateToTableMaps();
    }

    public final void deactivate$runtime_release() {
        this.invalidateStack.clear();
        this.invalidations.clear();
        this.changes.clear();
        this.providerUpdates = null;
    }

    private final void startGroup(int i) {
        m1017startBaiHCIY(i, null, GroupKind.Companion.m1022getGroupULZAiWs(), null);
    }

    private final void startGroup(int i, Object obj) {
        m1017startBaiHCIY(i, obj, GroupKind.Companion.m1022getGroupULZAiWs(), null);
    }

    private final void endGroup() {
        end(false);
    }

    private final void skipGroup() {
        this.groupNodeCount += this.reader.skipGroup();
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableNode() {
        m1017startBaiHCIY(125, null, GroupKind.Companion.m1024getReusableNodeULZAiWs(), null);
        this.nodeExpected = true;
    }

    @Override // androidx.compose.runtime.Composer
    public void createNode(Function0 function0) {
        validateNodeExpected();
        if (!getInserting()) {
            ComposerKt.composeImmediateRuntimeError("createNode() can only be called when inserting");
        }
        int peek = this.parentStateStack.peek();
        SlotWriter slotWriter = this.writer;
        Anchor anchor = slotWriter.anchor(slotWriter.getParent());
        this.groupNodeCount++;
        this.insertFixups.createAndInsertNode(function0, peek, anchor);
    }

    @Override // androidx.compose.runtime.Composer
    public void useNode() {
        validateNodeExpected();
        if (getInserting()) {
            ComposerKt.composeImmediateRuntimeError("useNode() called while inserting");
        }
        Object node = getNode(this.reader);
        this.changeListWriter.moveDown(node);
        if (this.reusing && (node instanceof ComposeNodeLifecycleCallback)) {
            this.changeListWriter.useNode(node);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void endNode() {
        end(true);
    }

    @Override // androidx.compose.runtime.Composer
    public void startReusableGroup(int i, Object obj) {
        if (!getInserting() && this.reader.getGroupKey() == i && !Intrinsics.areEqual(this.reader.getGroupAux(), obj) && this.reusingGroup < 0) {
            this.reusingGroup = this.reader.getCurrentGroup();
            this.reusing = true;
        }
        m1017startBaiHCIY(i, null, GroupKind.Companion.m1022getGroupULZAiWs(), obj);
    }

    @Override // androidx.compose.runtime.Composer
    public void endReusableGroup() {
        if (this.reusing && this.reader.getParent() == this.reusingGroup) {
            this.reusingGroup = -1;
            this.reusing = false;
        }
        end(false);
    }

    public final void startReuseFromRoot() {
        this.reusingGroup = 100;
        this.reusing = true;
    }

    public final void endReuseFromRoot() {
        if (!(!this.isComposing && this.reusingGroup == 100)) {
            PreconditionsKt.throwIllegalArgumentException("Cannot disable reuse from root if it was caused by other groups");
        }
        this.reusingGroup = -1;
        this.reusing = false;
    }

    @Override // androidx.compose.runtime.Composer
    public void apply(Object obj, Function2 function2) {
        if (getInserting()) {
            this.insertFixups.updateNode(obj, function2);
        } else {
            this.changeListWriter.updateNode(obj, function2);
        }
    }

    public final Object nextSlot() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        return (!this.reusing || (next instanceof ReusableRememberObserver)) ? next : Composer.Companion.getEmpty();
    }

    public final Object nextSlotForCache() {
        if (getInserting()) {
            validateNodeNotExpected();
            return Composer.Companion.getEmpty();
        }
        Object next = this.reader.next();
        return (!this.reusing || (next instanceof ReusableRememberObserver)) ? next instanceof RememberObserverHolder ? ((RememberObserverHolder) next).getWrapped() : next : Composer.Companion.getEmpty();
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(Object obj) {
        if (Intrinsics.areEqual(nextSlot(), obj)) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changedInstance(Object obj) {
        if (nextSlot() == obj) {
            return false;
        }
        updateValue(obj);
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(boolean z) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Boolean) && z == ((Boolean) nextSlot).booleanValue()) {
            return false;
        }
        updateValue(Boolean.valueOf(z));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(float f) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Float) && f == ((Number) nextSlot).floatValue()) {
            return false;
        }
        updateValue(Float.valueOf(f));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(long j) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Long) && j == ((Number) nextSlot).longValue()) {
            return false;
        }
        updateValue(Long.valueOf(j));
        return true;
    }

    @Override // androidx.compose.runtime.Composer
    public boolean changed(int i) {
        Object nextSlot = nextSlot();
        if ((nextSlot instanceof Integer) && i == ((Number) nextSlot).intValue()) {
            return false;
        }
        updateValue(Integer.valueOf(i));
        return true;
    }

    private final void updateSlot(Object obj) {
        nextSlot();
        updateValue(obj);
    }

    public final void updateValue(Object obj) {
        if (getInserting()) {
            this.writer.update(obj);
            return;
        }
        if (this.reader.getHadNext()) {
            int groupSlotIndex = this.reader.getGroupSlotIndex() - 1;
            if (this.changeListWriter.getPastParent()) {
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                SlotReader slotReader = this.reader;
                composerChangeListWriter.updateAnchoredValue(obj, slotReader.anchor(slotReader.getParent()), groupSlotIndex);
                return;
            }
            this.changeListWriter.updateValue(obj, groupSlotIndex);
            return;
        }
        ComposerChangeListWriter composerChangeListWriter2 = this.changeListWriter;
        SlotReader slotReader2 = this.reader;
        composerChangeListWriter2.appendValue(slotReader2.anchor(slotReader2.getParent()), obj);
    }

    public final void updateCachedValue(Object obj) {
        if (obj instanceof RememberObserver) {
            if (getInserting()) {
                this.changeListWriter.remember((RememberObserver) obj);
            }
            this.abandonSet.add(obj);
            obj = new RememberObserverHolder((RememberObserver) obj, rememberObserverAnchor());
        }
        updateValue(obj);
    }

    private final Anchor rememberObserverAnchor() {
        int i;
        int i2;
        if (getInserting()) {
            if (!ComposerKt.isAfterFirstChild(this.writer)) {
                return null;
            }
            int currentGroup = this.writer.getCurrentGroup() - 1;
            int parent = this.writer.parent(currentGroup);
            while (true) {
                int i3 = parent;
                i2 = currentGroup;
                currentGroup = i3;
                if (currentGroup == this.writer.getParent() || currentGroup < 0) {
                    break;
                }
                parent = this.writer.parent(currentGroup);
            }
            return this.writer.anchor(i2);
        }
        if (!ComposerKt.isAfterFirstChild(this.reader)) {
            return null;
        }
        int currentGroup2 = this.reader.getCurrentGroup() - 1;
        int parent2 = this.reader.parent(currentGroup2);
        while (true) {
            int i4 = parent2;
            i = currentGroup2;
            currentGroup2 = i4;
            if (currentGroup2 == this.reader.getParent() || currentGroup2 < 0) {
                break;
            }
            parent2 = this.reader.parent(currentGroup2);
        }
        return this.reader.anchor(i);
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionData getCompositionData() {
        return this.slotTable;
    }

    @Override // androidx.compose.runtime.Composer
    public void recordSideEffect(Function0 function0) {
        this.changeListWriter.sideEffect(function0);
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope() {
        PersistentCompositionLocalMap persistentCompositionLocalMap = this.providerCache;
        return persistentCompositionLocalMap != null ? persistentCompositionLocalMap : currentCompositionLocalScope(this.reader.getParent());
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionLocalMap getCurrentCompositionLocalMap() {
        return currentCompositionLocalScope();
    }

    private final PersistentCompositionLocalMap currentCompositionLocalScope(int i) {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        if (getInserting() && this.writerHasAProvider) {
            int parent = this.writer.getParent();
            while (parent > 0) {
                if (this.writer.groupKey(parent) == 202 && Intrinsics.areEqual(this.writer.groupObjectKey(parent), ComposerKt.getCompositionLocalMap())) {
                    Object groupAux = this.writer.groupAux(parent);
                    Intrinsics.checkNotNull(groupAux, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                    PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) groupAux;
                    this.providerCache = persistentCompositionLocalMap2;
                    return persistentCompositionLocalMap2;
                }
                parent = this.writer.parent(parent);
            }
        }
        if (this.reader.getSize() > 0) {
            while (i > 0) {
                if (this.reader.groupKey(i) == 202 && Intrinsics.areEqual(this.reader.groupObjectKey(i), ComposerKt.getCompositionLocalMap())) {
                    IntMap intMap = this.providerUpdates;
                    if (intMap == null || (persistentCompositionLocalMap = (PersistentCompositionLocalMap) intMap.get(i)) == null) {
                        Object groupAux2 = this.reader.groupAux(i);
                        Intrinsics.checkNotNull(groupAux2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                        persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupAux2;
                    }
                    this.providerCache = persistentCompositionLocalMap;
                    return persistentCompositionLocalMap;
                }
                i = this.reader.parent(i);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap3 = this.parentProvider;
        this.providerCache = persistentCompositionLocalMap3;
        return persistentCompositionLocalMap3;
    }

    @Override // androidx.compose.runtime.Composer
    public void startProvider(ProvidedValue providedValue) {
        ValueHolder valueHolder;
        int asInt;
        PersistentCompositionLocalMap currentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(201, ComposerKt.getProvider());
        Object rememberedValue = rememberedValue();
        if (Intrinsics.areEqual(rememberedValue, Composer.Companion.getEmpty())) {
            valueHolder = null;
        } else {
            Intrinsics.checkNotNull(rememberedValue, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>");
            valueHolder = (ValueHolder) rememberedValue;
        }
        CompositionLocal compositionLocal = providedValue.getCompositionLocal();
        Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        Intrinsics.checkNotNull(providedValue, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>");
        ValueHolder updatedStateOf$runtime_release = compositionLocal.updatedStateOf$runtime_release(providedValue, valueHolder);
        boolean areEqual = Intrinsics.areEqual(updatedStateOf$runtime_release, valueHolder);
        if (!areEqual) {
            updateRememberedValue(updatedStateOf$runtime_release);
        }
        boolean z = true;
        boolean z2 = false;
        if (getInserting()) {
            if (providedValue.getCanOverride() || !CompositionLocalMapKt.contains(currentCompositionLocalScope, compositionLocal)) {
                currentCompositionLocalScope = currentCompositionLocalScope.putValue(compositionLocal, updatedStateOf$runtime_release);
            }
            this.writerHasAProvider = true;
        } else {
            SlotReader slotReader = this.reader;
            Object groupAux = slotReader.groupAux(slotReader.getCurrentGroup());
            Intrinsics.checkNotNull(groupAux, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupAux;
            currentCompositionLocalScope = (!(getSkipping() && areEqual) && (providedValue.getCanOverride() || !CompositionLocalMapKt.contains(currentCompositionLocalScope, compositionLocal))) ? currentCompositionLocalScope.putValue(compositionLocal, updatedStateOf$runtime_release) : persistentCompositionLocalMap;
            if (!this.reusing && persistentCompositionLocalMap == currentCompositionLocalScope) {
                z = false;
            }
            z2 = z;
        }
        if (z2 && !getInserting()) {
            recordProviderUpdate(currentCompositionLocalScope);
        }
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = z2;
        this.providerCache = currentCompositionLocalScope;
        m1017startBaiHCIY(202, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m1022getGroupULZAiWs(), currentCompositionLocalScope);
    }

    private final void recordProviderUpdate(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        IntMap intMap = this.providerUpdates;
        if (intMap == null) {
            intMap = new IntMap(0, 1, null);
            this.providerUpdates = intMap;
        }
        intMap.set(this.reader.getCurrentGroup(), persistentCompositionLocalMap);
    }

    @Override // androidx.compose.runtime.Composer
    public void endProvider() {
        boolean asBool;
        endGroup();
        endGroup();
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    public void startProviders(ProvidedValue[] providedValueArr) {
        PersistentCompositionLocalMap updateProviderMapGroup;
        int asInt;
        PersistentCompositionLocalMap currentCompositionLocalScope = currentCompositionLocalScope();
        startGroup(201, ComposerKt.getProvider());
        boolean z = true;
        boolean z2 = false;
        if (getInserting()) {
            updateProviderMapGroup = updateProviderMapGroup(currentCompositionLocalScope, CompositionLocalMapKt.updateCompositionMap$default(providedValueArr, currentCompositionLocalScope, null, 4, null));
            this.writerHasAProvider = true;
        } else {
            Object groupGet = this.reader.groupGet(0);
            Intrinsics.checkNotNull(groupGet, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap = (PersistentCompositionLocalMap) groupGet;
            Object groupGet2 = this.reader.groupGet(1);
            Intrinsics.checkNotNull(groupGet2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            PersistentCompositionLocalMap persistentCompositionLocalMap2 = (PersistentCompositionLocalMap) groupGet2;
            PersistentCompositionLocalMap updateCompositionMap = CompositionLocalMapKt.updateCompositionMap(providedValueArr, currentCompositionLocalScope, persistentCompositionLocalMap2);
            if (!getSkipping() || this.reusing || !Intrinsics.areEqual(persistentCompositionLocalMap2, updateCompositionMap)) {
                updateProviderMapGroup = updateProviderMapGroup(currentCompositionLocalScope, updateCompositionMap);
                if (!this.reusing && Intrinsics.areEqual(updateProviderMapGroup, persistentCompositionLocalMap)) {
                    z = false;
                }
                z2 = z;
            } else {
                skipGroup();
                updateProviderMapGroup = persistentCompositionLocalMap;
            }
        }
        if (z2 && !getInserting()) {
            recordProviderUpdate(updateProviderMapGroup);
        }
        IntStack intStack = this.providersInvalidStack;
        asInt = ComposerKt.asInt(this.providersInvalid);
        intStack.push(asInt);
        this.providersInvalid = z2;
        this.providerCache = updateProviderMapGroup;
        m1017startBaiHCIY(202, ComposerKt.getCompositionLocalMap(), GroupKind.Companion.m1022getGroupULZAiWs(), updateProviderMapGroup);
    }

    @Override // androidx.compose.runtime.Composer
    public void endProviders() {
        boolean asBool;
        endGroup();
        endGroup();
        asBool = ComposerKt.asBool(this.providersInvalidStack.pop());
        this.providersInvalid = asBool;
        this.providerCache = null;
    }

    @Override // androidx.compose.runtime.Composer
    public Object consume(CompositionLocal compositionLocal) {
        return CompositionLocalMapKt.read(currentCompositionLocalScope(), compositionLocal);
    }

    @Override // androidx.compose.runtime.Composer
    public CompositionContext buildContext() {
        startGroup(206, ComposerKt.getReference());
        if (getInserting()) {
            SlotWriter.markGroup$default(this.writer, 0, 1, null);
        }
        Object nextSlot = nextSlot();
        CompositionContextHolder compositionContextHolder = nextSlot instanceof CompositionContextHolder ? (CompositionContextHolder) nextSlot : null;
        if (compositionContextHolder == null) {
            int compoundKeyHash = getCompoundKeyHash();
            boolean z = this.forceRecomposeScopes;
            boolean z2 = this.sourceMarkersEnabled;
            ControlledComposition composition = getComposition();
            CompositionImpl compositionImpl = composition instanceof CompositionImpl ? (CompositionImpl) composition : null;
            compositionContextHolder = new CompositionContextHolder(new CompositionContextImpl(compoundKeyHash, z, z2, compositionImpl != null ? compositionImpl.getObserverHolder$runtime_release() : null));
            updateValue(compositionContextHolder);
        }
        compositionContextHolder.getRef().updateCompositionLocalScope(currentCompositionLocalScope());
        endGroup();
        return compositionContextHolder.getRef();
    }

    public final RecomposeScopeImpl getCurrentRecomposeScope$runtime_release() {
        Stack stack = this.invalidateStack;
        if (this.childrenComposing == 0 && stack.isNotEmpty()) {
            return (RecomposeScopeImpl) stack.peek();
        }
        return null;
    }

    private final void ensureWriter() {
        if (this.writer.getClosed()) {
            SlotWriter openWriter = this.insertTable.openWriter();
            this.writer = openWriter;
            openWriter.skipToGroupEnd();
            this.writerHasAProvider = false;
            this.providerCache = null;
        }
    }

    private final void createFreshInsertTable() {
        ComposerKt.runtimeCheck(this.writer.getClosed());
        forceFreshInsertTable();
    }

    private final void forceFreshInsertTable() {
        SlotTable slotTable = new SlotTable();
        if (this.sourceMarkersEnabled) {
            slotTable.collectSourceInformation();
        }
        if (this.parentContext.getCollectingCallByInformation$runtime_release()) {
            slotTable.collectCalledByInformation();
        }
        this.insertTable = slotTable;
        SlotWriter openWriter = slotTable.openWriter();
        openWriter.close(true);
        this.writer = openWriter;
    }

    private final void startReaderGroup(boolean z, Object obj) {
        if (z) {
            this.reader.startNode();
            return;
        }
        if (obj != null && this.reader.getGroupAux() != obj) {
            this.changeListWriter.updateAuxData(obj);
        }
        this.reader.startGroup();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0078  */
    /* renamed from: start-BaiHCIY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m1017startBaiHCIY(int r14, java.lang.Object r15, int r16, java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.m1017startBaiHCIY(int, java.lang.Object, int, java.lang.Object):void");
    }

    private final void enterGroup(boolean z, Pending pending) {
        this.pendingStack.push(this.pending);
        this.pending = pending;
        this.parentStateStack.push(this.groupNodeCount);
        this.parentStateStack.push(this.rGroupIndex);
        this.parentStateStack.push(this.nodeIndex);
        if (z) {
            this.nodeIndex = 0;
        }
        this.groupNodeCount = 0;
        this.rGroupIndex = 0;
    }

    private final void exitGroup(int i, boolean z) {
        Pending pending = (Pending) this.pendingStack.pop();
        if (pending != null && !z) {
            pending.setGroupIndex(pending.getGroupIndex() + 1);
        }
        this.pending = pending;
        this.nodeIndex = this.parentStateStack.pop() + i;
        this.rGroupIndex = this.parentStateStack.pop();
        this.groupNodeCount = this.parentStateStack.pop() + i;
    }

    private final void end(boolean z) {
        int ordinal;
        Set set;
        List list;
        int ordinal2;
        int peek2 = this.parentStateStack.peek2() - 1;
        if (getInserting()) {
            int parent = this.writer.getParent();
            int groupKey = this.writer.groupKey(parent);
            Object groupObjectKey = this.writer.groupObjectKey(parent);
            Object groupAux = this.writer.groupAux(parent);
            if (groupObjectKey != null) {
                ordinal2 = (groupObjectKey instanceof Enum ? ((Enum) groupObjectKey).ordinal() : groupObjectKey.hashCode()) ^ Integer.rotateRight(getCompoundKeyHash(), 3);
            } else if (groupAux == null || groupKey != 207 || Intrinsics.areEqual(groupAux, Composer.Companion.getEmpty())) {
                ordinal2 = Integer.rotateRight(peek2 ^ getCompoundKeyHash(), 3) ^ groupKey;
            } else {
                this.compoundKeyHash = Integer.rotateRight(Integer.rotateRight(peek2 ^ getCompoundKeyHash(), 3) ^ groupAux.hashCode(), 3);
            }
            this.compoundKeyHash = Integer.rotateRight(ordinal2, 3);
        } else {
            int parent2 = this.reader.getParent();
            int groupKey2 = this.reader.groupKey(parent2);
            Object groupObjectKey2 = this.reader.groupObjectKey(parent2);
            Object groupAux2 = this.reader.groupAux(parent2);
            if (groupObjectKey2 != null) {
                ordinal = (groupObjectKey2 instanceof Enum ? ((Enum) groupObjectKey2).ordinal() : groupObjectKey2.hashCode()) ^ Integer.rotateRight(getCompoundKeyHash(), 3);
            } else if (groupAux2 == null || groupKey2 != 207 || Intrinsics.areEqual(groupAux2, Composer.Companion.getEmpty())) {
                ordinal = Integer.rotateRight(peek2 ^ getCompoundKeyHash(), 3) ^ groupKey2;
            } else {
                this.compoundKeyHash = Integer.rotateRight(Integer.rotateRight(peek2 ^ getCompoundKeyHash(), 3) ^ groupAux2.hashCode(), 3);
            }
            this.compoundKeyHash = Integer.rotateRight(ordinal, 3);
        }
        int i = this.groupNodeCount;
        Pending pending = this.pending;
        if (pending != null && pending.getKeyInfos().size() > 0) {
            List keyInfos = pending.getKeyInfos();
            List used = pending.getUsed();
            Set fastToSet = ListUtilsKt.fastToSet(used);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = used.size();
            int size2 = keyInfos.size();
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i2 < size2) {
                KeyInfo keyInfo = (KeyInfo) keyInfos.get(i2);
                if (fastToSet.contains(keyInfo)) {
                    set = fastToSet;
                    if (!linkedHashSet.contains(keyInfo)) {
                        if (i3 < size) {
                            KeyInfo keyInfo2 = (KeyInfo) used.get(i3);
                            if (keyInfo2 != keyInfo) {
                                int nodePositionOf = pending.nodePositionOf(keyInfo2);
                                linkedHashSet.add(keyInfo2);
                                if (nodePositionOf != i4) {
                                    int updatedNodeCountOf = pending.updatedNodeCountOf(keyInfo2);
                                    list = used;
                                    this.changeListWriter.moveNode(pending.getStartIndex() + nodePositionOf, i4 + pending.getStartIndex(), updatedNodeCountOf);
                                    pending.registerMoveNode(nodePositionOf, i4, updatedNodeCountOf);
                                } else {
                                    list = used;
                                }
                            } else {
                                list = used;
                                i2++;
                            }
                            i3++;
                            i4 += pending.updatedNodeCountOf(keyInfo2);
                            fastToSet = set;
                            used = list;
                        }
                        fastToSet = set;
                    }
                } else {
                    this.changeListWriter.removeNode(pending.nodePositionOf(keyInfo) + pending.getStartIndex(), keyInfo.getNodes());
                    pending.updateNodeCount(keyInfo.getLocation(), 0);
                    this.changeListWriter.moveReaderRelativeTo(keyInfo.getLocation());
                    this.reader.reposition(keyInfo.getLocation());
                    recordDelete();
                    this.reader.skipGroup();
                    set = fastToSet;
                    ComposerKt.removeRange(this.invalidations, keyInfo.getLocation(), keyInfo.getLocation() + this.reader.groupSize(keyInfo.getLocation()));
                }
                i2++;
                fastToSet = set;
            }
            this.changeListWriter.endNodeMovement();
            if (keyInfos.size() > 0) {
                this.changeListWriter.moveReaderRelativeTo(this.reader.getGroupEnd());
                this.reader.skipToGroupEnd();
            }
        }
        int i5 = this.nodeIndex;
        while (!this.reader.isGroupEnd()) {
            int currentGroup = this.reader.getCurrentGroup();
            recordDelete();
            this.changeListWriter.removeNode(i5, this.reader.skipGroup());
            ComposerKt.removeRange(this.invalidations, currentGroup, this.reader.getCurrentGroup());
        }
        boolean inserting = getInserting();
        if (inserting) {
            if (z) {
                this.insertFixups.endNodeInsert();
                i = 1;
            }
            this.reader.endEmpty();
            int parent3 = this.writer.getParent();
            this.writer.endGroup();
            if (!this.reader.getInEmpty()) {
                int insertedGroupVirtualIndex = insertedGroupVirtualIndex(parent3);
                this.writer.endInsert();
                this.writer.close(true);
                recordInsert(this.insertAnchor);
                this.inserting = false;
                if (!this.slotTable.isEmpty()) {
                    updateNodeCount(insertedGroupVirtualIndex, 0);
                    updateNodeCountOverrides(insertedGroupVirtualIndex, i);
                }
            }
        } else {
            if (z) {
                this.changeListWriter.moveUp();
            }
            int remainingSlots = this.reader.getRemainingSlots();
            if (remainingSlots > 0) {
                this.changeListWriter.trimValues(remainingSlots);
            }
            this.changeListWriter.endCurrentGroup();
            int parent4 = this.reader.getParent();
            if (i != updatedNodeCount(parent4)) {
                updateNodeCountOverrides(parent4, i);
            }
            if (z) {
                i = 1;
            }
            this.reader.endGroup();
            this.changeListWriter.endNodeMovement();
        }
        exitGroup(i, inserting);
    }

    private final void recomposeToGroupEnd() {
        Invalidation firstInRange;
        boolean z = this.isComposing;
        this.isComposing = true;
        int parent = this.reader.getParent();
        int groupSize = this.reader.groupSize(parent) + parent;
        int i = this.nodeIndex;
        int compoundKeyHash = getCompoundKeyHash();
        int i2 = this.groupNodeCount;
        int i3 = this.rGroupIndex;
        firstInRange = ComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), groupSize);
        boolean z2 = false;
        int i4 = parent;
        while (firstInRange != null) {
            int location = firstInRange.getLocation();
            ComposerKt.removeLocation(this.invalidations, location);
            if (firstInRange.isInvalid()) {
                this.reader.reposition(location);
                int currentGroup = this.reader.getCurrentGroup();
                recordUpsAndDowns(i4, currentGroup, parent);
                this.nodeIndex = nodeIndexOf(location, currentGroup, parent, i);
                this.rGroupIndex = rGroupIndexOf(currentGroup);
                int parent2 = this.reader.parent(currentGroup);
                this.compoundKeyHash = compoundKeyOf(parent2, rGroupIndexOf(parent2), parent, compoundKeyHash);
                this.providerCache = null;
                firstInRange.getScope().compose(this);
                this.providerCache = null;
                this.reader.restoreParent(parent);
                i4 = currentGroup;
                z2 = true;
            } else {
                this.invalidateStack.push(firstInRange.getScope());
                firstInRange.getScope().rereadTrackedInstances();
                this.invalidateStack.pop();
            }
            firstInRange = ComposerKt.firstInRange(this.invalidations, this.reader.getCurrentGroup(), groupSize);
        }
        if (z2) {
            recordUpsAndDowns(i4, parent, parent);
            this.reader.skipToGroupEnd();
            int updatedNodeCount = updatedNodeCount(parent);
            this.nodeIndex = i + updatedNodeCount;
            this.groupNodeCount = i2 + updatedNodeCount;
            this.rGroupIndex = i3;
        } else {
            skipReaderToGroupEnd();
        }
        this.compoundKeyHash = compoundKeyHash;
        this.isComposing = z;
    }

    private final void updateNodeCountOverrides(int i, int i2) {
        int updatedNodeCount = updatedNodeCount(i);
        if (updatedNodeCount != i2) {
            int i3 = i2 - updatedNodeCount;
            int size = this.pendingStack.getSize() - 1;
            while (i != -1) {
                int updatedNodeCount2 = updatedNodeCount(i) + i3;
                updateNodeCount(i, updatedNodeCount2);
                int i4 = size;
                while (true) {
                    if (-1 < i4) {
                        Pending pending = (Pending) this.pendingStack.peek(i4);
                        if (pending != null && pending.updateNodeCount(i, updatedNodeCount2)) {
                            size = i4 - 1;
                            break;
                        }
                        i4--;
                    } else {
                        break;
                    }
                }
                if (i < 0) {
                    i = this.reader.getParent();
                } else if (this.reader.isNode(i)) {
                    return;
                } else {
                    i = this.reader.parent(i);
                }
            }
        }
    }

    private final int nodeIndexOf(int i, int i2, int i3, int i4) {
        int parent = this.reader.parent(i2);
        while (parent != i3 && !this.reader.isNode(parent)) {
            parent = this.reader.parent(parent);
        }
        if (this.reader.isNode(parent)) {
            i4 = 0;
        }
        if (parent == i2) {
            return i4;
        }
        int updatedNodeCount = (updatedNodeCount(parent) - this.reader.nodeCount(i2)) + i4;
        loop1: while (i4 < updatedNodeCount && parent != i) {
            parent++;
            while (parent < i) {
                int groupSize = this.reader.groupSize(parent) + parent;
                if (i >= groupSize) {
                    i4 += this.reader.isNode(parent) ? 1 : updatedNodeCount(parent);
                    parent = groupSize;
                }
            }
            break loop1;
        }
        return i4;
    }

    private final int rGroupIndexOf(int i) {
        int parent = this.reader.parent(i) + 1;
        int i2 = 0;
        while (parent < i) {
            if (!this.reader.hasObjectKey(parent)) {
                i2++;
            }
            parent += this.reader.groupSize(parent);
        }
        return i2;
    }

    private final int updatedNodeCount(int i) {
        int i2;
        if (i < 0) {
            MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
            if (mutableIntIntMap == null || !mutableIntIntMap.contains(i)) {
                return 0;
            }
            return mutableIntIntMap.get(i);
        }
        int[] iArr = this.nodeCountOverrides;
        return (iArr == null || (i2 = iArr[i]) < 0) ? this.reader.nodeCount(i) : i2;
    }

    private final void updateNodeCount(int i, int i2) {
        if (updatedNodeCount(i) != i2) {
            if (i < 0) {
                MutableIntIntMap mutableIntIntMap = this.nodeCountVirtualOverrides;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap(0, 1, null);
                    this.nodeCountVirtualOverrides = mutableIntIntMap;
                }
                mutableIntIntMap.set(i, i2);
                return;
            }
            int[] iArr = this.nodeCountOverrides;
            if (iArr == null) {
                iArr = new int[this.reader.getSize()];
                ArraysKt.fill$default(iArr, -1, 0, 0, 6, (Object) null);
                this.nodeCountOverrides = iArr;
            }
            iArr[i] = i2;
        }
    }

    private final void clearUpdatedNodeCounts() {
        this.nodeCountOverrides = null;
        this.nodeCountVirtualOverrides = null;
    }

    private final void recordUpsAndDowns(int i, int i2, int i3) {
        int nearestCommonRootOf;
        SlotReader slotReader = this.reader;
        nearestCommonRootOf = ComposerKt.nearestCommonRootOf(slotReader, i, i2, i3);
        while (i > 0 && i != nearestCommonRootOf) {
            if (slotReader.isNode(i)) {
                this.changeListWriter.moveUp();
            }
            i = slotReader.parent(i);
        }
        doRecordDownsFor(i2, nearestCommonRootOf);
    }

    private final void doRecordDownsFor(int i, int i2) {
        if (i <= 0 || i == i2) {
            return;
        }
        doRecordDownsFor(this.reader.parent(i), i2);
        if (this.reader.isNode(i)) {
            this.changeListWriter.moveDown(nodeAt(this.reader, i));
        }
    }

    private final int compoundKeyOf(int i, int i2, int i3, int i4) {
        if (i == i3) {
            return i4;
        }
        int groupCompoundKeyPart = groupCompoundKeyPart(this.reader, i);
        if (groupCompoundKeyPart == 126665345) {
            return groupCompoundKeyPart;
        }
        int parent = this.reader.parent(i);
        if (parent != i3) {
            i4 = compoundKeyOf(parent, rGroupIndexOf(parent), i3, i4);
        }
        if (this.reader.hasObjectKey(i)) {
            i2 = 0;
        }
        return Integer.rotateLeft(Integer.rotateLeft(i4, 3) ^ groupCompoundKeyPart, 3) ^ i2;
    }

    private final int groupCompoundKeyPart(SlotReader slotReader, int i) {
        Object groupAux;
        if (slotReader.hasObjectKey(i)) {
            Object groupObjectKey = slotReader.groupObjectKey(i);
            if (groupObjectKey != null) {
                return groupObjectKey instanceof Enum ? ((Enum) groupObjectKey).ordinal() : groupObjectKey.hashCode();
            }
            return 0;
        }
        int groupKey = slotReader.groupKey(i);
        if (groupKey == 207 && (groupAux = slotReader.groupAux(i)) != null && !Intrinsics.areEqual(groupAux, Composer.Companion.getEmpty())) {
            groupKey = groupAux.hashCode();
        }
        return groupKey;
    }

    public final boolean tryImminentInvalidation$runtime_release(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        Anchor anchor = recomposeScopeImpl.getAnchor();
        if (anchor == null) {
            return false;
        }
        int indexFor = anchor.toIndexFor(this.reader.getTable$runtime_release());
        if (!this.isComposing || indexFor < this.reader.getCurrentGroup()) {
            return false;
        }
        ComposerKt.insertIfMissing(this.invalidations, indexFor, recomposeScopeImpl, obj);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void skipCurrentGroup() {
        /*
            r9 = this;
            java.util.List r0 = r9.invalidations
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Ld
            r9.skipGroup()
            goto Ld5
        Ld:
            androidx.compose.runtime.SlotReader r0 = r9.reader
            int r1 = r0.getGroupKey()
            java.lang.Object r2 = r0.getGroupObjectKey()
            java.lang.Object r3 = r0.getGroupAux()
            int r4 = r9.rGroupIndex
            r5 = 207(0xcf, float:2.9E-43)
            r6 = 3
            if (r2 != 0) goto L58
            if (r3 == 0) goto L47
            if (r1 != r5) goto L47
            androidx.compose.runtime.Composer$Companion r7 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r7 = r7.getEmpty()
            boolean r7 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r7)
            if (r7 != 0) goto L47
            int r7 = r3.hashCode()
            int r8 = r9.getCompoundKeyHash()
            int r8 = java.lang.Integer.rotateLeft(r8, r6)
            r7 = r7 ^ r8
            int r7 = java.lang.Integer.rotateLeft(r7, r6)
            r7 = r7 ^ r4
            r9.compoundKeyHash = r7
            goto L76
        L47:
            int r7 = r9.getCompoundKeyHash()
            int r7 = java.lang.Integer.rotateLeft(r7, r6)
            r7 = r7 ^ r1
            int r7 = java.lang.Integer.rotateLeft(r7, r6)
            r7 = r7 ^ r4
        L55:
            r9.compoundKeyHash = r7
            goto L76
        L58:
            boolean r7 = r2 instanceof java.lang.Enum
            if (r7 == 0) goto L71
            r7 = r2
            java.lang.Enum r7 = (java.lang.Enum) r7
            int r7 = r7.ordinal()
        L63:
            int r8 = r9.getCompoundKeyHash()
            int r8 = java.lang.Integer.rotateLeft(r8, r6)
            r7 = r7 ^ r8
            int r7 = java.lang.Integer.rotateLeft(r7, r6)
            goto L55
        L71:
            int r7 = r2.hashCode()
            goto L63
        L76:
            boolean r7 = r0.isNode()
            r8 = 0
            r9.startReaderGroup(r7, r8)
            r9.recomposeToGroupEnd()
            r0.endGroup()
            if (r2 != 0) goto Lbc
            if (r3 == 0) goto Lab
            if (r1 != r5) goto Lab
            androidx.compose.runtime.Composer$Companion r0 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r0 = r0.getEmpty()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r0)
            if (r0 != 0) goto Lab
            int r0 = r3.hashCode()
            int r1 = r9.getCompoundKeyHash()
            r1 = r1 ^ r4
            int r1 = java.lang.Integer.rotateRight(r1, r6)
            r0 = r0 ^ r1
            int r0 = java.lang.Integer.rotateRight(r0, r6)
            r9.compoundKeyHash = r0
            goto Ld5
        Lab:
            int r0 = r9.getCompoundKeyHash()
            r0 = r0 ^ r4
            int r0 = java.lang.Integer.rotateRight(r0, r6)
            r0 = r0 ^ r1
        Lb5:
            int r0 = java.lang.Integer.rotateRight(r0, r6)
            r9.compoundKeyHash = r0
            goto Ld5
        Lbc:
            boolean r0 = r2 instanceof java.lang.Enum
            if (r0 == 0) goto Ld0
            java.lang.Enum r2 = (java.lang.Enum) r2
            int r0 = r2.ordinal()
        Lc6:
            int r1 = r9.getCompoundKeyHash()
            int r1 = java.lang.Integer.rotateRight(r1, r6)
            r0 = r0 ^ r1
            goto Lb5
        Ld0:
            int r0 = r2.hashCode()
            goto Lc6
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.skipCurrentGroup():void");
    }

    private final void skipReaderToGroupEnd() {
        this.groupNodeCount = this.reader.getParentNodes();
        this.reader.skipToGroupEnd();
    }

    @Override // androidx.compose.runtime.Composer
    public void skipToGroupEnd() {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling skipAndEndGroup");
        }
        RecomposeScopeImpl currentRecomposeScope$runtime_release = getCurrentRecomposeScope$runtime_release();
        if (currentRecomposeScope$runtime_release != null) {
            currentRecomposeScope$runtime_release.scopeSkipped();
        }
        if (this.invalidations.isEmpty()) {
            skipReaderToGroupEnd();
        } else {
            recomposeToGroupEnd();
        }
    }

    @Override // androidx.compose.runtime.Composer
    public void deactivateToEndGroup(boolean z) {
        if (!(this.groupNodeCount == 0)) {
            ComposerKt.composeImmediateRuntimeError("No nodes can be emitted before calling dactivateToEndGroup");
        }
        if (getInserting()) {
            return;
        }
        if (!z) {
            skipReaderToGroupEnd();
            return;
        }
        int currentGroup = this.reader.getCurrentGroup();
        int currentEnd = this.reader.getCurrentEnd();
        this.changeListWriter.deactivateCurrentGroup();
        ComposerKt.removeRange(this.invalidations, currentGroup, currentEnd);
        this.reader.skipToGroupEnd();
    }

    @Override // androidx.compose.runtime.Composer
    public Composer startRestartGroup(int i) {
        startReplaceGroup(i);
        addRecomposeScope();
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0067, code lost:
    
        if (r0 != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void addRecomposeScope() {
        /*
            r4 = this;
            boolean r0 = r4.getInserting()
            java.lang.String r1 = "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl"
            if (r0 == 0) goto L24
            androidx.compose.runtime.RecomposeScopeImpl r0 = new androidx.compose.runtime.RecomposeScopeImpl
            androidx.compose.runtime.ControlledComposition r2 = r4.getComposition()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r1)
            androidx.compose.runtime.CompositionImpl r2 = (androidx.compose.runtime.CompositionImpl) r2
            r0.<init>(r2)
            androidx.compose.runtime.Stack r1 = r4.invalidateStack
            r1.push(r0)
            r4.updateValue(r0)
            int r1 = r4.compositionToken
            r0.start(r1)
            goto L77
        L24:
            java.util.List r0 = r4.invalidations
            androidx.compose.runtime.SlotReader r2 = r4.reader
            int r2 = r2.getParent()
            androidx.compose.runtime.Invalidation r0 = androidx.compose.runtime.ComposerKt.access$removeLocation(r0, r2)
            androidx.compose.runtime.SlotReader r2 = r4.reader
            java.lang.Object r2 = r2.next()
            androidx.compose.runtime.Composer$Companion r3 = androidx.compose.runtime.Composer.Companion
            java.lang.Object r3 = r3.getEmpty()
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            if (r3 == 0) goto L54
            androidx.compose.runtime.RecomposeScopeImpl r2 = new androidx.compose.runtime.RecomposeScopeImpl
            androidx.compose.runtime.ControlledComposition r3 = r4.getComposition()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r1)
            androidx.compose.runtime.CompositionImpl r3 = (androidx.compose.runtime.CompositionImpl) r3
            r2.<init>(r3)
            r4.updateValue(r2)
            goto L5b
        L54:
            java.lang.String r1 = "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2, r1)
            androidx.compose.runtime.RecomposeScopeImpl r2 = (androidx.compose.runtime.RecomposeScopeImpl) r2
        L5b:
            if (r0 != 0) goto L69
            boolean r0 = r2.getForcedRecompose()
            r1 = 0
            if (r0 == 0) goto L67
            r2.setForcedRecompose(r1)
        L67:
            if (r0 == 0) goto L6a
        L69:
            r1 = 1
        L6a:
            r2.setRequiresRecompose(r1)
            androidx.compose.runtime.Stack r0 = r4.invalidateStack
            r0.push(r2)
            int r0 = r4.compositionToken
            r2.start(r0)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.addRecomposeScope():void");
    }

    @Override // androidx.compose.runtime.Composer
    public ScopeUpdateScope endRestartGroup() {
        Anchor anchor;
        Function1 end;
        RecomposeScopeImpl recomposeScopeImpl = null;
        RecomposeScopeImpl recomposeScopeImpl2 = this.invalidateStack.isNotEmpty() ? (RecomposeScopeImpl) this.invalidateStack.pop() : null;
        if (recomposeScopeImpl2 != null) {
            recomposeScopeImpl2.setRequiresRecompose(false);
        }
        if (recomposeScopeImpl2 != null && (end = recomposeScopeImpl2.end(this.compositionToken)) != null) {
            this.changeListWriter.endCompositionScope(end, getComposition());
        }
        if (recomposeScopeImpl2 != null && !recomposeScopeImpl2.getSkipped$runtime_release() && (recomposeScopeImpl2.getUsed() || this.forceRecomposeScopes)) {
            if (recomposeScopeImpl2.getAnchor() == null) {
                if (getInserting()) {
                    SlotWriter slotWriter = this.writer;
                    anchor = slotWriter.anchor(slotWriter.getParent());
                } else {
                    SlotReader slotReader = this.reader;
                    anchor = slotReader.anchor(slotReader.getParent());
                }
                recomposeScopeImpl2.setAnchor(anchor);
            }
            recomposeScopeImpl2.setDefaultsInvalid(false);
            recomposeScopeImpl = recomposeScopeImpl2;
        }
        end(false);
        return recomposeScopeImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0037, code lost:
    
        recordProviderUpdate(r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void invokeMovableContentLambda(final androidx.compose.runtime.MovableContent r12, androidx.compose.runtime.PersistentCompositionLocalMap r13, final java.lang.Object r14, boolean r15) {
        /*
            r11 = this;
            r0 = 126665345(0x78cc281, float:2.1179178E-34)
            r11.startMovableGroup(r0, r12)
            r11.updateSlot(r14)
            int r1 = r11.getCompoundKeyHash()
            r2 = 0
            r11.compoundKeyHash = r0     // Catch: java.lang.Throwable -> L1e
            boolean r0 = r11.getInserting()     // Catch: java.lang.Throwable -> L1e
            r3 = 0
            r4 = 1
            if (r0 == 0) goto L21
            androidx.compose.runtime.SlotWriter r0 = r11.writer     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.SlotWriter.markGroup$default(r0, r3, r4, r2)     // Catch: java.lang.Throwable -> L1e
            goto L21
        L1e:
            r12 = move-exception
            goto L9f
        L21:
            boolean r0 = r11.getInserting()     // Catch: java.lang.Throwable -> L1e
            if (r0 == 0) goto L28
            goto L35
        L28:
            androidx.compose.runtime.SlotReader r0 = r11.reader     // Catch: java.lang.Throwable -> L1e
            java.lang.Object r0 = r0.getGroupAux()     // Catch: java.lang.Throwable -> L1e
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r13)     // Catch: java.lang.Throwable -> L1e
            if (r0 != 0) goto L35
            r3 = r4
        L35:
            if (r3 == 0) goto L3a
            r11.recordProviderUpdate(r13)     // Catch: java.lang.Throwable -> L1e
        L3a:
            java.lang.Object r0 = androidx.compose.runtime.ComposerKt.getCompositionLocalMap()     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.GroupKind$Companion r5 = androidx.compose.runtime.GroupKind.Companion     // Catch: java.lang.Throwable -> L1e
            int r5 = r5.m1022getGroupULZAiWs()     // Catch: java.lang.Throwable -> L1e
            r6 = 202(0xca, float:2.83E-43)
            r11.m1017startBaiHCIY(r6, r0, r5, r13)     // Catch: java.lang.Throwable -> L1e
            r11.providerCache = r2     // Catch: java.lang.Throwable -> L1e
            boolean r13 = r11.getInserting()     // Catch: java.lang.Throwable -> L1e
            if (r13 == 0) goto L7f
            if (r15 != 0) goto L7f
            r11.writerHasAProvider = r4     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.SlotWriter r13 = r11.writer     // Catch: java.lang.Throwable -> L1e
            int r15 = r13.getParent()     // Catch: java.lang.Throwable -> L1e
            int r15 = r13.parent(r15)     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.Anchor r8 = r13.anchor(r15)     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.MovableContentStateReference r13 = new androidx.compose.runtime.MovableContentStateReference     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.ControlledComposition r6 = r11.getComposition()     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.SlotTable r7 = r11.insertTable     // Catch: java.lang.Throwable -> L1e
            java.util.List r9 = kotlin.collections.CollectionsKt.emptyList()     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.PersistentCompositionLocalMap r10 = r11.currentCompositionLocalScope()     // Catch: java.lang.Throwable -> L1e
            r3 = r13
            r4 = r12
            r5 = r14
            r3.<init>(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.CompositionContext r12 = r11.parentContext     // Catch: java.lang.Throwable -> L1e
            r12.insertMovableContent$runtime_release(r13)     // Catch: java.lang.Throwable -> L1e
            goto L94
        L7f:
            boolean r13 = r11.providersInvalid     // Catch: java.lang.Throwable -> L1e
            r11.providersInvalid = r3     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.ComposerImpl$invokeMovableContentLambda$1 r15 = new androidx.compose.runtime.ComposerImpl$invokeMovableContentLambda$1     // Catch: java.lang.Throwable -> L1e
            r15.<init>(r12, r14)     // Catch: java.lang.Throwable -> L1e
            r12 = 316014703(0x12d6006f, float:1.3505406E-27)
            androidx.compose.runtime.internal.ComposableLambda r12 = androidx.compose.runtime.internal.ComposableLambdaKt.composableLambdaInstance(r12, r4, r15)     // Catch: java.lang.Throwable -> L1e
            androidx.compose.runtime.ActualJvm_jvmKt.invokeComposable(r11, r12)     // Catch: java.lang.Throwable -> L1e
            r11.providersInvalid = r13     // Catch: java.lang.Throwable -> L1e
        L94:
            r11.endGroup()
            r11.providerCache = r2
            r11.compoundKeyHash = r1
            r11.endMovableGroup()
            return
        L9f:
            r11.endGroup()
            r11.providerCache = r2
            r11.compoundKeyHash = r1
            r11.endMovableGroup()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.invokeMovableContentLambda(androidx.compose.runtime.MovableContent, androidx.compose.runtime.PersistentCompositionLocalMap, java.lang.Object, boolean):void");
    }

    public void insertMovableContentReferences(List list) {
        try {
            insertMovableContentGuarded(list);
            cleanUpCompose();
        } catch (Throwable th) {
            abortRoot();
            throw th;
        }
    }

    private final void insertMovableContentGuarded(List list) {
        ComposerChangeListWriter composerChangeListWriter;
        ChangeList changeList;
        ComposerChangeListWriter composerChangeListWriter2;
        ChangeList changeList2;
        List collectNodesFrom;
        SlotReader slotReader;
        int[] iArr;
        IntMap intMap;
        ChangeList changeList3;
        ComposerChangeListWriter composerChangeListWriter3;
        ChangeList changeList4;
        ChangeList changeList5;
        ComposerChangeListWriter composerChangeListWriter4;
        int i;
        int i2;
        SlotReader slotReader2;
        int i3 = 1;
        ComposerChangeListWriter composerChangeListWriter5 = this.changeListWriter;
        ChangeList changeList6 = this.lateChanges;
        ChangeList changeList7 = composerChangeListWriter5.getChangeList();
        try {
            composerChangeListWriter5.setChangeList(changeList6);
            this.changeListWriter.resetSlots();
            int size = list.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                try {
                    Pair pair = (Pair) list.get(i5);
                    final MovableContentStateReference movableContentStateReference = (MovableContentStateReference) pair.component1();
                    MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) pair.component2();
                    Anchor anchor$runtime_release = movableContentStateReference.getAnchor$runtime_release();
                    int anchorIndex = movableContentStateReference.getSlotTable$runtime_release().anchorIndex(anchor$runtime_release);
                    IntRef intRef = new IntRef(i4, i3, null);
                    this.changeListWriter.determineMovableContentNodeIndex(intRef, anchor$runtime_release);
                    if (movableContentStateReference2 == null) {
                        if (Intrinsics.areEqual(movableContentStateReference.getSlotTable$runtime_release(), this.insertTable)) {
                            createFreshInsertTable();
                        }
                        final SlotReader openReader = movableContentStateReference.getSlotTable$runtime_release().openReader();
                        try {
                            openReader.reposition(anchorIndex);
                            this.changeListWriter.moveReaderToAbsolute(anchorIndex);
                            final ChangeList changeList8 = new ChangeList();
                            slotReader2 = openReader;
                            try {
                                recomposeMovableContent$default(this, null, null, null, null, new Function0() { // from class: androidx.compose.runtime.ComposerImpl$insertMovableContentGuarded$1$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Object invoke() {
                                        m1018invoke();
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: collision with other method in class */
                                    public final void m1018invoke() {
                                        ComposerChangeListWriter composerChangeListWriter6;
                                        ComposerChangeListWriter composerChangeListWriter7;
                                        composerChangeListWriter6 = ComposerImpl.this.changeListWriter;
                                        ChangeList changeList9 = changeList8;
                                        ComposerImpl composerImpl = ComposerImpl.this;
                                        SlotReader slotReader3 = openReader;
                                        MovableContentStateReference movableContentStateReference3 = movableContentStateReference;
                                        ChangeList changeList10 = composerChangeListWriter6.getChangeList();
                                        try {
                                            composerChangeListWriter6.setChangeList(changeList9);
                                            SlotReader reader$runtime_release = composerImpl.getReader$runtime_release();
                                            int[] iArr2 = composerImpl.nodeCountOverrides;
                                            IntMap intMap2 = composerImpl.providerUpdates;
                                            composerImpl.nodeCountOverrides = null;
                                            composerImpl.providerUpdates = null;
                                            try {
                                                composerImpl.setReader$runtime_release(slotReader3);
                                                composerChangeListWriter7 = composerImpl.changeListWriter;
                                                boolean implicitRootStart = composerChangeListWriter7.getImplicitRootStart();
                                                try {
                                                    composerChangeListWriter7.setImplicitRootStart(false);
                                                    movableContentStateReference3.getContent$runtime_release();
                                                    composerImpl.invokeMovableContentLambda(null, movableContentStateReference3.getLocals$runtime_release(), movableContentStateReference3.getParameter$runtime_release(), true);
                                                    composerChangeListWriter7.setImplicitRootStart(implicitRootStart);
                                                    Unit unit = Unit.INSTANCE;
                                                } catch (Throwable th) {
                                                    composerChangeListWriter7.setImplicitRootStart(implicitRootStart);
                                                    throw th;
                                                }
                                            } finally {
                                                composerImpl.setReader$runtime_release(reader$runtime_release);
                                                composerImpl.nodeCountOverrides = iArr2;
                                                composerImpl.providerUpdates = intMap2;
                                            }
                                        } finally {
                                            composerChangeListWriter6.setChangeList(changeList10);
                                        }
                                    }
                                }, 15, null);
                                this.changeListWriter.includeOperationsIn(changeList8, intRef);
                                Unit unit = Unit.INSTANCE;
                                slotReader2.close();
                                composerChangeListWriter2 = composerChangeListWriter5;
                                changeList2 = changeList7;
                                i = size;
                                i2 = i5;
                            } catch (Throwable th) {
                                th = th;
                                slotReader2.close();
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            slotReader2 = openReader;
                        }
                    } else {
                        MovableContentState movableContentStateResolve$runtime_release = this.parentContext.movableContentStateResolve$runtime_release(movableContentStateReference2);
                        SlotTable slotTable$runtime_release = movableContentStateReference2.getSlotTable$runtime_release();
                        Anchor anchor$runtime_release2 = movableContentStateReference2.getAnchor$runtime_release();
                        collectNodesFrom = ComposerKt.collectNodesFrom(slotTable$runtime_release, anchor$runtime_release2);
                        if (!collectNodesFrom.isEmpty()) {
                            this.changeListWriter.copyNodesToNewAnchorLocation(collectNodesFrom, intRef);
                            if (Intrinsics.areEqual(movableContentStateReference.getSlotTable$runtime_release(), this.slotTable)) {
                                int anchorIndex2 = this.slotTable.anchorIndex(anchor$runtime_release);
                                updateNodeCount(anchorIndex2, updatedNodeCount(anchorIndex2) + collectNodesFrom.size());
                            }
                        }
                        this.changeListWriter.copySlotTableToAnchorLocation(movableContentStateResolve$runtime_release, this.parentContext, movableContentStateReference2, movableContentStateReference);
                        SlotReader openReader2 = slotTable$runtime_release.openReader();
                        try {
                            SlotReader reader$runtime_release = getReader$runtime_release();
                            int[] iArr2 = this.nodeCountOverrides;
                            IntMap intMap2 = this.providerUpdates;
                            this.nodeCountOverrides = null;
                            this.providerUpdates = null;
                            try {
                                setReader$runtime_release(openReader2);
                                int anchorIndex3 = slotTable$runtime_release.anchorIndex(anchor$runtime_release2);
                                openReader2.reposition(anchorIndex3);
                                this.changeListWriter.moveReaderToAbsolute(anchorIndex3);
                                changeList3 = new ChangeList();
                                composerChangeListWriter3 = this.changeListWriter;
                                changeList4 = composerChangeListWriter3.getChangeList();
                            } catch (Throwable th3) {
                                th = th3;
                                iArr = iArr2;
                                slotReader = openReader2;
                                intMap = intMap2;
                            }
                            try {
                                composerChangeListWriter3.setChangeList(changeList3);
                                i = size;
                                ComposerChangeListWriter composerChangeListWriter6 = this.changeListWriter;
                                boolean implicitRootStart = composerChangeListWriter6.getImplicitRootStart();
                                try {
                                    composerChangeListWriter6.setImplicitRootStart(false);
                                    ControlledComposition composition$runtime_release = movableContentStateReference2.getComposition$runtime_release();
                                    ControlledComposition composition$runtime_release2 = movableContentStateReference.getComposition$runtime_release();
                                    Integer valueOf = Integer.valueOf(openReader2.getCurrentGroup());
                                    composerChangeListWriter2 = composerChangeListWriter5;
                                    intMap = intMap2;
                                    changeList2 = changeList7;
                                    changeList5 = changeList4;
                                    i2 = i5;
                                    iArr = iArr2;
                                    slotReader = openReader2;
                                    composerChangeListWriter4 = composerChangeListWriter3;
                                    try {
                                        recomposeMovableContent(composition$runtime_release, composition$runtime_release2, valueOf, movableContentStateReference2.getInvalidations$runtime_release(), new Function0() { // from class: androidx.compose.runtime.ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(0);
                                            }

                                            @Override // kotlin.jvm.functions.Function0
                                            public /* bridge */ /* synthetic */ Object invoke() {
                                                m1019invoke();
                                                return Unit.INSTANCE;
                                            }

                                            /* renamed from: invoke, reason: collision with other method in class */
                                            public final void m1019invoke() {
                                                ComposerImpl composerImpl = ComposerImpl.this;
                                                movableContentStateReference.getContent$runtime_release();
                                                composerImpl.invokeMovableContentLambda(null, movableContentStateReference.getLocals$runtime_release(), movableContentStateReference.getParameter$runtime_release(), true);
                                            }
                                        });
                                        try {
                                            composerChangeListWriter6.setImplicitRootStart(implicitRootStart);
                                            try {
                                                composerChangeListWriter4.setChangeList(changeList5);
                                                this.changeListWriter.includeOperationsIn(changeList3, intRef);
                                                Unit unit2 = Unit.INSTANCE;
                                                try {
                                                    setReader$runtime_release(reader$runtime_release);
                                                    this.nodeCountOverrides = iArr;
                                                    this.providerUpdates = intMap;
                                                    try {
                                                        slotReader.close();
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        changeList = changeList2;
                                                        composerChangeListWriter = composerChangeListWriter2;
                                                        composerChangeListWriter.setChangeList(changeList);
                                                        throw th;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    slotReader.close();
                                                    throw th;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                setReader$runtime_release(reader$runtime_release);
                                                this.nodeCountOverrides = iArr;
                                                this.providerUpdates = intMap;
                                                throw th;
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            composerChangeListWriter4.setChangeList(changeList5);
                                            throw th;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        composerChangeListWriter6.setImplicitRootStart(implicitRootStart);
                                        throw th;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    iArr = iArr2;
                                    slotReader = openReader2;
                                    intMap = intMap2;
                                    composerChangeListWriter4 = composerChangeListWriter3;
                                    changeList5 = changeList4;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                                iArr = iArr2;
                                slotReader = openReader2;
                                intMap = intMap2;
                                changeList5 = changeList4;
                                composerChangeListWriter4 = composerChangeListWriter3;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            slotReader = openReader2;
                        }
                    }
                    this.changeListWriter.skipToEndOfCurrentGroup();
                    i3 = 1;
                    i5 = i2 + 1;
                    size = i;
                    changeList7 = changeList2;
                    composerChangeListWriter5 = composerChangeListWriter2;
                    i4 = 0;
                } catch (Throwable th12) {
                    th = th12;
                    composerChangeListWriter2 = composerChangeListWriter5;
                    changeList2 = changeList7;
                }
            }
            ComposerChangeListWriter composerChangeListWriter7 = composerChangeListWriter5;
            ChangeList changeList9 = changeList7;
            this.changeListWriter.endMovableContentPlacement();
            this.changeListWriter.moveReaderToAbsolute(0);
            composerChangeListWriter7.setChangeList(changeList9);
        } catch (Throwable th13) {
            th = th13;
            composerChangeListWriter = composerChangeListWriter5;
            changeList = changeList7;
        }
    }

    static /* synthetic */ Object recomposeMovableContent$default(ComposerImpl composerImpl, ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, Function0 function0, int i, Object obj) {
        ControlledComposition controlledComposition3 = (i & 1) != 0 ? null : controlledComposition;
        ControlledComposition controlledComposition4 = (i & 2) != 0 ? null : controlledComposition2;
        Integer num2 = (i & 4) != 0 ? null : num;
        if ((i & 8) != 0) {
            list = CollectionsKt.emptyList();
        }
        return composerImpl.recomposeMovableContent(controlledComposition3, controlledComposition4, num2, list, function0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
    
        if (r7 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.Object recomposeMovableContent(androidx.compose.runtime.ControlledComposition r7, androidx.compose.runtime.ControlledComposition r8, java.lang.Integer r9, java.util.List r10, kotlin.jvm.functions.Function0 r11) {
        /*
            r6 = this;
            boolean r0 = r6.isComposing
            int r1 = r6.nodeIndex
            r2 = 1
            r6.isComposing = r2     // Catch: java.lang.Throwable -> L26
            r2 = 0
            r6.nodeIndex = r2     // Catch: java.lang.Throwable -> L26
            int r3 = r10.size()     // Catch: java.lang.Throwable -> L26
        Le:
            if (r2 >= r3) goto L2f
            java.lang.Object r4 = r10.get(r2)     // Catch: java.lang.Throwable -> L26
            kotlin.Pair r4 = (kotlin.Pair) r4     // Catch: java.lang.Throwable -> L26
            java.lang.Object r5 = r4.component1()     // Catch: java.lang.Throwable -> L26
            androidx.compose.runtime.RecomposeScopeImpl r5 = (androidx.compose.runtime.RecomposeScopeImpl) r5     // Catch: java.lang.Throwable -> L26
            java.lang.Object r4 = r4.component2()     // Catch: java.lang.Throwable -> L26
            if (r4 == 0) goto L28
            r6.tryImminentInvalidation$runtime_release(r5, r4)     // Catch: java.lang.Throwable -> L26
            goto L2c
        L26:
            r7 = move-exception
            goto L48
        L28:
            r4 = 0
            r6.tryImminentInvalidation$runtime_release(r5, r4)     // Catch: java.lang.Throwable -> L26
        L2c:
            int r2 = r2 + 1
            goto Le
        L2f:
            if (r7 == 0) goto L3f
            if (r9 == 0) goto L38
            int r9 = r9.intValue()     // Catch: java.lang.Throwable -> L26
            goto L39
        L38:
            r9 = -1
        L39:
            java.lang.Object r7 = r7.delegateInvalidations(r8, r9, r11)     // Catch: java.lang.Throwable -> L26
            if (r7 != 0) goto L43
        L3f:
            java.lang.Object r7 = r11.invoke()     // Catch: java.lang.Throwable -> L26
        L43:
            r6.isComposing = r0
            r6.nodeIndex = r1
            return r7
        L48:
            r6.isComposing = r0
            r6.nodeIndex = r1
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.ComposerImpl.recomposeMovableContent(androidx.compose.runtime.ControlledComposition, androidx.compose.runtime.ControlledComposition, java.lang.Integer, java.util.List, kotlin.jvm.functions.Function0):java.lang.Object");
    }

    public final void composeContent$runtime_release(ScopeMap scopeMap, Function2 function2) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        doCompose(scopeMap, function2);
    }

    public final void prepareCompose$runtime_release(Function0 function0) {
        if (this.isComposing) {
            ComposerKt.composeImmediateRuntimeError("Preparing a composition while composing is not supported");
        }
        this.isComposing = true;
        try {
            function0.invoke();
        } finally {
            this.isComposing = false;
        }
    }

    public final boolean recompose$runtime_release(ScopeMap scopeMap) {
        if (!this.changes.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Expected applyChanges() to have been called");
        }
        if (scopeMap.getSize() <= 0 && this.invalidations.isEmpty() && !this.forciblyRecompose) {
            return false;
        }
        doCompose(scopeMap, null);
        return this.changes.isNotEmpty();
    }

    private final void doCompose(ScopeMap scopeMap, Function2 function2) {
        Comparator comparator;
        long[] jArr;
        int i;
        long[] jArr2;
        int i2;
        if (this.isComposing) {
            ComposerKt.composeImmediateRuntimeError("Reentrant composition is not supported");
        }
        Object beginSection = Trace.INSTANCE.beginSection("Compose:recompose");
        try {
            this.compositionToken = SnapshotKt.currentSnapshot().getId();
            this.providerUpdates = null;
            MutableScatterMap map = scopeMap.getMap();
            Object[] objArr = map.keys;
            Object[] objArr2 = map.values;
            long[] jArr3 = map.metadata;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i3 = 0;
                while (true) {
                    long j = jArr3[i3];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i4 = 8;
                        int i5 = 8 - ((~(i3 - length)) >>> 31);
                        int i6 = 0;
                        while (i6 < i5) {
                            if ((j & 255) < 128) {
                                int i7 = (i3 << 3) + i6;
                                Object obj = objArr[i7];
                                Object obj2 = objArr2[i7];
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl");
                                Anchor anchor = ((RecomposeScopeImpl) obj).getAnchor();
                                if (anchor != null) {
                                    int location$runtime_release = anchor.getLocation$runtime_release();
                                    List list = this.invalidations;
                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                                    jArr2 = jArr3;
                                    if (obj2 == ScopeInvalidated.INSTANCE) {
                                        obj2 = null;
                                    }
                                    list.add(new Invalidation(recomposeScopeImpl, location$runtime_release, obj2));
                                } else {
                                    jArr2 = jArr3;
                                }
                                i2 = 8;
                            } else {
                                jArr2 = jArr3;
                                i2 = i4;
                            }
                            j >>= i2;
                            i6++;
                            i4 = i2;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        i = 1;
                        if (i5 != i4) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                        i = 1;
                    }
                    if (i3 == length) {
                        break;
                    }
                    i3 += i;
                    jArr3 = jArr;
                }
            }
            List list2 = this.invalidations;
            comparator = ComposerKt.InvalidationLocationAscending;
            CollectionsKt.sortWith(list2, comparator);
            this.nodeIndex = 0;
            this.isComposing = true;
            try {
                startRoot();
                Object nextSlot = nextSlot();
                if (nextSlot != function2 && function2 != null) {
                    updateValue(function2);
                }
                ComposerImpl$derivedStateObserver$1 composerImpl$derivedStateObserver$1 = this.derivedStateObserver;
                MutableVector derivedStateObservers = SnapshotStateKt.derivedStateObservers();
                try {
                    derivedStateObservers.add(composerImpl$derivedStateObserver$1);
                    if (function2 != null) {
                        startGroup(200, ComposerKt.getInvocation());
                        ActualJvm_jvmKt.invokeComposable(this, function2);
                        endGroup();
                    } else if ((this.forciblyRecompose || this.providersInvalid) && nextSlot != null && !Intrinsics.areEqual(nextSlot, Composer.Companion.getEmpty())) {
                        startGroup(200, ComposerKt.getInvocation());
                        ActualJvm_jvmKt.invokeComposable(this, (Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(nextSlot, 2));
                        endGroup();
                    } else {
                        skipCurrentGroup();
                    }
                    derivedStateObservers.removeAt(derivedStateObservers.getSize() - 1);
                    endRoot();
                    this.isComposing = false;
                    this.invalidations.clear();
                    createFreshInsertTable();
                    Unit unit = Unit.INSTANCE;
                    Trace.INSTANCE.endSection(beginSection);
                } finally {
                    derivedStateObservers.removeAt(derivedStateObservers.getSize() - 1);
                }
            } catch (Throwable th) {
                this.isComposing = false;
                this.invalidations.clear();
                abortRoot();
                createFreshInsertTable();
                throw th;
            }
        } catch (Throwable th2) {
            Trace.INSTANCE.endSection(beginSection);
            throw th2;
        }
    }

    private final Object getNode(SlotReader slotReader) {
        return slotReader.node(slotReader.getParent());
    }

    private final Object nodeAt(SlotReader slotReader, int i) {
        return slotReader.node(i);
    }

    private final void validateNodeExpected() {
        if (!this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.nodeExpected = false;
    }

    private final void validateNodeNotExpected() {
        if (this.nodeExpected) {
            ComposerKt.composeImmediateRuntimeError("A call to createNode(), emitNode() or useNode() expected");
        }
    }

    private final void recordInsert(Anchor anchor) {
        if (this.insertFixups.isEmpty()) {
            this.changeListWriter.insertSlots(anchor, this.insertTable);
        } else {
            this.changeListWriter.insertSlots(anchor, this.insertTable, this.insertFixups);
            this.insertFixups = new FixupList();
        }
    }

    private final void recordDelete() {
        reportFreeMovableContent(this.reader.getCurrentGroup());
        this.changeListWriter.removeCurrentGroup();
    }

    private static final int reportFreeMovableContent$reportGroup(ComposerImpl composerImpl, int i, boolean z, int i2) {
        SlotReader slotReader = composerImpl.reader;
        if (slotReader.hasMark(i)) {
            int groupKey = slotReader.groupKey(i);
            Object groupObjectKey = slotReader.groupObjectKey(i);
            if (groupKey == 206 && Intrinsics.areEqual(groupObjectKey, ComposerKt.getReference())) {
                Object groupGet = slotReader.groupGet(i, 0);
                CompositionContextHolder compositionContextHolder = groupGet instanceof CompositionContextHolder ? (CompositionContextHolder) groupGet : null;
                if (compositionContextHolder != null) {
                    for (ComposerImpl composerImpl2 : compositionContextHolder.getRef().getComposers()) {
                        composerImpl2.reportAllMovableContent();
                        composerImpl.parentContext.reportRemovedComposition$runtime_release(composerImpl2.getComposition());
                    }
                }
                return slotReader.nodeCount(i);
            }
            if (slotReader.isNode(i)) {
                return 1;
            }
            return slotReader.nodeCount(i);
        }
        if (slotReader.containsMark(i)) {
            int groupSize = slotReader.groupSize(i) + i;
            int i3 = 0;
            for (int i4 = i + 1; i4 < groupSize; i4 += slotReader.groupSize(i4)) {
                boolean isNode = slotReader.isNode(i4);
                if (isNode) {
                    composerImpl.changeListWriter.endNodeMovement();
                    composerImpl.changeListWriter.moveDown(slotReader.node(i4));
                }
                i3 += reportFreeMovableContent$reportGroup(composerImpl, i4, isNode || z, isNode ? 0 : i2 + i3);
                if (isNode) {
                    composerImpl.changeListWriter.endNodeMovement();
                    composerImpl.changeListWriter.moveUp();
                }
            }
            if (slotReader.isNode(i)) {
                return 1;
            }
            return i3;
        }
        if (slotReader.isNode(i)) {
            return 1;
        }
        return slotReader.nodeCount(i);
    }

    private final void reportFreeMovableContent(int i) {
        reportFreeMovableContent$reportGroup(this, i, false, 0);
        this.changeListWriter.endNodeMovement();
    }

    private final void reportAllMovableContent() {
        if (this.slotTable.containsMark()) {
            ChangeList changeList = new ChangeList();
            this.deferredChanges = changeList;
            SlotReader openReader = this.slotTable.openReader();
            try {
                this.reader = openReader;
                ComposerChangeListWriter composerChangeListWriter = this.changeListWriter;
                ChangeList changeList2 = composerChangeListWriter.getChangeList();
                try {
                    composerChangeListWriter.setChangeList(changeList);
                    reportFreeMovableContent(0);
                    this.changeListWriter.releaseMovableContent();
                    composerChangeListWriter.setChangeList(changeList2);
                    Unit unit = Unit.INSTANCE;
                } catch (Throwable th) {
                    composerChangeListWriter.setChangeList(changeList2);
                    throw th;
                }
            } finally {
                openReader.close();
            }
        }
    }

    private final void finalizeCompose() {
        this.changeListWriter.finalizeComposition();
        if (!this.pendingStack.isEmpty()) {
            ComposerKt.composeImmediateRuntimeError("Start/end imbalance");
        }
        cleanUpCompose();
    }

    private final void cleanUpCompose() {
        this.pending = null;
        this.nodeIndex = 0;
        this.groupNodeCount = 0;
        this.compoundKeyHash = 0;
        this.nodeExpected = false;
        this.changeListWriter.resetTransientState();
        this.invalidateStack.clear();
        clearUpdatedNodeCounts();
    }

    /* compiled from: Composer.kt */
    private static final class CompositionContextHolder implements ReusableRememberObserver {
        private final CompositionContextImpl ref;

        @Override // androidx.compose.runtime.RememberObserver
        public void onRemembered() {
        }

        public CompositionContextHolder(CompositionContextImpl compositionContextImpl) {
            this.ref = compositionContextImpl;
        }

        public final CompositionContextImpl getRef() {
            return this.ref;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onAbandoned() {
            this.ref.dispose();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public void onForgotten() {
            this.ref.dispose();
        }
    }

    /* compiled from: Composer.kt */
    private final class CompositionContextImpl extends CompositionContext {
        private final boolean collectingParameterInformation;
        private final boolean collectingSourceInformation;
        private final Set composers = new LinkedHashSet();
        private final MutableState compositionLocalScope$delegate = SnapshotStateKt.mutableStateOf(PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf(), SnapshotStateKt.referentialEqualityPolicy());
        private final int compoundHashKey;
        private Set inspectionTables;
        private final CompositionObserverHolder observerHolder;

        public CompositionContextImpl(int i, boolean z, boolean z2, CompositionObserverHolder compositionObserverHolder) {
            this.compoundHashKey = i;
            this.collectingParameterInformation = z;
            this.collectingSourceInformation = z2;
            this.observerHolder = compositionObserverHolder;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public int getCompoundHashKey$runtime_release() {
            return this.compoundHashKey;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingParameterInformation$runtime_release() {
            return this.collectingParameterInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingSourceInformation$runtime_release() {
            return this.collectingSourceInformation;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public CompositionObserverHolder getObserverHolder$runtime_release() {
            return this.observerHolder;
        }

        public final Set getComposers() {
            return this.composers;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public boolean getCollectingCallByInformation$runtime_release() {
            return ComposerImpl.this.parentContext.getCollectingCallByInformation$runtime_release();
        }

        public final void dispose() {
            if (this.composers.isEmpty()) {
                return;
            }
            Set set = this.inspectionTables;
            if (set != null) {
                for (ComposerImpl composerImpl : this.composers) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        ((Set) it.next()).remove(composerImpl.slotTable);
                    }
                }
            }
            this.composers.clear();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void registerComposer$runtime_release(Composer composer) {
            Intrinsics.checkNotNull(composer, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
            super.registerComposer$runtime_release((ComposerImpl) composer);
            this.composers.add(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposer$runtime_release(Composer composer) {
            Set<Set> set = this.inspectionTables;
            if (set != null) {
                for (Set set2 : set) {
                    Intrinsics.checkNotNull(composer, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
                    set2.remove(((ComposerImpl) composer).slotTable);
                }
            }
            TypeIntrinsics.asMutableCollection(this.composers).remove(composer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void unregisterComposition$runtime_release(ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.unregisterComposition$runtime_release(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public CoroutineContext getEffectCoroutineContext() {
            return ComposerImpl.this.parentContext.getEffectCoroutineContext();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void composeInitial$runtime_release(ControlledComposition controlledComposition, Function2 function2) {
            ComposerImpl.this.parentContext.composeInitial$runtime_release(controlledComposition, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void invalidate$runtime_release(ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.invalidate$runtime_release(ComposerImpl.this.getComposition());
            ComposerImpl.this.parentContext.invalidate$runtime_release(controlledComposition);
        }

        private final PersistentCompositionLocalMap getCompositionLocalScope() {
            return (PersistentCompositionLocalMap) this.compositionLocalScope$delegate.getValue();
        }

        private final void setCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            this.compositionLocalScope$delegate.setValue(persistentCompositionLocalMap);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public PersistentCompositionLocalMap getCompositionLocalScope$runtime_release() {
            return getCompositionLocalScope();
        }

        public final void updateCompositionLocalScope(PersistentCompositionLocalMap persistentCompositionLocalMap) {
            setCompositionLocalScope(persistentCompositionLocalMap);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void recordInspectionTable$runtime_release(Set set) {
            Set set2 = this.inspectionTables;
            if (set2 == null) {
                set2 = new HashSet();
                this.inspectionTables = set2;
            }
            set2.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void startComposing$runtime_release() {
            ComposerImpl.this.childrenComposing++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void doneComposing$runtime_release() {
            ComposerImpl composerImpl = ComposerImpl.this;
            composerImpl.childrenComposing--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void insertMovableContent$runtime_release(MovableContentStateReference movableContentStateReference) {
            ComposerImpl.this.parentContext.insertMovableContent$runtime_release(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public MovableContentState movableContentStateResolve$runtime_release(MovableContentStateReference movableContentStateReference) {
            return ComposerImpl.this.parentContext.movableContentStateResolve$runtime_release(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public void reportRemovedComposition$runtime_release(ControlledComposition controlledComposition) {
            ComposerImpl.this.parentContext.reportRemovedComposition$runtime_release(controlledComposition);
        }
    }

    @Override // androidx.compose.runtime.Composer
    public RecomposeScope getRecomposeScope() {
        return getCurrentRecomposeScope$runtime_release();
    }

    @Override // androidx.compose.runtime.Composer
    public Object rememberedValue() {
        return nextSlotForCache();
    }

    @Override // androidx.compose.runtime.Composer
    public void updateRememberedValue(Object obj) {
        updateCachedValue(obj);
    }

    @Override // androidx.compose.runtime.Composer
    public void recordUsed(RecomposeScope recomposeScope) {
        RecomposeScopeImpl recomposeScopeImpl = recomposeScope instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) recomposeScope : null;
        if (recomposeScopeImpl == null) {
            return;
        }
        recomposeScopeImpl.setUsed(true);
    }
}
