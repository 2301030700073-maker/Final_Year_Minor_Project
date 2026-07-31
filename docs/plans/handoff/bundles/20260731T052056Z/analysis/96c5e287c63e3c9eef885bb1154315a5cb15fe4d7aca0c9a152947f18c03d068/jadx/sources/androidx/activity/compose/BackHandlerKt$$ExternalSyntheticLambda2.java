package androidx.activity.compose;

import android.view.View;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.OffsetNode;
import androidx.compose.foundation.layout.OffsetPxNode;
import androidx.compose.foundation.layout.PaddingNode;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.foundation.pager.PagerMeasureKt$$ExternalSyntheticLambda2;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import coil3.disk.DiskLruCache$launchCleanup$1;
import com.caverock.androidsvg.SVG;
import com.google.android.flexbox.FlexboxHelper$FlexLinesResult;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import okhttp3.Dispatcher;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.settings.BasePreferenceLoader;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BackHandlerKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda2(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 3;
        int i3 = 6;
        int i4 = 2;
        Continuation continuation = null;
        int i5 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                BackHandlerDispatcherCompat backHandlerDispatcherCompat = (BackHandlerDispatcherCompat) obj3;
                ComposeBackHandler composeBackHandler = (ComposeBackHandler) obj2;
                backHandlerDispatcherCompat.addHandler(composeBackHandler);
                break;
            case 1:
                BackHandlerDispatcherCompat backHandlerDispatcherCompat2 = (BackHandlerDispatcherCompat) obj3;
                ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) obj2;
                backHandlerDispatcherCompat2.addHandler(composePredictiveBackHandler);
                break;
            case 2:
                InfiniteTransition infiniteTransition = (InfiniteTransition) obj3;
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) obj2;
                infiniteTransition._animations.add(transitionAnimationState);
                infiniteTransition.refreshChildNeeded$delegate.setValue(Boolean.TRUE);
                break;
            case 3:
                AwaitKt.launch$default((CoroutineScope) obj3, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1$1$1((Transition) obj2, null), 1);
                break;
            case 4:
                BasePreferenceLoader basePreferenceLoader = (BasePreferenceLoader) obj3;
                ((SeekableTransitionState) basePreferenceLoader).setSnapshotStateObserver$animation_core(new PreferenceManager(new BackHandlerKt$$ExternalSyntheticLambda2(i3, Thread.currentThread(), (CoroutineScope) obj2)));
                break;
            case 5:
                break;
            case 6:
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                Function0 function0 = (Function0) obj;
                if (obj3 == Thread.currentThread()) {
                    function0.invoke();
                    break;
                } else {
                    AwaitKt.launch$default(coroutineScope, null, null, new DiskLruCache$launchCleanup$1(i5, function0, continuation), 3);
                    break;
                }
            case 7:
                Transition transition = (Transition) obj3;
                Transition transition2 = (Transition) obj2;
                transition._transitions.add(transition2);
                break;
            case 8:
                Transition transition3 = (Transition) obj3;
                Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) obj2;
                transition3._animations.add(transitionAnimationState2);
                break;
            case 9:
                ((MutableInteractionSourceImpl) obj3).tryEmit((PressInteraction.Cancel) obj2);
                break;
            case 10:
                Brush brush = (Brush) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                Modifier.CC.m347drawPathGBMwjPU$default(layoutNodeDrawScope, (AndroidPath) obj3, brush, RecyclerView.DECELERATION_RATE, null, 60);
                break;
            case 11:
                LayoutNodeDrawScope layoutNodeDrawScope2 = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope2.drawContent();
                Modifier.CC.m347drawPathGBMwjPU$default(layoutNodeDrawScope2, ((Outline$Generic) obj3).path, (Brush) obj2, RecyclerView.DECELERATION_RATE, null, 60);
                break;
            case 12:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                r7 = ref$BooleanRef.element || ((GestureConnection) obj).isInterested((IndirectPointerInputChange) obj3);
                ref$BooleanRef.element = r7;
                break;
            case IMAGE_VALUE:
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) obj2;
                boolean z = ref$BooleanRef2.element || ((GestureConnection) obj).isInterested((PointerInputChange) obj3);
                ref$BooleanRef2.element = z;
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ((MutableInteractionSourceImpl) obj3).tryEmit((Interaction) obj2);
                break;
            case 15:
                ((LazyLayoutBeyondBoundsInfo) obj3).beyondBoundsItems.remove((ContentInViewNode.Request) obj2);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) obj3;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj2;
                DragEvent.DragDelta dragDelta = (DragEvent.DragDelta) obj;
                float f = dragDelta.isIndirectPointerEvent ? -1.0f : 1.0f;
                long j = dragDelta.delta;
                scrollingLogic$nestedScrollScope$1.m106scrollByWithOverscrollOzD1aCk(Offset.m387timestuRUvjQ(f, scrollingLogic.orientation == Orientation.Horizontal ? Offset.m382copydBAh8RU$default(j, RecyclerView.DECELERATION_RATE, 1) : Offset.m382copydBAh8RU$default(j, RecyclerView.DECELERATION_RATE, 2)), 1);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) obj3;
                ((Long) obj).getClass();
                float f2 = updatableAnimationState.value;
                updatableAnimationState.value = RecyclerView.DECELERATION_RATE;
                ((Function1) obj2).invoke(Float.valueOf(f2));
                break;
            case RADIO_GROUP_VALUE:
                OffsetNode offsetNode = (OffsetNode) obj3;
                Placeable placeable = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean z2 = offsetNode.rtlAware;
                float f3 = offsetNode.x;
                if (z2) {
                    placementScope.getClass();
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Modifier.CC.m334$default$roundToPx0680j_4(placementScope, f3), Modifier.CC.m334$default$roundToPx0680j_4(placementScope, offsetNode.y));
                    break;
                } else {
                    placementScope.getClass();
                    Placeable.PlacementScope.place$default(placementScope, placeable, Modifier.CC.m334$default$roundToPx0680j_4(placementScope, f3), Modifier.CC.m334$default$roundToPx0680j_4(placementScope, offsetNode.y));
                    break;
                }
            case RADIO_BUTTON_VALUE:
                OffsetPxNode offsetPxNode = (OffsetPxNode) obj3;
                Placeable placeable2 = (Placeable) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                long j2 = ((IntOffset) offsetPxNode.offset.invoke(placementScope2)).packedValue;
                if (offsetPxNode.rtlAware) {
                    Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope2, placeable2, (int) (j2 >> 32), (int) (j2 & 4294967295L));
                    break;
                } else {
                    Placeable.PlacementScope.placeWithLayer$default(placementScope2, placeable2, (int) (j2 >> 32), (int) (j2 & 4294967295L), null, 12);
                    break;
                }
            case RADIO_ROW_VALUE:
                PaddingNode paddingNode = (PaddingNode) obj3;
                Placeable placeable3 = (Placeable) obj2;
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                boolean z3 = paddingNode.rtlAware;
                float f4 = paddingNode.start;
                if (z3) {
                    placementScope3.getClass();
                    Placeable.PlacementScope.placeRelative$default(placementScope3, placeable3, Modifier.CC.m334$default$roundToPx0680j_4(placementScope3, f4), Modifier.CC.m334$default$roundToPx0680j_4(placementScope3, paddingNode.top));
                    break;
                } else {
                    placementScope3.getClass();
                    Placeable.PlacementScope.place$default(placementScope3, placeable3, Modifier.CC.m334$default$roundToPx0680j_4(placementScope3, f4), Modifier.CC.m334$default$roundToPx0680j_4(placementScope3, paddingNode.top));
                    break;
                }
            case RADIO_COLUMN_VALUE:
                WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) obj3;
                View view = (View) obj2;
                windowInsetsHolder.incrementAccessors(view);
                break;
            case SIZE_BOX_VALUE:
                CustomHtmlParser.CustomTagHandler customTagHandler = (CustomHtmlParser.CustomTagHandler) obj2;
                FlexboxHelper$FlexLinesResult lineConfiguration = ((Dispatcher) obj3).getLineConfiguration(((Integer) obj).intValue());
                int i6 = lineConfiguration.mChildState;
                List list = lineConfiguration.mFlexLines;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                int i7 = 0;
                for (int i8 = 0; i8 < size; i8++) {
                    int i9 = (int) ((GridItemSpan) list.get(i8)).packedValue;
                    arrayList.add(new Pair(Integer.valueOf(i6), new Constraints(customTagHandler.m912childConstraintsJhjzzOo$foundation(i7, i9))));
                    i6++;
                    i7 += i9;
                }
                break;
            case 23:
                CustomHtmlParser.CustomTagHandler customTagHandler2 = (CustomHtmlParser.CustomTagHandler) obj3;
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) obj2;
                int intValue = ((Integer) obj).intValue();
                Dispatcher dispatcher = (Dispatcher) customTagHandler2.listItemCounts;
                int i10 = dispatcher.maxRequestsPerHost;
                int spanOf = dispatcher.spanOf(intValue);
                break;
            case 24:
                AwaitFirstLayoutModifier.Node node = (AwaitFirstLayoutModifier.Node) obj3;
                AwaitFirstLayoutModifier awaitFirstLayoutModifier = (AwaitFirstLayoutModifier) obj2;
                ThrottledCallbacks.Entry entry = node.handle;
                if (entry != null) {
                    entry.unregister();
                }
                node.handle = null;
                CompletableDeferredImpl completableDeferredImpl = awaitFirstLayoutModifier.lock;
                if (completableDeferredImpl != null) {
                    completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(unit);
                }
                awaitFirstLayoutModifier.lock = null;
                break;
            case 25:
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) obj3;
                lazySaveableStateHolder.previouslyComposedKeys.minusAssign(obj2);
                break;
            case 26:
                break;
            case 27:
                ((Function2) obj3).invoke(Integer.valueOf(((PrefetchHandleProvider$HandleAndRequestImpl) obj).index), Integer.valueOf(((SVG) obj2).getLayoutInfo().pageSize));
                break;
            case 28:
                Placeable.PlacementScope placementScope4 = (Placeable.PlacementScope) obj;
                PagerMeasureKt$$ExternalSyntheticLambda2 pagerMeasureKt$$ExternalSyntheticLambda2 = new PagerMeasureKt$$ExternalSyntheticLambda2(r7 ? 1 : 0, (ArrayList) obj2);
                placementScope4.motionFrameOfReferencePlacement = true;
                pagerMeasureKt$$ExternalSyntheticLambda2.invoke(placementScope4);
                placementScope4.motionFrameOfReferencePlacement = false;
                ((MutableState) obj3).getValue();
                break;
            default:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj3;
                Brush brush2 = (Brush) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope3 = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope3.drawContent();
                if (((Boolean) legacyTextFieldState.autofillHighlightOn$delegate.getValue()).booleanValue() || ((Boolean) legacyTextFieldState.justAutofilled$delegate.getValue()).booleanValue()) {
                    Modifier.CC.m349drawRectAsUm42w$default(layoutNodeDrawScope3, brush2, 0L, 0L, RecyclerView.DECELERATION_RATE, null, null, 126);
                    break;
                }
                break;
        }
        return unit;
    }
}
