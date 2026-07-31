package androidx.compose.animation.core;

import android.view.View;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.core.view.ViewCompat;
import androidx.navigationevent.compose.ComposeNavigationEventHandler;
import androidx.navigationevent.compose.NavigationEventState;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1 implements DisposableEffectResult {
    public final /* synthetic */ Object $lazyAnim$inlined;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_createDeferredAnimation$inlined;

    public /* synthetic */ TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.$this_createDeferredAnimation$inlined = obj;
        this.$lazyAnim$inlined = obj2;
    }

    @Override // androidx.compose.runtime.DisposableEffectResult
    public final void dispose() {
        int i = this.$r8$classId;
        Object obj = this.$lazyAnim$inlined;
        Object obj2 = this.$this_createDeferredAnimation$inlined;
        switch (i) {
            case 0:
                Transition transition = (Transition) obj2;
                transition.getClass();
                Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((Transition.DeferredAnimation) obj).data$delegate.getValue();
                if (deferredAnimationData != null) {
                    transition._animations.remove(deferredAnimationData.animation);
                    break;
                }
                break;
            case 1:
                ((Transition) obj2)._transitions.remove((Transition) obj);
                break;
            case 2:
                ((Transition) obj2)._animations.remove((Transition.TransitionAnimationState) obj);
                break;
            case 3:
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
            case 4:
                ((LazySaveableStateHolder) obj2).previouslyComposedKeys.plusAssign(obj);
                break;
            default:
                ((ComposeNavigationEventHandler) obj2).remove();
                ((NavigationEventState) obj).sourceHandler = null;
                break;
        }
    }
}
