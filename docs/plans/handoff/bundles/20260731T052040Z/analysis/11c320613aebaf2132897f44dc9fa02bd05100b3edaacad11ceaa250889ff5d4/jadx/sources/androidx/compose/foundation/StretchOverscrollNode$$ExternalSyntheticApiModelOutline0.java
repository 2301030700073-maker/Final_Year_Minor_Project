package androidx.compose.foundation;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.RenderNode;
import android.media.session.MediaSession;
import android.view.WindowInsets;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class StretchOverscrollNode$$ExternalSyntheticApiModelOutline0 {
    public static /* synthetic */ MediaSession m(PlayerService playerService) {
        return new MediaSession(playerService, "MediaSessionPlayerServ", null);
    }

    public static /* synthetic */ RenderNode m() {
        return new RenderNode("AndroidEdgeEffectOverscrollEffect");
    }

    public static /* synthetic */ BlendModeColorFilter m(int i, BlendMode blendMode) {
        return new BlendModeColorFilter(i, blendMode);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ WindowInsets.Builder m33m() {
        return new WindowInsets.Builder();
    }

    public static /* synthetic */ WindowInsets.Builder m(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m34m() {
    }
}
