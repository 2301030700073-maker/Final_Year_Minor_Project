package com.google.android.exoplayer2.ext.mediasession;

import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.MediaControllerCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ErrorMessageProvider;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class MediaSessionConnector {
    public static final long ALL_PLAYBACK_ACTIONS = 6554447;
    private static final int BASE_MEDIA_SESSION_FLAGS = 3;
    private static final long BASE_PLAYBACK_ACTIONS = 6554119;
    public static final long DEFAULT_PLAYBACK_ACTIONS = 2360143;
    private static final int EDITOR_MEDIA_SESSION_FLAGS = 7;
    public static final String EXTRAS_SPEED = "EXO_SPEED";
    private static final MediaMetadataCompat METADATA_EMPTY;
    private CaptionCallback captionCallback;
    private boolean clearMediaItemsOnStop;
    private final ArrayList<CommandReceiver> commandReceivers;
    private final ComponentListener componentListener;
    private Map<String, CustomActionProvider> customActionMap;
    private CustomActionProvider[] customActionProviders;
    private final ArrayList<CommandReceiver> customCommandReceivers;
    private Pair<Integer, CharSequence> customError;
    private Bundle customErrorExtras;
    private boolean dispatchUnsupportedActionsEnabled;
    private long enabledPlaybackActions;
    private ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
    private final Looper looper;
    private boolean mapIdleToStopped;
    private MediaButtonEventHandler mediaButtonEventHandler;
    private MediaMetadataProvider mediaMetadataProvider;
    public final MediaSessionCompat mediaSession;
    private boolean metadataDeduplicationEnabled;
    private PlaybackPreparer playbackPreparer;
    private Player player;
    private QueueEditor queueEditor;
    private QueueNavigator queueNavigator;
    private RatingCallback ratingCallback;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface CaptionCallback extends CommandReceiver {
        boolean hasCaptions(Player player);

        void onSetCaptioningEnabled(Player player, boolean z);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface CommandReceiver {
        boolean onCommand(Player player, String str, Bundle bundle, ResultReceiver resultReceiver);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class ComponentListener extends MediaSessionCompat.Callback implements Player.Listener {
        private int currentMediaItemIndex;
        private int currentWindowCount;

        private ComponentListener() {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onAddQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            if (MediaSessionConnector.this.player != null) {
                for (int i = 0; i < MediaSessionConnector.this.commandReceivers.size(); i++) {
                    if (((CommandReceiver) MediaSessionConnector.this.commandReceivers.get(i)).onCommand(MediaSessionConnector.this.player, str, bundle, resultReceiver)) {
                        return;
                    }
                }
                for (int i2 = 0; i2 < MediaSessionConnector.this.customCommandReceivers.size() && !((CommandReceiver) MediaSessionConnector.this.customCommandReceivers.get(i2)).onCommand(MediaSessionConnector.this.player, str, bundle, resultReceiver); i2++) {
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onCustomAction(String str, Bundle bundle) {
            if (MediaSessionConnector.this.player == null || !MediaSessionConnector.this.customActionMap.containsKey(str)) {
                return;
            }
            ((CustomActionProvider) MediaSessionConnector.this.customActionMap.get(str)).onCustomAction(MediaSessionConnector.this.player, str, bundle);
            MediaSessionConnector.this.invalidateMediaSessionPlaybackState();
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
        
            if (r7.currentMediaItemIndex == r2) goto L24;
         */
        @Override // com.google.android.exoplayer2.Player.Listener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onEvents(com.google.android.exoplayer2.Player r8, com.google.android.exoplayer2.Player.Events r9) {
            /*
                r7 = this;
                r0 = 11
                boolean r0 = r9.contains(r0)
                r1 = 1
                r2 = 0
                if (r0 == 0) goto L28
                int r0 = r7.currentMediaItemIndex
                int r3 = r8.getCurrentMediaItemIndex()
                if (r0 == r3) goto L25
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r0 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector$QueueNavigator r0 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.access$200(r0)
                if (r0 == 0) goto L23
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r0 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector$QueueNavigator r0 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.access$200(r0)
                r0.onCurrentMediaItemIndexChanged(r8)
            L23:
                r0 = r1
                goto L26
            L25:
                r0 = r2
            L26:
                r3 = r1
                goto L2a
            L28:
                r0 = r2
                r3 = r0
            L2a:
                boolean r2 = r9.contains(r2)
                if (r2 == 0) goto L5b
                com.google.android.exoplayer2.Timeline r0 = r8.getCurrentTimeline()
                int r0 = r0.getWindowCount()
                int r2 = r8.getCurrentMediaItemIndex()
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r4 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector$QueueNavigator r4 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.access$200(r4)
                if (r4 == 0) goto L4f
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r2 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector$QueueNavigator r2 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.access$200(r2)
                r2.onTimelineChanged(r8)
            L4d:
                r3 = r1
                goto L58
            L4f:
                int r4 = r7.currentWindowCount
                if (r4 != r0) goto L4d
                int r4 = r7.currentMediaItemIndex
                if (r4 == r2) goto L58
                goto L4d
            L58:
                r7.currentWindowCount = r0
                r0 = r1
            L5b:
                int r8 = r8.getCurrentMediaItemIndex()
                r7.currentMediaItemIndex = r8
                r8 = 8
                r2 = 12
                r4 = 4
                r5 = 5
                r6 = 7
                int[] r8 = new int[]{r4, r5, r6, r8, r2}
                boolean r8 = r9.containsAny(r8)
                if (r8 == 0) goto L73
                r3 = r1
            L73:
                r8 = 9
                int[] r8 = new int[]{r8}
                boolean r8 = r9.containsAny(r8)
                if (r8 == 0) goto L85
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r8 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                r8.invalidateMediaSessionQueue()
                goto L86
            L85:
                r1 = r3
            L86:
                if (r1 == 0) goto L8d
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r8 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                r8.invalidateMediaSessionPlaybackState()
            L8d:
                if (r0 == 0) goto L94
                com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector r7 = com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.this
                r7.invalidateMediaSessionMetadata()
            L94:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.ComponentListener.onEvents(com.google.android.exoplayer2.Player, com.google.android.exoplayer2.Player$Events):void");
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onFastForward() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(64L)) {
                MediaSessionConnector.this.player.seekForward();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return (MediaSessionConnector.this.canDispatchMediaButtonEvent() && MediaSessionConnector.this.mediaButtonEventHandler.onMediaButtonEvent(MediaSessionConnector.this.player, intent)) || super.onMediaButtonEvent(intent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPause() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(2L)) {
                MediaSessionConnector.this.player.pause();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlay() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(4L)) {
                int playbackState = MediaSessionConnector.this.player.getPlaybackState();
                MediaSessionConnector mediaSessionConnector = MediaSessionConnector.this;
                if (playbackState == 1) {
                    PlaybackPreparer playbackPreparer = mediaSessionConnector.playbackPreparer;
                    MediaSessionConnector mediaSessionConnector2 = MediaSessionConnector.this;
                    if (playbackPreparer != null) {
                        mediaSessionConnector2.playbackPreparer.onPrepare(true);
                    } else {
                        mediaSessionConnector2.player.prepare();
                    }
                } else if (mediaSessionConnector.player.getPlaybackState() == 4) {
                    MediaSessionConnector mediaSessionConnector3 = MediaSessionConnector.this;
                    mediaSessionConnector3.seekTo(mediaSessionConnector3.player, MediaSessionConnector.this.player.getCurrentMediaItemIndex(), C.TIME_UNSET);
                }
                ((Player) Assertions.checkNotNull(MediaSessionConnector.this.player)).play();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(1024L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromMediaId(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(2048L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromSearch(str, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(8192L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromUri(uri, true, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepare() {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(16384L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepare(false);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(32768L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromMediaId(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(65536L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromSearch(str, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchToPlaybackPreparer(131072L)) {
                MediaSessionConnector.this.playbackPreparer.onPrepareFromUri(uri, false, bundle);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onRemoveQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onRewind() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(8L)) {
                MediaSessionConnector.this.player.seekBack();
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSeekTo(long j) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(256L)) {
                MediaSessionConnector mediaSessionConnector = MediaSessionConnector.this;
                mediaSessionConnector.seekTo(mediaSessionConnector.player, MediaSessionConnector.this.player.getCurrentMediaItemIndex(), j);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetCaptioningEnabled(boolean z) {
            if (MediaSessionConnector.this.canDispatchSetCaptioningEnabled()) {
                MediaSessionConnector.this.captionCallback.onSetCaptioningEnabled(MediaSessionConnector.this.player, z);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetPlaybackSpeed(float f) {
            if (!MediaSessionConnector.this.canDispatchPlaybackAction(4194304L) || f <= 0.0f) {
                return;
            }
            MediaSessionConnector.this.player.setPlaybackParameters(MediaSessionConnector.this.player.getPlaybackParameters().withSpeed(f));
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat) {
            if (MediaSessionConnector.this.canDispatchSetRating()) {
                MediaSessionConnector.this.ratingCallback.onSetRating(MediaSessionConnector.this.player, ratingCompat);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRepeatMode(int i) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(262144L)) {
                int i2 = 1;
                if (i != 1) {
                    i2 = 2;
                    if (i != 2 && i != 3) {
                        i2 = 0;
                    }
                }
                MediaSessionConnector.this.player.setRepeatMode(i2);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetShuffleMode(int i) {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(2097152L)) {
                boolean z = true;
                if (i != 1 && i != 2) {
                    z = false;
                }
                MediaSessionConnector.this.player.setShuffleModeEnabled(z);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToNext() {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(32L)) {
                MediaSessionConnector.this.queueNavigator.onSkipToNext(MediaSessionConnector.this.player);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToPrevious() {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(16L)) {
                MediaSessionConnector.this.queueNavigator.onSkipToPrevious(MediaSessionConnector.this.player);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSkipToQueueItem(long j) {
            if (MediaSessionConnector.this.canDispatchToQueueNavigator(4096L)) {
                MediaSessionConnector.this.queueNavigator.onSkipToQueueItem(MediaSessionConnector.this.player, j);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onStop() {
            if (MediaSessionConnector.this.canDispatchPlaybackAction(1L)) {
                MediaSessionConnector.this.player.stop();
                if (MediaSessionConnector.this.clearMediaItemsOnStop) {
                    MediaSessionConnector.this.player.clearMediaItems();
                }
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onCues(List list) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPositionDiscontinuity(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onRenderedFirstFrame() {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onAudioAttributesChanged(AudioAttributes audioAttributes) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onAudioSessionIdChanged(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onAvailableCommandsChanged(Player.Commands commands) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onCues(CueGroup cueGroup) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onDeviceInfoChanged(DeviceInfo deviceInfo) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onIsLoadingChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onIsPlayingChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onLoadingChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onMaxSeekToPreviousPositionChanged(long j) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onMediaMetadataChanged(MediaMetadata mediaMetadata) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onMetadata(Metadata metadata) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlaybackParametersChanged(PlaybackParameters playbackParameters) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlaybackStateChanged(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlayerError(PlaybackException playbackException) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlayerErrorChanged(PlaybackException playbackException) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlaylistMetadataChanged(MediaMetadata mediaMetadata) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPositionDiscontinuity(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onRepeatModeChanged(int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onSeekBackIncrementChanged(long j) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onSeekForwardIncrementChanged(long j) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onSkipSilenceEnabledChanged(boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onTrackSelectionParametersChanged(TrackSelectionParameters trackSelectionParameters) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onTracksChanged(Tracks tracks) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onVideoSizeChanged(VideoSize videoSize) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onVolumeChanged(float f) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
            if (MediaSessionConnector.this.canDispatchQueueEdit()) {
                MediaSessionConnector.this.queueEditor.onAddQueueItem(MediaSessionConnector.this.player, mediaDescriptionCompat, i);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.Callback
        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
            if (MediaSessionConnector.this.canDispatchSetRating()) {
                MediaSessionConnector.this.ratingCallback.onSetRating(MediaSessionConnector.this.player, ratingCompat, bundle);
            }
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onMediaItemTransition(MediaItem mediaItem, int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlayWhenReadyChanged(boolean z, int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onPlayerStateChanged(boolean z, int i) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
        }

        @Override // com.google.android.exoplayer2.Player.Listener
        public final /* synthetic */ void onTimelineChanged(Timeline timeline, int i) {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface CustomActionProvider {
        PlaybackStateCompat.CustomAction getCustomAction(Player player);

        void onCustomAction(Player player, String str, Bundle bundle);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class DefaultMediaMetadataProvider implements MediaMetadataProvider {
        private final MediaControllerCompat mediaController;
        private final String metadataExtrasPrefix;

        public DefaultMediaMetadataProvider(MediaControllerCompat mediaControllerCompat, String str) {
            this.mediaController = mediaControllerCompat;
            this.metadataExtrasPrefix = str == null ? "" : str;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00ec  */
        @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaMetadataProvider
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.support.v4.media.MediaMetadataCompat getMetadata(com.google.android.exoplayer2.Player r29) {
            /*
                Method dump skipped, instructions count: 682
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.DefaultMediaMetadataProvider.getMetadata(com.google.android.exoplayer2.Player):android.support.v4.media.MediaMetadataCompat");
        }

        @Override // com.google.android.exoplayer2.ext.mediasession.MediaSessionConnector.MediaMetadataProvider
        public final /* synthetic */ boolean sameAs(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2) {
            return RecordTag.$default$sameAs(mediaMetadataCompat, mediaMetadataCompat2);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface MediaButtonEventHandler {
        boolean onMediaButtonEvent(Player player, Intent intent);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface MediaMetadataProvider {
        MediaMetadataCompat getMetadata(Player player);

        boolean sameAs(MediaMetadataCompat mediaMetadataCompat, MediaMetadataCompat mediaMetadataCompat2);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface PlaybackActions {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface PlaybackPreparer extends CommandReceiver {
        public static final long ACTIONS = 257024;

        long getSupportedPrepareActions();

        void onPrepare(boolean z);

        void onPrepareFromMediaId(String str, boolean z, Bundle bundle);

        void onPrepareFromSearch(String str, boolean z, Bundle bundle);

        void onPrepareFromUri(Uri uri, boolean z, Bundle bundle);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface QueueEditor extends CommandReceiver {
        void onAddQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat);

        void onAddQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat, int i);

        void onRemoveQueueItem(Player player, MediaDescriptionCompat mediaDescriptionCompat);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface QueueNavigator extends CommandReceiver {
        public static final long ACTIONS = 4144;

        long getActiveQueueItemId(Player player);

        long getSupportedQueueNavigatorActions(Player player);

        void onCurrentMediaItemIndexChanged(Player player);

        void onSkipToNext(Player player);

        void onSkipToPrevious(Player player);

        void onSkipToQueueItem(Player player, long j);

        void onTimelineChanged(Player player);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface RatingCallback extends CommandReceiver {
        void onSetRating(Player player, RatingCompat ratingCompat);

        void onSetRating(Player player, RatingCompat ratingCompat, Bundle bundle);
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.mediasession");
        METADATA_EMPTY = new MediaMetadataCompat(new Bundle());
    }

    public MediaSessionConnector(MediaSessionCompat mediaSessionCompat) {
        this.mediaSession = mediaSessionCompat;
        Looper currentOrMainLooper = Util.getCurrentOrMainLooper();
        this.looper = currentOrMainLooper;
        ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        this.commandReceivers = new ArrayList<>();
        this.customCommandReceivers = new ArrayList<>();
        this.customActionProviders = new CustomActionProvider[0];
        this.customActionMap = Collections.EMPTY_MAP;
        this.mediaMetadataProvider = new DefaultMediaMetadataProvider(mediaSessionCompat.mController, null);
        this.enabledPlaybackActions = DEFAULT_PLAYBACK_ACTIONS;
        MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = mediaSessionCompat.mImpl;
        mediaSessionImplApi22.mSessionFwk.setFlags(3);
        mediaSessionImplApi22.setCallback(componentListener, new Handler(currentOrMainLooper));
        this.clearMediaItemsOnStop = true;
    }

    private long buildPlaybackActions(Player player) {
        boolean z;
        boolean isCommandAvailable = player.isCommandAvailable(5);
        boolean isCommandAvailable2 = player.isCommandAvailable(11);
        boolean isCommandAvailable3 = player.isCommandAvailable(12);
        boolean z2 = false;
        if (player.getCurrentTimeline().isEmpty() || player.isPlayingAd()) {
            z = false;
        } else {
            boolean z3 = this.ratingCallback != null;
            CaptionCallback captionCallback = this.captionCallback;
            if (captionCallback != null && captionCallback.hasCaptions(player)) {
                z2 = true;
            }
            boolean z4 = z2;
            z2 = z3;
            z = z4;
        }
        long j = isCommandAvailable ? 6554375L : BASE_PLAYBACK_ACTIONS;
        if (isCommandAvailable3) {
            j |= 64;
        }
        if (isCommandAvailable2) {
            j |= 8;
        }
        long j2 = this.enabledPlaybackActions & j;
        QueueNavigator queueNavigator = this.queueNavigator;
        if (queueNavigator != null) {
            j2 |= queueNavigator.getSupportedQueueNavigatorActions(player) & QueueNavigator.ACTIONS;
        }
        if (z2) {
            j2 |= 128;
        }
        return z ? 1048576 | j2 : j2;
    }

    private long buildPrepareActions() {
        PlaybackPreparer playbackPreparer = this.playbackPreparer;
        if (playbackPreparer == null) {
            return 0L;
        }
        return PlaybackPreparer.ACTIONS & playbackPreparer.getSupportedPrepareActions();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchMediaButtonEvent() {
        return (this.player == null || this.mediaButtonEventHandler == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchPlaybackAction(long j) {
        if (this.player != null) {
            return (j & this.enabledPlaybackActions) != 0 || this.dispatchUnsupportedActionsEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchQueueEdit() {
        return (this.player == null || this.queueEditor == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchSetCaptioningEnabled() {
        return (this.player == null || this.captionCallback == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchSetRating() {
        return (this.player == null || this.ratingCallback == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchToPlaybackPreparer(long j) {
        PlaybackPreparer playbackPreparer = this.playbackPreparer;
        if (playbackPreparer != null) {
            return (j & playbackPreparer.getSupportedPrepareActions()) != 0 || this.dispatchUnsupportedActionsEnabled;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean canDispatchToQueueNavigator(long j) {
        QueueNavigator queueNavigator;
        Player player = this.player;
        if (player == null || (queueNavigator = this.queueNavigator) == null) {
            return false;
        }
        return (j & queueNavigator.getSupportedQueueNavigatorActions(player)) != 0 || this.dispatchUnsupportedActionsEnabled;
    }

    private int getMediaSessionPlaybackState(int i, boolean z) {
        if (i == 2) {
            return z ? 6 : 2;
        }
        if (i == 3) {
            return z ? 3 : 2;
        }
        if (i != 4) {
            return this.mapIdleToStopped ? 1 : 0;
        }
        return 1;
    }

    private void registerCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver == null || this.commandReceivers.contains(commandReceiver)) {
            return;
        }
        this.commandReceivers.add(commandReceiver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekTo(Player player, int i, long j) {
        player.seekTo(i, j);
    }

    private void unregisterCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver != null) {
            this.commandReceivers.remove(commandReceiver);
        }
    }

    public final void invalidateMediaSessionMetadata() {
        MediaMetadataCompat mediaMetadataCompat;
        Player player;
        MediaMetadataProvider mediaMetadataProvider = this.mediaMetadataProvider;
        MediaMetadataCompat metadata = (mediaMetadataProvider == null || (player = this.player) == null) ? METADATA_EMPTY : mediaMetadataProvider.getMetadata(player);
        MediaMetadataProvider mediaMetadataProvider2 = this.mediaMetadataProvider;
        android.media.MediaMetadata mediaMetadata = null;
        if (this.metadataDeduplicationEnabled && mediaMetadataProvider2 != null) {
            android.media.MediaMetadata metadata2 = this.mediaSession.mController.mImpl.mControllerFwk.getMetadata();
            if (metadata2 != null) {
                ArrayMap arrayMap = MediaMetadataCompat.METADATA_KEYS_TYPE;
                Parcel obtain = Parcel.obtain();
                metadata2.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                mediaMetadataCompat = MediaMetadataCompat.CREATOR.createFromParcel(obtain);
                obtain.recycle();
                mediaMetadataCompat.mMetadataFwk = metadata2;
            } else {
                mediaMetadataCompat = null;
            }
            if (mediaMetadataCompat != null && mediaMetadataProvider2.sameAs(mediaMetadataCompat, metadata)) {
                return;
            }
        }
        MediaSessionCompat.MediaSessionImplApi22 mediaSessionImplApi22 = this.mediaSession.mImpl;
        mediaSessionImplApi22.mMetadata = metadata;
        MediaSession mediaSession = mediaSessionImplApi22.mSessionFwk;
        if (metadata != null) {
            Bundle bundle = metadata.mBundle;
            if (metadata.mMetadataFwk == null) {
                MediaMetadata.Builder builder = new MediaMetadata.Builder();
                for (String str : bundle.keySet()) {
                    Integer num = (Integer) MediaMetadataCompat.METADATA_KEYS_TYPE.get(str);
                    if (num == null) {
                        num = -1;
                    }
                    int intValue = num.intValue();
                    if (intValue == 0) {
                        builder.putLong(str, bundle.getLong(str, 0L));
                    } else if (intValue == 1) {
                        builder.putText(str, bundle.getCharSequence(str));
                    } else if (intValue == 2) {
                        builder.putBitmap(str, (Bitmap) bundle.getParcelable(str));
                    } else if (intValue != 3) {
                        Object obj = bundle.get(str);
                        if (obj == null || (obj instanceof CharSequence)) {
                            builder.putText(str, (CharSequence) obj);
                        } else if (obj instanceof Long) {
                            builder.putLong(str, ((Long) obj).longValue());
                        } else if (obj instanceof Bitmap) {
                            builder.putBitmap(str, (Bitmap) obj);
                        } else if (obj instanceof Rating) {
                            builder.putRating(str, (Rating) obj);
                        }
                    } else {
                        builder.putRating(str, (Rating) bundle.getParcelable(str));
                    }
                }
                metadata.mMetadataFwk = builder.build();
            }
            mediaMetadata = metadata.mMetadataFwk;
        }
        mediaSession.setMetadata(mediaMetadata);
    }

    public final void invalidateMediaSessionPlaybackState() {
        ErrorMessageProvider<? super PlaybackException> errorMessageProvider;
        ArrayList arrayList = new ArrayList();
        Player player = this.player;
        CharSequence charSequence = null;
        int i = 0;
        if (player == null) {
            long buildPrepareActions = buildPrepareActions();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.mediaSession.setRepeatMode(0);
            this.mediaSession.setShuffleMode(0);
            this.mediaSession.setPlaybackState(new PlaybackStateCompat(0, 0L, 0L, 0.0f, buildPrepareActions, 0, null, elapsedRealtime, arrayList, -1L, null));
            return;
        }
        HashMap hashMap = new HashMap();
        for (CustomActionProvider customActionProvider : this.customActionProviders) {
            PlaybackStateCompat.CustomAction customAction = customActionProvider.getCustomAction(player);
            if (customAction != null) {
                hashMap.put(customAction.mAction, customActionProvider);
                arrayList.add(customAction);
            }
        }
        this.customActionMap = DesugarCollections.unmodifiableMap(hashMap);
        Bundle bundle = new Bundle();
        PlaybackException playerError = player.getPlayerError();
        int mediaSessionPlaybackState = (playerError == null && this.customError == null) ? getMediaSessionPlaybackState(player.getPlaybackState(), player.getPlayWhenReady()) : 7;
        Pair<Integer, CharSequence> pair = this.customError;
        if (pair != null) {
            i = ((Integer) pair.first).intValue();
            charSequence = (CharSequence) this.customError.second;
            Bundle bundle2 = this.customErrorExtras;
            if (bundle2 != null) {
                bundle.putAll(bundle2);
            }
        } else if (playerError != null && (errorMessageProvider = this.errorMessageProvider) != null) {
            Pair<Integer, String> errorMessage = errorMessageProvider.getErrorMessage(playerError);
            i = ((Integer) errorMessage.first).intValue();
            charSequence = (CharSequence) errorMessage.second;
        }
        QueueNavigator queueNavigator = this.queueNavigator;
        long activeQueueItemId = queueNavigator != null ? queueNavigator.getActiveQueueItemId(player) : -1L;
        float f = player.getPlaybackParameters().speed;
        bundle.putFloat(EXTRAS_SPEED, f);
        if (!player.isPlaying()) {
            f = 0.0f;
        }
        float f2 = f;
        MediaItem currentMediaItem = player.getCurrentMediaItem();
        if (currentMediaItem != null && !"".equals(currentMediaItem.mediaId)) {
            bundle.putString("androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID", currentMediaItem.mediaId);
        }
        long buildPrepareActions2 = buildPrepareActions() | buildPlaybackActions(player);
        int i2 = mediaSessionPlaybackState;
        long bufferedPosition = player.getBufferedPosition();
        long currentPosition = player.getCurrentPosition();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        int repeatMode = player.getRepeatMode();
        MediaSessionCompat mediaSessionCompat = this.mediaSession;
        int i3 = 1;
        if (repeatMode != 1) {
            i3 = 2;
            if (repeatMode != 2) {
                i3 = 0;
            }
        }
        mediaSessionCompat.setRepeatMode(i3);
        this.mediaSession.setShuffleMode(player.getShuffleModeEnabled() ? 1 : 0);
        this.mediaSession.setPlaybackState(new PlaybackStateCompat(i2, currentPosition, bufferedPosition, f2, buildPrepareActions2, i, charSequence, elapsedRealtime2, arrayList, activeQueueItemId, bundle));
    }

    public final void invalidateMediaSessionQueue() {
        Player player;
        QueueNavigator queueNavigator = this.queueNavigator;
        if (queueNavigator == null || (player = this.player) == null) {
            return;
        }
        queueNavigator.onTimelineChanged(player);
    }

    public void registerCustomCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver == null || this.customCommandReceivers.contains(commandReceiver)) {
            return;
        }
        this.customCommandReceivers.add(commandReceiver);
    }

    public void setCaptionCallback(CaptionCallback captionCallback) {
        CaptionCallback captionCallback2 = this.captionCallback;
        if (captionCallback2 != captionCallback) {
            unregisterCommandReceiver(captionCallback2);
            this.captionCallback = captionCallback;
            registerCommandReceiver(captionCallback);
        }
    }

    public void setClearMediaItemsOnStop(boolean z) {
        this.clearMediaItemsOnStop = z;
    }

    public void setCustomActionProviders(CustomActionProvider... customActionProviderArr) {
        if (customActionProviderArr == null) {
            customActionProviderArr = new CustomActionProvider[0];
        }
        this.customActionProviders = customActionProviderArr;
        invalidateMediaSessionPlaybackState();
    }

    public void setCustomErrorMessage(CharSequence charSequence, int i, Bundle bundle) {
        this.customError = charSequence == null ? null : new Pair<>(Integer.valueOf(i), charSequence);
        if (charSequence == null) {
            bundle = null;
        }
        this.customErrorExtras = bundle;
        invalidateMediaSessionPlaybackState();
    }

    public void setDispatchUnsupportedActionsEnabled(boolean z) {
        this.dispatchUnsupportedActionsEnabled = z;
    }

    public void setEnabledPlaybackActions(long j) {
        long j2 = j & ALL_PLAYBACK_ACTIONS;
        if (this.enabledPlaybackActions != j2) {
            this.enabledPlaybackActions = j2;
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setErrorMessageProvider(ErrorMessageProvider<? super PlaybackException> errorMessageProvider) {
        if (this.errorMessageProvider != errorMessageProvider) {
            this.errorMessageProvider = errorMessageProvider;
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setMapStateIdleToSessionStateStopped(boolean z) {
        this.mapIdleToStopped = z;
    }

    public void setMediaButtonEventHandler(MediaButtonEventHandler mediaButtonEventHandler) {
        this.mediaButtonEventHandler = mediaButtonEventHandler;
    }

    public void setMediaMetadataProvider(MediaMetadataProvider mediaMetadataProvider) {
        if (this.mediaMetadataProvider != mediaMetadataProvider) {
            this.mediaMetadataProvider = mediaMetadataProvider;
            invalidateMediaSessionMetadata();
        }
    }

    public void setMetadataDeduplicationEnabled(boolean z) {
        this.metadataDeduplicationEnabled = z;
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        PlaybackPreparer playbackPreparer2 = this.playbackPreparer;
        if (playbackPreparer2 != playbackPreparer) {
            unregisterCommandReceiver(playbackPreparer2);
            this.playbackPreparer = playbackPreparer;
            registerCommandReceiver(playbackPreparer);
            invalidateMediaSessionPlaybackState();
        }
    }

    public void setPlayer(Player player) {
        Assertions.checkArgument(player == null || player.getApplicationLooper() == this.looper);
        Player player2 = this.player;
        if (player2 != null) {
            player2.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        invalidateMediaSessionPlaybackState();
        invalidateMediaSessionMetadata();
    }

    public void setQueueEditor(QueueEditor queueEditor) {
        QueueEditor queueEditor2 = this.queueEditor;
        if (queueEditor2 != queueEditor) {
            unregisterCommandReceiver(queueEditor2);
            this.queueEditor = queueEditor;
            registerCommandReceiver(queueEditor);
            this.mediaSession.mImpl.mSessionFwk.setFlags((queueEditor == null ? 3 : 7) | 3);
        }
    }

    public void setQueueNavigator(QueueNavigator queueNavigator) {
        QueueNavigator queueNavigator2 = this.queueNavigator;
        if (queueNavigator2 != queueNavigator) {
            unregisterCommandReceiver(queueNavigator2);
            this.queueNavigator = queueNavigator;
            registerCommandReceiver(queueNavigator);
        }
    }

    public void setRatingCallback(RatingCallback ratingCallback) {
        RatingCallback ratingCallback2 = this.ratingCallback;
        if (ratingCallback2 != ratingCallback) {
            unregisterCommandReceiver(ratingCallback2);
            this.ratingCallback = ratingCallback;
            registerCommandReceiver(ratingCallback);
        }
    }

    public void unregisterCustomCommandReceiver(CommandReceiver commandReceiver) {
        if (commandReceiver != null) {
            this.customCommandReceivers.remove(commandReceiver);
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence, int i) {
        setCustomErrorMessage(charSequence, i, null);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        setCustomErrorMessage(charSequence, charSequence == null ? 0 : 1);
    }
}
