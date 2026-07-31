package androidx.compose.foundation.lazy.layout;

import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Transition$$ExternalSyntheticLambda2;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.ScaffoldKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectImpl;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotId_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda3;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;
import net.newpipe.app.ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;
import net.newpipe.app.screen.about.LicensePageKt$$ExternalSyntheticLambda4;
import org.mozilla.javascript.Token;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class LazyLayoutKt {
    public static final LayoutNode$$ExternalSyntheticLambda3 LazyLayoutMeasuredItemIndexComparator = new LayoutNode$$ExternalSyntheticLambda3(2);

    public static final void LazyLayout(final Function0 function0, final Modifier modifier, final LazyLayoutPrefetchState lazyLayoutPrefetchState, final LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, Composer composer, final int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1055276397);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(lazyLayoutPrefetchState) ? 256 : 128) | (gapComposer.changed(lazyLayoutMeasurePolicy) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            final MutableState rememberUpdatedState = Updater.rememberUpdatedState(function0, gapComposer);
            LazySaveableStateHolderProvider(Expect_jvmKt.rememberComposableLambda(-933153643, new Function3() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Modifier then;
                    SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj;
                    ((Integer) obj3).getClass();
                    GapComposer gapComposer2 = (GapComposer) ((Composer) obj2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    Object obj4 = Composer.Companion.Empty;
                    if (rememberedValue == obj4) {
                        rememberedValue = new LazyLayoutItemContentFactory(saveableStateHolder, new LicensePageKt$$ExternalSyntheticLambda4(rememberUpdatedState, 2));
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) rememberedValue;
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == obj4) {
                        rememberedValue2 = new SubcomposeLayoutState(new CardView.AnonymousClass1(lazyLayoutItemContentFactory));
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    final SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) rememberedValue2;
                    int i3 = 3;
                    final LazyLayoutPrefetchState lazyLayoutPrefetchState2 = LazyLayoutPrefetchState.this;
                    if (lazyLayoutPrefetchState2 != null) {
                        gapComposer2.startReplaceGroup(1743490539);
                        gapComposer2.startReplaceGroup(887527095);
                        final PrefetchScheduler prefetchScheduler = PrefetchScheduler_androidKt.RobolectricImpl;
                        if (prefetchScheduler != null) {
                            gapComposer2.startReplaceGroup(1345554384);
                        } else {
                            gapComposer2.startReplaceGroup(1345603457);
                            View view = (View) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalView);
                            boolean changed = gapComposer2.changed(view);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed || rememberedValue3 == obj4) {
                                Object tag = view.getTag(R.id.compose_prefetch_scheduler);
                                rememberedValue3 = tag instanceof PrefetchScheduler ? (PrefetchScheduler) tag : null;
                                if (rememberedValue3 == null) {
                                    rememberedValue3 = new AndroidPrefetchScheduler(view);
                                    view.setTag(R.id.compose_prefetch_scheduler, rememberedValue3);
                                }
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            prefetchScheduler = (PrefetchScheduler) rememberedValue3;
                        }
                        gapComposer2.end(false);
                        gapComposer2.end(false);
                        Object[] objArr = {lazyLayoutPrefetchState2, lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler};
                        boolean changed2 = gapComposer2.changed(lazyLayoutPrefetchState2) | gapComposer2.changedInstance(lazyLayoutItemContentFactory) | gapComposer2.changedInstance(subcomposeLayoutState) | gapComposer2.changedInstance(prefetchScheduler);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changed2 || rememberedValue4 == obj4) {
                            rememberedValue4 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj5) {
                                    Latch latch = new Latch(lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler);
                                    LazyLayoutPrefetchState lazyLayoutPrefetchState3 = LazyLayoutPrefetchState.this;
                                    lazyLayoutPrefetchState3.prefetchHandleProvider = latch;
                                    return new ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1(lazyLayoutPrefetchState3, 3);
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Function1 function1 = (Function1) rememberedValue4;
                        Object[] copyOf = Arrays.copyOf(objArr, 4);
                        boolean z = false;
                        for (Object obj5 : copyOf) {
                            z |= gapComposer2.changed(obj5);
                        }
                        Object rememberedValue5 = gapComposer2.rememberedValue();
                        if (z || rememberedValue5 == obj4) {
                            gapComposer2.updateRememberedValue(new DisposableEffectImpl(function1));
                        }
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(1744076749);
                        gapComposer2.end(false);
                    }
                    int i4 = LazyLayoutPrefetchStateKt.$r8$clinit;
                    Modifier modifier2 = modifier;
                    if (lazyLayoutPrefetchState2 != null && (then = modifier2.then(new TraversablePrefetchStateModifierElement(lazyLayoutPrefetchState2))) != null) {
                        modifier2 = then;
                    }
                    boolean changed3 = gapComposer2.changed(lazyLayoutItemContentFactory);
                    Object obj6 = lazyLayoutMeasurePolicy;
                    boolean changed4 = changed3 | gapComposer2.changed(obj6);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue6 == obj4) {
                        rememberedValue6 = new TextKt$$ExternalSyntheticLambda2(lazyLayoutItemContentFactory, obj6, i3);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    RulerKt.SubcomposeLayout(subcomposeLayoutState, modifier2, (Function2) rememberedValue6, gapComposer2, 8, 0);
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 6);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier, lazyLayoutPrefetchState, lazyLayoutMeasurePolicy, i) { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$$ExternalSyntheticLambda1
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ LazyLayoutPrefetchState f$2;
                public final /* synthetic */ LazyLayoutMeasurePolicy f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    LazyLayoutKt.LazyLayout(Function0.this, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void LazyLayoutPinnableItem(final Object obj, final int i, final LazyLayoutPinnedItemList lazyLayoutPinnedItemList, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(872548579);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changedInstance(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(i) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i3 |= gapComposer.changedInstance(lazyLayoutPinnedItemList) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            boolean changed = gapComposer.changed(obj) | gapComposer.changed(lazyLayoutPinnedItemList);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (changed || rememberedValue == neverEqualPolicy) {
                rememberedValue = new LazyLayoutPinnableItem(obj, lazyLayoutPinnedItemList);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) rememberedValue;
            lazyLayoutPinnableItem.index = i;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = lazyLayoutPinnableItem._parentPinnableContainer$delegate;
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = PinnableContainerKt.LocalPinnableContainer;
            LazyLayoutPinnableItem lazyLayoutPinnableItem2 = (LazyLayoutPinnableItem) gapComposer.consume(dynamicProvidableCompositionLocal);
            Snapshot currentThreadSnapshot = SnapshotId_jvmKt.getCurrentThreadSnapshot();
            Function1 readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
            Snapshot makeCurrentNonObservable = SnapshotId_jvmKt.makeCurrentNonObservable(currentThreadSnapshot);
            try {
                if (lazyLayoutPinnableItem2 != ((LazyLayoutPinnableItem) parcelableSnapshotMutableState.getValue())) {
                    parcelableSnapshotMutableState.setValue(lazyLayoutPinnableItem2);
                    if (lazyLayoutPinnableItem.pinsCount > 0) {
                        LazyLayoutPinnableItem lazyLayoutPinnableItem3 = lazyLayoutPinnableItem.parentHandle;
                        if (lazyLayoutPinnableItem3 != null) {
                            lazyLayoutPinnableItem3.release();
                        }
                        if (lazyLayoutPinnableItem2 != null) {
                            lazyLayoutPinnableItem2.pin();
                        } else {
                            lazyLayoutPinnableItem2 = null;
                        }
                        lazyLayoutPinnableItem.parentHandle = lazyLayoutPinnableItem2;
                    }
                }
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                boolean changed2 = gapComposer.changed(lazyLayoutPinnableItem);
                Object rememberedValue2 = gapComposer.rememberedValue();
                int i4 = 6;
                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new DiskLruCache$$ExternalSyntheticLambda0(lazyLayoutPinnableItem, i4);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Updater.DisposableEffect(lazyLayoutPinnableItem, (Function1) rememberedValue2, gapComposer);
                Updater.CompositionLocalProvider(dynamicProvidableCompositionLocal.defaultProvidedValue$runtime(lazyLayoutPinnableItem), composableLambdaImpl, gapComposer, ((i3 >> 6) & Token.ASSIGN_MOD) | 8);
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    LazyLayoutKt.LazyLayoutPinnableItem(obj, i, lazyLayoutPinnedItemList, composableLambdaImpl, (Composer) obj2, Updater.updateChangedFlags(i2 | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void LazySaveableStateHolderProvider(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-709502251);
        int i2 = 2;
        boolean z = false;
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
            SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(staticProvidableCompositionLocal);
            SaveableStateHolderImpl rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer);
            Object[] objArr = {saveableStateRegistry};
            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda0(i2), new Recomposer$$ExternalSyntheticLambda4(saveableStateRegistry, rememberSaveableStateHolder, 18), z);
            boolean changedInstance = gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changedInstance(rememberSaveableStateHolder);
            Object rememberedValue = gapComposer.rememberedValue();
            int i3 = 4;
            if (changedInstance || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(saveableStateRegistry, rememberSaveableStateHolder, i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) SaverKt.rememberSaveable$1(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(lazySaveableStateHolder), Expect_jvmKt.rememberComposableLambda(-412824043, new TextKt$$ExternalSyntheticLambda2(composableLambdaImpl, lazySaveableStateHolder, i3), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ScaffoldKt$$ExternalSyntheticLambda0(composableLambdaImpl, i, i2);
        }
    }

    /* renamed from: SkippableItem-JVlU9Rs, reason: not valid java name */
    public static final void m109SkippableItemJVlU9Rs(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, Composer composer, int i2) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1439843069);
        int i3 = (gapComposer.changed(lazyLayoutItemProvider) ? 4 : 2) | i2 | (gapComposer.changed(obj) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changed(obj2) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            ((SaveableStateHolder) obj).SaveableStateProvider(obj2, Expect_jvmKt.rememberComposableLambda(980966366, new Transition$$ExternalSyntheticLambda2(i, lazyLayoutItemProvider, obj2), gapComposer), gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(lazyLayoutItemProvider, obj, i, obj2, i2);
        }
    }

    public static final int access$binarySearch(int i, MutableVector mutableVector) {
        int i2 = mutableVector.size - 1;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = ((i2 - i3) / 2) + i3;
            Object[] objArr = mutableVector.content;
            int i5 = ((IntervalList$Interval) objArr[i4]).startIndex;
            if (i5 != i) {
                if (i5 < i) {
                    i3 = i4 + 1;
                    if (i < ((IntervalList$Interval) objArr[i3]).startIndex) {
                    }
                } else {
                    i2 = i4 - 1;
                }
            }
            return i4;
        }
        return i3;
    }

    public static final List calculateLazyLayoutPinnedIndices(LazyLayoutItemProvider lazyLayoutItemProvider, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo) {
        IntRange intRange;
        MutableVector mutableVector = lazyLayoutBeyondBoundsInfo.beyondBoundsItems;
        if (!(mutableVector.size != 0) && lazyLayoutPinnedItemList.items.isEmpty()) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList = new ArrayList();
        if (lazyLayoutBeyondBoundsInfo.beyondBoundsItems.size != 0) {
            int i = mutableVector.size;
            if (i == 0) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("MutableVector is empty.");
                return null;
            }
            Object[] objArr = mutableVector.content;
            int i2 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[0]).start;
            for (int i3 = 0; i3 < i; i3++) {
                int i4 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[i3]).start;
                if (i4 < i2) {
                    i2 = i4;
                }
            }
            if (i2 < 0) {
                InlineClassHelperKt.throwIllegalArgumentException("negative minIndex");
            }
            int i5 = mutableVector.size;
            if (i5 == 0) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$2("MutableVector is empty.");
                return null;
            }
            Object[] objArr2 = mutableVector.content;
            int i6 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[0]).end;
            for (int i7 = 0; i7 < i5; i7++) {
                int i8 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[i7]).end;
                if (i8 > i6) {
                    i6 = i8;
                }
            }
            intRange = new IntRange(i2, Math.min(i6, lazyLayoutItemProvider.getItemCount() - 1), 1);
        } else {
            intRange = IntRange.EMPTY;
        }
        int size = lazyLayoutPinnedItemList.items.size();
        for (int i9 = 0; i9 < size; i9++) {
            LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) lazyLayoutPinnedItemList.get(i9);
            int findIndexByKey = findIndexByKey(lazyLayoutPinnableItem.index, lazyLayoutItemProvider, lazyLayoutPinnableItem.key);
            int i10 = intRange.first;
            if ((findIndexByKey > intRange.last || i10 > findIndexByKey) && findIndexByKey >= 0 && findIndexByKey < lazyLayoutItemProvider.getItemCount()) {
                arrayList.add(Integer.valueOf(findIndexByKey));
            }
        }
        int i11 = intRange.first;
        int i12 = intRange.last;
        if (i11 <= i12) {
            while (true) {
                arrayList.add(Integer.valueOf(i11));
                if (i11 == i12) {
                    break;
                }
                i11++;
            }
        }
        return arrayList;
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static MutableState m110constructorimpl$default() {
        return new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
    }

    public static final int findIndexByKey(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        int index;
        return (obj == null || lazyLayoutItemProvider.getItemCount() == 0 || (i < lazyLayoutItemProvider.getItemCount() && obj.equals(lazyLayoutItemProvider.getKey(i))) || (index = lazyLayoutItemProvider.getIndex(obj)) == -1) ? i : index;
    }

    public static final Modifier lazyLayoutBeyondBoundsModifier(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, Orientation orientation) {
        return new LazyLayoutBeyondBoundsModifierElement(lazyLayoutBeyondBoundsState, lazyLayoutBeyondBoundsInfo, orientation);
    }

    public static final Modifier lazyLayoutSemantics(Modifier modifier, LockFreeLinkedListNode$toString$1 lockFreeLinkedListNode$toString$1, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        return modifier.then(new LazyLayoutSemanticsModifier(lockFreeLinkedListNode$toString$1, lazyLayoutSemanticState, orientation, z));
    }

    public abstract JsonParser getIntervals();

    public Object getKey(int i) {
        Object invoke;
        IntervalList$Interval intervalList$Interval = getIntervals().get(i);
        int i2 = i - intervalList$Interval.startIndex;
        Function1 key = intervalList$Interval.value.getKey();
        return (key == null || (invoke = key.invoke(Integer.valueOf(i2))) == null) ? new DefaultLazyKey(i) : invoke;
    }
}
