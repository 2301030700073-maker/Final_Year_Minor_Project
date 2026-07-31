package androidx.compose.runtime;

import android.os.Bundle;
import android.view.View;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.compose.animation.AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.Transition$animateTo$1$1$1;
import androidx.compose.animation.core.Transition$animateTo$lambda$2$0$$inlined$onDispose$1;
import androidx.compose.animation.core.TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;
import androidx.compose.animation.core.TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1;
import androidx.compose.foundation.GestureConnection;
import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.ExcludeInsets;
import androidx.compose.foundation.layout.InsetsListener;
import androidx.compose.foundation.layout.PaddingNode;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.foundation.pager.PagerMeasureKt$$ExternalSyntheticLambda1;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.Recomposer;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.ComposeLifecycleOwner;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt$$ExternalSyntheticLambda0;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider;
import androidx.lifecycle.viewmodel.ViewModelStoreProvider$$ExternalSyntheticLambda1;
import androidx.preference.PreferenceManager;
import androidx.savedstate.serialization.SavedStateConfiguration;
import androidx.savedstate.serialization.SavedStateDecoder;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CompletableDeferredImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.KSerializer;
import net.newpipe.app.ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Recomposer$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ Recomposer$$ExternalSyntheticLambda4(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Lifecycle lifecycle;
        int i = 7;
        int i2 = 2;
        int i3 = 3;
        int i4 = 1;
        switch (this.$r8$classId) {
            case 0:
                CompositionImpl compositionImpl = (CompositionImpl) this.f$0;
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.f$1;
                compositionImpl.recordWriteOf(obj);
                if (mutableScatterSet != null) {
                    mutableScatterSet.add(obj);
                }
                return Unit.INSTANCE;
            case 1:
                JobKt.launch$default((CoroutineScope) this.f$0, null, CoroutineStart.UNDISPATCHED, new Transition$animateTo$1$1$1((Transition) this.f$1, null), 1);
                return new Transition$animateTo$lambda$2$0$$inlined$onDispose$1();
            case 2:
                return new TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1((Transition) this.f$0, (Transition.DeferredAnimation) this.f$1, r6 ? 1 : 0);
            case 3:
                Object obj2 = this.f$0;
                CoroutineScope coroutineScope = (CoroutineScope) this.f$1;
                Function0 function0 = (Function0) obj;
                if (obj2 == Thread.currentThread()) {
                    function0.invoke();
                } else {
                    JobKt.launch$default(coroutineScope, null, null, new TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1(function0, null), 3);
                }
                return Unit.INSTANCE;
            case 4:
                Transition transition = (Transition) this.f$0;
                Transition transition2 = (Transition) this.f$1;
                transition._transitions.add(transition2);
                return new TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1(transition, transition2, i4);
            case 5:
                Transition transition3 = (Transition) this.f$0;
                Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) this.f$1;
                transition3._animations.add(transitionAnimationState);
                return new TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1(transition3, transitionAnimationState, i2);
            case 6:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) this.f$0;
                seekableTransitionState.setSnapshotStateObserver$animation_core(new PreferenceManager(new Recomposer$$ExternalSyntheticLambda4(Thread.currentThread(), (CoroutineScope) this.f$1, i3)));
                return new ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1(seekableTransitionState, i4);
            case 7:
                ((MutableInteractionSourceImpl) ((MutableInteractionSource) this.f$0)).tryEmit((PressInteraction.Cancel) this.f$1);
                return Unit.INSTANCE;
            case 8:
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) this.f$0;
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) this.f$1;
                r6 = ref$BooleanRef.element || ((GestureConnection) obj).isInterested(indirectPointerInputChange);
                ref$BooleanRef.element = r6;
                return Boolean.valueOf(!r6);
            case 9:
                PointerInputChange pointerInputChange = (PointerInputChange) this.f$0;
                Ref$BooleanRef ref$BooleanRef2 = (Ref$BooleanRef) this.f$1;
                boolean z = ref$BooleanRef2.element || ((GestureConnection) obj).isInterested(pointerInputChange);
                ref$BooleanRef2.element = z;
                return Boolean.valueOf(!z);
            case 10:
                ((MutableInteractionSourceImpl) ((MutableInteractionSource) this.f$0)).tryEmit((Interaction) this.f$1);
                return Unit.INSTANCE;
            case 11:
                ((LazyLayoutBeyondBoundsInfo) this.f$0).beyondBoundsItems.remove((ContentInViewNode.Request) this.f$1);
                return Unit.INSTANCE;
            case 12:
                ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1 = (ScrollingLogic$nestedScrollScope$1) this.f$0;
                ScrollingLogic scrollingLogic = (ScrollingLogic) this.f$1;
                DragEvent.DragDelta dragDelta = (DragEvent.DragDelta) obj;
                float f = dragDelta.isIndirectPointerEvent ? -1.0f : 1.0f;
                long j = dragDelta.delta;
                scrollingLogic$nestedScrollScope$1.m77scrollByWithOverscrollOzD1aCk(1, Offset.m201timestuRUvjQ(scrollingLogic.orientation == Orientation.Horizontal ? Offset.m195copydBAh8RU$default(1, j) : Offset.m195copydBAh8RU$default(2, j), f));
                return Unit.INSTANCE;
            case 13:
                UpdatableAnimationState updatableAnimationState = (UpdatableAnimationState) this.f$0;
                Function1 function1 = (Function1) this.f$1;
                ((Long) obj).getClass();
                float f2 = updatableAnimationState.value;
                updatableAnimationState.value = 0.0f;
                function1.invoke(Float.valueOf(f2));
                return Unit.INSTANCE;
            case 14:
                PaddingNode paddingNode = (PaddingNode) this.f$0;
                Placeable placeable = (Placeable) this.f$1;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean z2 = paddingNode.rtlAware;
                float f3 = paddingNode.start;
                if (z2) {
                    placementScope.getClass();
                    Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Owner.CC.m357$default$roundToPx0680j_4(placementScope, f3), Owner.CC.m357$default$roundToPx0680j_4(placementScope, paddingNode.top));
                } else {
                    placementScope.getClass();
                    placementScope.place(placeable, Owner.CC.m357$default$roundToPx0680j_4(placementScope, f3), Owner.CC.m357$default$roundToPx0680j_4(placementScope, paddingNode.top), 0.0f);
                }
                return Unit.INSTANCE;
            case 15:
                WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) this.f$0;
                View view = (View) this.f$1;
                InsetsListener insetsListener = windowInsetsHolder.insetsListener;
                if (windowInsetsHolder.accessCount == 0) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(view, insetsListener);
                    if (view.isAttachedToWindow()) {
                        view.requestApplyInsets();
                    }
                    view.addOnAttachStateChangeListener(insetsListener);
                    ViewCompat.setWindowInsetsAnimationCallback(view, insetsListener);
                }
                windowInsetsHolder.accessCount++;
                return new TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1(windowInsetsHolder, view, i3);
            case 16:
                AwaitFirstLayoutModifier.Node node = (AwaitFirstLayoutModifier.Node) this.f$0;
                AwaitFirstLayoutModifier awaitFirstLayoutModifier = (AwaitFirstLayoutModifier) this.f$1;
                Unit unit = Unit.INSTANCE;
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
                return unit;
            case 17:
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) this.f$0;
                Object obj3 = this.f$1;
                lazySaveableStateHolder.previouslyComposedKeys.minusAssign(obj3);
                return new TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1(lazySaveableStateHolder, obj3, 4);
            case 18:
                return new LazySaveableStateHolder((SaveableStateRegistry) this.f$0, (Map) obj, (SaveableStateHolder) this.f$1);
            case 19:
                ((Function2) this.f$0).invoke(Integer.valueOf(((PrefetchHandleProvider$HandleAndRequestImpl) obj).index), Integer.valueOf(((ProcessFinisher) this.f$1).getLayoutInfo().pageSize));
                return Unit.INSTANCE;
            case 20:
                MutableState mutableState = (MutableState) this.f$0;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                PagerMeasureKt$$ExternalSyntheticLambda1 pagerMeasureKt$$ExternalSyntheticLambda1 = new PagerMeasureKt$$ExternalSyntheticLambda1(r6 ? 1 : 0, (ArrayList) this.f$1);
                placementScope2.motionFrameOfReferencePlacement = true;
                pagerMeasureKt$$ExternalSyntheticLambda1.invoke(placementScope2);
                placementScope2.motionFrameOfReferencePlacement = false;
                mutableState.getValue();
                return Unit.INSTANCE;
            case 21:
                ((Placeable.PlacementScope) obj).place((Placeable) this.f$0, 0, 0, ((FloatProducer) this.f$1).invoke());
                return Unit.INSTANCE;
            case 22:
                ((MutableWindowInsets) this.f$0).insets$delegate.setValue(new ExcludeInsets((WindowInsets) this.f$1, (WindowInsets) obj));
                return Unit.INSTANCE;
            case 23:
                ((MultiSubscriptionSnapshotFlowManager) this.f$0).pendingChanges.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, (SendChannel) this.f$1));
                return Unit.INSTANCE;
            case 24:
                Set set = (Set) this.f$0;
                MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = (MultiSubscriptionSnapshotFlowManager) this.f$1;
                if (set.contains(obj)) {
                    MutableScatterMap mutableScatterMap = multiSubscriptionSnapshotFlowManager.subscriptions;
                    MutableScatterSet mutableScatterSet2 = multiSubscriptionSnapshotFlowManager.toNotify;
                    Object obj4 = mutableScatterMap.get(obj);
                    if (obj4 != null) {
                        if (obj4 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet3 = (MutableScatterSet) obj4;
                            Object[] objArr = mutableScatterSet3.elements;
                            long[] jArr = mutableScatterSet3.metadata;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i5 = 0;
                                while (true) {
                                    long j2 = jArr[i5];
                                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i6 = 8 - ((~(i5 - length)) >>> 31);
                                        for (int i7 = 0; i7 < i6; i7++) {
                                            if ((255 & j2) < 128) {
                                                mutableScatterSet2.add((SendChannel) objArr[(i5 << 3) + i7]);
                                            }
                                            j2 >>= 8;
                                        }
                                        if (i6 != 8) {
                                        }
                                    }
                                    if (i5 != length) {
                                        i5++;
                                    }
                                }
                            }
                        } else {
                            mutableScatterSet2.add((SendChannel) obj4);
                        }
                    }
                }
                return Unit.INSTANCE;
            case 25:
                Recomposer recomposer = (Recomposer) this.f$0;
                Throwable th = (Throwable) this.f$1;
                Throwable th2 = (Throwable) obj;
                synchronized (recomposer.stateLock) {
                    if (th == null) {
                        th = null;
                    } else if (th2 != null) {
                        try {
                            if (th2 instanceof CancellationException) {
                                th2 = null;
                            }
                            if (th2 != null) {
                                ResultKt.addSuppressed(th, th2);
                            }
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                    recomposer.closeCause = th;
                    StateFlowImpl stateFlowImpl = recomposer._state;
                    Recomposer.State state = Recomposer.State.ShutDown;
                    stateFlowImpl.getClass();
                    stateFlowImpl.updateState(null, state);
                }
                return Unit.INSTANCE;
            case 26:
                KSerializer kSerializer = (KSerializer) this.f$0;
                SavedStateConfiguration savedStateConfiguration = (SavedStateConfiguration) this.f$1;
                Bundle bundle = (Bundle) obj;
                KSerializer kSerializer2 = kSerializer;
                kSerializer2.getClass();
                bundle.getClass();
                savedStateConfiguration.getClass();
                return new SavedStateDecoder(bundle, savedStateConfiguration).decodeSerializableValue(kSerializer2);
            case 27:
                LifecycleOwner lifecycleOwner = (LifecycleOwner) this.f$0;
                ComposeLifecycleOwner composeLifecycleOwner = (ComposeLifecycleOwner) this.f$1;
                RememberLifecycleOwnerKt$$ExternalSyntheticLambda0 rememberLifecycleOwnerKt$$ExternalSyntheticLambda0 = new RememberLifecycleOwnerKt$$ExternalSyntheticLambda0(composeLifecycleOwner, 0);
                if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
                    lifecycle.addObserver(rememberLifecycleOwnerKt$$ExternalSyntheticLambda0);
                }
                if (lifecycleOwner == null) {
                    Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                    composeLifecycleOwner.getClass();
                    composeLifecycleOwner.parentLifecycleState = event.getTargetState();
                    composeLifecycleOwner.updateLifecycleState();
                }
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(i2, lifecycleOwner, rememberLifecycleOwnerKt$$ExternalSyntheticLambda0, composeLifecycleOwner);
            case 28:
                ViewModelStoreProvider viewModelStoreProvider = (ViewModelStoreProvider) this.f$0;
                Object obj5 = this.f$1;
                MutableScatterMap mutableScatterMap2 = viewModelStoreProvider.getStateHolder().entries;
                Object obj6 = mutableScatterMap2.get(obj5);
                if (obj6 == null) {
                    obj6 = new ViewModelStoreProvider.Entry(obj5);
                    mutableScatterMap2.set(obj5, obj6);
                }
                ViewModelStoreProvider.Entry entry2 = (ViewModelStoreProvider.Entry) obj6;
                entry2.refCount++;
                return new ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1(new ViewModelStoreProvider$$ExternalSyntheticLambda1(entry2, viewModelStoreProvider, obj5), i);
            default:
                ViewModelStoreProvider viewModelStoreProvider2 = (ViewModelStoreProvider) this.f$0;
                Lifecycle lifecycle2 = (Lifecycle) this.f$1;
                ViewModelStoreProvider.ProviderMarkerKey providerMarkerKey = ViewModelStoreProvider.ProviderMarkerKey.INSTANCE;
                MutableScatterMap mutableScatterMap3 = viewModelStoreProvider2.getStateHolder().entries;
                Object obj7 = mutableScatterMap3.get(providerMarkerKey);
                if (obj7 == null) {
                    obj7 = new ViewModelStoreProvider.Entry(providerMarkerKey);
                    mutableScatterMap3.set(providerMarkerKey, obj7);
                }
                ViewModelStoreProvider.Entry entry3 = (ViewModelStoreProvider.Entry) obj7;
                entry3.refCount++;
                return new AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1(i3, new ViewModelStoreProvider$$ExternalSyntheticLambda1(entry3, viewModelStoreProvider2, providerMarkerKey), lifecycle2, viewModelStoreProvider2);
        }
    }
}
