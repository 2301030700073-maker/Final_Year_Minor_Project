package androidx.compose.material3.pulltorefresh;

import androidx.compose.animation.core.Animatable;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PullToRefreshStateImpl {
    public static final WeakCache Saver = new WeakCache(3, new SaversKt$$ExternalSyntheticLambda0(12), new TextKt$$ExternalSyntheticLambda1(18));
    public final Animatable anim;

    public PullToRefreshStateImpl(Animatable animatable) {
        this.anim = animatable;
    }
}
