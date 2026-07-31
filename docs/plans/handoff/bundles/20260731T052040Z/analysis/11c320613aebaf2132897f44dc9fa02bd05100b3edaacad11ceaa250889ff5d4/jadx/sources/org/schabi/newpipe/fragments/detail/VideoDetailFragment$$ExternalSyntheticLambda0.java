package org.schabi.newpipe.fragments.detail;

import android.graphics.Rect;
import android.util.TypedValue;
import androidx.fragment.app.FragmentActivity;
import androidx.sqlite.SQLite;
import coil3.decode.StaticImageDecoderKt;
import java.util.LinkedList;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.databinding.FragmentVideoDetailBinding;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.player.PlayerIntentType;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.ui.MainPlayerUi;
import org.schabi.newpipe.util.DeviceUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoDetailFragment f$0;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda0(VideoDetailFragment videoDetailFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = videoDetailFragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        VideoDetailFragment videoDetailFragment = this.f$0;
        switch (i) {
            case 0:
                LinkedList linkedList = VideoDetailFragment.stack;
                FragmentActivity activity = videoDetailFragment.getActivity();
                if (activity != null) {
                    Rect rect = new Rect();
                    videoDetailFragment.binding.viewPager.getHitRect(rect);
                    int windowHeight = DeviceUtils.getWindowHeight(activity.getWindowManager()) - rect.top;
                    float applyDimension = TypedValue.applyDimension(1, 48.0f, videoDetailFragment.getResources().getDisplayMetrics());
                    float f = windowHeight;
                    float f2 = 2.0f * applyDimension;
                    FragmentVideoDetailBinding fragmentVideoDetailBinding = videoDetailFragment.binding;
                    if (f <= f2) {
                        fragmentVideoDetailBinding.tabLayout.setVisibility(8);
                        break;
                    } else {
                        fragmentVideoDetailBinding.tabLayout.setTranslationY(Math.max(0.0f, (applyDimension * 3.0f) - f));
                        videoDetailFragment.binding.tabLayout.setVisibility(0);
                        break;
                    }
                }
                break;
            case 1:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                if (videoDetailFragment.playerService == null) {
                    videoDetailFragment.playerHolder.startService(videoDetailFragment.autoPlayEnabled, videoDetailFragment);
                    break;
                } else if (videoDetailFragment.currentInfo != null) {
                    PlayQueue playQueue = videoDetailFragment.setupPlayQueueForIntent(false);
                    videoDetailFragment.tryAddVideoPlayerView();
                    StaticImageDecoderKt.startForegroundService(videoDetailFragment.activity, SQLite.getPlayerIntent(videoDetailFragment.requireContext(), PlayerService.class, playQueue, PlayerIntentType.AllOthers).putExtra("play_when_ready", videoDetailFragment.autoPlayEnabled).putExtra("resume_playback", true));
                    break;
                }
                break;
            case 2:
                AppKt.animate$default(videoDetailFragment.binding.touchAppendDetail, false, 1500L, AnimationType.ALPHA, 1000L, null, 16);
                break;
            case 3:
                LinkedList linkedList3 = VideoDetailFragment.stack;
                if (videoDetailFragment.isPlayerAvailable() && videoDetailFragment.getView() != null) {
                    videoDetailFragment.setHeightThumbnail();
                    videoDetailFragment.player.UIs.get(MainPlayerUi.class).ifPresent(new VideoDetailFragment$$ExternalSyntheticLambda22(videoDetailFragment, 12));
                    break;
                }
                break;
            default:
                AppKt.animate$default(videoDetailFragment.binding.detailThumbnailImageView, true, 500L, null, 0L, null, 28);
                break;
        }
    }
}
