package expo.modules.video;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.util.Rational;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.ImageButton;
import androidx.media3.common.Player;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.ui.PlayerView;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.utils.PictureInPictureUtilsKt;
import io.sentry.android.core.SentryLogcatAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FullscreenPlayerActivity.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\b\u0010\u0016\u001a\u00020\u0012H\u0016J\b\u0010\u0017\u001a\u00020\u0012H\u0014J\b\u0010\u0018\u001a\u00020\u0012H\u0014J\b\u0010\u0019\u001a\u00020\u0012H\u0014J\b\u0010\u001a\u001a\u00020\u0012H\u0002J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\b\u0010\u001f\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lexpo/modules/video/FullscreenPlayerActivity;", "Landroid/app/Activity;", "<init>", "()V", "mContentView", "Landroid/view/View;", "videoViewId", "", "videoPlayer", "Lexpo/modules/video/player/VideoPlayer;", "playerView", "Landroidx/media3/ui/PlayerView;", "videoView", "Lexpo/modules/video/VideoView;", "didFinish", "", "wasAutoPaused", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onPostCreate", "finish", "onResume", "onPause", "onDestroy", "setupFullscreenButton", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "newConfig", "Landroid/content/res/Configuration;", "hideStatusBar", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class FullscreenPlayerActivity extends Activity {
    private boolean didFinish;
    private View mContentView;
    private PlayerView playerView;
    private VideoPlayer videoPlayer;
    private VideoView videoView;
    private String videoViewId;
    private boolean wasAutoPaused;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.fullscreen_player_activity);
        this.mContentView = findViewById(R.id.enclosing_layout);
        this.playerView = (PlayerView) findViewById(R.id.player_view);
        try {
            String stringExtra = getIntent().getStringExtra(VideoManager.INTENT_PLAYER_KEY);
            if (stringExtra == null) {
                throw new FullScreenVideoViewNotFoundException();
            }
            this.videoViewId = stringExtra;
            VideoManager videoManager = VideoManager.INSTANCE;
            String str = this.videoViewId;
            VideoView videoView = null;
            if (str == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoViewId");
                str = null;
            }
            VideoView videoView2 = videoManager.getVideoView(str);
            this.videoView = videoView2;
            if (videoView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoView");
                videoView2 = null;
            }
            VideoPlayer videoPlayer = videoView2.getVideoPlayer();
            this.videoPlayer = videoPlayer;
            if (videoPlayer != null) {
                PlayerView playerView = this.playerView;
                if (playerView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView = null;
                }
                videoPlayer.changePlayerView(playerView);
            }
            VideoManager.INSTANCE.registerFullscreenPlayerActivity(String.valueOf(hashCode()), this);
            PlayerView playerView2 = this.playerView;
            if (playerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
                playerView2 = null;
            }
            Player player = playerView2.getPlayer();
            if (player != null) {
                VideoSize videoSize = player.getVideoSize();
                Intrinsics.checkNotNullExpressionValue(videoSize, "getVideoSize(...)");
                PlayerView playerView3 = this.playerView;
                if (playerView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView3 = null;
                }
                int width = playerView3.getWidth();
                PlayerView playerView4 = this.playerView;
                if (playerView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView4 = null;
                }
                int height = playerView4.getHeight();
                VideoView videoView3 = this.videoView;
                if (videoView3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoView");
                    videoView3 = null;
                }
                Rational calculatePiPAspectRatio = PictureInPictureUtilsKt.calculatePiPAspectRatio(videoSize, width, height, videoView3.getContentFit());
                FullscreenPlayerActivity fullscreenPlayerActivity = this;
                VideoView videoView4 = this.videoView;
                if (videoView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("videoView");
                } else {
                    videoView = videoView4;
                }
                PictureInPictureUtilsKt.applyPiPParams(fullscreenPlayerActivity, videoView.getAutoEnterPiP(), calculatePiPAspectRatio);
            }
        } catch (CodedException e) {
            SentryLogcatAdapter.e("ExpoVideo", String.valueOf(e.getMessage()), e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle savedInstanceState) {
        super.onPostCreate(savedInstanceState);
        hideStatusBar();
        setupFullscreenButton();
        PlayerView playerView = this.playerView;
        PlayerView playerView2 = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        VideoPlayer videoPlayer = this.videoPlayer;
        PlayerViewExtensionKt.applyRequiresLinearPlayback(playerView, videoPlayer != null ? videoPlayer.getRequiresLinearPlayback() : false);
        PlayerView playerView3 = this.playerView;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView3 = null;
        }
        playerView3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FullscreenPlayerActivity.onPostCreate$lambda$1(FullscreenPlayerActivity.this, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        PlayerView playerView4 = this.playerView;
        if (playerView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView4 = null;
        }
        VideoView videoView = this.videoView;
        if (videoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
            videoView = null;
        }
        playerView4.setShowSubtitleButton(videoView.getShowsSubtitlesButton());
        PlayerView playerView5 = this.playerView;
        if (playerView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView2 = playerView5;
        }
        playerView2.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                FullscreenPlayerActivity.onPostCreate$lambda$2(FullscreenPlayerActivity.this, view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostCreate$lambda$1(FullscreenPlayerActivity fullscreenPlayerActivity, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        PlayerView playerView = fullscreenPlayerActivity.playerView;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        VideoPlayer videoPlayer = fullscreenPlayerActivity.videoPlayer;
        PlayerViewExtensionKt.setTimeBarInteractive(playerView, videoPlayer != null ? videoPlayer.getRequiresLinearPlayback() : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onPostCreate$lambda$2(FullscreenPlayerActivity fullscreenPlayerActivity, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        FullscreenPlayerActivity fullscreenPlayerActivity2 = fullscreenPlayerActivity;
        PlayerView playerView = fullscreenPlayerActivity.playerView;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        PictureInPictureUtilsKt.applyRectHint(fullscreenPlayerActivity2, PictureInPictureUtilsKt.calculateRectHint(playerView));
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.didFinish = true;
        VideoManager videoManager = VideoManager.INSTANCE;
        String str = this.videoViewId;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoViewId");
            str = null;
        }
        videoManager.getVideoView(str).attachPlayer();
        if (Build.VERSION.SDK_INT >= 34) {
            overrideActivityTransition(1, 0, 0);
        } else {
            overridePendingTransition(0, 0);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        PlayerView playerView = this.playerView;
        VideoView videoView = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        VideoView videoView2 = this.videoView;
        if (videoView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
        } else {
            videoView = videoView2;
        }
        playerView.setUseController(videoView.getUseNativeControls());
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        ExoPlayer player;
        ExoPlayer player2;
        VideoPlayer videoPlayer = this.videoPlayer;
        if ((videoPlayer == null || !videoPlayer.getStaysActiveInBackground()) && !this.didFinish) {
            VideoPlayer videoPlayer2 = this.videoPlayer;
            boolean z = (videoPlayer2 == null || (player2 = videoPlayer2.getPlayer()) == null || !player2.isPlaying()) ? false : true;
            this.wasAutoPaused = z;
            if (z) {
                PlayerView playerView = this.playerView;
                if (playerView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("playerView");
                    playerView = null;
                }
                playerView.setUseController(false);
                VideoPlayer videoPlayer3 = this.videoPlayer;
                if (videoPlayer3 != null && (player = videoPlayer3.getPlayer()) != null) {
                    player.pause();
                }
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        VideoView videoView = this.videoView;
        if (videoView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("videoView");
            videoView = null;
        }
        videoView.exitFullscreen();
        VideoManager.INSTANCE.unregisterFullscreenPlayerActivity(String.valueOf(hashCode()));
    }

    private final void setupFullscreenButton() {
        PlayerView playerView = this.playerView;
        PlayerView playerView2 = null;
        if (playerView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
            playerView = null;
        }
        playerView.setFullscreenButtonClickListener(new PlayerView.FullscreenButtonClickListener() { // from class: expo.modules.video.FullscreenPlayerActivity$$ExternalSyntheticLambda0
            @Override // androidx.media3.ui.PlayerView.FullscreenButtonClickListener
            public final void onFullscreenButtonClick(boolean z) {
                FullscreenPlayerActivity.this.finish();
            }
        });
        PlayerView playerView3 = this.playerView;
        if (playerView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("playerView");
        } else {
            playerView2 = playerView3;
        }
        View findViewById = playerView2.findViewById(androidx.media3.ui.R.id.exo_fullscreen);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(...)");
        ((ImageButton) findViewById).setImageResource(androidx.media3.ui.R.drawable.exo_icon_fullscreen_exit);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode, Configuration newConfig) {
        VideoPlayer videoPlayer;
        ExoPlayer player;
        PlayerView playerView = null;
        VideoView videoView = null;
        if (!isInPictureInPictureMode) {
            PlayerView playerView2 = this.playerView;
            if (playerView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
                playerView2 = null;
            }
            VideoView videoView2 = this.videoView;
            if (videoView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("videoView");
            } else {
                videoView = videoView2;
            }
            playerView2.setUseController(videoView.getUseNativeControls());
        } else {
            PlayerView playerView3 = this.playerView;
            if (playerView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("playerView");
            } else {
                playerView = playerView3;
            }
            playerView.setUseController(false);
        }
        if (this.wasAutoPaused && isInPictureInPictureMode && (videoPlayer = this.videoPlayer) != null && (player = videoPlayer.getPlayer()) != null) {
            player.play();
        }
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig);
    }

    private final void hideStatusBar() {
        View view = null;
        if (Build.VERSION.SDK_INT >= 30) {
            View view2 = this.mContentView;
            if (view2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mContentView");
            } else {
                view = view2;
            }
            WindowInsetsController windowInsetsController = view.getWindowInsetsController();
            if (windowInsetsController != null) {
                windowInsetsController.setSystemBarsBehavior(2);
                windowInsetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                return;
            }
            return;
        }
        View view3 = this.mContentView;
        if (view3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("mContentView");
        } else {
            view = view3;
        }
        view.setSystemUiVisibility(4871);
    }
}
