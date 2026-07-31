package androidx.activity.compose;

import android.view.View;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.compat.EvCompImpl$applyAsync$3;
import androidx.camera.camera2.impl.State3AControl;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition$animateTo$lambda$2$0$$inlined$onDispose$1;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$NoOpOnDragStarted$1;
import androidx.compose.foundation.gestures.DraggableNode;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.OffsetPxNode;
import androidx.compose.foundation.layout.PaddingNode;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.core.provider.FontsContractCompat$FontFamilyResult;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.compose.NavHostKt$NavHost$29$1$1$1;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.fsck.k9.backends.AndroidAlarmManager$1$onReceive$1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import okhttp3.internal.http.RealInterceptorChain;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    private final Object invoke$androidx$camera$camera2$impl$UseCaseManager$$ExternalSyntheticLambda0(Object obj) {
        UseCaseManager useCaseManager = (UseCaseManager) this.f$0;
        JobSupport jobSupport = (JobSupport) this.f$1;
        synchronized (useCaseManager.lock) {
            useCaseManager.closingCameraJobs.remove(jobSupport);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = 3;
        int i2 = 2;
        int i3 = 1;
        switch (this.$r8$classId) {
            case 0:
                BackHandlerDispatcherCompat backHandlerDispatcherCompat = (BackHandlerDispatcherCompat) this.f$0;
                ComposeBackHandler composeBackHandler = (ComposeBackHandler) this.f$1;
                backHandlerDispatcherCompat.addHandler(composeBackHandler);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(r9 ? 1 : 0, backHandlerDispatcherCompat, composeBackHandler);
            case 1:
                BackHandlerDispatcherCompat backHandlerDispatcherCompat2 = (BackHandlerDispatcherCompat) this.f$0;
                ComposePredictiveBackHandler composePredictiveBackHandler = (ComposePredictiveBackHandler) this.f$1;
                backHandlerDispatcherCompat2.addHandler(composePredictiveBackHandler);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(i3, backHandlerDispatcherCompat2, composePredictiveBackHandler);
            case 2:
                Deferred deferred = (Deferred) this.f$0;
                CompletableDeferredImpl completableDeferredImpl = (CompletableDeferredImpl) this.f$1;
                Throwable th = (Throwable) obj;
                deferred.getClass();
                completableDeferredImpl.getClass();
                if (th == null) {
                    completableDeferredImpl.makeCompleting$kotlinx_coroutines_core(deferred.getCompleted());
                } else if (th instanceof CancellationException) {
                    completableDeferredImpl.cancelInternal((CancellationException) th);
                } else {
                    completableDeferredImpl.completeExceptionally(th);
                }
                return Unit.INSTANCE;
            case 3:
                CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer = (CallbackToFutureAdapter$Completer) this.f$0;
                CompletableDeferredImpl completableDeferredImpl2 = (CompletableDeferredImpl) this.f$1;
                Throwable th2 = (Throwable) obj;
                if (th2 == null) {
                    callbackToFutureAdapter$Completer.set(completableDeferredImpl2.getCompletedInternal$kotlinx_coroutines_core());
                } else if (th2 instanceof CancellationException) {
                    callbackToFutureAdapter$Completer.setCancelled();
                } else {
                    callbackToFutureAdapter$Completer.setException(th2);
                }
                return Unit.INSTANCE;
            case 4:
                ((EvCompImpl) this.f$0).comboRequestListener.removeListener((EvCompImpl$applyAsync$3) this.f$1);
                return Unit.INSTANCE;
            case 5:
                List list = (List) this.f$0;
                State3AControl state3AControl = (State3AControl) this.f$1;
                Throwable th3 = (Throwable) obj;
                if (th3 != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((CompletableDeferredImpl) it.next()).completeExceptionally(th3);
                    }
                } else {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((CompletableDeferredImpl) it2.next()).makeCompleting$kotlinx_coroutines_core(Unit.INSTANCE);
                    }
                }
                synchronized (state3AControl.lock) {
                    state3AControl.pendingSignals.removeAll(list);
                }
                return Unit.INSTANCE;
            case 6:
                return invoke$androidx$camera$camera2$impl$UseCaseManager$$ExternalSyntheticLambda0(obj);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                HashMap hashMap = (HashMap) this.f$0;
                CameraInfoInternal cameraInfoInternal = (CameraInfoInternal) this.f$1;
                UseCase useCase = (UseCase) obj;
                useCase.getClass();
                Object obj2 = hashMap.get(useCase);
                if (obj2 == null) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
                    return null;
                }
                CameraUseCaseAdapter.ConfigPair configPair = (CameraUseCaseAdapter.ConfigPair) obj2;
                UseCaseConfig mergeConfigs = useCase.mergeConfigs(cameraInfoInternal, configPair.mExtendedConfig, configPair.mCameraConfig);
                mergeConfigs.getClass();
                return mergeConfigs;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                InfiniteTransition infiniteTransition = (InfiniteTransition) this.f$0;
                InfiniteTransition.TransitionAnimationState transitionAnimationState = (InfiniteTransition.TransitionAnimationState) this.f$1;
                infiniteTransition._animations.add(transitionAnimationState);
                infiniteTransition.refreshChildNeeded$delegate.setValue(Boolean.TRUE);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(i2, infiniteTransition, transitionAnimationState);
            case 9:
                JobKt.launch$default((CoroutineScope) this.f$0, null, CoroutineStart.UNDISPATCHED, new NavHostKt$NavHost$29$1$1$1((Transition) this.f$1, null), 1);
                return new Transition$animateTo$lambda$2$0$$inlined$onDispose$1();
            case 10:
                Transition transition = (Transition) this.f$0;
                Transition transition2 = (Transition) this.f$1;
                transition._transitions.add(transition2);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(i, transition, transition2);
            case 11:
                Object obj3 = this.f$0;
                CoroutineScope coroutineScope = (CoroutineScope) this.f$1;
                Function0 function0 = (Function0) obj;
                if (obj3 == Thread.currentThread()) {
                    function0.invoke();
                } else {
                    JobKt.launch$default(coroutineScope, null, null, new AndroidAlarmManager$1$onReceive$1(function0, null, 1), 3);
                }
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                Transition transition3 = (Transition) this.f$0;
                Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) this.f$1;
                transition3._animations.add(transitionAnimationState2);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(5, transition3, transitionAnimationState2);
            case 13:
                DnsQueryResult dnsQueryResult = (DnsQueryResult) this.f$0;
                ((SeekableTransitionState) dnsQueryResult).setSnapshotStateObserver$animation_core(new SnapshotStateObserver(new BackHandlerKt$$ExternalSyntheticLambda2(11, Thread.currentThread(), (CoroutineScope) this.f$1)));
                return new AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1(i2, dnsQueryResult);
            case 14:
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(4, (Transition) this.f$0, (Transition.DeferredAnimation) this.f$1);
            case OffsetKt.Horizontal /* 15 */:
                ((MutableInteractionSourceImpl) this.f$0).tryEmit((PressInteraction.Cancel) this.f$1);
                return Unit.INSTANCE;
            case 16:
                AndroidPath androidPath = (AndroidPath) this.f$0;
                Brush brush = (Brush) this.f$1;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.drawContent();
                Modifier.CC.m399drawPathGBMwjPU$default(layoutNodeDrawScope, androidPath, brush, 0.0f, null, 60);
                return Unit.INSTANCE;
            case 17:
                Outline$Generic outline$Generic = (Outline$Generic) this.f$0;
                Brush brush2 = (Brush) this.f$1;
                LayoutNodeDrawScope layoutNodeDrawScope2 = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope2.drawContent();
                Modifier.CC.m399drawPathGBMwjPU$default(layoutNodeDrawScope2, outline$Generic.path, brush2, 0.0f, null, 60);
                return Unit.INSTANCE;
            case 18:
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) this.f$0;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) this.f$1;
                r9 = ref$BooleanRef.element || ((GestureConnection) obj).isInterested(indirectPointerInputChange);
                ref$BooleanRef.element = r9;
                return Boolean.valueOf(!r9);
            case 19:
                PointerInputChange pointerInputChange = (PointerInputChange) this.f$0;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) this.f$1;
                boolean z = ref$BooleanRef2.element || ((GestureConnection) obj).isInterested(pointerInputChange);
                ref$BooleanRef2.element = z;
                return Boolean.valueOf(!z);
            case 20:
                ((MutableInteractionSourceImpl) this.f$0).tryEmit((Interaction) this.f$1);
                return Unit.INSTANCE;
            case 21:
                ((LazyLayoutBeyondBoundsInfo) this.f$0).beyondBoundsItems.remove((ContentInViewNode.Request) this.f$1);
                return Unit.INSTANCE;
            case 22:
                DefaultDraggableState$dragScope$1 defaultDraggableState$dragScope$1 = (DefaultDraggableState$dragScope$1) this.f$0;
                DraggableNode draggableNode = (DraggableNode) this.f$1;
                long m442timestuRUvjQ = Offset.m442timestuRUvjQ(1.0f, ((DragEvent.DragDelta) obj).delta);
                Orientation orientation = draggableNode.orientation;
                DraggableKt$NoOpOnDragStarted$1 draggableKt$NoOpOnDragStarted$1 = DraggableKt.NoOpOnDragStarted;
                defaultDraggableState$dragScope$1.dragBy(Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? m442timestuRUvjQ & 4294967295L : m442timestuRUvjQ >> 32)));
                return Unit.INSTANCE;
            case 23:
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) this.f$0;
                ScrollingLogic scrollingLogic = (ScrollingLogic) this.f$1;
                DragEvent.DragDelta dragDelta = (DragEvent.DragDelta) obj;
                float f = dragDelta.isIndirectPointerEvent ? -1.0f : 1.0f;
                long j = dragDelta.delta;
                scrollingLogic$nestedScrollScope$1.m196scrollByWithOverscrollOzD1aCk(1, Offset.m442timestuRUvjQ(f, scrollingLogic.orientation == Orientation.Horizontal ? Offset.m435copydBAh8RU$default(0.0f, 1, j) : Offset.m435copydBAh8RU$default(0.0f, 2, j)));
                return Unit.INSTANCE;
            case 24:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) this.f$0;
                Function1 function1 = (Function1) this.f$1;
                ((Long) obj).getClass();
                float f2 = updatableAnimationState.value;
                updatableAnimationState.value = 0.0f;
                function1.invoke(Float.valueOf(f2));
                return Unit.INSTANCE;
            case 25:
                OffsetPxNode offsetPxNode = (OffsetPxNode) this.f$0;
                Placeable placeable = (Placeable) this.f$1;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                long j2 = ((IntOffset) offsetPxNode.offset.invoke(placementScope)).packedValue;
                Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable, (int) (j2 >> 32), (int) (j2 & 4294967295L), null, 12);
                return Unit.INSTANCE;
            case 26:
                PaddingNode paddingNode = (PaddingNode) this.f$0;
                Placeable placeable2 = (Placeable) this.f$1;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                boolean z2 = paddingNode.rtlAware;
                float f3 = paddingNode.start;
                if (z2) {
                    placementScope2.getClass();
                    Placeable.PlacementScope.placeRelative$default(placementScope2, placeable2, Modifier.CC.m388$default$roundToPx0680j_4(placementScope2, f3), Modifier.CC.m388$default$roundToPx0680j_4(placementScope2, paddingNode.top));
                } else {
                    placementScope2.getClass();
                    placementScope2.place(placeable2, Modifier.CC.m388$default$roundToPx0680j_4(placementScope2, f3), Modifier.CC.m388$default$roundToPx0680j_4(placementScope2, paddingNode.top), 0.0f);
                }
                return Unit.INSTANCE;
            case 27:
                WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) this.f$0;
                View view = (View) this.f$1;
                windowInsetsHolder.incrementAccessors(view);
                return new BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(6, windowInsetsHolder, view);
            case 28:
                RealInterceptorChain realInterceptorChain = (RealInterceptorChain) this.f$0;
                LruArrayPool lruArrayPool = (LruArrayPool) this.f$1;
                FontsContractCompat$FontFamilyResult lineConfiguration = realInterceptorChain.getLineConfiguration(((Integer) obj).intValue());
                int i4 = lineConfiguration.mStatusCode;
                List list2 = lineConfiguration.mFonts;
                ArrayList arrayList = new ArrayList(list2.size());
                int size = list2.size();
                int i5 = 0;
                for (int i6 = 0; i6 < size; i6++) {
                    int i7 = (int) ((GridItemSpan) list2.get(i6)).packedValue;
                    arrayList.add(new Pair(Integer.valueOf(i4), new Constraints(lruArrayPool.m928childConstraintsJhjzzOo$foundation(i5, i7))));
                    i4++;
                    i5 += i7;
                }
                return arrayList;
            default:
                LruArrayPool lruArrayPool2 = (LruArrayPool) this.f$0;
                LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1 = (LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1) this.f$1;
                int intValue = ((Integer) obj).intValue();
                RealInterceptorChain realInterceptorChain2 = (RealInterceptorChain) lruArrayPool2.sortedSizes;
                int i8 = realInterceptorChain2.calls;
                int spanOf = realInterceptorChain2.spanOf(intValue);
                return lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.m249getAndMeasurem8Kt_7k(intValue, lruArrayPool2.m928childConstraintsJhjzzOo$foundation(0, spanOf), 0, spanOf, lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1.defaultMainAxisSpacing);
        }
    }
}
