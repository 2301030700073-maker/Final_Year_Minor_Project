package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ItemFoundInScroll extends CancellationException {
    public final int itemOffset;
    public final AnimationState previousAnimation;

    public ItemFoundInScroll(int i, AnimationState animationState) {
        this.itemOffset = i;
        this.previousAnimation = animationState;
    }
}
