package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
/* loaded from: classes.dex */
public final class Slide {
    private final FiniteAnimationSpec animationSpec;
    private final Function1 slideOffset;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Slide)) {
            return false;
        }
        Slide slide = (Slide) obj;
        return Intrinsics.areEqual(this.slideOffset, slide.slideOffset) && Intrinsics.areEqual(this.animationSpec, slide.animationSpec);
    }

    public int hashCode() {
        return (this.slideOffset.hashCode() * 31) + this.animationSpec.hashCode();
    }

    public String toString() {
        return "Slide(slideOffset=" + this.slideOffset + ", animationSpec=" + this.animationSpec + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public Slide(Function1 function1, FiniteAnimationSpec finiteAnimationSpec) {
        this.slideOffset = function1;
        this.animationSpec = finiteAnimationSpec;
    }

    public final Function1 getSlideOffset() {
        return this.slideOffset;
    }

    public final FiniteAnimationSpec getAnimationSpec() {
        return this.animationSpec;
    }
}
