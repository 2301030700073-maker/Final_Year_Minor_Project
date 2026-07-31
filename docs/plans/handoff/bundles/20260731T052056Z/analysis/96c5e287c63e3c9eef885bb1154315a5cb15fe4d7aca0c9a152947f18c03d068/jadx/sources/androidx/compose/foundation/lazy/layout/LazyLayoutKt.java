package androidx.compose.foundation.lazy.layout;

import android.view.View;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.cardview.widget.CardView;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
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
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.IntRange;
import kotlin.reflect.KProperty0;
import kotlin.text.RegexKt;
import okhttp3.internal.http.StatusLine;
import org.wikipedia.R;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda31;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda2;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LazyLayoutKt {
    public static final LazyLayoutItemAnimation[] EmptyArray = new LazyLayoutItemAnimation[0];
    public static final LayoutNode$$ExternalSyntheticLambda0 LazyLayoutMeasuredItemIndexComparator = new LayoutNode$$ExternalSyntheticLambda0(2);

    public static final void LazyLayout(final Function0 function0, final Modifier modifier, final LazyLayoutPrefetchState lazyLayoutPrefetchState, final LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, GapComposer gapComposer, final int i) {
        gapComposer.startRestartGroup(1055276397);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changed(lazyLayoutPrefetchState) ? 256 : 128) | (gapComposer.changed(lazyLayoutMeasurePolicy) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            final MutableState rememberUpdatedState = Updater.rememberUpdatedState(function0, gapComposer);
            LazySaveableStateHolderProvider(Expect_jvmKt.rememberComposableLambda(-933153643, new Function3() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Modifier then;
                    SaveableStateHolder saveableStateHolder = (SaveableStateHolder) obj;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    ((Integer) obj3).getClass();
                    Object rememberedValue = gapComposer2.rememberedValue();
                    int i3 = 3;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new LazyLayoutItemContentFactory(saveableStateHolder, new ForYouCardKt$$ExternalSyntheticLambda2(rememberUpdatedState, i3));
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    final LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) rememberedValue;
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SubcomposeLayoutState(new CardView.AnonymousClass1(lazyLayoutItemContentFactory));
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    final SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) rememberedValue2;
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
                            if (changed || rememberedValue3 == neverEqualPolicy) {
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
                        if (changed2 || rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutKt$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    Latch latch = new Latch(lazyLayoutItemContentFactory, subcomposeLayoutState, prefetchScheduler);
                                    LazyLayoutPrefetchState lazyLayoutPrefetchState3 = LazyLayoutPrefetchState.this;
                                    lazyLayoutPrefetchState3.prefetchHandleProvider = latch;
                                    return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(4, lazyLayoutPrefetchState3);
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Updater.DisposableEffect(objArr, (Function1) rememberedValue4, gapComposer2);
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
                    LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy2 = lazyLayoutMeasurePolicy;
                    boolean changed4 = changed3 | gapComposer2.changed(lazyLayoutMeasurePolicy2);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changed4 || rememberedValue5 == neverEqualPolicy) {
                        rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda17(5, lazyLayoutItemContentFactory, lazyLayoutMeasurePolicy2);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    RulerKt.SubcomposeLayout(subcomposeLayoutState, modifier2, (Function2) rememberedValue5, gapComposer2, 8);
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
                    LazyLayoutKt.LazyLayout(Function0.this, this.f$1, this.f$2, this.f$3, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void LazyLayoutPinnableItem(Object obj, int i, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i2) {
        int i3;
        gapComposer.startRestartGroup(872548579);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changedInstance(obj) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(i) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changedInstance(lazyLayoutPinnedItemList) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            boolean changed = gapComposer.changed(obj) | gapComposer.changed(lazyLayoutPinnedItemList);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj2 = Composer$Companion.Empty;
            if (changed || rememberedValue == obj2) {
                rememberedValue = new LazyLayoutPinnableItem(obj, lazyLayoutPinnedItemList);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) rememberedValue;
            lazyLayoutPinnableItem.index = i;
            ParcelableSnapshotMutableState parcelableSnapshotMutableState = lazyLayoutPinnableItem._parentPinnableContainer$delegate;
            ProvidableCompositionLocal providableCompositionLocal = PinnableContainerKt.LocalPinnableContainer;
            LazyLayoutPinnableItem lazyLayoutPinnableItem2 = (LazyLayoutPinnableItem) gapComposer.consume(providableCompositionLocal);
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
                if (changed2 || rememberedValue2 == obj2) {
                    rememberedValue2 = new AppBarKt$$ExternalSyntheticLambda11(14, lazyLayoutPinnableItem);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Updater.DisposableEffect(lazyLayoutPinnableItem, (Function1) rememberedValue2, gapComposer);
                Updater.CompositionLocalProvider(providableCompositionLocal.defaultProvidedValue$runtime(lazyLayoutPinnableItem), composableLambdaImpl, gapComposer, ((i3 >> 6) & 112) | 8);
            } catch (Throwable th) {
                SnapshotId_jvmKt.restoreNonObservable(currentThreadSnapshot, makeCurrentNonObservable, readObserver);
                throw th;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GamesHubScreenKt$$ExternalSyntheticLambda2(obj, i, lazyLayoutPinnedItemList, composableLambdaImpl, i2);
        }
    }

    public static final void LazySaveableStateHolderProvider(ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-709502251);
        int i2 = 2;
        if (gapComposer.shouldExecute(i & 1, (i & 3) != 2)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.LocalSaveableStateRegistry;
            SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) gapComposer.consume(staticProvidableCompositionLocal);
            SaveableStateHolderImpl rememberSaveableStateHolder = SaverKt.rememberSaveableStateHolder(gapComposer);
            Object[] objArr = {saveableStateRegistry};
            CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(12, new SaversKt$$ExternalSyntheticLambda0(5), new BackHandlerKt$$ExternalSyntheticLambda2(26, saveableStateRegistry, rememberSaveableStateHolder));
            boolean changedInstance = gapComposer.changedInstance(saveableStateRegistry) | gapComposer.changedInstance(rememberSaveableStateHolder);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new Recomposer$$ExternalSyntheticLambda6(7, saveableStateRegistry, rememberSaveableStateHolder);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) SaverKt.rememberSaveable(objArr, anonymousClass1, (Function0) rememberedValue, gapComposer, 0);
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(lazySaveableStateHolder), Expect_jvmKt.rememberComposableLambda(-412824043, new HomeScreenKt$$ExternalSyntheticLambda17(6, composableLambdaImpl, lazySaveableStateHolder), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, i, i2);
        }
    }

    /* renamed from: SkippableItem-JVlU9Rs, reason: not valid java name */
    public static final void m165SkippableItemJVlU9Rs(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, GapComposer gapComposer, int i2) {
        gapComposer.startRestartGroup(1439843069);
        int i3 = (gapComposer.changed(lazyLayoutItemProvider) ? 4 : 2) | i2 | (gapComposer.changed(obj) ? 32 : 16) | (gapComposer.changed(i) ? 256 : 128) | (gapComposer.changed(obj2) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            ((SaveableStateHolder) obj).SaveableStateProvider(obj2, Expect_jvmKt.rememberComposableLambda(980966366, new ForYouCardKt$$ExternalSyntheticLambda31(i, lazyLayoutItemProvider, obj2), gapComposer), gapComposer, 48);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(lazyLayoutItemProvider, obj, i, obj2, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e4 A[Catch: ItemFoundInScroll -> 0x01be, TRY_ENTER, TRY_LEAVE, TryCatch #5 {ItemFoundInScroll -> 0x01be, blocks: (B:26:0x00c6, B:33:0x00e4, B:41:0x010e, B:43:0x0124, B:46:0x0139, B:49:0x0141), top: B:25:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4, types: [boolean] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0191 -> B:21:0x019d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animateScrollToItem(androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1 r28, int r29, int r30, int r31, androidx.compose.ui.unit.Density r32, kotlin.coroutines.jvm.internal.ContinuationImpl r33) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.layout.LazyLayoutKt.animateScrollToItem(androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1, int, int, int, androidx.compose.ui.unit.Density, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final boolean animateScrollToItem$isOvershot(boolean z, PagerScrollScopeKt$LazyLayoutScrollScope$1 pagerScrollScopeKt$LazyLayoutScrollScope$1, int i, int i2) {
        if (z) {
            if (pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex() > i) {
                return true;
            }
            return pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex() == i && pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemScrollOffset() > i2;
        }
        if (pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex() < i) {
            return true;
        }
        return pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex() == i && pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemScrollOffset() < i2;
    }

    public static final List applyStickyItems(CachedItem.NoKey noKey, int i, int i2, ArrayList arrayList, MutableIntList mutableIntList, int i3, int i4, int i5, Function1 function1) {
        int i6;
        MutableIntList mutableIntList2;
        int i7;
        long j;
        Object obj;
        int i8;
        if (noKey == null || arrayList.isEmpty() || (i6 = mutableIntList._size) == 0) {
            return EmptyList.INSTANCE;
        }
        int i9 = -1;
        int i10 = 0;
        if (i2 - i < 0 || i6 == 0) {
            mutableIntList2 = IntListKt.EmptyIntList;
        } else {
            IntRange until = RegexKt.until(0, i6);
            int i11 = until.first;
            int i12 = until.last;
            int i13 = -1;
            if (i11 <= i12) {
                while (mutableIntList.get(i11) <= i) {
                    i13 = mutableIntList.get(i11);
                    if (i11 == i12) {
                        break;
                    }
                    i11++;
                }
            }
            if (i13 == -1) {
                mutableIntList2 = IntListKt.EmptyIntList;
            } else {
                MutableIntList mutableIntList3 = IntListKt.EmptyIntList;
                mutableIntList2 = new MutableIntList(1);
                mutableIntList2.add(i13);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i14 = 0; i14 < size; i14++) {
            Object obj2 = arrayList.get(i14);
            int index = ((LazyLayoutMeasuredItem) obj2).getIndex();
            int[] iArr = mutableIntList.content;
            int i15 = mutableIntList._size;
            int i16 = 0;
            while (true) {
                if (i16 >= i15) {
                    break;
                }
                if (iArr[i16] == index) {
                    arrayList3.add(obj2);
                    break;
                }
                i16++;
            }
        }
        int[] iArr2 = mutableIntList2.content;
        int i17 = mutableIntList2._size;
        int i18 = 0;
        while (i18 < i17) {
            int i19 = iArr2[i18];
            Iterator it = arrayList.iterator();
            int i20 = i10;
            while (true) {
                if (!it.hasNext()) {
                    i20 = i9;
                    break;
                }
                if (((LazyLayoutMeasuredItem) it.next()).getIndex() == i19) {
                    break;
                }
                i20++;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem = i20 == i9 ? (LazyLayoutMeasuredItem) function1.invoke(Integer.valueOf(i19)) : (LazyLayoutMeasuredItem) arrayList.remove(i20);
            int mainAxisSizeWithSpacings = lazyLayoutMeasuredItem.getMainAxisSizeWithSpacings();
            long j2 = 4294967295L;
            if (i20 == i9) {
                i7 = Integer.MIN_VALUE;
            } else {
                long mo158getOffsetBjo55l4 = lazyLayoutMeasuredItem.mo158getOffsetBjo55l4(i10);
                i7 = (int) (lazyLayoutMeasuredItem.isVertical() ? mo158getOffsetBjo55l4 & 4294967295L : mo158getOffsetBjo55l4 >> 32);
            }
            int size2 = arrayList3.size();
            int i21 = 0;
            while (true) {
                if (i21 >= size2) {
                    j = j2;
                    obj = null;
                    break;
                }
                obj = arrayList3.get(i21);
                j = j2;
                if (((LazyLayoutMeasuredItem) obj).getIndex() != i19) {
                    break;
                }
                i21++;
                j2 = j;
            }
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem2 = (LazyLayoutMeasuredItem) obj;
            if (lazyLayoutMeasuredItem2 != null) {
                long mo158getOffsetBjo55l42 = lazyLayoutMeasuredItem2.mo158getOffsetBjo55l4(0);
                i8 = (int) (lazyLayoutMeasuredItem2.isVertical() ? mo158getOffsetBjo55l42 & j : mo158getOffsetBjo55l42 >> 32);
            } else {
                i8 = Integer.MIN_VALUE;
            }
            int max = i7 == Integer.MIN_VALUE ? -i3 : Math.max(-i3, i7);
            if (i8 != Integer.MIN_VALUE) {
                max = Math.min(max, i8 - mainAxisSizeWithSpacings);
            }
            lazyLayoutMeasuredItem.setNonScrollableItem();
            lazyLayoutMeasuredItem.position(max, 0, i4, i5);
            arrayList2.add(lazyLayoutMeasuredItem);
            i18++;
            i10 = 0;
            i9 = -1;
        }
        return arrayList2;
    }

    public static final int binarySearch(int i, MutableVector mutableVector) {
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
                Gson$$ExternalSyntheticBUOutline0.m$3("MutableVector is empty.");
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
                Gson$$ExternalSyntheticBUOutline0.m$3("MutableVector is empty.");
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
    public static MutableState m166constructorimpl$default() {
        return new ParcelableSnapshotMutableState(Unit.INSTANCE, NeverEqualPolicy.INSTANCE);
    }

    public static final int findIndexByKey(int i, LazyLayoutItemProvider lazyLayoutItemProvider, Object obj) {
        int index;
        return (obj == null || lazyLayoutItemProvider.getItemCount() == 0 || (i < lazyLayoutItemProvider.getItemCount() && obj.equals(lazyLayoutItemProvider.getKey(i))) || (index = lazyLayoutItemProvider.getIndex(obj)) == -1) ? i : index;
    }

    /* renamed from: invalidateScope-impl, reason: not valid java name */
    public static final void m167invalidateScopeimpl(MutableState mutableState) {
        mutableState.setValue(Unit.INSTANCE);
    }

    public static final boolean isItemVisible(PagerScrollScopeKt$LazyLayoutScrollScope$1 pagerScrollScopeKt$LazyLayoutScrollScope$1, int i) {
        return i <= pagerScrollScopeKt$LazyLayoutScrollScope$1.getLastVisibleItemIndex() && pagerScrollScopeKt$LazyLayoutScrollScope$1.getFirstVisibleItemIndex() <= i;
    }

    public static final Modifier lazyLayoutBeyondBoundsModifier(LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo, Orientation orientation) {
        return new LazyLayoutBeyondBoundsModifierElement(lazyLayoutBeyondBoundsState, lazyLayoutBeyondBoundsInfo, orientation);
    }

    public static final Modifier lazyLayoutSemantics(Modifier modifier, KProperty0 kProperty0, LazyLayoutSemanticState lazyLayoutSemanticState, Orientation orientation, boolean z) {
        return modifier.then(new LazyLayoutSemanticsModifier(kProperty0, lazyLayoutSemanticState, orientation, z));
    }

    public static final List updatedVisibleItems(int i, int i2, ArrayList arrayList, List list) {
        if (arrayList.isEmpty()) {
            return EmptyList.INSTANCE;
        }
        ArrayList arrayList2 = new ArrayList(list);
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            LazyLayoutMeasuredItem lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) arrayList.get(i3);
            int index = lazyLayoutMeasuredItem.getIndex();
            if (i <= index && index <= i2) {
                arrayList2.add(lazyLayoutMeasuredItem);
            }
        }
        CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, LazyLayoutMeasuredItemIndexComparator);
        return arrayList2;
    }

    public Object getContentType(int i) {
        IntervalList$Interval intervalList$Interval = getIntervals().get(i);
        return intervalList$Interval.value.getType().invoke(Integer.valueOf(i - intervalList$Interval.startIndex));
    }

    public abstract StatusLine getIntervals();

    public Object getKey(int i) {
        Object invoke;
        IntervalList$Interval intervalList$Interval = getIntervals().get(i);
        int i2 = i - intervalList$Interval.startIndex;
        Function1 key = intervalList$Interval.value.getKey();
        return (key == null || (invoke = key.invoke(Integer.valueOf(i2))) == null) ? new DefaultLazyKey(i) : invoke;
    }
}
