package androidx.compose.animation.core;

/* compiled from: DecayAnimationSpec.kt */
/* loaded from: classes.dex */
public abstract class DecayAnimationSpecKt {
    public static final DecayAnimationSpec generateDecayAnimationSpec(FloatDecayAnimationSpec floatDecayAnimationSpec) {
        return new DecayAnimationSpecImpl(floatDecayAnimationSpec);
    }
}
