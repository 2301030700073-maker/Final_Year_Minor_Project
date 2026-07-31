package org.schabi.newpipe.player.ui;

import android.view.View;
import android.widget.RelativeLayout;
import com.google.android.material.carousel.CarouselLayoutManager;
import org.acra.builder.ReportExecutor$$ExternalSyntheticLambda0;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.views.player.CircleClipTapView;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda22 implements View.OnLayoutChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda22(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int i9 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i9) {
            case 0:
                PlayerBinding playerBinding = ((VideoPlayerUi) obj).binding;
                playerBinding.playerOverlays.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), view.getPaddingBottom());
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) playerBinding.fastSeekOverlay.getLayoutParams();
                layoutParams.leftMargin = -view.getPaddingRight();
                layoutParams.topMargin = -view.getPaddingBottom();
                layoutParams.rightMargin = -view.getPaddingLeft();
                layoutParams.bottomMargin = -view.getPaddingTop();
                break;
            case 1:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i != i5 || i2 != i6 || i3 != i7 || i4 != i8) {
                    view.post(new ReportExecutor$$ExternalSyntheticLambda0(carouselLayoutManager, 14));
                    break;
                }
            default:
                CircleClipTapView circleClipTapView = ((PlayerFastSeekOverlay) obj).circleClipTapView;
                view.getClass();
                circleClipTapView.getClass();
                float height = view.getHeight() / 11.4f;
                if (circleClipTapView.arcSize != height) {
                    circleClipTapView.arcSize = height;
                    circleClipTapView.updatePathShape();
                    break;
                }
                break;
        }
    }
}
