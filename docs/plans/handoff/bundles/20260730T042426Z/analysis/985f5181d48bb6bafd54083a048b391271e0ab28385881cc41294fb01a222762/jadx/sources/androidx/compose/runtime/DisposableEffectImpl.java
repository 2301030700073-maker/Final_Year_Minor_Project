package androidx.compose.runtime;

import kotlin.jvm.functions.Function1;

/* compiled from: Effects.kt */
/* loaded from: classes.dex */
final class DisposableEffectImpl implements RememberObserver {
    private final Function1 effect;
    private DisposableEffectResult onDispose;

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
    }

    public DisposableEffectImpl(Function1 function1) {
        this.effect = function1;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        DisposableEffectScope disposableEffectScope;
        Function1 function1 = this.effect;
        disposableEffectScope = EffectsKt.InternalDisposableEffectScope;
        this.onDispose = (DisposableEffectResult) function1.invoke(disposableEffectScope);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        DisposableEffectResult disposableEffectResult = this.onDispose;
        if (disposableEffectResult != null) {
            disposableEffectResult.dispose();
        }
        this.onDispose = null;
    }
}
