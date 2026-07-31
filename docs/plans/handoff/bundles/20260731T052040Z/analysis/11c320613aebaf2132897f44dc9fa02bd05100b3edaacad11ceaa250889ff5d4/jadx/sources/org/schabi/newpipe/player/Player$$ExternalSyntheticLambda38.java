package org.schabi.newpipe.player;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.grack.nanojson.JsonObject;
import j$.util.Optional;
import java.util.function.Supplier;
import okhttp3.Dispatcher;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.views.ExpandableSurfaceView;
import org.schabi.newpipe.views.FocusAwareSeekBar;
import org.schabi.newpipe.views.NewPipeTextView;
import org.schabi.newpipe.views.player.PlayerFastSeekOverlay;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class Player$$ExternalSyntheticLambda38 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ Player$$ExternalSyntheticLambda38(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                Player player = (Player) obj;
                if (player.playerType == PlayerType.AUDIO) {
                    return null;
                }
                View inflate = LayoutInflater.from(player.context).inflate(R.layout.player, (ViewGroup) null, false);
                int i2 = R.id.addToPlaylistButton;
                AppCompatImageButton appCompatImageButton = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.addToPlaylistButton, inflate);
                if (appCompatImageButton != null) {
                    i2 = R.id.audioTrackTextView;
                    NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.audioTrackTextView, inflate);
                    if (newPipeTextView != null) {
                        i2 = R.id.bottomControls;
                        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.bottomControls, inflate);
                        if (linearLayout != null) {
                            i2 = R.id.bottomSeekbarPreviewLayout;
                            LinearLayout linearLayout2 = (LinearLayout) Options.Companion.findChildViewById(R.id.bottomSeekbarPreviewLayout, inflate);
                            if (linearLayout2 != null) {
                                i2 = R.id.brightnessImageView;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) Options.Companion.findChildViewById(R.id.brightnessImageView, inflate);
                                if (appCompatImageView != null) {
                                    i2 = R.id.brightnessProgressBar;
                                    ProgressBar progressBar = (ProgressBar) Options.Companion.findChildViewById(R.id.brightnessProgressBar, inflate);
                                    if (progressBar != null) {
                                        i2 = R.id.brightnessRelativeLayout;
                                        RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.brightnessRelativeLayout, inflate);
                                        if (relativeLayout != null) {
                                            i2 = R.id.captionTextView;
                                            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.captionTextView, inflate);
                                            if (newPipeTextView2 != null) {
                                                i2 = R.id.channelTextView;
                                                NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.channelTextView, inflate);
                                                if (newPipeTextView3 != null) {
                                                    i2 = R.id.closeButton;
                                                    if (((Button) Options.Companion.findChildViewById(R.id.closeButton, inflate)) != null) {
                                                        i2 = R.id.closingOverlay;
                                                        View findChildViewById = Options.Companion.findChildViewById(R.id.closingOverlay, inflate);
                                                        if (findChildViewById != null) {
                                                            i2 = R.id.currentDisplaySeek;
                                                            NewPipeTextView newPipeTextView4 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.currentDisplaySeek, inflate);
                                                            if (newPipeTextView4 != null) {
                                                                i2 = R.id.currentSeekbarPreviewThumbnail;
                                                                ImageView imageView = (ImageView) Options.Companion.findChildViewById(R.id.currentSeekbarPreviewThumbnail, inflate);
                                                                if (imageView != null) {
                                                                    i2 = R.id.endScreen;
                                                                    ImageView imageView2 = (ImageView) Options.Companion.findChildViewById(R.id.endScreen, inflate);
                                                                    if (imageView2 != null) {
                                                                        i2 = R.id.fast_seek_overlay;
                                                                        PlayerFastSeekOverlay playerFastSeekOverlay = (PlayerFastSeekOverlay) Options.Companion.findChildViewById(R.id.fast_seek_overlay, inflate);
                                                                        if (playerFastSeekOverlay != null) {
                                                                            i2 = R.id.fullScreenButton;
                                                                            AppCompatImageButton appCompatImageButton2 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.fullScreenButton, inflate);
                                                                            if (appCompatImageButton2 != null) {
                                                                                i2 = R.id.itemsList;
                                                                                RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.itemsList, inflate);
                                                                                if (recyclerView != null) {
                                                                                    i2 = R.id.itemsListClose;
                                                                                    AppCompatImageButton appCompatImageButton3 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.itemsListClose, inflate);
                                                                                    if (appCompatImageButton3 != null) {
                                                                                        i2 = R.id.itemsListControl;
                                                                                        if (((RelativeLayout) Options.Companion.findChildViewById(R.id.itemsListControl, inflate)) != null) {
                                                                                            i2 = R.id.itemsListHeaderDuration;
                                                                                            AppCompatTextView appCompatTextView = (AppCompatTextView) Options.Companion.findChildViewById(R.id.itemsListHeaderDuration, inflate);
                                                                                            if (appCompatTextView != null) {
                                                                                                i2 = R.id.itemsListHeaderTitle;
                                                                                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) Options.Companion.findChildViewById(R.id.itemsListHeaderTitle, inflate);
                                                                                                if (appCompatTextView2 != null) {
                                                                                                    i2 = R.id.itemsListPanel;
                                                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) Options.Companion.findChildViewById(R.id.itemsListPanel, inflate);
                                                                                                    if (relativeLayout2 != null) {
                                                                                                        i2 = R.id.loading_panel;
                                                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) Options.Companion.findChildViewById(R.id.loading_panel, inflate);
                                                                                                        if (relativeLayout3 != null) {
                                                                                                            i2 = R.id.metadataView;
                                                                                                            LinearLayout linearLayout3 = (LinearLayout) Options.Companion.findChildViewById(R.id.metadataView, inflate);
                                                                                                            if (linearLayout3 != null) {
                                                                                                                i2 = R.id.moreOptionsButton;
                                                                                                                AppCompatImageButton appCompatImageButton4 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.moreOptionsButton, inflate);
                                                                                                                if (appCompatImageButton4 != null) {
                                                                                                                    i2 = R.id.openInBrowser;
                                                                                                                    AppCompatImageButton appCompatImageButton5 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.openInBrowser, inflate);
                                                                                                                    if (appCompatImageButton5 != null) {
                                                                                                                        i2 = R.id.playNextButton;
                                                                                                                        AppCompatImageButton appCompatImageButton6 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.playNextButton, inflate);
                                                                                                                        if (appCompatImageButton6 != null) {
                                                                                                                            i2 = R.id.playPauseButton;
                                                                                                                            AppCompatImageButton appCompatImageButton7 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.playPauseButton, inflate);
                                                                                                                            if (appCompatImageButton7 != null) {
                                                                                                                                i2 = R.id.playPreviousButton;
                                                                                                                                AppCompatImageButton appCompatImageButton8 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.playPreviousButton, inflate);
                                                                                                                                if (appCompatImageButton8 != null) {
                                                                                                                                    i2 = R.id.playWithKodi;
                                                                                                                                    AppCompatImageButton appCompatImageButton9 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.playWithKodi, inflate);
                                                                                                                                    if (appCompatImageButton9 != null) {
                                                                                                                                        i2 = R.id.playbackControlRoot;
                                                                                                                                        RelativeLayout relativeLayout4 = (RelativeLayout) Options.Companion.findChildViewById(R.id.playbackControlRoot, inflate);
                                                                                                                                        if (relativeLayout4 != null) {
                                                                                                                                            i2 = R.id.playbackControlsShadow;
                                                                                                                                            View findChildViewById2 = Options.Companion.findChildViewById(R.id.playbackControlsShadow, inflate);
                                                                                                                                            if (findChildViewById2 != null) {
                                                                                                                                                i2 = R.id.playbackCurrentTime;
                                                                                                                                                NewPipeTextView newPipeTextView5 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playbackCurrentTime, inflate);
                                                                                                                                                if (newPipeTextView5 != null) {
                                                                                                                                                    i2 = R.id.playbackEndTime;
                                                                                                                                                    NewPipeTextView newPipeTextView6 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playbackEndTime, inflate);
                                                                                                                                                    if (newPipeTextView6 != null) {
                                                                                                                                                        i2 = R.id.playbackLiveSync;
                                                                                                                                                        NewPipeTextView newPipeTextView7 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playbackLiveSync, inflate);
                                                                                                                                                        if (newPipeTextView7 != null) {
                                                                                                                                                            i2 = R.id.playbackSeekBar;
                                                                                                                                                            FocusAwareSeekBar focusAwareSeekBar = (FocusAwareSeekBar) Options.Companion.findChildViewById(R.id.playbackSeekBar, inflate);
                                                                                                                                                            if (focusAwareSeekBar != null) {
                                                                                                                                                                i2 = R.id.playbackSpeed;
                                                                                                                                                                NewPipeTextView newPipeTextView8 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.playbackSpeed, inflate);
                                                                                                                                                                if (newPipeTextView8 != null) {
                                                                                                                                                                    i2 = R.id.playbackWindowRoot;
                                                                                                                                                                    RelativeLayout relativeLayout5 = (RelativeLayout) Options.Companion.findChildViewById(R.id.playbackWindowRoot, inflate);
                                                                                                                                                                    if (relativeLayout5 != null) {
                                                                                                                                                                        i2 = R.id.playerBottomShadow;
                                                                                                                                                                        View findChildViewById3 = Options.Companion.findChildViewById(R.id.playerBottomShadow, inflate);
                                                                                                                                                                        if (findChildViewById3 != null) {
                                                                                                                                                                            i2 = R.id.playerCloseButton;
                                                                                                                                                                            AppCompatImageButton appCompatImageButton10 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.playerCloseButton, inflate);
                                                                                                                                                                            if (appCompatImageButton10 != null) {
                                                                                                                                                                                i2 = R.id.player_overlays;
                                                                                                                                                                                RelativeLayout relativeLayout6 = (RelativeLayout) Options.Companion.findChildViewById(R.id.player_overlays, inflate);
                                                                                                                                                                                if (relativeLayout6 != null) {
                                                                                                                                                                                    i2 = R.id.playerTopShadow;
                                                                                                                                                                                    View findChildViewById4 = Options.Companion.findChildViewById(R.id.playerTopShadow, inflate);
                                                                                                                                                                                    if (findChildViewById4 != null) {
                                                                                                                                                                                        i2 = R.id.primaryControls;
                                                                                                                                                                                        LinearLayout linearLayout4 = (LinearLayout) Options.Companion.findChildViewById(R.id.primaryControls, inflate);
                                                                                                                                                                                        if (linearLayout4 != null) {
                                                                                                                                                                                            i2 = R.id.progressBarLoadingPanel;
                                                                                                                                                                                            ProgressBar progressBar2 = (ProgressBar) Options.Companion.findChildViewById(R.id.progressBarLoadingPanel, inflate);
                                                                                                                                                                                            if (progressBar2 != null) {
                                                                                                                                                                                                i2 = R.id.qualityTextView;
                                                                                                                                                                                                NewPipeTextView newPipeTextView9 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.qualityTextView, inflate);
                                                                                                                                                                                                if (newPipeTextView9 != null) {
                                                                                                                                                                                                    i2 = R.id.queueButton;
                                                                                                                                                                                                    AppCompatImageButton appCompatImageButton11 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.queueButton, inflate);
                                                                                                                                                                                                    if (appCompatImageButton11 != null) {
                                                                                                                                                                                                        i2 = R.id.repeatButton;
                                                                                                                                                                                                        AppCompatImageButton appCompatImageButton12 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.repeatButton, inflate);
                                                                                                                                                                                                        if (appCompatImageButton12 != null) {
                                                                                                                                                                                                            i2 = R.id.resizeTextView;
                                                                                                                                                                                                            NewPipeTextView newPipeTextView10 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.resizeTextView, inflate);
                                                                                                                                                                                                            if (newPipeTextView10 != null) {
                                                                                                                                                                                                                i2 = R.id.screenRotationButton;
                                                                                                                                                                                                                AppCompatImageButton appCompatImageButton13 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.screenRotationButton, inflate);
                                                                                                                                                                                                                if (appCompatImageButton13 != null) {
                                                                                                                                                                                                                    i2 = R.id.secondaryControls;
                                                                                                                                                                                                                    LinearLayout linearLayout5 = (LinearLayout) Options.Companion.findChildViewById(R.id.secondaryControls, inflate);
                                                                                                                                                                                                                    if (linearLayout5 != null) {
                                                                                                                                                                                                                        i2 = R.id.seekbarPreviewContainer;
                                                                                                                                                                                                                        LinearLayout linearLayout6 = (LinearLayout) Options.Companion.findChildViewById(R.id.seekbarPreviewContainer, inflate);
                                                                                                                                                                                                                        if (linearLayout6 != null) {
                                                                                                                                                                                                                            i2 = R.id.segmentsButton;
                                                                                                                                                                                                                            AppCompatImageButton appCompatImageButton14 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.segmentsButton, inflate);
                                                                                                                                                                                                                            if (appCompatImageButton14 != null) {
                                                                                                                                                                                                                                i2 = R.id.share;
                                                                                                                                                                                                                                AppCompatImageButton appCompatImageButton15 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.share, inflate);
                                                                                                                                                                                                                                if (appCompatImageButton15 != null) {
                                                                                                                                                                                                                                    i2 = R.id.shuffleButton;
                                                                                                                                                                                                                                    AppCompatImageButton appCompatImageButton16 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.shuffleButton, inflate);
                                                                                                                                                                                                                                    if (appCompatImageButton16 != null) {
                                                                                                                                                                                                                                        i2 = R.id.subtitleView;
                                                                                                                                                                                                                                        SubtitleView subtitleView = (SubtitleView) Options.Companion.findChildViewById(R.id.subtitleView, inflate);
                                                                                                                                                                                                                                        if (subtitleView != null) {
                                                                                                                                                                                                                                            i2 = R.id.surfaceForeground;
                                                                                                                                                                                                                                            View findChildViewById5 = Options.Companion.findChildViewById(R.id.surfaceForeground, inflate);
                                                                                                                                                                                                                                            if (findChildViewById5 != null) {
                                                                                                                                                                                                                                                i2 = R.id.surfaceView;
                                                                                                                                                                                                                                                ExpandableSurfaceView expandableSurfaceView = (ExpandableSurfaceView) Options.Companion.findChildViewById(R.id.surfaceView, inflate);
                                                                                                                                                                                                                                                if (expandableSurfaceView != null) {
                                                                                                                                                                                                                                                    i2 = R.id.switchMute;
                                                                                                                                                                                                                                                    AppCompatImageButton appCompatImageButton17 = (AppCompatImageButton) Options.Companion.findChildViewById(R.id.switchMute, inflate);
                                                                                                                                                                                                                                                    if (appCompatImageButton17 != null) {
                                                                                                                                                                                                                                                        i2 = R.id.titleTextView;
                                                                                                                                                                                                                                                        NewPipeTextView newPipeTextView11 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.titleTextView, inflate);
                                                                                                                                                                                                                                                        if (newPipeTextView11 != null) {
                                                                                                                                                                                                                                                            i2 = R.id.topControls;
                                                                                                                                                                                                                                                            LinearLayout linearLayout7 = (LinearLayout) Options.Companion.findChildViewById(R.id.topControls, inflate);
                                                                                                                                                                                                                                                            if (linearLayout7 != null) {
                                                                                                                                                                                                                                                                i2 = R.id.volumeImageView;
                                                                                                                                                                                                                                                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) Options.Companion.findChildViewById(R.id.volumeImageView, inflate);
                                                                                                                                                                                                                                                                if (appCompatImageView2 != null) {
                                                                                                                                                                                                                                                                    i2 = R.id.volumeProgressBar;
                                                                                                                                                                                                                                                                    ProgressBar progressBar3 = (ProgressBar) Options.Companion.findChildViewById(R.id.volumeProgressBar, inflate);
                                                                                                                                                                                                                                                                    if (progressBar3 != null) {
                                                                                                                                                                                                                                                                        i2 = R.id.volumeRelativeLayout;
                                                                                                                                                                                                                                                                        RelativeLayout relativeLayout7 = (RelativeLayout) Options.Companion.findChildViewById(R.id.volumeRelativeLayout, inflate);
                                                                                                                                                                                                                                                                        if (relativeLayout7 != null) {
                                                                                                                                                                                                                                                                            return new PlayerBinding((RelativeLayout) inflate, appCompatImageButton, newPipeTextView, linearLayout, linearLayout2, appCompatImageView, progressBar, relativeLayout, newPipeTextView2, newPipeTextView3, findChildViewById, newPipeTextView4, imageView, imageView2, playerFastSeekOverlay, appCompatImageButton2, recyclerView, appCompatImageButton3, appCompatTextView, appCompatTextView2, relativeLayout2, relativeLayout3, linearLayout3, appCompatImageButton4, appCompatImageButton5, appCompatImageButton6, appCompatImageButton7, appCompatImageButton8, appCompatImageButton9, relativeLayout4, findChildViewById2, newPipeTextView5, newPipeTextView6, newPipeTextView7, focusAwareSeekBar, newPipeTextView8, relativeLayout5, findChildViewById3, appCompatImageButton10, relativeLayout6, findChildViewById4, linearLayout4, progressBar2, newPipeTextView9, appCompatImageButton11, appCompatImageButton12, newPipeTextView10, appCompatImageButton13, linearLayout5, linearLayout6, appCompatImageButton14, appCompatImageButton15, appCompatImageButton16, subtitleView, findChildViewById5, expandableSurfaceView, appCompatImageButton17, newPipeTextView11, linearLayout7, appCompatImageView2, progressBar3, relativeLayout7);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
                return null;
            case 1:
                return Optional.ofNullable(((JsonObject) obj).getObject("microformat").getObject("microformatDataRenderer").getString("title", null));
            case 2:
                return (Optional) obj;
            case 3:
                return (RelativeLayout) ((PlaylistHeaderBinding) obj).rootView;
            case 4:
                return (ConstraintLayout) ((TokenData) obj).value;
            default:
                return (LinearLayout) ((Dispatcher) obj).executorServiceOrNull;
        }
    }
}
