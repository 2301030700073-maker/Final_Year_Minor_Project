package androidx.compose.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer.CompositionContextImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Okio;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Updater {
    public static final Object PendingApplyNoModifications = new Object();
    public static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();
    public static final LayoutNode$$ExternalSyntheticLambda3 InvalidationLocationAscending = new LayoutNode$$ExternalSyntheticLambda3(3);

    /* JADX WARN: Removed duplicated region for block: B:11:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[] r10, kotlin.jvm.functions.Function2 r11, androidx.compose.runtime.Composer r12, int r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue[], kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int):void");
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
        Okio.m724setObjectsGr0YRc(operations, 0, function0);
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
        ProcessFinisher processFinisher = SnapshotStateKt__DerivedStateKt.derivedStateObservers;
        MutableVector mutableVector = (MutableVector) processFinisher.get();
        if (mutableVector != null) {
            return mutableVector;
        }
        MutableVector mutableVector2 = new MutableVector(new GapComposer$derivedStateObserver$1[0]);
        processFinisher.set(mutableVector2);
        return mutableVector2;
    }

    public static final DerivedSnapshotState derivedStateOf(Function0 function0) {
        ProcessFinisher processFinisher = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
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

    public static final MonotonicFrameClock getMonotonicFrameClock(CoroutineContext coroutineContext) {
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.get(NeverEqualPolicy.$$INSTANCE);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }

    public static ParcelableSnapshotMutableState mutableStateOf$default(Object obj) {
        return new ParcelableSnapshotMutableState(obj, NeverEqualPolicy.INSTANCE$3);
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
    public static final void m169reconcileimpl(Composer composer, Function1 function1) {
        ((GapComposer) composer).apply(Unit.INSTANCE, new Updater$$ExternalSyntheticLambda0(function1, 0));
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
    public static final void m170setimpl(Composer composer, Object obj, Function2 function2) {
        if (((GapComposer) composer).inserting || !Intrinsics.areEqual(((GapComposer) composer).rememberedValue(), obj)) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.updateRememberedValue(obj);
            gapComposer.apply(obj, function2);
        }
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

    public static final DerivedSnapshotState derivedStateOf(NeverEqualPolicy neverEqualPolicy, Function0 function0) {
        ProcessFinisher processFinisher = SnapshotStateKt__DerivedStateKt.calculationBlockNestedLevel;
        return new DerivedSnapshotState(neverEqualPolicy, function0);
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
            r13.m167startAzEfcrM(r2, r3, r1, r8)
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
            androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2 r0 = new androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2
            r1 = 5
            r0.<init>(r14, r11, r12, r1)
            r13.block = r0
        Ld1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Updater.CompositionLocalProvider(androidx.compose.runtime.ProvidedValue, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int):void");
    }
}
