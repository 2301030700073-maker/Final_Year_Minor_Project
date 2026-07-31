package org.schabi.newpipe.player.ui;

import android.widget.ImageView;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.transition.Transition;
import coil3.ComponentRegistry;
import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.List;
import java.util.function.Consumer;
import org.schabi.newpipe.databinding.PlayerBinding;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.helper.PlayerHelper;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.ExpandableSurfaceView;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class VideoPlayerUi$$ExternalSyntheticLambda32 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoPlayerUi f$0;

    public /* synthetic */ VideoPlayerUi$$ExternalSyntheticLambda32(VideoPlayerUi videoPlayerUi, int i) {
        this.$r8$classId = i;
        this.f$0 = videoPlayerUi;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i;
        int i2 = this.$r8$classId;
        VideoPlayerUi videoPlayerUi = this.f$0;
        switch (i2) {
            case 0:
                videoPlayerUi.binding.qualityTextView.setText(((VideoStream) obj).resolution);
                break;
            case 1:
                StreamInfo streamInfo = (StreamInfo) obj;
                Player player = videoPlayerUi.player;
                PlayerBinding playerBinding = videoPlayerUi.binding;
                NewPipeTextView newPipeTextView = playerBinding.qualityTextView;
                ImageView imageView = playerBinding.endScreen;
                ExpandableSurfaceView expandableSurfaceView = playerBinding.surfaceView;
                newPipeTextView.setVisibility(8);
                NewPipeTextView newPipeTextView2 = playerBinding.audioTrackTextView;
                newPipeTextView2.setVisibility(8);
                NewPipeTextView newPipeTextView3 = playerBinding.playbackSpeed;
                newPipeTextView3.setVisibility(8);
                NewPipeTextView newPipeTextView4 = playerBinding.playbackEndTime;
                newPipeTextView4.setVisibility(8);
                NewPipeTextView newPipeTextView5 = playerBinding.playbackLiveSync;
                newPipeTextView5.setVisibility(8);
                int i3 = 0;
                switch (streamInfo.getStreamType().ordinal()) {
                    case 1:
                    case 5:
                        MediaItemTag mediaItemTag = player.currentMetadata;
                        if ((mediaItemTag == null || !mediaItemTag.getMaybeQuality().isEmpty()) && (!streamInfo.getVideoStreams().isEmpty() || !streamInfo.getVideoOnlyStreams().isEmpty())) {
                            ComponentRegistry.Builder builder = videoPlayerUi.qualityPopupMenu;
                            if (builder != null) {
                                ((MenuBuilder) builder.interceptors).removeGroup(69);
                                List list = (List) Optional.ofNullable(player.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(13)).map(new ListHelper$$ExternalSyntheticLambda0(11)).orElse(null);
                                if (list != null) {
                                    for (int i4 = 0; i4 < list.size(); i4++) {
                                        VideoStream videoStream = (VideoStream) list.get(i4);
                                        ((MenuBuilder) videoPlayerUi.qualityPopupMenu.interceptors).addInternal(69, i4, 0, MediaFormat.getNameById(videoStream.getFormatId()) + " " + videoStream.resolution);
                                    }
                                    ComponentRegistry.Builder builder2 = videoPlayerUi.qualityPopupMenu;
                                    builder2.lazyFetcherFactories = videoPlayerUi;
                                    builder2.lazyDecoderFactories = videoPlayerUi;
                                    player.getSelectedVideoStream().ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(videoPlayerUi, 4));
                                }
                            }
                            ComponentRegistry.Builder builder3 = videoPlayerUi.audioTrackPopupMenu;
                            if (builder3 != null) {
                                ((MenuBuilder) builder3.interceptors).removeGroup(70);
                                List list2 = (List) Optional.ofNullable(player.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(8)).map(new Player$$ExternalSyntheticLambda28(9)).orElse(null);
                                if (list2 != null && list2.size() >= 2) {
                                    for (int i5 = 0; i5 < list2.size(); i5++) {
                                        ((MenuBuilder) videoPlayerUi.audioTrackPopupMenu.interceptors).addInternal(70, i5, 0, Localization.audioTrackName(videoPlayerUi.context, (AudioStream) list2.get(i5)));
                                    }
                                    Optional.ofNullable(player.currentMetadata).flatMap(new Player$$ExternalSyntheticLambda28(8)).map(new Player$$ExternalSyntheticLambda28(i3)).ifPresent(new VideoPlayerUi$$ExternalSyntheticLambda32(videoPlayerUi, 3));
                                    newPipeTextView2.setVisibility(0);
                                    ComponentRegistry.Builder builder4 = videoPlayerUi.audioTrackPopupMenu;
                                    builder4.lazyFetcherFactories = videoPlayerUi;
                                    builder4.lazyDecoderFactories = videoPlayerUi;
                                }
                            }
                            playerBinding.qualityTextView.setVisibility(0);
                            expandableSurfaceView.setVisibility(0);
                            i = 8;
                            imageView.setVisibility(i);
                            newPipeTextView4.setVisibility(0);
                            break;
                        }
                        break;
                    case 2:
                    case 6:
                        expandableSurfaceView.setVisibility(8);
                        imageView.setVisibility(0);
                        newPipeTextView4.setVisibility(0);
                        break;
                    case 3:
                        expandableSurfaceView.setVisibility(0);
                        imageView.setVisibility(8);
                        newPipeTextView5.setVisibility(0);
                        break;
                    case 4:
                        expandableSurfaceView.setVisibility(8);
                        imageView.setVisibility(0);
                        newPipeTextView5.setVisibility(0);
                        break;
                    default:
                        i = 8;
                        imageView.setVisibility(i);
                        newPipeTextView4.setVisibility(0);
                        break;
                }
                ComponentRegistry.Builder builder5 = videoPlayerUi.playbackSpeedPopupMenu;
                if (builder5 != null) {
                    ((MenuBuilder) builder5.interceptors).removeGroup(79);
                    for (int i6 = 0; i6 < 7; i6++) {
                        ((MenuBuilder) videoPlayerUi.playbackSpeedPopupMenu.interceptors).addInternal(79, i6, 0, PlayerHelper.formatSpeed(VideoPlayerUi.PLAYBACK_SPEEDS[i6]));
                    }
                    newPipeTextView3.setText(PlayerHelper.formatSpeed(player.getPlaybackParameters().speed));
                    ComponentRegistry.Builder builder6 = videoPlayerUi.playbackSpeedPopupMenu;
                    builder6.lazyFetcherFactories = videoPlayerUi;
                    builder6.lazyDecoderFactories = videoPlayerUi;
                }
                newPipeTextView3.setVisibility(0);
                break;
            case 2:
                Transition.Impl26.openUrlInBrowser(videoPlayerUi.player.context, ((StreamInfo) obj).getOriginalUrl());
                break;
            case 3:
                videoPlayerUi.binding.audioTrackTextView.setText(Localization.audioTrackName(videoPlayerUi.context, (AudioStream) obj));
                break;
            default:
                videoPlayerUi.binding.qualityTextView.setText(((VideoStream) obj).resolution);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
