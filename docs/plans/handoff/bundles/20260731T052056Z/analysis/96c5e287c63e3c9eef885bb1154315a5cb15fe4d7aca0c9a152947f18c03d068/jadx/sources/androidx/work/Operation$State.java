package androidx.work;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.SizeF;
import android.util.TypedValue;
import android.view.View;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.compose.BackHandlerInfo;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3;
import androidx.activity.compose.ComposeBackHandler;
import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.DataPointAtTime;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.text.font.AndroidFontResolveInterceptor;
import androidx.compose.ui.text.font.FontFamilyResolverImpl;
import androidx.compose.ui.text.font.FontWeightAdjustmentHelperApi31;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.core.app.RemoteInput;
import androidx.glance.Applier;
import androidx.glance.GlanceModifier;
import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import androidx.glance.appwidget.CompositionLocalsKt;
import androidx.glance.appwidget.SizeBoxKt$SizeBox$1;
import androidx.glance.appwidget.SizeMode;
import androidx.glance.layout.BoxKt$Box$2$1;
import androidx.glance.layout.SpacerKt$Spacer$1;
import androidx.glance.layout.SpacerKt$Spacer$3;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.WeakReference;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigationevent.NavigationEventDispatcherOwner;
import androidx.navigationevent.compose.LocalNavigationEventDispatcherOwner;
import androidx.paging.HintHandler;
import androidx.paging.PagingSource$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.room.TransactionExecutor;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import androidx.work.Operation$State;
import androidx.work.impl.CleanupCallback;
import androidx.work.impl.Migration_1_2;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkManagerImplExtKt$WorkManagerImpl$1;
import androidx.work.impl.WorkMigration9To10;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import coil3.ImageLoader$Builder;
import coil3.memory.RealStrongMemoryCache;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkResponse;
import coil3.network.SourceResponseBody;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.fasterxml.jackson.core.json.JsonWriteContext;
import com.fasterxml.jackson.databind.type.TypeBase;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.UIntArray;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContextKt$WhenMappings;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.channels.Channel;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.BufferedSource;
import org.wikipedia.R;
import org.wikipedia.commons.FilePageView$$ExternalSyntheticLambda1;
import org.wikipedia.donate.DonateDialog$onCreateView$3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda17;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Operation$State {
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FAILURE extends Operation$State {
        public final Throwable mThrowable;

        public FAILURE(Throwable th) {
            super(0);
            this.mThrowable = th;
        }

        @Override // androidx.work.Operation$State
        public final String toString() {
            return "FAILURE (" + this.mThrowable.getMessage() + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SUCCESS extends Operation$State {
        public final /* synthetic */ int $r8$classId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SUCCESS(int i) {
            super(0);
            this.$r8$classId = i;
        }

        @Override // androidx.work.Operation$State
        public final String toString() {
            switch (this.$r8$classId) {
                case 0:
                    return "SUCCESS";
                default:
                    return "IN_PROGRESS";
            }
        }
    }

    public /* synthetic */ Operation$State(boolean z) {
        this.$r8$classId = 20;
    }

    public static final void BackHandler(boolean z, Function0 function0, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-361453782);
        int i2 = i | 6 | (gapComposer.changedInstance(function0) ? 32 : 16);
        int i3 = 0;
        int i4 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Object current = LocalNavigationEventDispatcherOwner.getCurrent(gapComposer);
            if (current == null) {
                gapComposer.startReplaceGroup(535274673);
                current = LocalOnBackPressedDispatcherOwner.getCurrent(gapComposer);
            } else {
                gapComposer.startReplaceGroup(535271790);
            }
            gapComposer.end(false);
            if (current == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two.");
                return;
            }
            boolean changed = gapComposer.changed(current);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (changed || rememberedValue == obj) {
                NavigationEventDispatcherOwner navigationEventDispatcherOwner = current instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) current : null;
                ImageLoader$Builder navigationEventDispatcher = navigationEventDispatcherOwner != null ? navigationEventDispatcherOwner.getNavigationEventDispatcher() : null;
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = current instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) current : null;
                rememberedValue = new BackHandlerDispatcherCompat(navigationEventDispatcher, onBackPressedDispatcherOwner != null ? onBackPressedDispatcherOwner.getOnBackPressedDispatcher() : null);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Object obj2 = (BackHandlerDispatcherCompat) rememberedValue;
            long j = gapComposer.compositeKeyHashCode;
            boolean changed2 = gapComposer.changed(obj2) | gapComposer.changed(j);
            Object rememberedValue2 = gapComposer.rememberedValue();
            Object obj3 = rememberedValue2;
            if (changed2 || rememberedValue2 == obj) {
                ComposeBackHandler composeBackHandler = new ComposeBackHandler(new BackHandlerInfo(j, current));
                composeBackHandler.currentOnBackCompleted = new ImmLeaksCleaner$$ExternalSyntheticLambda0(2);
                gapComposer.updateRememberedValue(composeBackHandler);
                obj3 = composeBackHandler;
            }
            Object obj4 = (ComposeBackHandler) obj3;
            gapComposer.startReplaceGroup(-585307852);
            boolean changedInstance = gapComposer.changedInstance(obj4) | ((i2 & 112) == 32);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new Recomposer$$ExternalSyntheticLambda6(i4, obj4, function0);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.SideEffect((Function0) rememberedValue3, gapComposer);
            boolean changedInstance2 = gapComposer.changedInstance(obj4);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new AppBarKt$$ExternalSyntheticLambda11(i4, obj4);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            TuplesKt.LifecycleStartEffect(true, obj4, null, (Function1) rememberedValue4, gapComposer, 6);
            boolean changedInstance3 = gapComposer.changedInstance(obj2) | gapComposer.changedInstance(obj4);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changedInstance3 || rememberedValue5 == obj) {
                rememberedValue5 = new BackHandlerKt$$ExternalSyntheticLambda2(i3, obj2, obj4);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            Updater.DisposableEffect(obj2, obj4, (Function1) rememberedValue5, gapComposer);
            gapComposer.end(false);
            z = true;
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BackHandlerKt$$ExternalSyntheticLambda3(z, function0, i);
        }
    }

    /* JADX WARN: Type inference failed for: r6v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15, types: [java.util.ArrayList] */
    /* renamed from: ForEachSize-eVKgIn8, reason: not valid java name */
    public static final void m763ForEachSizeeVKgIn8(final long j, Function2 function2, GapComposer gapComposer, int i) {
        Collection collection;
        ?? listOf;
        gapComposer.startRestartGroup(1526030150);
        int i2 = (gapComposer.changed(SizeMode.Exact.INSTANCE) ? 4 : 2) | i | (gapComposer.changed(j) ? 32 : 16) | (gapComposer.changed(function2) ? 256 : 128);
        if ((i2 & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            gapComposer.startReplaceableGroup(-1173538668);
            if (Build.VERSION.SDK_INT >= 31) {
                gapComposer.startReplaceableGroup(-2019914396);
                Bundle bundle = (Bundle) gapComposer.consume(CompositionLocalsKt.LocalAppWidgetOptions);
                gapComposer.startReplaceableGroup(-1173535336);
                boolean changed = gapComposer.changed(j);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new Function0() { // from class: androidx.glance.appwidget.SizeBoxKt$ForEachSize$sizes$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return new DpSize(j);
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function0 = (Function0) rememberedValue;
                gapComposer.end(false);
                ArrayList<SizeF> parcelableArrayList = bundle.getParcelableArrayList("appWidgetSizes");
                if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
                    int i3 = bundle.getInt("appWidgetMinHeight", 0);
                    int i4 = bundle.getInt("appWidgetMaxHeight", 0);
                    int i5 = bundle.getInt("appWidgetMinWidth", 0);
                    int i6 = bundle.getInt("appWidgetMaxWidth", 0);
                    listOf = (i3 == 0 || i4 == 0 || i5 == 0 || i6 == 0) ? Room.listOf(function0.invoke()) : Room.listOf((Object[]) new DpSize[]{new DpSize(DpKt.m695DpSizeYgX7TsA(i5, i4)), new DpSize(DpKt.m695DpSizeYgX7TsA(i6, i3))});
                } else {
                    listOf = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(parcelableArrayList, 10));
                    for (SizeF sizeF : parcelableArrayList) {
                        listOf.add(new DpSize(DpKt.m695DpSizeYgX7TsA(sizeF.getWidth(), sizeF.getHeight())));
                    }
                }
                gapComposer.end(false);
                collection = listOf;
            } else {
                gapComposer.startReplaceableGroup(-2019826759);
                Bundle bundle2 = (Bundle) gapComposer.consume(CompositionLocalsKt.LocalAppWidgetOptions);
                int i7 = bundle2.getInt("appWidgetMinHeight", 0);
                int i8 = bundle2.getInt("appWidgetMaxWidth", 0);
                DpSize dpSize = null;
                DpSize dpSize2 = (i7 == 0 || i8 == 0) ? null : new DpSize(DpKt.m695DpSizeYgX7TsA(i8, i7));
                int i9 = bundle2.getInt("appWidgetMaxHeight", 0);
                int i10 = bundle2.getInt("appWidgetMinWidth", 0);
                if (i9 != 0 && i10 != 0) {
                    dpSize = new DpSize(DpKt.m695DpSizeYgX7TsA(i10, i9));
                }
                ArrayList filterNotNull = ArraysKt___ArraysKt.filterNotNull(new DpSize[]{dpSize2, dpSize});
                boolean isEmpty = filterNotNull.isEmpty();
                Collection collection2 = filterNotNull;
                if (isEmpty) {
                    collection2 = Room.listOf(new DpSize(j));
                }
                gapComposer.end(false);
                collection = collection2;
            }
            gapComposer.end(false);
            List list = CollectionsKt.toList(CollectionsKt.toMutableSet(collection));
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                m764SizeBoxIbIYxLY(((DpSize) it.next()).packedValue, function2, gapComposer, ((i2 << 3) & 112) | (i2 & 896));
                arrayList.add(Unit.INSTANCE);
            }
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SizeBoxKt$SizeBox$1(j, function2, i);
        }
    }

    public static final void LocalOwnersProvider(NavBackStackEntry navBackStackEntry, SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(233973821);
        if ((((gapComposer.changedInstance(navBackStackEntry) ? 4 : 2) | i | (gapComposer.changedInstance(saveableStateHolder) ? 32 : 16)) & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            Updater.CompositionLocalProvider(new ProvidedValue[]{LocalViewModelStoreOwner.LocalViewModelStoreOwner.defaultProvidedValue$runtime(navBackStackEntry), LocalLifecycleOwnerKt.LocalLifecycleOwner.defaultProvidedValue$runtime(navBackStackEntry), LocalSavedStateRegistryOwnerKt.LocalSavedStateRegistryOwner.defaultProvidedValue$runtime(navBackStackEntry)}, Expect_jvmKt.rememberComposableLambda(1808964477, new ButtonKt$Button$2.AnonymousClass1(9, saveableStateHolder, composableLambdaImpl), gapComposer), gapComposer, 56);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(navBackStackEntry, saveableStateHolder, composableLambdaImpl, i, 6);
        }
    }

    public static final void SaveableStateProvider(SaveableStateHolder saveableStateHolder, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(832919318);
        int i2 = (gapComposer.changedInstance(saveableStateHolder) ? 4 : 2) | i | (gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16);
        int i3 = 18;
        if ((i2 & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new PagingSource$$ExternalSyntheticLambda0(23);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
            if (current == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            ReflectionFactory reflectionFactory = Reflection.factory;
            KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(BackStackEntryIdViewModel.class);
            NetworkHeaders.Builder builder = new NetworkHeaders.Builder(3);
            builder.addInitializer(reflectionFactory.getOrCreateKotlinClass(BackStackEntryIdViewModel.class), function1);
            BackStackEntryIdViewModel backStackEntryIdViewModel = (BackStackEntryIdViewModel) UnsignedKt.viewModel(orCreateKotlinClass, current, builder.build(), current instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) current).getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE, gapComposer);
            backStackEntryIdViewModel.saveableStateHolderRef = new WeakReference(saveableStateHolder);
            saveableStateHolder.SaveableStateProvider(backStackEntryIdViewModel.id, composableLambdaImpl, gapComposer, ((i2 << 6) & 896) | (i2 & 112));
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda17(saveableStateHolder, composableLambdaImpl, i, i3);
        }
    }

    /* renamed from: SizeBox-IbIYxLY, reason: not valid java name */
    public static final void m764SizeBoxIbIYxLY(final long j, final Function2 function2, GapComposer gapComposer, final int i) {
        gapComposer.startRestartGroup(-53921383);
        int i2 = (gapComposer.changed(j) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            int i3 = i & 64;
            i2 |= gapComposer.changed(SizeMode.Exact.INSTANCE) ? 32 : 16;
        }
        if (((i2 | (gapComposer.changed(function2) ? 256 : 128)) & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            Updater.CompositionLocalProvider(new ProvidedValue[]{androidx.glance.CompositionLocalsKt.LocalSize.defaultProvidedValue$runtime(new DpSize(j))}, Expect_jvmKt.composableLambda(gapComposer, -1209815847, new SizeBoxKt$SizeBox$1(function2, j)), gapComposer, 48);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.glance.appwidget.SizeBoxKt$SizeBox$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int i4 = i | 1;
                    Operation$State.m764SizeBoxIbIYxLY(j, function2, (GapComposer) obj, i4);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void Spacer(GlanceModifier glanceModifier, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1380468206);
        int i2 = 0;
        if ((((gapComposer.changed(glanceModifier) ? 4 : 2) | i) & 3) == 2 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            SpacerKt$Spacer$1 spacerKt$Spacer$1 = SpacerKt$Spacer$1.INSTANCE;
            gapComposer.startReplaceableGroup(-1115894518);
            gapComposer.startReplaceableGroup(1886828752);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(i2, spacerKt$Spacer$1));
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, glanceModifier, BoxKt$Box$2$1.INSTANCE$8);
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SpacerKt$Spacer$3(i, i2, glanceModifier);
        }
    }

    /* renamed from: addPointerInputChange-0AR0LA0, reason: not valid java name */
    public static final void m765addPointerInputChange0AR0LA0(HintHandler hintHandler, PointerInputChange pointerInputChange, long j) {
        RealStrongMemoryCache realStrongMemoryCache = (RealStrongMemoryCache) hintHandler.state;
        JsonWriteContext jsonWriteContext = (JsonWriteContext) realStrongMemoryCache.cache;
        JsonWriteContext jsonWriteContext2 = (JsonWriteContext) realStrongMemoryCache.weakMemoryCache;
        boolean changedToDownIgnoreConsumed = PointerId.changedToDownIgnoreConsumed(pointerInputChange);
        long j2 = pointerInputChange.uptimeMillis;
        if (changedToDownIgnoreConsumed) {
            ArraysKt___ArraysKt.fill(0, r6.length, null, (DataPointAtTime[]) jsonWriteContext2._child);
            jsonWriteContext2._index = 0;
            ArraysKt___ArraysKt.fill(0, r6.length, null, (DataPointAtTime[]) jsonWriteContext._child);
            jsonWriteContext._index = 0;
            realStrongMemoryCache.initialMaxSize = 0L;
        }
        if (!PointerId.changedToUpIgnoreConsumed(pointerInputChange)) {
            List list = pointerInputChange._historical;
            if (list == null) {
                list = EmptyList.INSTANCE;
            }
            int i = 0;
            for (int size = list.size(); i < size; size = size) {
                HistoricalChange historicalChange = (HistoricalChange) list.get(i);
                realStrongMemoryCache.m782addPositionUv8p0NA(historicalChange.uptimeMillis, Offset.m386plusMKHz9U(historicalChange.originalEventPosition, j));
                i++;
            }
            realStrongMemoryCache.m782addPositionUv8p0NA(j2, Offset.m386plusMKHz9U(pointerInputChange.originalEventPosition, j));
        }
        if (PointerId.changedToUpIgnoreConsumed(pointerInputChange) && j2 - realStrongMemoryCache.initialMaxSize > 40) {
            ArraysKt___ArraysKt.fill(0, r0.length, null, (DataPointAtTime[]) jsonWriteContext2._child);
            jsonWriteContext2._index = 0;
            ArraysKt___ArraysKt.fill(0, r2.length, null, (DataPointAtTime[]) jsonWriteContext._child);
            jsonWriteContext._index = 0;
            realStrongMemoryCache.initialMaxSize = 0L;
        }
        realStrongMemoryCache.initialMaxSize = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animateDecay(androidx.compose.foundation.gestures.ScrollScope r10, float r11, androidx.compose.animation.core.AnimationState r12, androidx.compose.animation.core.DecayAnimationSpecImpl r13, kotlin.jvm.functions.Function1 r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            boolean r0 = r15 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1
            if (r0 == 0) goto L13
            r0 = r15
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1 r0 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1 r0 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateDecay$1
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2d
            float r11 = r0.F$0
            kotlin.jvm.internal.Ref$FloatRef r10 = r0.L$1
            androidx.compose.animation.core.AnimationState r12 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r15)
            goto L69
        L2d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            r10 = 0
            return r10
        L34:
            kotlin.ResultKt.throwOnFailure(r15)
            kotlin.jvm.internal.Ref$FloatRef r6 = new kotlin.jvm.internal.Ref$FloatRef
            r6.<init>()
            java.lang.Object r15 = r12.getVelocity()
            java.lang.Number r15 = (java.lang.Number) r15
            float r15 = r15.floatValue()
            r2 = 0
            int r15 = (r15 > r2 ? 1 : (r15 == r2 ? 0 : -1))
            if (r15 != 0) goto L4d
            r15 = r3
            goto L4e
        L4d:
            r15 = 0
        L4e:
            r15 = r15 ^ r3
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0 r4 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0
            r9 = 0
            r7 = r10
            r5 = r11
            r8 = r14
            r4.<init>(r5, r6, r7, r8, r9)
            r0.L$0 = r12
            r0.L$1 = r6
            r0.F$0 = r5
            r0.label = r3
            java.lang.Object r10 = androidx.compose.animation.core.ArcSplineKt.animateDecay(r12, r13, r15, r4, r0)
            if (r10 != r1) goto L67
            return r1
        L67:
            r11 = r5
            r10 = r6
        L69:
            androidx.compose.foundation.gestures.snapping.AnimationResult r13 = new androidx.compose.foundation.gestures.snapping.AnimationResult
            float r10 = r10.element
            float r11 = r11 - r10
            java.lang.Float r10 = new java.lang.Float
            r10.<init>(r11)
            r13.<init>(r10, r12)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.animateDecay(androidx.compose.foundation.gestures.ScrollScope, float, androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.DecayAnimationSpecImpl, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void animateDecay$consumeDelta(AnimationScope animationScope, ScrollScope scrollScope, Function1 function1, float f) {
        float f2;
        try {
            f2 = scrollScope.scrollBy(f);
        } catch (CancellationException unused) {
            animationScope.cancelAnimation();
            f2 = RecyclerView.DECELERATION_RATE;
        }
        function1.invoke(Float.valueOf(f2));
        if (Math.abs(f - f2) > 0.5f) {
            animationScope.cancelAnimation();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object animateWithTarget(androidx.compose.foundation.gestures.ScrollScope r16, float r17, float r18, androidx.compose.animation.core.AnimationState r19, androidx.compose.animation.core.SpringSpec r20, kotlin.jvm.functions.Function1 r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            r0 = r17
            r1 = r22
            boolean r2 = r1 instanceof androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1
            if (r2 == 0) goto L18
            r2 = r1
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1 r2 = (androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.label = r3
        L16:
            r8 = r2
            goto L1e
        L18:
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1 r2 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$animateWithTarget$1
            r2.<init>(r1)
            goto L16
        L1e:
            java.lang.Object r1 = r8.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.label
            r9 = 0
            r4 = 1
            if (r3 == 0) goto L3f
            if (r3 != r4) goto L38
            float r0 = r8.F$1
            float r2 = r8.F$0
            kotlin.jvm.internal.Ref$FloatRef r3 = r8.L$1
            androidx.compose.animation.core.AnimationState r4 = r8.L$0
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r0
            r0 = r2
            goto L90
        L38:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r0)
            r0 = 0
            return r0
        L3f:
            kotlin.ResultKt.throwOnFailure(r1)
            kotlin.jvm.internal.Ref$FloatRef r12 = new kotlin.jvm.internal.Ref$FloatRef
            r12.<init>()
            java.lang.Object r1 = r19.getVelocity()
            java.lang.Number r1 = (java.lang.Number) r1
            float r1 = r1.floatValue()
            java.lang.Float r3 = new java.lang.Float
            r3.<init>(r0)
            java.lang.Object r5 = r19.getVelocity()
            java.lang.Number r5 = (java.lang.Number) r5
            float r5 = r5.floatValue()
            int r5 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
            if (r5 != 0) goto L66
            r5 = r4
            goto L67
        L66:
            r5 = 0
        L67:
            r6 = r5 ^ 1
            androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0 r10 = new androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt$$ExternalSyntheticLambda0
            r15 = 1
            r13 = r16
            r11 = r18
            r14 = r21
            r10.<init>(r11, r12, r13, r14, r15)
            r5 = r3
            r3 = r19
            r8.L$0 = r3
            r8.L$1 = r12
            r8.F$0 = r0
            r8.F$1 = r1
            r8.label = r4
            r4 = r5
            r7 = r10
            r5 = r20
            java.lang.Object r4 = androidx.compose.animation.core.ArcSplineKt.animateTo(r3, r4, r5, r6, r7, r8)
            if (r4 != r2) goto L8d
            return r2
        L8d:
            r4 = r19
            r3 = r12
        L90:
            java.lang.Object r2 = r4.getVelocity()
            java.lang.Number r2 = (java.lang.Number) r2
            float r2 = r2.floatValue()
            float r1 = coerceToTarget(r2, r1)
            androidx.compose.foundation.gestures.snapping.AnimationResult r2 = new androidx.compose.foundation.gestures.snapping.AnimationResult
            float r3 = r3.element
            float r0 = r0 - r3
            java.lang.Float r3 = new java.lang.Float
            r3.<init>(r0)
            r0 = 29
            androidx.compose.animation.core.AnimationState r0 = androidx.compose.animation.core.ArcSplineKt.copy$default(r4, r9, r1, r0)
            r2.<init>(r3, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.animateWithTarget(androidx.compose.foundation.gestures.ScrollScope, float, float, androidx.compose.animation.core.AnimationState, androidx.compose.animation.core.SpringSpec, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r10.bottom <= r12.top) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0071, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0041, code lost:
    
        if (r9 == 17) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0043, code lost:
    
        if (r9 != 66) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0046, code lost:
    
        r11 = majorAxisDistance(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004a, code lost:
    
        if (r9 == 17) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        if (r9 == 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004e, code lost:
    
        if (r9 == 66) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0050, code lost:
    
        if (r9 != 130) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0052, code lost:
    
        r9 = r12.bottom;
        r10 = r10.bottom;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        if (r11 >= java.lang.Math.max(1, r9 - r10)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005b, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
    
        r9 = r12.right;
        r10 = r10.right;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r9 = r10.top;
        r10 = r12.top;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
    
        r9 = r10.left;
        r10 = r12.left;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0031, code lost:
    
        if (r10.right <= r12.left) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0038, code lost:
    
        if (r10.top >= r12.bottom) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003f, code lost:
    
        if (r10.left >= r12.right) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamBeats(int r9, android.graphics.Rect r10, android.graphics.Rect r11, android.graphics.Rect r12) {
        /*
            boolean r0 = beamsOverlap(r9, r10, r11)
            boolean r1 = beamsOverlap(r9, r10, r12)
            r2 = 0
            if (r1 != 0) goto L72
            if (r0 != 0) goto Lf
            goto L72
        Lf:
            java.lang.String r0 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            r1 = 130(0x82, float:1.82E-43)
            r3 = 33
            r4 = 66
            r5 = 17
            r6 = 1
            if (r9 == r5) goto L3b
            if (r9 == r3) goto L34
            if (r9 == r4) goto L2d
            if (r9 != r1) goto L29
            int r7 = r10.bottom
            int r8 = r12.top
            if (r7 > r8) goto L71
            goto L41
        L29:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r0)
            return r2
        L2d:
            int r7 = r10.right
            int r8 = r12.left
            if (r7 > r8) goto L71
            goto L41
        L34:
            int r7 = r10.top
            int r8 = r12.bottom
            if (r7 < r8) goto L71
            goto L41
        L3b:
            int r7 = r10.left
            int r8 = r12.right
            if (r7 < r8) goto L71
        L41:
            if (r9 == r5) goto L71
            if (r9 != r4) goto L46
            goto L71
        L46:
            int r11 = majorAxisDistance(r9, r10, r11)
            if (r9 == r5) goto L66
            if (r9 == r3) goto L61
            if (r9 == r4) goto L5c
            if (r9 != r1) goto L58
            int r9 = r12.bottom
            int r10 = r10.bottom
        L56:
            int r9 = r9 - r10
            goto L6b
        L58:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r0)
            return r2
        L5c:
            int r9 = r12.right
            int r10 = r10.right
            goto L56
        L61:
            int r9 = r10.top
            int r10 = r12.top
            goto L56
        L66:
            int r9 = r10.left
            int r10 = r12.left
            goto L56
        L6b:
            int r9 = java.lang.Math.max(r6, r9)
            if (r11 >= r9) goto L72
        L71:
            return r6
        L72:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.beamBeats(int, android.graphics.Rect, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean beamsOverlap(int r2, android.graphics.Rect r3, android.graphics.Rect r4) {
        /*
            r0 = 17
            r1 = 0
            if (r2 == r0) goto L25
            r0 = 33
            if (r2 == r0) goto L18
            r0 = 66
            if (r2 == r0) goto L25
            r0 = 130(0x82, float:1.82E-43)
            if (r2 != r0) goto L12
            goto L18
        L12:
            java.lang.String r2 = "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r2)
            return r1
        L18:
            int r2 = r4.right
            int r0 = r3.left
            if (r2 < r0) goto L33
            int r2 = r4.left
            int r3 = r3.right
            if (r2 > r3) goto L33
            goto L31
        L25:
            int r2 = r4.bottom
            int r0 = r3.top
            if (r2 < r0) goto L33
            int r2 = r4.top
            int r3 = r3.bottom
            if (r2 > r3) goto L33
        L31:
            r2 = 1
            return r2
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.beamsOverlap(int, android.graphics.Rect, android.graphics.Rect):boolean");
    }

    public static final void cancelConsumed(Channel channel, Throwable th) {
        CancellationException cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (cancellationException == null) {
            cancellationException = AwaitKt.CancellationException("Channel was consumed, consumer had failed", th);
        }
        channel.cancel(cancellationException);
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    public static void checkArgumentNonnegative(int i) {
        if (i >= 0) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m();
    }

    public static void checkArguments(Caller caller, Object[] objArr) {
        objArr.getClass();
        caller.getClass();
        if (caller.getParameterTypes().size() == objArr.length) {
            return;
        }
        StringBuilder sb = new StringBuilder("Callable expects ");
        sb.append(caller.getParameterTypes().size());
        sb.append(" arguments, but ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m(Modifier.CC.m(sb, objArr.length, " were provided."));
    }

    public static void checkNotNull(String str, Object obj) {
        if (obj != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str);
    }

    public static int checkSelfPermission(Context context, String str) {
        int noteProxyOpNoThrow;
        int myPid = Process.myPid();
        int myUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, myPid, myUid) != -1) {
            String permissionToOp = AppOpsManager.permissionToOp(str);
            if (permissionToOp != null) {
                if (packageName == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(myUid);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        packageName = packagesForUid[0];
                    }
                }
                int myUid2 = Process.myUid();
                String packageName2 = context.getPackageName();
                if (myUid2 != myUid || !Objects.equals(packageName2, packageName)) {
                    noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                } else if (Build.VERSION.SDK_INT >= 29) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    noteProxyOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(permissionToOp, Binder.getCallingUid(), packageName);
                    if (noteProxyOpNoThrow == 0) {
                        noteProxyOpNoThrow = appOpsManager != null ? appOpsManager.checkOpNoThrow(permissionToOp, myUid, RemoteInput.Api29Impl.getOpPackageName(context)) : 1;
                    }
                } else {
                    noteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(permissionToOp, packageName);
                }
                if (noteProxyOpNoThrow != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static final float coerceToTarget(float f, float f2) {
        return f2 == RecyclerView.DECELERATION_RATE ? RecyclerView.DECELERATION_RATE : (f2 <= RecyclerView.DECELERATION_RATE ? f >= f2 : f <= f2) ? f : f2;
    }

    public static int compareValues(Comparable comparable, Comparable comparable2) {
        if (comparable == comparable2) {
            return 0;
        }
        if (comparable == null) {
            return -1;
        }
        if (comparable2 == null) {
            return 1;
        }
        return comparable.compareTo(comparable2);
    }

    public static final TypeVariance convertVariance(Variance variance) {
        int i = TypeSystemContextKt$WhenMappings.$EnumSwitchMapping$0[variance.ordinal()];
        if (i == 1) {
            return TypeVariance.INV;
        }
        if (i == 2) {
            return TypeVariance.IN;
        }
        if (i == 3) {
            return TypeVariance.OUT;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public static final FontFamilyResolverImpl createFontFamilyResolver(Context context) {
        Lock lock = new Lock(3);
        context.getApplicationContext();
        return new FontFamilyResolverImpl(lock, new AndroidFontResolveInterceptor(Build.VERSION.SDK_INT >= 31 ? FontWeightAdjustmentHelperApi31.INSTANCE.fontWeightAdjustment(context) : 0));
    }

    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration) {
        RoomDatabase.Builder databaseBuilder;
        context.getClass();
        WorkManagerTaskExecutor workManagerTaskExecutor = new WorkManagerTaskExecutor(configuration.taskExecutor);
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        TransactionExecutor transactionExecutor = workManagerTaskExecutor.mBackgroundExecutor;
        transactionExecutor.getClass();
        SystemClock systemClock = configuration.clock;
        if (context.getResources().getBoolean(R.bool.workmanager_test_configuration)) {
            databaseBuilder = new RoomDatabase.Builder(applicationContext, WorkDatabase.class, null);
            databaseBuilder.allowMainThreadQueries = true;
        } else {
            databaseBuilder = Room.databaseBuilder(applicationContext, WorkDatabase.class, "androidx.work.workdb");
            databaseBuilder.supportOpenHelperFactory = new FilePageView$$ExternalSyntheticLambda1(applicationContext);
        }
        databaseBuilder.queryExecutor = transactionExecutor;
        databaseBuilder.callbacks.add(new CleanupCallback());
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE);
        databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 2, 3));
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$5);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$6);
        databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 5, 6));
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$7);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$8);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$9);
        databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext));
        databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 10, 11));
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$1);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$2);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$3);
        databaseBuilder.addMigrations(Migration_1_2.INSTANCE$4);
        databaseBuilder.addMigrations(new WorkMigration9To10(applicationContext, 21, 22));
        databaseBuilder.requireMigration = false;
        databaseBuilder.allowDestructiveMigrationOnDowngrade = true;
        databaseBuilder.allowDestructiveMigrationForAllTables = true;
        WorkDatabase workDatabase = (WorkDatabase) databaseBuilder.build();
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        Trackers trackers = new Trackers(applicationContext2, workManagerTaskExecutor);
        Processor processor = new Processor(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase);
        return new WorkManagerImpl(context.getApplicationContext(), configuration, workManagerTaskExecutor, workDatabase, (List) WorkManagerImplExtKt$WorkManagerImpl$1.INSTANCE.invoke(context, configuration, workManagerTaskExecutor, workDatabase, trackers, processor), processor, trackers);
    }

    public static final float dot(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = RecyclerView.DECELERATION_RATE;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static final int getMainAxisViewportSize(PagerMeasureResult pagerMeasureResult) {
        return (int) (pagerMeasureResult.orientation == Orientation.Vertical ? pagerMeasureResult.m172getViewportSizeYbymL2g() & 4294967295L : pagerMeasureResult.m172getViewportSizeYbymL2g() >> 32);
    }

    public static boolean hasBuiltinSpecialPropertyFqName(CallableMemberDescriptor callableMemberDescriptor) {
        if (!BuiltinSpecialProperties.SPECIAL_SHORT_NAMES.contains(callableMemberDescriptor.getName())) {
            return false;
        }
        if (CollectionsKt.contains(BuiltinSpecialProperties.SPECIAL_FQ_NAMES, DescriptorUtilsKt.fqNameOrNull(callableMemberDescriptor)) && callableMemberDescriptor.getValueParameters().isEmpty()) {
            return true;
        }
        if (!KotlinBuiltIns.isBuiltIn(callableMemberDescriptor)) {
            return false;
        }
        Collection overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        overriddenDescriptors.getClass();
        Collection<CallableMemberDescriptor> collection = overriddenDescriptors;
        if (collection.isEmpty()) {
            return false;
        }
        for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
            callableMemberDescriptor2.getClass();
            if (hasBuiltinSpecialPropertyFqName(callableMemberDescriptor2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isCandidate(int i, Rect rect, Rect rect2) {
        if (i == 17) {
            int i2 = rect.right;
            int i3 = rect2.right;
            if ((i2 > i3 || rect.left >= i3) && rect.left > rect2.left) {
                return true;
            }
        } else if (i == 33) {
            int i4 = rect.bottom;
            int i5 = rect2.bottom;
            if ((i4 > i5 || rect.top >= i5) && rect.top > rect2.top) {
                return true;
            }
        } else if (i == 66) {
            int i6 = rect.left;
            int i7 = rect2.left;
            if ((i6 < i7 || rect.right <= i7) && rect.right < rect2.right) {
                return true;
            }
        } else {
            if (i != 130) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            int i8 = rect.top;
            int i9 = rect2.top;
            if ((i8 < i9 || rect.bottom <= i9) && rect.bottom < rect2.bottom) {
                return true;
            }
        }
        return false;
    }

    public static final void keyOrValueNotFoundError(String str) {
        str.getClass();
        throw new IllegalArgumentException(Animation.CC.m("No valid saved state was found for the key '", str, "'. It may be missing, null, or not of the expected type. This can occur if the value was saved with a different type or if the saved state was modified unexpectedly."));
    }

    public static int majorAxisDistance(int i, Rect rect, Rect rect2) {
        int i2;
        int i3;
        if (i == 17) {
            i2 = rect.left;
            i3 = rect2.right;
        } else if (i == 33) {
            i2 = rect.top;
            i3 = rect2.bottom;
        } else if (i == 66) {
            i2 = rect2.left;
            i3 = rect.right;
        } else {
            if (i != 130) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return 0;
            }
            i2 = rect2.top;
            i3 = rect.bottom;
        }
        return Math.max(0, i2 - i3);
    }

    public static Comparable minOf(Dp dp, Dp dp2) {
        return dp.compareTo(dp2) <= 0 ? dp : dp2;
    }

    public static int minorAxisDistance(int i, Rect rect, Rect rect2) {
        if (i != 17) {
            if (i != 33) {
                if (i != 66) {
                    if (i != 130) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return 0;
                    }
                }
            }
            return Math.abs(((rect.width() / 2) + rect.left) - ((rect2.width() / 2) + rect2.left));
        }
        return Math.abs(((rect.height() / 2) + rect.top) - ((rect2.height() / 2) + rect2.top));
    }

    /* renamed from: plus-Nv-tHpc, reason: not valid java name */
    public static final long m766plusNvtHpc(long j, long j2) {
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) + ((int) (j2 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) + ((int) (j2 & 4294967295L));
        return (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
    }

    public static final void polyFitLeastSquares(float[] fArr, float[] fArr2, int i, float[] fArr3) {
        if (i == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("At least one point must be provided");
        }
        int i2 = 2 >= i ? i - 1 : 2;
        int i3 = i2 + 1;
        float[][] fArr4 = new float[i3][];
        for (int i4 = 0; i4 < i3; i4++) {
            fArr4[i4] = new float[i];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr4[0][i5] = 1.0f;
            for (int i6 = 1; i6 < i3; i6++) {
                fArr4[i6][i5] = fArr4[i6 - 1][i5] * fArr[i5];
            }
        }
        float[][] fArr5 = new float[i3][];
        for (int i7 = 0; i7 < i3; i7++) {
            fArr5[i7] = new float[i];
        }
        float[][] fArr6 = new float[i3][];
        for (int i8 = 0; i8 < i3; i8++) {
            fArr6[i8] = new float[i3];
        }
        int i9 = 0;
        while (i9 < i3) {
            float[] fArr7 = fArr5[i9];
            float[] fArr8 = fArr4[i9];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i);
            for (int i10 = 0; i10 < i9; i10++) {
                float[] fArr9 = fArr5[i10];
                float dot = dot(fArr7, fArr9);
                for (int i11 = 0; i11 < i; i11++) {
                    fArr7[i11] = fArr7[i11] - (fArr9[i11] * dot);
                }
            }
            float sqrt = (float) Math.sqrt(dot(fArr7, fArr7));
            if (sqrt < 1.0E-6f) {
                sqrt = 1.0E-6f;
            }
            float f = 1.0f / sqrt;
            for (int i12 = 0; i12 < i; i12++) {
                fArr7[i12] = fArr7[i12] * f;
            }
            float[] fArr10 = fArr6[i9];
            int i13 = 0;
            while (i13 < i3) {
                fArr10[i13] = i13 < i9 ? RecyclerView.DECELERATION_RATE : dot(fArr7, fArr4[i13]);
                i13++;
            }
            i9++;
        }
        for (int i14 = i2; -1 < i14; i14--) {
            float dot2 = dot(fArr5[i14], fArr2);
            float[] fArr11 = fArr6[i14];
            int i15 = i14 + 1;
            if (i15 <= i2) {
                int i16 = i2;
                while (true) {
                    dot2 -= fArr11[i16] * fArr3[i16];
                    if (i16 != i15) {
                        i16--;
                    }
                }
            }
            fArr3[i14] = dot2 / fArr11[i14];
        }
    }

    public static TypedValue resolve(Resources.Theme theme, int i) {
        TypedValue typedValue = new TypedValue();
        if (theme.resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(Resources.Theme theme, int i, boolean z) {
        TypedValue resolve = resolve(theme, i);
        return (resolve == null || resolve.type != 18) ? z : resolve.data != 0;
    }

    public static int resolveInteger(Context context, int i, int i2) {
        TypedValue resolve = resolve(context.getTheme(), i);
        return (resolve == null || resolve.type != 16) ? i2 : resolve.data;
    }

    public static TypedValue resolveTypedValueOrThrow(int i, Context context, String str) {
        TypedValue resolve = resolve(context.getTheme(), i);
        if (resolve != null) {
            return resolve;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[]{str, context.getResources().getResourceName(i)});
        return null;
    }

    /* renamed from: round-k-4lQ0M, reason: not valid java name */
    public static final long m767roundk4lQ0M(long j) {
        return (Math.round(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (Math.round(Float.intBitsToFloat((int) (j >> 32))) << 32);
    }

    public static final Object runBlockingUninterruptible(Function2 function2) {
        Thread.interrupted();
        return AwaitKt.runBlocking(EmptyCoroutineContext.INSTANCE, new DonateDialog$onCreateView$3.AnonymousClass1(9, function2, null));
    }

    public static final NetworkResponse toNetworkResponse(Response response) {
        BufferedSource source;
        int i = response.code;
        long j = response.sentRequestAtMillis;
        long j2 = response.receivedResponseAtMillis;
        Headers headers = response.headers;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = headers.iterator();
        while (true) {
            UIntArray.Iterator iterator = (UIntArray.Iterator) it;
            if (!iterator.hasNext()) {
                break;
            }
            Pair pair = (Pair) iterator.next();
            String str = (String) pair.first;
            String str2 = (String) pair.second;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            Object obj = linkedHashMap.get(lowerCase);
            if (obj == null) {
                obj = new ArrayList();
                linkedHashMap.put(lowerCase, obj);
            }
            ((List) obj).add(str2);
        }
        NetworkHeaders networkHeaders = new NetworkHeaders(MapsKt__MapsKt.toMap(linkedHashMap));
        ResponseBody responseBody = response.body;
        return new NetworkResponse(i, j, j2, networkHeaders, (responseBody == null || (source = responseBody.source()) == null) ? null : new SourceResponseBody(source), response);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okhttp3.Request toRequest(coil3.network.NetworkRequest r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1
            if (r0 == 0) goto L13
            r0 = r7
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1 r0 = (coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1 r0 = new coil3.network.okhttp.internal.CallFactoryNetworkClientKt$toRequest$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            int r0 = r0.label
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L40
            r6 = 1
            if (r0 != r6) goto L3a
            kotlin.ResultKt.throwOnFailure(r7)
            okio.ByteString r7 = (okio.ByteString) r7
            if (r7 == 0) goto L35
            int r6 = okhttp3.RequestBody.$r8$clinit
            okhttp3.RequestBody$Companion$toRequestBody$1 r6 = new okhttp3.RequestBody$Companion$toRequestBody$1
            r6.<init>()
            r7 = r2
            r0 = r7
            r3 = r0
            goto L55
        L35:
            r6 = r2
            r7 = r6
            r0 = r7
            r3 = r0
            goto L51
        L3a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r2
        L40:
            kotlin.ResultKt.throwOnFailure(r7)
            okhttp3.Request$Builder r7 = new okhttp3.Request$Builder
            r7.<init>(r1)
            java.lang.String r0 = r6.url
            r7.url(r0)
            java.lang.String r0 = r6.method
            r3 = r0
            r0 = r7
        L51:
            r5 = r7
            r7 = r6
            r6 = r2
            r2 = r5
        L55:
            r2.method(r3, r6)
            coil3.network.NetworkHeaders r6 = r7.headers
            java.util.ArrayList r7 = new java.util.ArrayList
            r2 = 20
            r7.<init>(r2)
            java.util.Map r6 = r6.data
            java.util.Set r6 = r6.entrySet()
            java.util.Iterator r6 = r6.iterator()
        L6b:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto Lab
            java.lang.Object r2 = r6.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.String r3 = (java.lang.String) r3
            java.lang.Object r2 = r2.getValue()
            java.util.List r2 = (java.util.List) r2
            java.util.Iterator r2 = r2.iterator()
        L87:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L6b
            java.lang.Object r4 = r2.next()
            java.lang.String r4 = (java.lang.String) r4
            r3.getClass()
            r4.getClass()
            org.jsoup.Jsoup.headersCheckName(r3)
            r7.add(r3)
            java.lang.CharSequence r4 = kotlin.text.StringsKt.trim(r4)
            java.lang.String r4 = r4.toString()
            r7.add(r4)
            goto L87
        Lab:
            okhttp3.Headers r6 = new okhttp3.Headers
            java.lang.String[] r1 = new java.lang.String[r1]
            java.lang.Object[] r7 = r7.toArray(r1)
            java.lang.String[] r7 = (java.lang.String[]) r7
            r6.<init>(r7)
            r0.getClass()
            okhttp3.Headers$Builder r6 = org.jsoup.Jsoup.commonNewBuilder(r6)
            r0.headers = r6
            okhttp3.Request r6 = new okhttp3.Request
            r6.<init>(r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.Operation$State.toRequest(coil3.network.NetworkRequest, kotlin.coroutines.jvm.internal.ContinuationImpl):okhttp3.Request");
    }

    public static final /* synthetic */ FormBody.Builder viewProperty(View view, Object obj) {
        return new FormBody.Builder(5, obj, new Worker$$ExternalSyntheticLambda0(19, view));
    }

    public abstract String asString();

    public abstract TypeBase getReferencedType();

    public boolean isReferenceType() {
        return getReferencedType() != null;
    }

    public abstract View onFindViewById(int i);

    public abstract boolean onHasView();

    public String toString() {
        switch (this.$r8$classId) {
            case 27:
                return asString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ Operation$State(int i) {
        this.$r8$classId = i;
    }

    public static void checkArgument(String str, boolean z) {
        if (z) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m(str);
    }

    public static TypedValue resolveTypedValueOrThrow(View view, int i) {
        return resolveTypedValueOrThrow(i, view.getContext(), view.getClass().getCanonicalName());
    }
}
