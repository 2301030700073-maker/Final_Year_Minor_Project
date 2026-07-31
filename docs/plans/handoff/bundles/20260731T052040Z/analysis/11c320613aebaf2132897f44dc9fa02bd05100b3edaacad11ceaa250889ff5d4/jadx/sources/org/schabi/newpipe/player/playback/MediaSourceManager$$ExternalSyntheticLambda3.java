package org.schabi.newpipe.player.playback;

import android.net.Uri;
import android.util.Log;
import androidx.compose.ui.node.Owner;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MergingMediaSource;
import com.google.android.exoplayer2.source.SingleSampleMediaSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import j$.util.Optional;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.function.Supplier;
import org.jsoup.nodes.Printer;
import org.jsoup.select.StructuralEvaluator$$ExternalSyntheticLambda2;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.MediaFormat;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.services.youtube.YoutubeService;
import org.schabi.newpipe.extractor.stream.AudioStream;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.SubtitlesStream;
import org.schabi.newpipe.extractor.stream.VideoStream;
import org.schabi.newpipe.player.Player;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;
import org.schabi.newpipe.player.PlayerService;
import org.schabi.newpipe.player.PlayerType;
import org.schabi.newpipe.player.helper.PlayerDataSource;
import org.schabi.newpipe.player.mediaitem.MediaItemTag;
import org.schabi.newpipe.player.mediaitem.StreamInfoTag;
import org.schabi.newpipe.player.mediasource.FailedMediaSource;
import org.schabi.newpipe.player.mediasource.ManagedMediaSource;
import org.schabi.newpipe.player.playqueue.PlayQueue;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;
import org.schabi.newpipe.player.resolver.PlaybackResolver$ResolverException;
import org.schabi.newpipe.player.resolver.VideoPlaybackResolver;
import org.schabi.newpipe.util.ListHelper;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda0;
import org.schabi.newpipe.util.ListHelper$$ExternalSyntheticLambda21;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MediaSourceManager$$ExternalSyntheticLambda3 implements Consumer, Function {
    public final /* synthetic */ MediaSourceManager f$0;
    public final /* synthetic */ PlayQueueItem f$1;

    public /* synthetic */ MediaSourceManager$$ExternalSyntheticLambda3(MediaSourceManager mediaSourceManager, PlayQueueItem playQueueItem) {
        this.f$0 = mediaSourceManager;
        this.f$1 = playQueueItem;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        ManagedMediaSource managedMediaSource = (ManagedMediaSource) obj;
        int i = PlayQueue.$r8$clinit;
        MediaSourceManager mediaSourceManager = this.f$0;
        Set set = mediaSourceManager.loadingItems;
        PlayQueueItem playQueueItem = this.f$1;
        set.remove(playQueueItem);
        PlayQueue playQueue = mediaSourceManager.playQueue;
        int indexOf = playQueue.indexOf(playQueueItem);
        int indexOf2 = playQueue.indexOf(playQueueItem);
        ManagedMediaSource managedMediaSource2 = mediaSourceManager.playlist.get(indexOf2);
        if (managedMediaSource2 != null) {
            if (managedMediaSource2.shouldBeReplacedWith(playQueueItem, indexOf2 != playQueue.getIndex())) {
                mediaSourceManager.playlist.update(indexOf, managedMediaSource, mediaSourceManager.removeMediaSourceHandler, new MediaSourceManager$$ExternalSyntheticLambda2(mediaSourceManager, 1));
            }
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        int defaultResolutionWithDefaultFormat;
        MediaSource mediaSource;
        final StreamInfo streamInfo = (StreamInfo) obj;
        Player player = this.f$0.playbackListener;
        VideoPlaybackResolver videoPlaybackResolver = player.videoResolver;
        Printer printer = player.audioResolver;
        if (player.playerType == PlayerType.AUDIO) {
            mediaSource = printer.resolve(streamInfo);
        } else {
            boolean z = player.isAudioOnly;
            VideoPlaybackResolver.SourceType sourceType = VideoPlaybackResolver.SourceType.VIDEO_WITH_AUDIO_OR_AUDIO_ONLY;
            if (z && Optional.ofNullable(videoPlaybackResolver.streamSourceType).orElse(sourceType) == sourceType) {
                mediaSource = printer.resolve(streamInfo);
            } else {
                PlayerService playerService = videoPlaybackResolver.context;
                PlayerDataSource playerDataSource = videoPlaybackResolver.dataSource;
                MediaSource maybeBuildLiveMediaSource = RecordTag.maybeBuildLiveMediaSource(playerDataSource, streamInfo);
                if (maybeBuildLiveMediaSource != null) {
                    videoPlaybackResolver.streamSourceType = VideoPlaybackResolver.SourceType.LIVE_STREAM;
                    mediaSource = maybeBuildLiveMediaSource;
                } else {
                    ArrayList arrayList = new ArrayList();
                    List videoStreams = streamInfo.getVideoStreams();
                    int serviceId = streamInfo.getServiceId();
                    List list = ListHelper.VIDEO_FORMAT_QUALITY_RANKING;
                    YoutubeService youtubeService = ServiceList.YouTube;
                    ArrayList sortedStreamVideosList = ListHelper.getSortedStreamVideosList(playerService, ListHelper.getFilteredStreamList(videoStreams, new ListHelper$$ExternalSyntheticLambda21(serviceId, youtubeService.serviceId)), ListHelper.getFilteredStreamList(streamInfo.getVideoOnlyStreams(), new ListHelper$$ExternalSyntheticLambda21(streamInfo.getServiceId(), youtubeService.serviceId)), true);
                    List filteredAudioStreams = ListHelper.getFilteredAudioStreams(playerService, streamInfo.getAudioStreams());
                    if (sortedStreamVideosList.isEmpty()) {
                        defaultResolutionWithDefaultFormat = -1;
                    } else {
                        String str = videoPlaybackResolver.playbackQuality;
                        Player player2 = Player.this;
                        if (str == null) {
                            boolean videoPlayerSelected = player2.videoPlayerSelected();
                            PlayerService playerService2 = player2.context;
                            defaultResolutionWithDefaultFormat = videoPlayerSelected ? ListHelper.getDefaultResolutionWithDefaultFormat(playerService2, ListHelper.computeDefaultResolution(playerService2, R.string.default_resolution_key, R.string.default_resolution_value), sortedStreamVideosList) : ListHelper.getDefaultResolutionWithDefaultFormat(playerService2, ListHelper.computeDefaultResolution(playerService2, R.string.default_popup_resolution_key, R.string.default_popup_resolution_value), sortedStreamVideosList);
                        } else {
                            boolean videoPlayerSelected2 = player2.videoPlayerSelected();
                            PlayerService playerService3 = player2.context;
                            defaultResolutionWithDefaultFormat = videoPlayerSelected2 ? ListHelper.getDefaultResolutionWithDefaultFormat(playerService3, str, sortedStreamVideosList) : ListHelper.getDefaultResolutionWithDefaultFormat(playerService3, str, sortedStreamVideosList);
                        }
                    }
                    int audioFormatIndex = ListHelper.getAudioFormatIndex(playerService, filteredAudioStreams, videoPlaybackResolver.audioTrack);
                    MediaItemTag.Quality quality = new MediaItemTag.Quality(defaultResolutionWithDefaultFormat, sortedStreamVideosList);
                    MediaItemTag.AudioTrack audioTrack = new MediaItemTag.AudioTrack(audioFormatIndex, filteredAudioStreams);
                    StreamInfoTag streamInfoTag = new StreamInfoTag(streamInfo, quality, audioTrack, null);
                    VideoStream videoStream = (VideoStream) Optional.ofNullable(quality).map(new ListHelper$$ExternalSyntheticLambda0(2)).orElse(null);
                    AudioStream audioStream = (AudioStream) Optional.ofNullable(audioTrack).map(new Player$$ExternalSyntheticLambda28(0)).orElse(null);
                    if (videoStream != null) {
                        try {
                            arrayList.add(RecordTag.buildMediaSource(playerDataSource, videoStream, streamInfo, RecordTag.cacheKeyOf(streamInfo, videoStream), streamInfoTag));
                        } catch (PlaybackResolver$ResolverException e) {
                            Log.e("VideoPlaybackResolver", "Unable to create video source", e);
                        }
                    }
                    if (audioStream == null || !(videoStream == null || videoStream.isVideoOnly || videoPlaybackResolver.audioTrack != null)) {
                        videoPlaybackResolver.streamSourceType = sourceType;
                    } else {
                        try {
                            arrayList.add(RecordTag.buildMediaSource(playerDataSource, audioStream, streamInfo, RecordTag.cacheKeyOf(streamInfo, audioStream), streamInfoTag));
                            videoPlaybackResolver.streamSourceType = VideoPlaybackResolver.SourceType.VIDEO_WITH_SEPARATED_AUDIO;
                        } catch (PlaybackResolver$ResolverException e2) {
                            Log.e("VideoPlaybackResolver", "Unable to create audio source", e2);
                        }
                    }
                    if (!arrayList.isEmpty()) {
                        List subtitles = streamInfo.getSubtitles();
                        if (subtitles != null) {
                            for (SubtitlesStream subtitlesStream : ListHelper.getUrlAndNonTorrentStreams(subtitles)) {
                                MediaFormat format = subtitlesStream.getFormat();
                                if (format != null) {
                                    MediaItem.SubtitleConfiguration.Builder roleFlags = new MediaItem.SubtitleConfiguration.Builder(Uri.parse(subtitlesStream.getContent())).setMimeType(format.mimeType).setRoleFlags(subtitlesStream.isAutoGenerated() ? 1024 : 64);
                                    StringBuilder m = Owner.CC.m(subtitlesStream.getDisplayLanguageName());
                                    m.append(subtitlesStream.isAutoGenerated() ? " (" + playerService.getString(R.string.caption_auto_generated) + ")" : "");
                                    arrayList.add(new SingleSampleMediaSource.Factory(playerDataSource.cacheDataSourceFactory).createMediaSource(roleFlags.setLanguage(m.toString()).build(), C.TIME_UNSET));
                                }
                            }
                        }
                        mediaSource = arrayList.size() == 1 ? (MediaSource) arrayList.get(0) : new MergingMediaSource(true, (MediaSource[]) arrayList.toArray(new MediaSource[0]));
                    }
                    mediaSource = null;
                }
            }
        }
        Optional ofNullable = Optional.ofNullable(mediaSource);
        final PlayQueueItem playQueueItem = this.f$1;
        return (ManagedMediaSource) ofNullable.flatMap(new StructuralEvaluator$$ExternalSyntheticLambda2(streamInfo, playQueueItem, 1)).orElseGet(new Supplier() { // from class: org.schabi.newpipe.player.playback.MediaSourceManager$$ExternalSyntheticLambda8
            @Override // java.util.function.Supplier
            public final Object get() {
                StringBuilder sb = new StringBuilder("Unable to resolve source from stream info. URL: ");
                PlayQueueItem playQueueItem2 = PlayQueueItem.this;
                sb.append(playQueueItem2.getUrl());
                sb.append(", audio count: ");
                StreamInfo streamInfo2 = streamInfo;
                sb.append(streamInfo2.getAudioStreams().size());
                sb.append(", video count: ");
                sb.append(streamInfo2.getVideoOnlyStreams().size());
                sb.append(", ");
                sb.append(streamInfo2.getVideoStreams().size());
                return new FailedMediaSource(playQueueItem2, new FailedMediaSource.StreamInfoLoadException(sb.toString()), Long.MAX_VALUE);
            }
        });
    }
}
