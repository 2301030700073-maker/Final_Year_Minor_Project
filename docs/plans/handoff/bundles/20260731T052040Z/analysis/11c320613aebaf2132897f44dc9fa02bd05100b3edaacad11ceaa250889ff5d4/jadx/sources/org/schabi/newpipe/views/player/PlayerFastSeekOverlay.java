package org.schabi.newpipe.views.player;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.jvm.functions.Function0;
import net.newpipe.app.AppKt;
import org.koin.compose.KoinApplicationKt$$ExternalSyntheticLambda0;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.player.ui.VideoPlayerUi$$ExternalSyntheticLambda22;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerFastSeekOverlay extends ConstraintLayout {
    public static final Companion Companion = new Companion();
    public final CircleClipTapView circleClipTapView;
    public boolean initTap;
    public VideoPlayerUi.AnonymousClass1 performListener;
    public final ConstraintLayout rootConstraintLayout;
    public final SecondsView secondsView;
    public Function0 seekSecondsSupplier;
    public boolean wasForwarding;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    static {
        int i = MainActivity.$r8$clinit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlayerFastSeekOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        LayoutInflater.from(context).inflate(R.layout.player_fast_seek_overlay, (ViewGroup) this, true);
        View findViewById = findViewById(R.id.seconds_view);
        findViewById.getClass();
        this.secondsView = (SecondsView) findViewById;
        View findViewById2 = findViewById(R.id.circle_clip_tap_view);
        findViewById2.getClass();
        this.circleClipTapView = (CircleClipTapView) findViewById2;
        View findViewById3 = findViewById(R.id.root_constraint_layout);
        findViewById3.getClass();
        this.rootConstraintLayout = (ConstraintLayout) findViewById3;
        addOnLayoutChangeListener(new VideoPlayerUi$$ExternalSyntheticLambda22(this, 2));
        this.seekSecondsSupplier = new KoinApplicationKt$$ExternalSyntheticLambda0(14);
    }

    public final void onDoubleTapFinished() {
        VideoPlayerUi.AnonymousClass1 anonymousClass1;
        if (this.initTap && (anonymousClass1 = this.performListener) != null) {
            AppKt.animate$default(((VideoPlayerUi) anonymousClass1.this$0).binding.fastSeekOverlay, false, 450L, null, 0L, null, 28);
        }
        this.initTap = false;
        this.secondsView.stopAnimation();
    }
}
