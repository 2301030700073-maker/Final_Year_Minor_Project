package androidx.compose.animation.core;

import androidx.compose.runtime.DisposableEffectResult;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TransitionKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Transition f$0;

    public /* synthetic */ TransitionKt$$ExternalSyntheticLambda1(Transition transition, int i) {
        this.$r8$classId = i;
        this.f$0 = transition;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        final Transition transition = this.f$0;
        switch (i) {
            case 0:
                final int i2 = 1;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        int i3 = i2;
                        Transition transition2 = transition;
                        switch (i3) {
                            case 0:
                                transition2.onTransitionEnd$animation_core();
                                transition2.transitionState.transitionRemoved$animation_core();
                                break;
                            default:
                                transition2.onTransitionEnd$animation_core();
                                transition2.transitionState.transitionRemoved$animation_core();
                                break;
                        }
                    }
                };
            default:
                final int i3 = 0;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void dispose() {
                        int i32 = i3;
                        Transition transition2 = transition;
                        switch (i32) {
                            case 0:
                                transition2.onTransitionEnd$animation_core();
                                transition2.transitionState.transitionRemoved$animation_core();
                                break;
                            default:
                                transition2.onTransitionEnd$animation_core();
                                transition2.transitionState.transitionRemoved$animation_core();
                                break;
                        }
                    }
                };
        }
    }
}
