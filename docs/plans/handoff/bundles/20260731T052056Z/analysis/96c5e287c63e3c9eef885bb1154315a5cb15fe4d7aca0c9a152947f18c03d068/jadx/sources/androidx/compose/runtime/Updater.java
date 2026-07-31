package androidx.compose.runtime;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer.CompositionContextImpl;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.paging.SingleRunner$runInIsolation$2;
import coil3.RealImageLoader$execute$result$1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Updater {
    public static final Object PendingApplyNoModifications = new Object();
    public static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();
    public static final LayoutNode$$ExternalSyntheticLambda0 InvalidationLocationAscending = new LayoutNode$$ExternalSyntheticLambda0(3);

    /* JADX WARN: Removed duplicated region for block: B:11:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[] r10, kotlin.jvm.functions.Function2 r11, androidx.compose.runtime.GapComposer r12, int r13) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[], kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int):void");
    }

    public static final void DisposableEffect(Object[] objArr, Function1 function1, GapComposer gapComposer) {
        boolean z = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z |= gapComposer.changed(obj);
        }
        Object rememberedValue = gapComposer.rememberedValue();
        if (z || rememberedValue == Composer$Companion.Empty) {
            gapComposer.updateRememberedValue(new DisposableEffectImpl(function1));
        }
    }

    public static final void LaunchedEffect(Object[] objArr, Function2 function2, GapComposer gapComposer) {
        CoroutineContext coroutineContext = gapComposer.applyCoroutineContext;
        boolean z = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z |= gapComposer.changed(obj);
        }
        Object rememberedValue = gapComposer.rememberedValue();
        if (z || rememberedValue == Composer$Companion.Empty) {
            gapComposer.updateRememberedValue(new LaunchedEffectImpl(coroutineContext, function2));
        }
    }

    public static final void SideEffect(Function0 function0, GapComposer gapComposer) {
        Operations operations = gapComposer.changeListWriter.changeList.operations;
        operations.pushOp(Operation.SideEffect.INSTANCE);
        UnsignedKt.m826setObjectsGr0YRc(operations, 0, function0);
    }

    public static void adoptAnchoredScopes$runtime(SlotWriter slotWriter, List list, CompositionImpl compositionImpl) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int anchorIndex = slotWriter.anchorIndex((GapAnchor) list.get(i));
            int slotIndex = slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(anchorIndex));
            Object obj = slotIndex < slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(anchorIndex + 1)) ? slotWriter.slots[slotWriter.dataIndexToDataAddress(slotIndex)] : Composer$Companion.Empty;
            RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
            if (recomposeScopeImpl != null) {
                recomposeScopeImpl.owner = compositionImpl;
            }
        }
    }

    public static final MutableState collectAsState(Flow flow, Object obj, GapComposer gapComposer, int i, int i2) {
        Object obj2 = EmptyCoroutineContext.INSTANCE;
        boolean changedInstance = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(flow);
        Object rememberedValue = gapComposer.rememberedValue();
        Continuation continuation = null;
        Object obj3 = Composer$Companion.Empty;
        if (changedInstance || rememberedValue == obj3) {
            rememberedValue = new SingleRunner$runInIsolation$2(obj2, flow, continuation, 17);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Function2 function2 = (Function2) rememberedValue;
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (rememberedValue2 == obj3) {
            rememberedValue2 = mutableStateOf$default(obj);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        MutableState mutableState = (MutableState) rememberedValue2;
        boolean changedInstance2 = gapComposer.changedInstance(function2);
        Object rememberedValue3 = gapComposer.rememberedValue();
        if (changedInstance2 || rememberedValue3 == obj3) {
            rememberedValue3 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, continuation, 1);
            gapComposer.updateRememberedValue(rememberedValue3);
        }
        LaunchedEffect(flow, obj2, (Function2) rememberedValue3, gapComposer);
        return mutableState;
    }

    public static final void collectNodesFrom$lambda$0$collectFromGroup(SlotReader slotReader, ArrayList arrayList, int i) {
        boolean isNode = slotReader.isNode(i);
        int[] iArr = slotReader.groups;
        if (isNode) {
            arrayList.add(slotReader.node(i));
            return;
        }
        int i2 = iArr[(i * 5) + 3] + i;
        for (int i3 = i + 1; i3 < i2; i3 += iArr[(i3 * 5) + 3]) {
            collectNodesFrom$lambda$0$collectFromGroup(slotReader, arrayList, i3);
        }
    }

    public static final CoroutineScope createCompositionCoroutineScope(GapComposer gapComposer) {
        return new RememberedCoroutineScope(gapComposer.applyCoroutineContext);
    }

    public static final int findLocation(List list, int i) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            int compare = Intrinsics.compare(((Invalidation) list.get(i3)).location, i);
            if (compare < 0) {
                i2 = i3 + 1;
            } else {
                if (compare <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final int getCurrentCompositeKeyHash(GapComposer gapComposer) {
        gapComposer.getClass();
        long j = gapComposer.compositeKeyHashCode;
        return (int) (j ^ (j >>> 32));
    }

    public static final long getCurrentCompositeKeyHashCode(GapComposer gapComposer) {
        return gapComposer.compositeKeyHashCode;
    }

    public static final MonotonicFrameClock getMonotonicFrameClock(CoroutineContext coroutineContext) {
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(NeverEqualPolicy.$$INSTANCE);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }

    /* renamed from: init-impl, reason: not valid java name */
    public static final void m325initimpl(GapComposer gapComposer, Integer num, Function2 function2) {
        if (gapComposer.inserting) {
            gapComposer.apply(num, function2);
        }
    }

    public static final void invalidApplier() {
        throw new IllegalStateException("Invalid applier");
    }

    public static ParcelableSnapshotMutableState mutableStateOf$default(Object obj) {
        return new ParcelableSnapshotMutableState(obj, NeverEqualPolicy.INSTANCE$3);
    }

    public static final MutableState produceState(GapComposer gapComposer, Object obj, Function2 function2) {
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = mutableStateOf$default(obj);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = gapComposer.changedInstance(function2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null, 0);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue2);
        return mutableState;
    }

    public static final Object read(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, ProvidableCompositionLocal providableCompositionLocal) {
        providableCompositionLocal.getClass();
        Object obj = persistentCompositionLocalHashMap.get(providableCompositionLocal);
        if (obj == null) {
            obj = providableCompositionLocal.getDefaultValueHolder$runtime();
        }
        return ((ValueHolder) obj).readValue(persistentCompositionLocalHashMap);
    }

    /* renamed from: reconcile-impl, reason: not valid java name */
    public static final void m326reconcileimpl(GapComposer gapComposer, Function1 function1) {
        gapComposer.apply(Unit.INSTANCE, new HomeScreenKt$$ExternalSyntheticLambda7(function1, 1));
    }

    public static final GapComposer.CompositionContextImpl rememberCompositionContext(GapComposer gapComposer) {
        GapComposer gapComposer2;
        gapComposer.startGroup(206, ComposerKt.reference);
        if (gapComposer.inserting) {
            SlotWriter.markGroup$default(gapComposer.writer);
        }
        Object nextSlot = gapComposer.nextSlot();
        GapRememberObserverHolder gapRememberObserverHolder = nextSlot instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) nextSlot : null;
        if (gapRememberObserverHolder == null) {
            gapComposer2 = gapComposer;
            gapRememberObserverHolder = new ReusableGapRememberObserverHolder(new GapComposer.CompositionContextHolder(gapComposer2.new CompositionContextImpl(gapComposer.compositeKeyHashCode, gapComposer.forceRecomposeScopes, gapComposer.sourceMarkersEnabled, gapComposer.composition.observerHolder)), -1);
            gapComposer2.updateValue(gapRememberObserverHolder);
        } else {
            gapComposer2 = gapComposer;
        }
        GapComposer.CompositionContextImpl compositionContextImpl = ((GapComposer.CompositionContextHolder) gapRememberObserverHolder.wrapped).ref;
        compositionContextImpl.compositionLocalScope$delegate.setValue(gapComposer2.currentCompositionLocalScope());
        gapComposer2.end(false);
        return compositionContextImpl;
    }

    public static final MutableState rememberUpdatedState(Object obj, GapComposer gapComposer) {
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer$Companion.Empty) {
            rememberedValue = mutableStateOf$default(obj);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        mutableState.setValue(obj);
        return mutableState;
    }

    public static final void removeData(SlotWriter slotWriter, int i, Object obj) {
        int dataIndexToDataAddress = slotWriter.dataIndexToDataAddress(i);
        Object[] objArr = slotWriter.slots;
        Object obj2 = objArr[dataIndexToDataAddress];
        objArr[dataIndexToDataAddress] = Composer$Companion.Empty;
        if (obj == obj2) {
            return;
        }
        ComposerKt.composeImmediateRuntimeError("Slot table is out of sync (expected " + obj + ", got " + obj2 + ')');
    }

    public static final void removeRange(int i, int i2, List list) {
        int findLocation = findLocation(list, i);
        if (findLocation < 0) {
            findLocation = -(findLocation + 1);
        }
        while (findLocation < list.size() && ((Invalidation) list.get(findLocation)).location < i2) {
        }
    }

    public static void removeRunning(NeverEqualPolicy neverEqualPolicy) {
        StateFlowImpl stateFlowImpl;
        PersistentOrderedSet persistentOrderedSet;
        PersistentOrderedSet persistentOrderedSet2;
        do {
            stateFlowImpl = Recomposer._runningRecomposers;
            persistentOrderedSet = (PersistentOrderedSet) stateFlowImpl.getValue();
            PersistentHashMap persistentHashMap = persistentOrderedSet.hashMap;
            Links links = (Links) persistentHashMap.get(neverEqualPolicy);
            if (links == null) {
                persistentOrderedSet2 = persistentOrderedSet;
            } else {
                Object obj = links.previous;
                Object obj2 = links.next;
                TrieNode trieNode = persistentHashMap.node;
                TrieNode remove = trieNode.remove(neverEqualPolicy != null ? neverEqualPolicy.hashCode() : 0, 0, neverEqualPolicy);
                if (trieNode != remove) {
                    persistentHashMap = remove == null ? PersistentHashMap.EMPTY : new PersistentHashMap(remove, persistentHashMap.size - 1);
                }
                EndOfChain endOfChain = EndOfChain.INSTANCE;
                if (obj != endOfChain) {
                    Object obj3 = persistentHashMap.get(obj);
                    obj3.getClass();
                    persistentHashMap = persistentHashMap.put(obj, new Links(((Links) obj3).previous, obj2));
                }
                if (obj2 != endOfChain) {
                    Object obj4 = persistentHashMap.get(obj2);
                    obj4.getClass();
                    persistentHashMap = persistentHashMap.put(obj2, new Links(obj, ((Links) obj4).next));
                }
                Object obj5 = obj != endOfChain ? persistentOrderedSet.firstElement : obj2;
                if (obj2 != endOfChain) {
                    obj = persistentOrderedSet.lastElement;
                }
                persistentOrderedSet2 = new PersistentOrderedSet(obj5, obj, persistentHashMap);
            }
            if (persistentOrderedSet == persistentOrderedSet2) {
                return;
            }
        } while (!stateFlowImpl.compareAndSet(persistentOrderedSet, persistentOrderedSet2));
    }

    /* renamed from: set-impl, reason: not valid java name */
    public static final void m327setimpl(GapComposer gapComposer, Object obj, Function2 function2) {
        if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), obj)) {
            gapComposer.updateRememberedValue(obj);
            gapComposer.apply(obj, function2);
        }
    }

    public static final SafeFlow snapshotFlow(Function0 function0) {
        return new SafeFlow(0, new RealImageLoader$execute$result$1(8, function0, (Continuation) null));
    }

    public static final int updateChangedFlags(int i) {
        int i2 = 306783378 & i;
        int i3 = 613566756 & i;
        return (i & (-920350135)) | (i3 >> 1) | i2 | ((i2 << 1) & i3);
    }

    public static final PersistentCompositionLocalHashMap updateCompositionMap(ProvidedValue[] providedValueArr, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap3 = PersistentCompositionLocalHashMap.Empty;
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(persistentCompositionLocalHashMap3);
        builder.map = persistentCompositionLocalHashMap3;
        for (ProvidedValue providedValue : providedValueArr) {
            ProvidableCompositionLocal providableCompositionLocal = (ProvidableCompositionLocal) providedValue.compositionLocal;
            if (providedValue.canOverride || !persistentCompositionLocalHashMap.containsKey(providableCompositionLocal)) {
                builder.put(providableCompositionLocal, providableCompositionLocal.updatedStateOf$runtime(providedValue, (ValueHolder) persistentCompositionLocalHashMap2.get(providableCompositionLocal)));
            }
        }
        return builder.build();
    }

    public static final void DisposableEffect(Object obj, Object obj2, Function1 function1, GapComposer gapComposer) {
        boolean changed = gapComposer.changed(obj) | gapComposer.changed(obj2);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new DisposableEffectImpl(function1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void LaunchedEffect(Object obj, Object obj2, Function2 function2, GapComposer gapComposer) {
        CoroutineContext coroutineContext = gapComposer.applyCoroutineContext;
        boolean changed = gapComposer.changed(obj) | gapComposer.changed(obj2);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void DisposableEffect(Object obj, Function1 function1, GapComposer gapComposer) {
        boolean changed = gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new DisposableEffectImpl(function1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void LaunchedEffect(GapComposer gapComposer, Object obj, Function2 function2) {
        CoroutineContext coroutineContext = gapComposer.applyCoroutineContext;
        boolean changed = gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final MutableState collectAsState(StateFlow stateFlow, GapComposer gapComposer) {
        return collectAsState(stateFlow, stateFlow.getValue(), gapComposer, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue r11, kotlin.jvm.functions.Function2 r12, androidx.compose.runtime.GapComposer r13, int r14) {
        /*
            r0 = -149765515(0xfffffffff712c275, float:-2.9766383E33)
            r13.startRestartGroup(r0)
            androidx.compose.runtime.IntStack r0 = r13.providersInvalidStack
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r13.currentCompositionLocalScope()
            r2 = 201(0xc9, float:2.82E-43)
            androidx.compose.runtime.OpaqueKey r3 = androidx.compose.runtime.ComposerKt.provider
            r13.startGroup(r2, r3)
            java.lang.Object r2 = r13.rememberedValue()
            androidx.compose.runtime.NeverEqualPolicy r3 = androidx.compose.runtime.Composer$Companion.Empty
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            r4 = 0
            if (r3 == 0) goto L22
            r2 = r4
            goto L27
        L22:
            r2.getClass()
            androidx.compose.runtime.ValueHolder r2 = (androidx.compose.runtime.ValueHolder) r2
        L27:
            java.lang.Object r3 = r11.compositionLocal
            androidx.compose.runtime.ProvidableCompositionLocal r3 = (androidx.compose.runtime.ProvidableCompositionLocal) r3
            androidx.compose.runtime.ValueHolder r5 = r3.updatedStateOf$runtime(r11, r2)
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L38
            r13.updateRememberedValue(r5)
        L38:
            boolean r6 = r13.inserting
            r7 = 1
            r8 = 0
            if (r6 == 0) goto L50
            boolean r2 = r11.canOverride
            if (r2 != 0) goto L48
            boolean r2 = r1.containsKey(r3)
            if (r2 != 0) goto L4c
        L48:
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r1.putValue(r3, r5)
        L4c:
            r13.writerHasAProvider = r7
        L4e:
            r2 = r8
            goto L8b
        L50:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r6 = r13.reader
            int r9 = r6.currentGroup
            int[] r10 = r6.groups
            java.lang.Object r6 = r6.aux(r10, r9)
            r6.getClass()
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r6 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r6
            boolean r9 = r13.getSkipping()
            if (r9 == 0) goto L67
            if (r2 != 0) goto L72
        L67:
            boolean r9 = r11.canOverride
            if (r9 != 0) goto L80
            boolean r9 = r1.containsKey(r3)
            if (r9 != 0) goto L72
            goto L80
        L72:
            if (r2 == 0) goto L79
            boolean r2 = r13.providersInvalid
            if (r2 != 0) goto L79
            goto L7e
        L79:
            boolean r2 = r13.providersInvalid
            if (r2 == 0) goto L7e
            goto L84
        L7e:
            r1 = r6
            goto L84
        L80:
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r1.putValue(r3, r5)
        L84:
            boolean r2 = r13.reusing
            if (r2 != 0) goto L8a
            if (r6 == r1) goto L4e
        L8a:
            r2 = r7
        L8b:
            if (r2 == 0) goto L94
            boolean r3 = r13.inserting
            if (r3 != 0) goto L94
            r13.recordProviderUpdate(r1)
        L94:
            boolean r3 = r13.providersInvalid
            r0.push(r3)
            r13.providersInvalid = r2
            r13.providerCache = r1
            r2 = 202(0xca, float:2.83E-43)
            androidx.compose.runtime.OpaqueKey r3 = androidx.compose.runtime.ComposerKt.compositionLocalMap
            r13.m323startAzEfcrM(r3, r2, r1, r8)
            int r1 = r14 >> 3
            r1 = r1 & 14
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r12.invoke(r13, r1)
            r13.end(r8)
            r13.end(r8)
            int r0 = r0.pop()
            if (r0 == 0) goto Lbc
            goto Lbd
        Lbc:
            r7 = r8
        Lbd:
            r13.providersInvalid = r7
            r13.providerCache = r4
            androidx.compose.runtime.RecomposeScopeImpl r13 = r13.endRestartGroup()
            if (r13 == 0) goto Ld0
            org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31 r0 = new org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31
            r1 = 9
            r0.<init>(r11, r12, r14, r1)
            r13.block = r0
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue, kotlin.jvm.functions.Function2, androidx.compose.runtime.GapComposer, int):void");
    }
}
