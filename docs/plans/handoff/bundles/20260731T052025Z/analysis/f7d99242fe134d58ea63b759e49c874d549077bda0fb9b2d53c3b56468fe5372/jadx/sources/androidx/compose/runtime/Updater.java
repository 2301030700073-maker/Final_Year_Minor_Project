package androidx.compose.runtime;

import androidx.compose.material3.TooltipKt$animateTooltip$2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer.CompositionContextImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.core.util.DebugUtils;
import androidx.core.view.MenuHostHelper;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import com.fsck.k9.Preferences$getAccountFlow$1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.flow.StateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Updater {
    public static final Object PendingApplyNoModifications = new Object();
    public static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();
    public static final LayoutNode$$ExternalSyntheticLambda0 InvalidationLocationAscending = new LayoutNode$$ExternalSyntheticLambda0(4);

    /* JADX WARN: Removed duplicated region for block: B:21:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue r11, kotlin.jvm.functions.Function2 r12, androidx.compose.runtime.Composer r13, int r14) {
        /*
            androidx.compose.runtime.GapComposer r13 = (androidx.compose.runtime.GapComposer) r13
            r0 = -149765515(0xfffffffff712c275, float:-2.9766383E33)
            r13.startRestartGroup(r0)
            androidx.compose.runtime.IntStack r0 = r13.providersInvalidStack
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r13.currentCompositionLocalScope()
            r2 = 201(0xc9, float:2.82E-43)
            androidx.compose.runtime.OpaqueKey r3 = androidx.compose.runtime.ComposerKt.provider
            r13.startGroup(r2, r3)
            java.lang.Object r2 = r13.rememberedValue()
            androidx.compose.runtime.NeverEqualPolicy r3 = androidx.compose.runtime.Composer.Companion.Empty
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            r4 = 0
            if (r3 == 0) goto L24
            r2 = r4
            goto L29
        L24:
            r2.getClass()
            androidx.compose.runtime.ValueHolder r2 = (androidx.compose.runtime.ValueHolder) r2
        L29:
            java.lang.Object r3 = r11.compositionLocal
            androidx.compose.runtime.ProvidableCompositionLocal r3 = (androidx.compose.runtime.ProvidableCompositionLocal) r3
            androidx.compose.runtime.ValueHolder r5 = r3.updatedStateOf$runtime(r11, r2)
            boolean r2 = r5.equals(r2)
            if (r2 != 0) goto L3a
            r13.updateRememberedValue(r5)
        L3a:
            boolean r6 = r13.inserting
            r7 = 1
            r8 = 0
            if (r6 == 0) goto L52
            boolean r2 = r11.canOverride
            if (r2 != 0) goto L4a
            boolean r2 = r1.containsKey(r3)
            if (r2 != 0) goto L4e
        L4a:
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r1.putValue(r3, r5)
        L4e:
            r13.writerHasAProvider = r7
        L50:
            r2 = r8
            goto L8d
        L52:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r6 = r13.reader
            int r9 = r6.currentGroup
            int[] r10 = r6.groups
            java.lang.Object r6 = r6.aux(r10, r9)
            r6.getClass()
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r6 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r6
            boolean r9 = r13.getSkipping()
            if (r9 == 0) goto L69
            if (r2 != 0) goto L74
        L69:
            boolean r9 = r11.canOverride
            if (r9 != 0) goto L82
            boolean r9 = r1.containsKey(r3)
            if (r9 != 0) goto L74
            goto L82
        L74:
            if (r2 == 0) goto L7b
            boolean r2 = r13.providersInvalid
            if (r2 != 0) goto L7b
            goto L80
        L7b:
            boolean r2 = r13.providersInvalid
            if (r2 == 0) goto L80
            goto L86
        L80:
            r1 = r6
            goto L86
        L82:
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r1.putValue(r3, r5)
        L86:
            boolean r2 = r13.reusing
            if (r2 != 0) goto L8c
            if (r6 == r1) goto L50
        L8c:
            r2 = r7
        L8d:
            if (r2 == 0) goto L96
            boolean r3 = r13.inserting
            if (r3 != 0) goto L96
            r13.recordProviderUpdate(r1)
        L96:
            boolean r3 = r13.providersInvalid
            r0.push(r3)
            r13.providersInvalid = r2
            r13.providerCache = r1
            r2 = 202(0xca, float:2.83E-43)
            androidx.compose.runtime.OpaqueKey r3 = androidx.compose.runtime.ComposerKt.compositionLocalMap
            r13.m376startAzEfcrM(r2, r8, r3, r1)
            int r1 = r14 >> 3
            r1 = r1 & 14
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r12.invoke(r13, r1)
            r13.end(r8)
            r13.end(r8)
            int r0 = r0.pop()
            if (r0 == 0) goto Lbe
            goto Lbf
        Lbe:
            r7 = r8
        Lbf:
            r13.providersInvalid = r7
            r13.providerCache = r4
            androidx.compose.runtime.RecomposeScopeImpl r13 = r13.endRestartGroup()
            if (r13 == 0) goto Ld1
            androidx.compose.material3.TextKt$$ExternalSyntheticLambda0 r0 = new androidx.compose.material3.TextKt$$ExternalSyntheticLambda0
            r1 = 6
            r0.<init>(r14, r1, r11, r12)
            r13.block = r0
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int):void");
    }

    public static final void DisposableEffect(Object[] objArr, Function1 function1, Composer composer) {
        boolean z = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z |= ((GapComposer) composer).changed(obj);
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (z || rememberedValue == Composer.Companion.Empty) {
            gapComposer.updateRememberedValue(new DisposableEffectImpl(function1));
        }
    }

    public static final void LaunchedEffect(Object obj, Object obj2, Function2 function2, Composer composer) {
        CoroutineContext coroutineContext = ((GapComposer) composer).applyCoroutineContext;
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(obj) | gapComposer.changed(obj2);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void SideEffect(Function0 function0, Composer composer) {
        Operations operations = ((GapComposer) composer).changeListWriter.changeList.operations;
        operations.pushOp(Operation.SideEffect.INSTANCE);
        DebugUtils.m789setObjectsGr0YRc(operations, 0, function0);
    }

    public static final void access$removeRange(List list, int i, int i2) {
        int findLocation = findLocation(i, list);
        if (findLocation < 0) {
            findLocation = -(findLocation + 1);
        }
        while (findLocation < list.size() && ((Invalidation) list.get(findLocation)).location < i2) {
        }
    }

    public static void adoptAnchoredScopes$runtime(SlotWriter slotWriter, List list, RecomposeScopeOwner recomposeScopeOwner) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int anchorIndex = slotWriter.anchorIndex((GapAnchor) list.get(i));
            int slotIndex = slotWriter.slotIndex(slotWriter.groups, slotWriter.groupIndexToAddress(anchorIndex));
            Object obj = slotIndex < slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(anchorIndex + 1)) ? slotWriter.slots[slotWriter.dataIndexToDataAddress(slotIndex)] : Composer.Companion.Empty;
            RecomposeScopeImpl recomposeScopeImpl = obj instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) obj : null;
            if (recomposeScopeImpl != null) {
                recomposeScopeImpl.owner = recomposeScopeOwner;
            }
        }
    }

    public static final MutableState collectAsState(StateFlow stateFlow, Composer composer) {
        Object value = stateFlow.getValue();
        GapComposer gapComposer = (GapComposer) composer;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        boolean changedInstance = gapComposer.changedInstance(emptyCoroutineContext) | gapComposer.changedInstance(stateFlow);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new Preferences$getAccountFlow$1(emptyCoroutineContext, stateFlow, null, 1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return produceState(value, stateFlow, emptyCoroutineContext, (Function2) rememberedValue, gapComposer, ((0 >> 3) & 14) | (0 & 896));
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

    public static final CoroutineScope createCompositionCoroutineScope(Composer composer) {
        return new RememberedCoroutineScope(((GapComposer) composer).applyCoroutineContext);
    }

    public static final MutableVector derivedStateObservers() {
        MenuHostHelper menuHostHelper = SnapshotStateKt__DerivedStateKt.derivedStateObservers;
        MutableVector mutableVector = (MutableVector) menuHostHelper.get();
        if (mutableVector != null) {
            return mutableVector;
        }
        MutableVector mutableVector2 = new MutableVector(new GapComposer$derivedStateObserver$1[0]);
        menuHostHelper.set(mutableVector2);
        return mutableVector2;
    }

    public static final DerivedSnapshotState derivedStateOf(Function0 function0) {
        MenuHostHelper menuHostHelper = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
        return new DerivedSnapshotState(null, function0);
    }

    public static final int findLocation(int i, List list) {
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

    public static final int getCurrentCompositeKeyHash(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.getClass();
        long j = gapComposer.compositeKeyHashCode;
        return (int) (j ^ (j >>> 32));
    }

    public static final BroadcastFrameClock getMonotonicFrameClock(CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = (BroadcastFrameClock) coroutineContext.get(NeverEqualPolicy.$$INSTANCE);
        if (broadcastFrameClock != null) {
            return broadcastFrameClock;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }

    /* renamed from: init-impl, reason: not valid java name */
    public static final void m378initimpl(Composer composer, Integer num, Function2 function2) {
        if (((GapComposer) composer).inserting) {
            ((GapComposer) composer).apply(num, function2);
        }
    }

    public static final ComposableLambdaImpl movableContentOf(ComposableLambdaImpl composableLambdaImpl) {
        return new ComposableLambdaImpl(-328108779, new ComposerKt$$ExternalSyntheticLambda0(15, new MovableContent(new ComposableLambdaImpl(-703201834, new TooltipKt$animateTooltip$2(5, composableLambdaImpl), true))), true);
    }

    public static ParcelableSnapshotMutableState mutableStateOf$default(Object obj) {
        return new ParcelableSnapshotMutableState(obj, NeverEqualPolicy.INSTANCE$3);
    }

    public static final MutableState produceState(Object obj, Object obj2, Object obj3, Function2 function2, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        if (rememberedValue == neverEqualPolicy) {
            rememberedValue = mutableStateOf$default(obj);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        boolean changedInstance = gapComposer.changedInstance(function2);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue2 == neverEqualPolicy) {
            rememberedValue2 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null, 1);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        LaunchedEffect(obj2, obj3, (Function2) rememberedValue2, gapComposer);
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
    public static final void m379reconcileimpl(Composer composer, Function1 function1) {
        ((GapComposer) composer).apply(Unit.INSTANCE, new Updater$$ExternalSyntheticLambda0(0, function1));
    }

    public static final GapComposer.CompositionContextImpl rememberCompositionContext(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startGroup(206, ComposerKt.reference);
        if (gapComposer.inserting) {
            SlotWriter.markGroup$default(gapComposer.writer);
        }
        Object nextSlot = gapComposer.nextSlot();
        GapRememberObserverHolder gapRememberObserverHolder = nextSlot instanceof GapRememberObserverHolder ? (GapRememberObserverHolder) nextSlot : null;
        if (gapRememberObserverHolder == null) {
            gapRememberObserverHolder = new ReusableGapRememberObserverHolder(new GapComposer.CompositionContextHolder(gapComposer.new CompositionContextImpl(gapComposer.compositeKeyHashCode, gapComposer.forceRecomposeScopes, gapComposer.sourceMarkersEnabled, gapComposer.composition.observerHolder)), -1);
            gapComposer.updateValue(gapRememberObserverHolder);
        }
        RememberObserver rememberObserver = gapRememberObserverHolder.wrapped;
        rememberObserver.getClass();
        GapComposer.CompositionContextImpl compositionContextImpl = ((GapComposer.CompositionContextHolder) rememberObserver).ref;
        compositionContextImpl.compositionLocalScope$delegate.setValue(gapComposer.currentCompositionLocalScope());
        gapComposer.end(false);
        return compositionContextImpl;
    }

    public static final MutableState rememberUpdatedState(Object obj, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object rememberedValue = gapComposer.rememberedValue();
        if (rememberedValue == Composer.Companion.Empty) {
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
        objArr[dataIndexToDataAddress] = Composer.Companion.Empty;
        if (obj == obj2) {
            return;
        }
        ComposerKt.composeImmediateRuntimeError("Slot table is out of sync (expected " + obj + ", got " + obj2 + ')');
    }

    /* renamed from: set-impl, reason: not valid java name */
    public static final void m380setimpl(Composer composer, Object obj, Function2 function2) {
        if (((GapComposer) composer).inserting || !Intrinsics.areEqual(((GapComposer) composer).rememberedValue(), obj)) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.updateRememberedValue(obj);
            gapComposer.apply(obj, function2);
        }
    }

    public static final SafeFlow snapshotFlow(Function0 function0) {
        return new SafeFlow(0, new NavHostKt$NavHost$25$1(function0, null, 8));
    }

    public static final int updateChangedFlags(int i) {
        int i2 = 306783378 & i;
        int i3 = 613566756 & i;
        return (i & (-920350135)) | (i3 >> 1) | i2 | ((i2 << 1) & i3);
    }

    public static final PersistentCompositionLocalHashMap updateCompositionMap(ProvidedValue[] providedValueArr, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2) {
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(PersistentCompositionLocalHashMap.Empty);
        for (ProvidedValue providedValue : providedValueArr) {
            ProvidableCompositionLocal providableCompositionLocal = (ProvidableCompositionLocal) providedValue.compositionLocal;
            if (providedValue.canOverride || !persistentCompositionLocalHashMap.containsKey(providableCompositionLocal)) {
                builder.put(providableCompositionLocal, providableCompositionLocal.updatedStateOf$runtime(providedValue, (ValueHolder) persistentCompositionLocalHashMap2.get(providableCompositionLocal)));
            }
        }
        return builder.build$1();
    }

    public static final DerivedSnapshotState derivedStateOf(NeverEqualPolicy neverEqualPolicy, Function0 function0) {
        MenuHostHelper menuHostHelper = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
        return new DerivedSnapshotState(neverEqualPolicy, function0);
    }

    public static final void LaunchedEffect(Composer composer, Object obj, Function2 function2) {
        CoroutineContext coroutineContext = ((GapComposer) composer).applyCoroutineContext;
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new LaunchedEffectImpl(coroutineContext, function2);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void DisposableEffect(Object obj, Object obj2, Function1 function1, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(obj) | gapComposer.changed(obj2);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new DisposableEffectImpl(function1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    public static final void DisposableEffect(Object obj, Function1 function1, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(obj);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new DisposableEffectImpl(function1);
            gapComposer.updateRememberedValue(rememberedValue);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[] r8, kotlin.jvm.functions.Function2 r9, androidx.compose.runtime.Composer r10, int r11) {
        /*
            androidx.compose.runtime.GapComposer r10 = (androidx.compose.runtime.GapComposer) r10
            r0 = 415205898(0x18bf8a0a, float:4.9511727E-24)
            r10.startRestartGroup(r0)
            androidx.compose.runtime.IntStack r0 = r10.providersInvalidStack
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r10.currentCompositionLocalScope()
            r2 = 201(0xc9, float:2.82E-43)
            androidx.compose.runtime.OpaqueKey r3 = androidx.compose.runtime.ComposerKt.provider
            r10.startGroup(r2, r3)
            boolean r2 = r10.inserting
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L29
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r2 = androidx.compose.runtime.internal.PersistentCompositionLocalHashMap.Empty
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r2 = updateCompositionMap(r8, r1, r2)
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r10.updateProviderMapGroup(r1, r2)
            r10.writerHasAProvider = r3
        L27:
            r2 = r4
            goto L74
        L29:
            androidx.compose.runtime.composer.gapbuffer.SlotReader r2 = r10.reader
            int r5 = r2.currentGroup
            java.lang.Object r2 = r2.groupGet(r5, r4)
            r2.getClass()
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r2 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r2
            androidx.compose.runtime.composer.gapbuffer.SlotReader r5 = r10.reader
            int r6 = r5.currentGroup
            java.lang.Object r5 = r5.groupGet(r6, r3)
            r5.getClass()
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r5 = (androidx.compose.runtime.internal.PersistentCompositionLocalHashMap) r5
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r6 = updateCompositionMap(r8, r1, r5)
            boolean r7 = r10.getSkipping()
            if (r7 == 0) goto L65
            boolean r7 = r10.reusing
            if (r7 != 0) goto L65
            boolean r5 = r5.equals(r6)
            if (r5 != 0) goto L58
            goto L65
        L58:
            int r1 = r10.groupNodeCount
            androidx.compose.runtime.composer.gapbuffer.SlotReader r5 = r10.reader
            int r5 = r5.skipGroup()
            int r5 = r5 + r1
            r10.groupNodeCount = r5
            r1 = r2
            goto L27
        L65:
            androidx.compose.runtime.internal.PersistentCompositionLocalHashMap r1 = r10.updateProviderMapGroup(r1, r6)
            boolean r5 = r10.reusing
            if (r5 != 0) goto L73
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r2 != 0) goto L27
        L73:
            r2 = r3
        L74:
            if (r2 == 0) goto L7d
            boolean r5 = r10.inserting
            if (r5 != 0) goto L7d
            r10.recordProviderUpdate(r1)
        L7d:
            boolean r5 = r10.providersInvalid
            r0.push(r5)
            r10.providersInvalid = r2
            r10.providerCache = r1
            r2 = 202(0xca, float:2.83E-43)
            androidx.compose.runtime.OpaqueKey r5 = androidx.compose.runtime.ComposerKt.compositionLocalMap
            r10.m376startAzEfcrM(r2, r4, r5, r1)
            int r1 = r11 >> 3
            r1 = r1 & 14
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r9.invoke(r10, r1)
            r10.end(r4)
            r10.end(r4)
            int r0 = r0.pop()
            if (r0 == 0) goto La5
            goto La6
        La5:
            r3 = r4
        La6:
            r10.providersInvalid = r3
            r0 = 0
            r10.providerCache = r0
            androidx.compose.runtime.RecomposeScopeImpl r10 = r10.endRestartGroup()
            if (r10 == 0) goto Lb9
            androidx.compose.material3.TextKt$$ExternalSyntheticLambda0 r0 = new androidx.compose.material3.TextKt$$ExternalSyntheticLambda0
            r1 = 7
            r0.<init>(r11, r1, r8, r9)
            r10.block = r0
        Lb9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[], kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int):void");
    }
}
