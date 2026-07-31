package androidx.activity.compose;

import android.view.View;
import androidx.activity.compose.internal.BackHandlerDispatcherCompat;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0;
import androidx.core.view.ViewCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogHostKt$$ExternalSyntheticLambda2;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $dispatcher$inlined;
    public final /* synthetic */ Object $handler$inlined;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.$dispatcher$inlined = obj;
        this.$handler$inlined = obj2;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$handler$inlined;
        Object obj2 = this.$dispatcher$inlined;
        switch (i) {
            case 0:
                ((BackHandlerDispatcherCompat) obj2).removeHandler((ComposeBackHandler) obj);
                break;
            case 1:
                ((BackHandlerDispatcherCompat) obj2).removeHandler((ComposePredictiveBackHandler) obj);
                break;
            case 2:
                ((InfiniteTransition) obj2)._animations.remove((InfiniteTransition.TransitionAnimationState) obj);
                break;
            case 3:
                ((Transition) obj2)._transitions.remove((Transition) obj);
                break;
            case 4:
                Transition transition = (Transition) obj2;
                transition.getClass();
                Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((Transition.DeferredAnimation) obj).data$delegate.getValue();
                if (deferredAnimationData != null) {
                    transition._animations.remove(deferredAnimationData.animation);
                    break;
                }
                break;
            case 5:
                ((Transition) obj2)._animations.remove((Transition.TransitionAnimationState) obj);
                break;
            case 6:
                WindowInsetsHolder windowInsetsHolder = (WindowInsetsHolder) obj2;
                View view = (View) obj;
                int i2 = windowInsetsHolder.accessCount - 1;
                windowInsetsHolder.accessCount = i2;
                if (i2 == 0) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                    ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(view, null);
                    ViewCompat.setWindowInsetsAnimationCallback(view, null);
                    view.removeOnAttachStateChangeListener(windowInsetsHolder.insetsListener);
                    break;
                }
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((LazySaveableStateHolder) obj2).previouslyComposedKeys.plusAssign(obj);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                MutableState mutableState = (MutableState) obj2;
                PressInteraction.Press press = (PressInteraction.Press) mutableState.getValue();
                if (press != null) {
                    PressInteraction.Cancel cancel = new PressInteraction.Cancel(press);
                    MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) obj;
                    if (mutableInteractionSourceImpl != null) {
                        mutableInteractionSourceImpl.tryEmit(cancel);
                    }
                    mutableState.setValue(null);
                    break;
                }
                break;
            case 9:
                ((TextLinkScope) obj2).annotators.remove((Function1) obj);
                break;
            case 10:
                ((LifecycleOwner) obj2).getLifecycle().removeObserver((MenuHostHelper$$ExternalSyntheticLambda0) obj);
                break;
            case 11:
                ((NavBackStackEntry) obj2).impl.lifecycle.removeObserver((DialogHostKt$$ExternalSyntheticLambda2) obj);
                break;
            default:
                Iterator it = ((List) ((State) obj2).getValue()).iterator();
                while (it.hasNext()) {
                    ((ComposeNavigator) obj).getState().markTransitionComplete((NavBackStackEntry) it.next());
                }
                break;
        }
    }
}
