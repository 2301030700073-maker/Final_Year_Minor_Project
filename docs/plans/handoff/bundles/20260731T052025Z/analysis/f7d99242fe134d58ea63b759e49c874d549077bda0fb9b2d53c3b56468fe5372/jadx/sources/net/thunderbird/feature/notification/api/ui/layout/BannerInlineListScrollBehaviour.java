package net.thunderbird.feature.notification.api.ui.layout;

import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.ui.platform.WeakCache;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineListScrollBehaviour {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final BannerInlineListScrollBehaviour$connection$1 connection;
    public final DecayAnimationSpecImpl flingAnimation;
    public final BannerInlineListScrollState state;

    static {
        WeakCache weakCache = BannerInlineListScrollState.Saver;
    }

    public BannerInlineListScrollBehaviour(BannerInlineListScrollState bannerInlineListScrollState, DecayAnimationSpecImpl decayAnimationSpecImpl) {
        bannerInlineListScrollState.getClass();
        decayAnimationSpecImpl.getClass();
        this.state = bannerInlineListScrollState;
        this.flingAnimation = decayAnimationSpecImpl;
        this.connection = new BannerInlineListScrollBehaviour$connection$1(this);
    }
}
