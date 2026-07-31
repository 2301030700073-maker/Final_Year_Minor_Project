package com.google.android.exoplayer2;

import android.graphics.Rect;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.SimpleBasePlayer;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.ads.AdPlaybackState;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Clock;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.ListenerSet;
import com.google.android.exoplayer2.util.Size;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.RegularImmutableList;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.Executor;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public abstract class SimpleBasePlayer extends BasePlayer {
    private static final long POSITION_DISCONTINUITY_THRESHOLD_MS = 1000;
    private final HandlerWrapper applicationHandler;
    private final Looper applicationLooper;
    private final ListenerSet<Player.Listener> listeners;
    private final HashSet<ListenableFuture> pendingOperations;
    private final Timeline.Period period;
    private boolean released;
    private State state;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class PlaceholderUid {
        private PlaceholderUid() {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class PlaylistTimeline extends Timeline {
        private final int[] firstPeriodIndexByWindowIndex;
        private final HashMap<Object, Integer> periodIndexByUid;
        private final ImmutableList playlist;
        private final int[] windowIndexByPeriodIndex;

        public PlaylistTimeline(ImmutableList immutableList) {
            int size = immutableList.size();
            this.playlist = immutableList;
            this.firstPeriodIndexByWindowIndex = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                MediaItemData mediaItemData = (MediaItemData) immutableList.get(i2);
                this.firstPeriodIndexByWindowIndex[i2] = i;
                i += getPeriodCountInMediaItem(mediaItemData);
            }
            this.windowIndexByPeriodIndex = new int[i];
            this.periodIndexByUid = new HashMap<>();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                MediaItemData mediaItemData2 = (MediaItemData) immutableList.get(i4);
                for (int i5 = 0; i5 < getPeriodCountInMediaItem(mediaItemData2); i5++) {
                    this.periodIndexByUid.put(mediaItemData2.getPeriodUid(i5), Integer.valueOf(i3));
                    this.windowIndexByPeriodIndex[i3] = i4;
                    i3++;
                }
            }
        }

        private static int getPeriodCountInMediaItem(MediaItemData mediaItemData) {
            if (mediaItemData.periods.isEmpty()) {
                return 1;
            }
            return mediaItemData.periods.size();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getFirstWindowIndex(boolean z) {
            return super.getFirstWindowIndex(z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            Integer num = this.periodIndexByUid.get(obj);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getLastWindowIndex(boolean z) {
            return super.getLastWindowIndex(z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            return super.getNextWindowIndex(i, i2, z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            int i2 = this.windowIndexByPeriodIndex[i];
            return ((MediaItemData) this.playlist.get(i2)).getPeriod(i2, i - this.firstPeriodIndexByWindowIndex[i2], period);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriodByUid(Object obj, Timeline.Period period) {
            return getPeriod(((Integer) Assertions.checkNotNull(this.periodIndexByUid.get(obj))).intValue(), period, true);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.windowIndexByPeriodIndex.length;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            return super.getPreviousWindowIndex(i, i2, z);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            int i2 = this.windowIndexByPeriodIndex[i];
            return ((MediaItemData) this.playlist.get(i2)).getPeriodUid(i - this.firstPeriodIndexByWindowIndex[i2]);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            return ((MediaItemData) this.playlist.get(i)).getWindow(this.firstPeriodIndexByWindowIndex[i], window);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.playlist.size();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface PositionSupplier {
        public static final PositionSupplier ZERO;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: com.google.android.exoplayer2.SimpleBasePlayer$PositionSupplier$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static final /* synthetic */ int $r8$clinit = 0;

            static {
                PositionSupplier positionSupplier = PositionSupplier.ZERO;
            }
        }

        static {
            int i = CC.$r8$clinit;
            ZERO = new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(0L);
        }

        long get();
    }

    public SimpleBasePlayer(Looper looper, Clock clock) {
        this.applicationLooper = looper;
        this.applicationHandler = clock.createHandler(looper, null);
        this.pendingOperations = new HashSet<>();
        this.period = new Timeline.Period();
        this.listeners = new ListenerSet<>(looper, clock, new ExoPlayerImpl$$ExternalSyntheticLambda15(this, 10));
    }

    private static State buildStateForNewPosition(State.Builder builder, State state, long j, List<MediaItemData> list, int i, long j2, boolean z) {
        long positionOrDefaultInMediaItem = getPositionOrDefaultInMediaItem(j, state);
        boolean z2 = false;
        if (!list.isEmpty() && (i == -1 || i >= list.size())) {
            j2 = -9223372036854775807L;
            i = 0;
        }
        if (!list.isEmpty() && j2 == C.TIME_UNSET) {
            j2 = Util.usToMs(list.get(i).defaultPositionUs);
        }
        boolean z3 = state.playlist.isEmpty() || list.isEmpty();
        if (!z3 && !((MediaItemData) state.playlist.get(getCurrentMediaItemIndexInternal(state))).uid.equals(list.get(i).uid)) {
            z2 = true;
        }
        if (z3 || z2 || j2 < positionOrDefaultInMediaItem) {
            State.Builder contentPositionMs = builder.setCurrentMediaItemIndex(i).setCurrentAd(-1, -1).setContentPositionMs(j2);
            int i2 = PositionSupplier.CC.$r8$clinit;
            contentPositionMs.setContentBufferedPositionMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(j2)).setTotalBufferedDurationMs(PositionSupplier.ZERO);
        } else if (j2 == positionOrDefaultInMediaItem) {
            builder.setCurrentMediaItemIndex(i);
            if (state.currentAdGroupIndex == -1 || !z) {
                State.Builder currentAd = builder.setCurrentAd(-1, -1);
                long contentBufferedPositionMsInternal = getContentBufferedPositionMsInternal(state) - positionOrDefaultInMediaItem;
                int i3 = PositionSupplier.CC.$r8$clinit;
                currentAd.setTotalBufferedDurationMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(contentBufferedPositionMsInternal));
            } else {
                long j3 = state.adBufferedPositionMsSupplier.get() - state.adPositionMsSupplier.get();
                int i4 = PositionSupplier.CC.$r8$clinit;
                builder.setTotalBufferedDurationMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(j3));
            }
        } else {
            long max = Math.max(getContentBufferedPositionMsInternal(state), j2);
            long max2 = Math.max(0L, state.totalBufferedDurationMsSupplier.get() - (j2 - positionOrDefaultInMediaItem));
            State.Builder contentPositionMs2 = builder.setCurrentMediaItemIndex(i).setCurrentAd(-1, -1).setContentPositionMs(j2);
            int i5 = PositionSupplier.CC.$r8$clinit;
            contentPositionMs2.setContentBufferedPositionMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(max)).setTotalBufferedDurationMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(max2));
        }
        return builder.build();
    }

    private void clearVideoOutput(Object obj) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            updateStateForPendingOperation(handleClearVideoOutput(obj), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 8));
        }
    }

    private static long getContentBufferedPositionMsInternal(State state) {
        return getPositionOrDefaultInMediaItem(state.contentBufferedPositionMsSupplier.get(), state);
    }

    private static long getContentPositionMsInternal(State state) {
        return getPositionOrDefaultInMediaItem(state.contentPositionMsSupplier.get(), state);
    }

    private static int getCurrentMediaItemIndexInternal(State state) {
        int i = state.currentMediaItemIndex;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    private static int getCurrentPeriodIndexInternal(State state, Timeline.Window window, Timeline.Period period) {
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        return state.timeline.isEmpty() ? currentMediaItemIndexInternal : getPeriodIndexFromWindowPosition(state.timeline, currentMediaItemIndexInternal, getContentPositionMsInternal(state), window, period);
    }

    private static long getCurrentPeriodOrAdPositionMs(State state, Object obj, Timeline.Period period) {
        return state.currentAdGroupIndex != -1 ? state.adPositionMsSupplier.get() : getContentPositionMsInternal(state) - state.timeline.getPeriodByUid(obj, period).getPositionInWindowMs();
    }

    private static Tracks getCurrentTracksInternal(State state) {
        return state.playlist.isEmpty() ? Tracks.EMPTY : ((MediaItemData) state.playlist.get(getCurrentMediaItemIndexInternal(state))).tracks;
    }

    private static int getMediaItemIndexInNewPlaylist(List<MediaItemData> list, Timeline timeline, int i, Timeline.Period period) {
        if (list.isEmpty()) {
            if (i < timeline.getWindowCount()) {
                return i;
            }
            return -1;
        }
        Object periodUid = list.get(i).getPeriodUid(0);
        if (timeline.getIndexOfPeriod(periodUid) == -1) {
            return -1;
        }
        return timeline.getPeriodByUid(periodUid, period).windowIndex;
    }

    private static int getMediaItemTransitionReason(State state, State state2, int i, boolean z, Timeline.Window window) {
        Timeline timeline = state.timeline;
        Timeline timeline2 = state2.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return -1;
        }
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return 3;
        }
        Object obj = state.timeline.getWindow(getCurrentMediaItemIndexInternal(state), window).uid;
        Object obj2 = state2.timeline.getWindow(getCurrentMediaItemIndexInternal(state2), window).uid;
        if ((obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (!obj.equals(obj2)) {
            if (i == 0) {
                return 1;
            }
            return i == 1 ? 2 : 3;
        }
        if (i != 0 || getContentPositionMsInternal(state) <= getContentPositionMsInternal(state2)) {
            return (i == 1 && z) ? 2 : -1;
        }
        return 0;
    }

    private static MediaMetadata getMediaMetadataInternal(State state) {
        return state.playlist.isEmpty() ? MediaMetadata.EMPTY : ((MediaItemData) state.playlist.get(getCurrentMediaItemIndexInternal(state))).combinedMediaMetadata;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getPeriodIndexFromWindowPosition(Timeline timeline, int i, long j, Timeline.Window window, Timeline.Period period) {
        return timeline.getIndexOfPeriod(timeline.getPeriodPositionUs(window, period, i, Util.msToUs(j)).first);
    }

    private static long getPeriodOrAdDurationMs(State state, Object obj, Timeline.Period period) {
        state.timeline.getPeriodByUid(obj, period);
        int i = state.currentAdGroupIndex;
        return Util.usToMs(i == -1 ? period.durationUs : period.getAdDurationUs(i, state.currentAdIndexInAdGroup));
    }

    private static int getPositionDiscontinuityReason(State state, State state2, boolean z, Timeline.Window window, Timeline.Period period) {
        if (state2.hasPositionDiscontinuity) {
            return state2.positionDiscontinuityReason;
        }
        if (z) {
            return 1;
        }
        if (state.playlist.isEmpty()) {
            return -1;
        }
        if (state2.playlist.isEmpty()) {
            return 4;
        }
        Object uidOfPeriod = state.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state, window, period));
        Object uidOfPeriod2 = state2.timeline.getUidOfPeriod(getCurrentPeriodIndexInternal(state2, window, period));
        if ((uidOfPeriod instanceof PlaceholderUid) && !(uidOfPeriod2 instanceof PlaceholderUid)) {
            return -1;
        }
        if (uidOfPeriod2.equals(uidOfPeriod) && state.currentAdGroupIndex == state2.currentAdGroupIndex && state.currentAdIndexInAdGroup == state2.currentAdIndexInAdGroup) {
            long currentPeriodOrAdPositionMs = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period);
            if (Math.abs(currentPeriodOrAdPositionMs - getCurrentPeriodOrAdPositionMs(state2, uidOfPeriod2, period)) < 1000) {
                return -1;
            }
            long periodOrAdDurationMs = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
            return (periodOrAdDurationMs == C.TIME_UNSET || currentPeriodOrAdPositionMs < periodOrAdDurationMs) ? 5 : 0;
        }
        if (state2.timeline.getIndexOfPeriod(uidOfPeriod) == -1) {
            return 4;
        }
        long currentPeriodOrAdPositionMs2 = getCurrentPeriodOrAdPositionMs(state, uidOfPeriod, period);
        long periodOrAdDurationMs2 = getPeriodOrAdDurationMs(state, uidOfPeriod, period);
        return (periodOrAdDurationMs2 == C.TIME_UNSET || currentPeriodOrAdPositionMs2 < periodOrAdDurationMs2) ? 3 : 0;
    }

    private static Player.PositionInfo getPositionInfo(State state, boolean z, Timeline.Window window, Timeline.Period period) {
        MediaItem mediaItem;
        Object obj;
        int i;
        int i2;
        Object obj2;
        long j;
        long j2;
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        if (state.timeline.isEmpty()) {
            mediaItem = null;
            obj = null;
            i = -1;
            i2 = -1;
            obj2 = null;
        } else {
            int currentPeriodIndexInternal = getCurrentPeriodIndexInternal(state, window, period);
            Object obj3 = state.timeline.getPeriod(currentPeriodIndexInternal, period, true).uid;
            Object obj4 = state.timeline.getWindow(currentMediaItemIndexInternal, window).uid;
            mediaItem = window.mediaItem;
            i = -1;
            obj2 = obj4;
            obj = obj3;
            i2 = currentPeriodIndexInternal;
        }
        if (z) {
            j2 = state.discontinuityPositionMs;
            j = state.currentAdGroupIndex == i ? j2 : getContentPositionMsInternal(state);
        } else {
            long contentPositionMsInternal = getContentPositionMsInternal(state);
            j = contentPositionMsInternal;
            j2 = state.currentAdGroupIndex != i ? state.adPositionMsSupplier.get() : contentPositionMsInternal;
        }
        return new Player.PositionInfo(obj2, currentMediaItemIndexInternal, mediaItem, obj, i2, j2, j, state.currentAdGroupIndex, state.currentAdIndexInAdGroup);
    }

    private static long getPositionOrDefaultInMediaItem(long j, State state) {
        if (j != C.TIME_UNSET) {
            return j;
        }
        if (state.playlist.isEmpty()) {
            return 0L;
        }
        return Util.usToMs(((MediaItemData) state.playlist.get(getCurrentMediaItemIndexInternal(state))).defaultPositionUs);
    }

    private static State getStateWithNewPlaylist(State state, List<MediaItemData> list, Timeline.Period period) {
        State.Builder buildUpon = state.buildUpon();
        buildUpon.setPlaylist(list);
        Timeline timeline = buildUpon.timeline;
        long j = state.contentPositionMsSupplier.get();
        int currentMediaItemIndexInternal = getCurrentMediaItemIndexInternal(state);
        int mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(state.playlist, timeline, currentMediaItemIndexInternal, period);
        long j2 = mediaItemIndexInNewPlaylist == -1 ? C.TIME_UNSET : j;
        for (int i = currentMediaItemIndexInternal + 1; mediaItemIndexInNewPlaylist == -1 && i < state.playlist.size(); i++) {
            mediaItemIndexInNewPlaylist = getMediaItemIndexInNewPlaylist(state.playlist, timeline, i, period);
        }
        if (state.playbackState != 1 && mediaItemIndexInNewPlaylist == -1) {
            buildUpon.setPlaybackState(4).setIsLoading(false);
        }
        return buildStateForNewPosition(buildUpon, state, j, list, mediaItemIndexInNewPlaylist, j2, true);
    }

    private static State getStateWithNewPlaylistAndPosition(State state, List<MediaItemData> list, int i, long j) {
        State.Builder buildUpon = state.buildUpon();
        buildUpon.setPlaylist(list);
        if (state.playbackState != 1) {
            if (list.isEmpty() || (i != -1 && i >= list.size())) {
                buildUpon.setPlaybackState(4).setIsLoading(false);
            } else {
                buildUpon.setPlaybackState(2);
            }
        }
        return buildStateForNewPosition(buildUpon, state, state.contentPositionMsSupplier.get(), list, i, j, false);
    }

    private static Size getSurfaceHolderSize(SurfaceHolder surfaceHolder) {
        if (!surfaceHolder.getSurface().isValid()) {
            return Size.ZERO;
        }
        Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
        return new Size(surfaceFrame.width(), surfaceFrame.height());
    }

    private static int getTimelineChangeReason(List<MediaItemData> list, List<MediaItemData> list2) {
        if (list.size() != list2.size()) {
            return 0;
        }
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                return 1;
            }
            Object obj = list.get(i).uid;
            Object obj2 = list2.get(i).uid;
            boolean z = (obj instanceof PlaceholderUid) && !(obj2 instanceof PlaceholderUid);
            if (!obj.equals(obj2) && !z) {
                return 0;
            }
            i++;
        }
    }

    private static boolean isPlaying(State state) {
        return state.playWhenReady && state.playbackState == 3 && state.playbackSuppressionReason == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$addMediaItems$3(State state, List list, int i) {
        ArrayList arrayList = new ArrayList(state.playlist);
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(i2 + i, getPlaceholderMediaItemData((MediaItem) list.get(i2)));
        }
        return !state.playlist.isEmpty() ? getStateWithNewPlaylist(state, arrayList, this.period) : getStateWithNewPlaylistAndPosition(state, arrayList, state.currentMediaItemIndex, state.contentPositionMsSupplier.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$clearVideoOutput$21(State state) {
        return state.buildUpon().setSurfaceSize(Size.ZERO).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$decreaseDeviceVolume$26(State state) {
        return state.buildUpon().setDeviceVolume(Math.max(0, state.deviceVolume - 1)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$decreaseDeviceVolume$27(State state) {
        return state.buildUpon().setDeviceVolume(Math.max(0, state.deviceVolume - 1)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$increaseDeviceVolume$24(State state) {
        return state.buildUpon().setDeviceVolume(state.deviceVolume + 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$increaseDeviceVolume$25(State state) {
        return state.buildUpon().setDeviceVolume(state.deviceVolume + 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$moveMediaItems$4(State state, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList(state.playlist);
        Util.moveItems(arrayList, i, i2, i3);
        return getStateWithNewPlaylist(state, arrayList, this.period);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(Player.Listener listener, FlagSet flagSet) {
        listener.onEvents(this, new Player.Events(flagSet));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$prepare$7(State state) {
        return state.buildUpon().setPlayerError(null).setPlaybackState(state.timeline.isEmpty() ? 4 : 2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$removeMediaItems$6(State state, int i, int i2) {
        ArrayList arrayList = new ArrayList(state.playlist);
        Util.removeRange(arrayList, i, i2);
        return getStateWithNewPlaylist(state, arrayList, this.period);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$replaceMediaItems$5(State state, List list, int i, int i2) {
        ArrayList arrayList = new ArrayList(state.playlist);
        for (int i3 = 0; i3 < list.size(); i3++) {
            arrayList.add(i3 + i, getPlaceholderMediaItemData((MediaItem) list.get(i3)));
        }
        State stateWithNewPlaylist = !state.playlist.isEmpty() ? getStateWithNewPlaylist(state, arrayList, this.period) : getStateWithNewPlaylistAndPosition(state, arrayList, state.currentMediaItemIndex, state.contentPositionMsSupplier.get());
        if (i2 >= i) {
            return stateWithNewPlaylist;
        }
        Util.removeRange(arrayList, i2, i);
        return getStateWithNewPlaylist(stateWithNewPlaylist, arrayList, this.period);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$seekTo$10(State state, int i, long j) {
        return getStateWithNewPlaylistAndPosition(state, state.playlist, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceMuted$28(State state, boolean z) {
        return state.buildUpon().setIsDeviceMuted(z).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceMuted$29(State state, boolean z) {
        return state.buildUpon().setIsDeviceMuted(z).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceVolume$22(State state, int i) {
        return state.buildUpon().setDeviceVolume(i).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setDeviceVolume$23(State state, int i) {
        return state.buildUpon().setDeviceVolume(i).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ State lambda$setMediaItemsInternal$2(List list, State state, int i, long j) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(getPlaceholderMediaItemData((MediaItem) list.get(i2)));
        }
        return getStateWithNewPlaylistAndPosition(state, arrayList, i, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlayWhenReady$1(State state, boolean z) {
        return state.buildUpon().setPlayWhenReady(z, 1).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlaybackParameters$11(State state, PlaybackParameters playbackParameters) {
        return state.buildUpon().setPlaybackParameters(playbackParameters).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setPlaylistMetadata$15(State state, MediaMetadata mediaMetadata) {
        return state.buildUpon().setPlaylistMetadata(mediaMetadata).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setRepeatMode$8(State state, int i) {
        return state.buildUpon().setRepeatMode(i).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setShuffleModeEnabled$9(State state, boolean z) {
        return state.buildUpon().setShuffleModeEnabled(z).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setTrackSelectionParameters$14(State state, TrackSelectionParameters trackSelectionParameters) {
        return state.buildUpon().setTrackSelectionParameters(trackSelectionParameters).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurface$17(State state) {
        return state.buildUpon().setSurfaceSize(Size.UNKNOWN).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurfaceHolder$18(State state, SurfaceHolder surfaceHolder) {
        return state.buildUpon().setSurfaceSize(getSurfaceHolderSize(surfaceHolder)).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoSurfaceView$19(State state, SurfaceView surfaceView) {
        return state.buildUpon().setSurfaceSize(getSurfaceHolderSize(surfaceView.getHolder())).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVideoTextureView$20(State state, Size size) {
        return state.buildUpon().setSurfaceSize(size).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$setVolume$16(State state, float f) {
        return state.buildUpon().setVolume(f).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static State lambda$stop$12(State state) {
        State.Builder totalBufferedDurationMs = state.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(PositionSupplier.ZERO);
        long contentPositionMsInternal = getContentPositionMsInternal(state);
        int i = PositionSupplier.CC.$r8$clinit;
        return totalBufferedDurationMs.setContentBufferedPositionMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(contentPositionMsInternal)).setAdBufferedPositionMs(state.adPositionMsSupplier).setIsLoading(false).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$31(State state, int i, Player.Listener listener) {
        listener.onTimelineChanged(state.timeline, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$32(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, Player.Listener listener) {
        listener.onPositionDiscontinuity(i);
        listener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$34(State state, Player.Listener listener) {
        listener.onPlayerErrorChanged(state.playerError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$35(State state, Player.Listener listener) {
        listener.onPlayerError((PlaybackException) Util.castNonNull(state.playerError));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$36(State state, Player.Listener listener) {
        listener.onTrackSelectionParametersChanged(state.trackSelectionParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$39(State state, Player.Listener listener) {
        listener.onLoadingChanged(state.isLoading);
        listener.onIsLoadingChanged(state.isLoading);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$40(State state, Player.Listener listener) {
        listener.onPlayerStateChanged(state.playWhenReady, state.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$41(State state, Player.Listener listener) {
        listener.onPlaybackStateChanged(state.playbackState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$42(State state, Player.Listener listener) {
        listener.onPlayWhenReadyChanged(state.playWhenReady, state.playWhenReadyChangeReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$43(State state, Player.Listener listener) {
        listener.onPlaybackSuppressionReasonChanged(state.playbackSuppressionReason);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$44(State state, Player.Listener listener) {
        listener.onIsPlayingChanged(isPlaying(state));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$45(State state, Player.Listener listener) {
        listener.onPlaybackParametersChanged(state.playbackParameters);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$46(State state, Player.Listener listener) {
        listener.onRepeatModeChanged(state.repeatMode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$47(State state, Player.Listener listener) {
        listener.onShuffleModeEnabledChanged(state.shuffleModeEnabled);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$48(State state, Player.Listener listener) {
        listener.onSeekBackIncrementChanged(state.seekBackIncrementMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$49(State state, Player.Listener listener) {
        listener.onSeekForwardIncrementChanged(state.seekForwardIncrementMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$50(State state, Player.Listener listener) {
        listener.onMaxSeekToPreviousPositionChanged(state.maxSeekToPreviousPositionMs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$51(State state, Player.Listener listener) {
        listener.onAudioAttributesChanged(state.audioAttributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$52(State state, Player.Listener listener) {
        listener.onVideoSizeChanged(state.videoSize);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$53(State state, Player.Listener listener) {
        listener.onDeviceInfoChanged(state.deviceInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$54(State state, Player.Listener listener) {
        listener.onPlaylistMetadataChanged(state.playlistMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$55(State state, Player.Listener listener) {
        listener.onSurfaceSizeChanged(state.surfaceSize.getWidth(), state.surfaceSize.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$56(State state, Player.Listener listener) {
        listener.onVolumeChanged(state.volume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$57(State state, Player.Listener listener) {
        listener.onDeviceVolumeChanged(state.deviceVolume, state.isDeviceMuted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$58(State state, Player.Listener listener) {
        listener.onCues(state.currentCues.cues);
        listener.onCues(state.currentCues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$59(State state, Player.Listener listener) {
        listener.onMetadata(state.timedMetadata);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateStateAndInformListeners$60(State state, Player.Listener listener) {
        listener.onAvailableCommandsChanged(state.availableCommands);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateStateForPendingOperation$61(ListenableFuture listenableFuture) {
        Util.castNonNull(this.state);
        this.pendingOperations.remove(listenableFuture);
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postOrRunOnApplicationHandler(Runnable runnable) {
        if (this.applicationHandler.getLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.applicationHandler.post(runnable);
        }
    }

    private void setMediaItemsInternal(final List<MediaItem> list, final int i, final long j) {
        Assertions.checkArgument(i == -1 || i >= 0);
        final State state = this.state;
        if (shouldHandleCommand(20) || (list.size() == 1 && shouldHandleCommand(31))) {
            updateStateForPendingOperation(handleSetMediaItems(list, i, j), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda58
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimpleBasePlayer.State lambda$setMediaItemsInternal$2;
                    lambda$setMediaItemsInternal$2 = SimpleBasePlayer.this.lambda$setMediaItemsInternal$2(list, state, i, j);
                    return lambda$setMediaItemsInternal$2;
                }
            });
        }
    }

    private boolean shouldHandleCommand(int i) {
        return !this.released && this.state.availableCommands.contains(i);
    }

    private void updateStateAndInformListeners(final State state, boolean z, boolean z2) {
        boolean z3;
        int i;
        State state2 = this.state;
        this.state = state;
        if (state.hasPositionDiscontinuity || state.newlyRenderedFirstFrame) {
            this.state = state.buildUpon().clearPositionDiscontinuity().setNewlyRenderedFirstFrame(false).build();
        }
        boolean z4 = state2.playWhenReady != state.playWhenReady;
        boolean z5 = state2.playbackState != state.playbackState;
        Tracks currentTracksInternal = getCurrentTracksInternal(state2);
        Tracks currentTracksInternal2 = getCurrentTracksInternal(state);
        MediaMetadata mediaMetadataInternal = getMediaMetadataInternal(state2);
        MediaMetadata mediaMetadataInternal2 = getMediaMetadataInternal(state);
        int positionDiscontinuityReason = getPositionDiscontinuityReason(state2, state, z, this.window, this.period);
        boolean equals = state2.timeline.equals(state.timeline);
        int mediaItemTransitionReason = getMediaItemTransitionReason(state2, state, positionDiscontinuityReason, z2, this.window);
        int i2 = 2;
        if (!equals) {
            this.listeners.queueEvent(0, new ExoPlayerImpl$$ExternalSyntheticLambda0(state, getTimelineChangeReason(state2.playlist, state.playlist), i2));
        }
        if (positionDiscontinuityReason != -1) {
            z3 = z4;
            this.listeners.queueEvent(11, new ExoPlayerImpl$$ExternalSyntheticLambda5(positionDiscontinuityReason, getPositionInfo(state2, false, this.window, this.period), getPositionInfo(state, state.hasPositionDiscontinuity, this.window, this.period), 1));
            i = -1;
        } else {
            z3 = z4;
            i = -1;
        }
        if (mediaItemTransitionReason != i) {
            this.listeners.queueEvent(1, new ExoPlayerImpl$$ExternalSyntheticLambda6(state.timeline.isEmpty() ? null : ((MediaItemData) state.playlist.get(getCurrentMediaItemIndexInternal(state))).mediaItem, mediaItemTransitionReason, 1));
        }
        final int i3 = 20;
        final int i4 = 19;
        final int i5 = 10;
        if (!Util.areEqual(state2.playerError, state.playerError)) {
            this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i6 = i4;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i6) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
            if (state.playerError != null) {
                this.listeners.queueEvent(10, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(Object obj) {
                        int i6 = i3;
                        SimpleBasePlayer.State state3 = state;
                        Player.Listener listener = (Player.Listener) obj;
                        switch (i6) {
                            case 0:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                                break;
                            case 1:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                                break;
                            case 2:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                                break;
                            case 3:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                                break;
                            case 4:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                                break;
                            case 5:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                                break;
                            case 6:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                                break;
                            case 7:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                                break;
                            case 8:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                                break;
                            case 9:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                                break;
                            case 10:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                                break;
                            case 11:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                                break;
                            case 12:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                                break;
                            case 13:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                                break;
                            case 14:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                                break;
                            case 15:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                                break;
                            case 16:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                                break;
                            case 17:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                                break;
                            case 18:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                                break;
                            case 19:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                                break;
                            case 20:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                                break;
                            case 21:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                                break;
                            case 22:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                                break;
                            case 23:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                                break;
                            default:
                                SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                                break;
                        }
                    }
                });
            }
        }
        if (!state2.trackSelectionParameters.equals(state.trackSelectionParameters)) {
            final int i6 = 21;
            this.listeners.queueEvent(19, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i6;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        boolean equals2 = currentTracksInternal.equals(currentTracksInternal2);
        final int i7 = 8;
        if (!equals2) {
            this.listeners.queueEvent(2, new ExoPlayerImpl$$ExternalSyntheticLambda15(currentTracksInternal2, i7));
        }
        if (!mediaMetadataInternal.equals(mediaMetadataInternal2)) {
            this.listeners.queueEvent(14, new ExoPlayerImpl$$ExternalSyntheticLambda10(mediaMetadataInternal2, 1));
        }
        final int i8 = 22;
        final int i9 = 3;
        if (state2.isLoading != state.isLoading) {
            this.listeners.queueEvent(3, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i8;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (z3 || z5) {
            final int i10 = 23;
            this.listeners.queueEvent(-1, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i10;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i11 = 4;
        if (z5) {
            final int i12 = 0;
            this.listeners.queueEvent(4, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i12;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i13 = 24;
        final int i14 = 5;
        if (z3 || state2.playWhenReadyChangeReason != state.playWhenReadyChangeReason) {
            this.listeners.queueEvent(5, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i13;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i15 = 6;
        if (state2.playbackSuppressionReason != state.playbackSuppressionReason) {
            final int i16 = 1;
            this.listeners.queueEvent(6, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i16;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i17 = 7;
        if (isPlaying(state2) != isPlaying(state)) {
            final int i18 = 2;
            this.listeners.queueEvent(7, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i18;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.playbackParameters.equals(state.playbackParameters)) {
            this.listeners.queueEvent(12, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i9;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (state2.repeatMode != state.repeatMode) {
            this.listeners.queueEvent(8, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i11;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i19 = 9;
        if (state2.shuffleModeEnabled != state.shuffleModeEnabled) {
            this.listeners.queueEvent(9, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i14;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i20 = 16;
        if (state2.seekBackIncrementMs != state.seekBackIncrementMs) {
            this.listeners.queueEvent(16, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i15;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i21 = 17;
        if (state2.seekForwardIncrementMs != state.seekForwardIncrementMs) {
            this.listeners.queueEvent(17, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i17;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i22 = 18;
        if (state2.maxSeekToPreviousPositionMs != state.maxSeekToPreviousPositionMs) {
            this.listeners.queueEvent(18, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i7;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.audioAttributes.equals(state.audioAttributes)) {
            this.listeners.queueEvent(20, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i19;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.videoSize.equals(state.videoSize)) {
            this.listeners.queueEvent(25, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i5;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.deviceInfo.equals(state.deviceInfo)) {
            final int i23 = 11;
            this.listeners.queueEvent(29, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i23;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        final int i24 = 15;
        if (!state2.playlistMetadata.equals(state.playlistMetadata)) {
            final int i25 = 12;
            this.listeners.queueEvent(15, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i25;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (state.newlyRenderedFirstFrame) {
            this.listeners.queueEvent(26, new Format$$ExternalSyntheticLambda0(5));
        }
        if (!state2.surfaceSize.equals(state.surfaceSize)) {
            final int i26 = 13;
            this.listeners.queueEvent(24, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i26;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (state2.volume != state.volume) {
            final int i27 = 14;
            this.listeners.queueEvent(22, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i27;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (state2.deviceVolume != state.deviceVolume || state2.isDeviceMuted != state.isDeviceMuted) {
            this.listeners.queueEvent(30, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i24;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.currentCues.equals(state.currentCues)) {
            this.listeners.queueEvent(27, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i20;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.timedMetadata.equals(state.timedMetadata) && state.timedMetadata.presentationTimeUs != C.TIME_UNSET) {
            this.listeners.queueEvent(28, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i21;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        if (!state2.availableCommands.equals(state.availableCommands)) {
            this.listeners.queueEvent(13, new ListenerSet.Event() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda8
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    int i62 = i22;
                    SimpleBasePlayer.State state3 = state;
                    Player.Listener listener = (Player.Listener) obj;
                    switch (i62) {
                        case 0:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$41(state3, listener);
                            break;
                        case 1:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$43(state3, listener);
                            break;
                        case 2:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$44(state3, listener);
                            break;
                        case 3:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$45(state3, listener);
                            break;
                        case 4:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$46(state3, listener);
                            break;
                        case 5:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$47(state3, listener);
                            break;
                        case 6:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$48(state3, listener);
                            break;
                        case 7:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$49(state3, listener);
                            break;
                        case 8:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$50(state3, listener);
                            break;
                        case 9:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$51(state3, listener);
                            break;
                        case 10:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$52(state3, listener);
                            break;
                        case 11:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$53(state3, listener);
                            break;
                        case 12:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$54(state3, listener);
                            break;
                        case 13:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$55(state3, listener);
                            break;
                        case 14:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$56(state3, listener);
                            break;
                        case 15:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$57(state3, listener);
                            break;
                        case 16:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$58(state3, listener);
                            break;
                        case 17:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$59(state3, listener);
                            break;
                        case 18:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$60(state3, listener);
                            break;
                        case 19:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$34(state3, listener);
                            break;
                        case 20:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$35(state3, listener);
                            break;
                        case 21:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$36(state3, listener);
                            break;
                        case 22:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$39(state3, listener);
                            break;
                        case 23:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$40(state3, listener);
                            break;
                        default:
                            SimpleBasePlayer.lambda$updateStateAndInformListeners$42(state3, listener);
                            break;
                    }
                }
            });
        }
        this.listeners.flushEvents();
    }

    private void updateStateForPendingOperation(ListenableFuture listenableFuture, Supplier supplier, boolean z, boolean z2) {
        if (listenableFuture.isDone() && this.pendingOperations.isEmpty()) {
            updateStateAndInformListeners(getState(), z, z2);
            return;
        }
        this.pendingOperations.add(listenableFuture);
        updateStateAndInformListeners(getPlaceholderState((State) supplier.get()), z, z2);
        listenableFuture.addListener(new ExoPlayerImpl$$ExternalSyntheticLambda19(this, listenableFuture, 2), new Executor() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda48
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                SimpleBasePlayer.this.postOrRunOnApplicationHandler(runnable);
            }
        });
    }

    private void verifyApplicationThreadAndInitState() {
        if (Thread.currentThread() != this.applicationLooper.getThread()) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Util.formatInvariant("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.applicationLooper.getThread().getName()));
        } else if (this.state == null) {
            this.state = getState();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addListener(Player.Listener listener) {
        this.listeners.add((Player.Listener) Assertions.checkNotNull(listener));
    }

    @Override // com.google.android.exoplayer2.Player
    public final void addMediaItems(int i, final List<MediaItem> list) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || list.isEmpty()) {
            return;
        }
        final int min = Math.min(i, size);
        updateStateForPendingOperation(handleAddMediaItems(min, list), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                SimpleBasePlayer.State lambda$addMediaItems$3;
                lambda$addMediaItems$3 = SimpleBasePlayer.this.lambda$addMediaItems$3(state, list, min);
                return lambda$addMediaItems$3;
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurface() {
        clearVideoOutput(null);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        clearVideoOutput(surfaceHolder);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurfaceView(SurfaceView surfaceView) {
        clearVideoOutput(surfaceView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoTextureView(TextureView textureView) {
        clearVideoOutput(textureView);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    @Deprecated
    public final void decreaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleDecreaseDeviceVolume(1), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 7));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final AudioAttributes getAudioAttributes() {
        verifyApplicationThreadAndInitState();
        return this.state.audioAttributes;
    }

    @Override // com.google.android.exoplayer2.Player
    public final Player.Commands getAvailableCommands() {
        verifyApplicationThreadAndInitState();
        return this.state.availableCommands;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getBufferedPosition() {
        verifyApplicationThreadAndInitState();
        return isPlayingAd() ? Math.max(this.state.adBufferedPositionMsSupplier.get(), this.state.adPositionMsSupplier.get()) : getContentBufferedPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getContentBufferedPosition() {
        verifyApplicationThreadAndInitState();
        return Math.max(getContentBufferedPositionMsInternal(this.state), getContentPositionMsInternal(this.state));
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getContentPosition() {
        verifyApplicationThreadAndInitState();
        return getContentPositionMsInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentAdGroupIndex() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentAdIndexInAdGroup() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdIndexInAdGroup;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.TextComponent
    public final CueGroup getCurrentCues() {
        verifyApplicationThreadAndInitState();
        return this.state.currentCues;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentMediaItemIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentMediaItemIndexInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getCurrentPeriodIndex() {
        verifyApplicationThreadAndInitState();
        return getCurrentPeriodIndexInternal(this.state, this.window, this.period);
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getCurrentPosition() {
        verifyApplicationThreadAndInitState();
        return isPlayingAd() ? this.state.adPositionMsSupplier.get() : getContentPosition();
    }

    @Override // com.google.android.exoplayer2.Player
    public final Timeline getCurrentTimeline() {
        verifyApplicationThreadAndInitState();
        return this.state.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public final Tracks getCurrentTracks() {
        verifyApplicationThreadAndInitState();
        return getCurrentTracksInternal(this.state);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final DeviceInfo getDeviceInfo() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceInfo;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final int getDeviceVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.deviceVolume;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getDuration() {
        verifyApplicationThreadAndInitState();
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        this.state.timeline.getPeriod(getCurrentPeriodIndex(), this.period);
        Timeline.Period period = this.period;
        State state = this.state;
        return Util.usToMs(period.getAdDurationUs(state.currentAdGroupIndex, state.currentAdIndexInAdGroup));
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getMaxSeekToPreviousPosition() {
        verifyApplicationThreadAndInitState();
        return this.state.maxSeekToPreviousPositionMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final MediaMetadata getMediaMetadata() {
        verifyApplicationThreadAndInitState();
        return getMediaMetadataInternal(this.state);
    }

    public MediaItemData getPlaceholderMediaItemData(MediaItem mediaItem) {
        return new MediaItemData.Builder(new PlaceholderUid()).setMediaItem(mediaItem).setIsDynamic(true).setIsPlaceholder(true).build();
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean getPlayWhenReady() {
        verifyApplicationThreadAndInitState();
        return this.state.playWhenReady;
    }

    @Override // com.google.android.exoplayer2.Player
    public final PlaybackParameters getPlaybackParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getPlaybackState() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackState;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getPlaybackSuppressionReason() {
        verifyApplicationThreadAndInitState();
        return this.state.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.Player
    public final PlaybackException getPlayerError() {
        verifyApplicationThreadAndInitState();
        return this.state.playerError;
    }

    @Override // com.google.android.exoplayer2.Player
    public final MediaMetadata getPlaylistMetadata() {
        verifyApplicationThreadAndInitState();
        return this.state.playlistMetadata;
    }

    @Override // com.google.android.exoplayer2.Player
    public final int getRepeatMode() {
        verifyApplicationThreadAndInitState();
        return this.state.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getSeekBackIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getSeekForwardIncrement() {
        verifyApplicationThreadAndInitState();
        return this.state.seekForwardIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean getShuffleModeEnabled() {
        verifyApplicationThreadAndInitState();
        return this.state.shuffleModeEnabled;
    }

    public abstract State getState();

    @Override // com.google.android.exoplayer2.Player
    public final Size getSurfaceSize() {
        verifyApplicationThreadAndInitState();
        return this.state.surfaceSize;
    }

    @Override // com.google.android.exoplayer2.Player
    public final long getTotalBufferedDuration() {
        verifyApplicationThreadAndInitState();
        return this.state.totalBufferedDurationMsSupplier.get();
    }

    @Override // com.google.android.exoplayer2.Player
    public final TrackSelectionParameters getTrackSelectionParameters() {
        verifyApplicationThreadAndInitState();
        return this.state.trackSelectionParameters;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final VideoSize getVideoSize() {
        verifyApplicationThreadAndInitState();
        return this.state.videoSize;
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final float getVolume() {
        verifyApplicationThreadAndInitState();
        return this.state.volume;
    }

    public ListenableFuture handleAddMediaItems(int i, List<MediaItem> list) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public ListenableFuture handleClearVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    public ListenableFuture handleDecreaseDeviceVolume(int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public ListenableFuture handleIncreaseDeviceVolume(int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public ListenableFuture handleMoveMediaItems(int i, int i2, int i3) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public ListenableFuture handlePrepare() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PREPARE");
    }

    public ListenableFuture handleRelease() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_RELEASE");
    }

    public ListenableFuture handleRemoveMediaItems(int i, int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS");
    }

    public ListenableFuture handleReplaceMediaItems(int i, int i2, List<MediaItem> list) {
        return Util.transformFutureAsync(handleAddMediaItems(i2, list), new ExoPlayerImpl$$ExternalSyntheticLambda15(handleRemoveMediaItems(i, i2), 9));
    }

    public ListenableFuture handleSeek(int i, long j, int i2) {
        throw new IllegalStateException("Missing implementation to handle one of the COMMAND_SEEK_*");
    }

    public ListenableFuture handleSetDeviceMuted(boolean z, int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS");
    }

    public ListenableFuture handleSetDeviceVolume(int i, int i2) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS");
    }

    public ListenableFuture handleSetMediaItems(List<MediaItem> list, int i, long j) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)");
    }

    public ListenableFuture handleSetPlayWhenReady(boolean z) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_PLAY_PAUSE");
    }

    public ListenableFuture handleSetPlaybackParameters(PlaybackParameters playbackParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH");
    }

    public ListenableFuture handleSetPlaylistMetadata(MediaMetadata mediaMetadata) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA");
    }

    public ListenableFuture handleSetRepeatMode(int i) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_REPEAT_MODE");
    }

    public ListenableFuture handleSetShuffleModeEnabled(boolean z) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_SHUFFLE_MODE");
    }

    public ListenableFuture handleSetTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS");
    }

    public ListenableFuture handleSetVideoOutput(Object obj) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VIDEO_SURFACE");
    }

    public ListenableFuture handleSetVolume(float f) {
        throw new IllegalStateException("Missing implementation to handle COMMAND_SET_VOLUME");
    }

    public ListenableFuture handleStop() {
        throw new IllegalStateException("Missing implementation to handle COMMAND_STOP");
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    @Deprecated
    public final void increaseDeviceVolume() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleIncreaseDeviceVolume(1), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 0));
        }
    }

    public final void invalidateState() {
        verifyApplicationThreadAndInitState();
        if (!this.pendingOperations.isEmpty() || this.released) {
            return;
        }
        updateStateAndInformListeners(getState(), false, false);
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    public final boolean isDeviceMuted() {
        verifyApplicationThreadAndInitState();
        return this.state.isDeviceMuted;
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isLoading() {
        verifyApplicationThreadAndInitState();
        return this.state.isLoading;
    }

    @Override // com.google.android.exoplayer2.Player
    public final boolean isPlayingAd() {
        verifyApplicationThreadAndInitState();
        return this.state.currentAdGroupIndex != -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void moveMediaItems(final int i, int i2, int i3) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0 && i2 >= i && i3 >= 0);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || size == 0 || i >= size) {
            return;
        }
        final int min = Math.min(i2, size);
        final int min2 = Math.min(i3, state.playlist.size() - (min - i));
        if (i == min || min2 == i) {
            return;
        }
        updateStateForPendingOperation(handleMoveMediaItems(i, min, min2), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda61
            @Override // java.util.function.Supplier
            public final Object get() {
                SimpleBasePlayer.State lambda$moveMediaItems$4;
                lambda$moveMediaItems$4 = SimpleBasePlayer.this.lambda$moveMediaItems$4(state, i, min, min2);
                return lambda$moveMediaItems$4;
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public final void prepare() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(2)) {
            updateStateForPendingOperation(handlePrepare(), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 6));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void release() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(32)) {
            updateStateForPendingOperation(handleRelease(), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 1));
            this.released = true;
            this.listeners.release();
            State.Builder totalBufferedDurationMs = this.state.buildUpon().setPlaybackState(1).setTotalBufferedDurationMs(PositionSupplier.ZERO);
            long contentPositionMsInternal = getContentPositionMsInternal(state);
            int i = PositionSupplier.CC.$r8$clinit;
            this.state = totalBufferedDurationMs.setContentBufferedPositionMs(new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(contentPositionMsInternal)).setAdBufferedPositionMs(state.adPositionMsSupplier).setIsLoading(false).build();
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void removeListener(Player.Listener listener) {
        verifyApplicationThreadAndInitState();
        this.listeners.remove(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public final void removeMediaItems(final int i, int i2) {
        final int min;
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0 && i2 >= i);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || size == 0 || i >= size || i == (min = Math.min(i2, size))) {
            return;
        }
        updateStateForPendingOperation(handleRemoveMediaItems(i, min), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda55
            @Override // java.util.function.Supplier
            public final Object get() {
                SimpleBasePlayer.State lambda$removeMediaItems$6;
                lambda$removeMediaItems$6 = SimpleBasePlayer.this.lambda$removeMediaItems$6(state, i, min);
                return lambda$removeMediaItems$6;
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public final void replaceMediaItems(final int i, int i2, final List<MediaItem> list) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0 && i <= i2);
        final State state = this.state;
        int size = state.playlist.size();
        if (!shouldHandleCommand(20) || i > size) {
            return;
        }
        final int min = Math.min(i2, size);
        updateStateForPendingOperation(handleReplaceMediaItems(i, min, list), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda6
            @Override // java.util.function.Supplier
            public final Object get() {
                SimpleBasePlayer.State lambda$replaceMediaItems$5;
                lambda$replaceMediaItems$5 = SimpleBasePlayer.this.lambda$replaceMediaItems$5(state, list, min, i);
                return lambda$replaceMediaItems$5;
            }
        });
    }

    @Override // com.google.android.exoplayer2.BasePlayer
    public final void seekTo(final int i, final long j, int i2, boolean z) {
        verifyApplicationThreadAndInitState();
        Assertions.checkArgument(i >= 0);
        final State state = this.state;
        if (!shouldHandleCommand(i2) || isPlayingAd()) {
            return;
        }
        if (state.playlist.isEmpty() || i < state.playlist.size()) {
            updateStateForPendingOperation(handleSeek(i, j, i2), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda49
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimpleBasePlayer.State lambda$seekTo$10;
                    lambda$seekTo$10 = SimpleBasePlayer.lambda$seekTo$10(SimpleBasePlayer.State.this, i, j);
                    return lambda$seekTo$10;
                }
            }, true, z);
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    @Deprecated
    public final void setDeviceMuted(boolean z) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(26)) {
            updateStateForPendingOperation(handleSetDeviceMuted(z, 1), new SimpleBasePlayer$$ExternalSyntheticLambda3(state, z, 2));
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.DeviceComponent
    @Deprecated
    public final void setDeviceVolume(int i) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(25)) {
            updateStateForPendingOperation(handleSetDeviceVolume(i, 1), new SimpleBasePlayer$$ExternalSyntheticLambda4(state, i, 0));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItems(List<MediaItem> list, boolean z) {
        verifyApplicationThreadAndInitState();
        setMediaItemsInternal(list, z ? -1 : this.state.currentMediaItemIndex, z ? C.TIME_UNSET : this.state.contentPositionMsSupplier.get());
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlayWhenReady(boolean z) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(1)) {
            updateStateForPendingOperation(handleSetPlayWhenReady(z), new SimpleBasePlayer$$ExternalSyntheticLambda3(state, z, 1));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlaybackParameters(PlaybackParameters playbackParameters) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(13)) {
            updateStateForPendingOperation(handleSetPlaybackParameters(playbackParameters), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, playbackParameters, 3));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setPlaylistMetadata(MediaMetadata mediaMetadata) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(19)) {
            updateStateForPendingOperation(handleSetPlaylistMetadata(mediaMetadata), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, mediaMetadata, 1));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setRepeatMode(int i) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(15)) {
            updateStateForPendingOperation(handleSetRepeatMode(i), new SimpleBasePlayer$$ExternalSyntheticLambda4(state, i, 1));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setShuffleModeEnabled(boolean z) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(14)) {
            updateStateForPendingOperation(handleSetShuffleModeEnabled(z), new SimpleBasePlayer$$ExternalSyntheticLambda3(state, z, 0));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(29)) {
            updateStateForPendingOperation(handleSetTrackSelectionParameters(trackSelectionParameters), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, trackSelectionParameters, 5));
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurface(Surface surface) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surface == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surface), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 3));
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurfaceHolder(SurfaceHolder surfaceHolder) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceHolder == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceHolder), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, surfaceHolder, 2));
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoSurfaceView(SurfaceView surfaceView) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (surfaceView == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(surfaceView), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, surfaceView, 0));
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void setVideoTextureView(TextureView textureView) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(27)) {
            if (textureView == null) {
                clearVideoSurface();
            } else {
                updateStateForPendingOperation(handleSetVideoOutput(textureView), new SimpleBasePlayer$$ExternalSyntheticLambda2(state, textureView.isAvailable() ? new Size(textureView.getWidth(), textureView.getHeight()) : Size.ZERO, 4));
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.AudioComponent
    public final void setVolume(final float f) {
        verifyApplicationThreadAndInitState();
        final State state = this.state;
        if (shouldHandleCommand(24)) {
            updateStateForPendingOperation(handleSetVolume(f), new Supplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$$ExternalSyntheticLambda40
                @Override // java.util.function.Supplier
                public final Object get() {
                    SimpleBasePlayer.State lambda$setVolume$16;
                    lambda$setVolume$16 = SimpleBasePlayer.lambda$setVolume$16(SimpleBasePlayer.State.this, f);
                    return lambda$setVolume$16;
                }
            });
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void stop() {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(3)) {
            updateStateForPendingOperation(handleStop(), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 5));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class State {
        public final PositionSupplier adBufferedPositionMsSupplier;
        public final PositionSupplier adPositionMsSupplier;
        public final AudioAttributes audioAttributes;
        public final Player.Commands availableCommands;
        public final PositionSupplier contentBufferedPositionMsSupplier;
        public final PositionSupplier contentPositionMsSupplier;
        public final int currentAdGroupIndex;
        public final int currentAdIndexInAdGroup;
        public final CueGroup currentCues;
        public final int currentMediaItemIndex;
        public final DeviceInfo deviceInfo;
        public final int deviceVolume;
        public final long discontinuityPositionMs;
        public final boolean hasPositionDiscontinuity;
        public final boolean isDeviceMuted;
        public final boolean isLoading;
        public final long maxSeekToPreviousPositionMs;
        public final boolean newlyRenderedFirstFrame;
        public final boolean playWhenReady;
        public final int playWhenReadyChangeReason;
        public final PlaybackParameters playbackParameters;
        public final int playbackState;
        public final int playbackSuppressionReason;
        public final PlaybackException playerError;
        public final ImmutableList playlist;
        public final MediaMetadata playlistMetadata;
        public final int positionDiscontinuityReason;
        public final int repeatMode;
        public final long seekBackIncrementMs;
        public final long seekForwardIncrementMs;
        public final boolean shuffleModeEnabled;
        public final Size surfaceSize;
        public final Metadata timedMetadata;
        public final Timeline timeline;
        public final PositionSupplier totalBufferedDurationMsSupplier;
        public final TrackSelectionParameters trackSelectionParameters;
        public final VideoSize videoSize;
        public final float volume;

        private State(Builder builder) {
            int i;
            PositionSupplier simpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;
            if (builder.timeline.isEmpty()) {
                Assertions.checkArgument(builder.playbackState == 1 || builder.playbackState == 4, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED");
                Assertions.checkArgument(builder.currentAdGroupIndex == -1 && builder.currentAdIndexInAdGroup == -1, "Ads not allowed if playlist is empty");
            } else {
                int i2 = builder.currentMediaItemIndex;
                if (i2 == -1) {
                    i = 0;
                } else {
                    Assertions.checkArgument(builder.currentMediaItemIndex < builder.timeline.getWindowCount(), "currentMediaItemIndex must be less than playlist.size()");
                    i = i2;
                }
                if (builder.currentAdGroupIndex != -1) {
                    Timeline.Period period = new Timeline.Period();
                    builder.timeline.getPeriod(SimpleBasePlayer.getPeriodIndexFromWindowPosition(builder.timeline, i, builder.contentPositionMs != null ? builder.contentPositionMs.longValue() : builder.contentPositionMsSupplier.get(), new Timeline.Window(), period), period);
                    Assertions.checkArgument(builder.currentAdGroupIndex < period.getAdGroupCount(), "PeriodData has less ad groups than adGroupIndex");
                    int adCountInAdGroup = period.getAdCountInAdGroup(builder.currentAdGroupIndex);
                    if (adCountInAdGroup != -1) {
                        Assertions.checkArgument(builder.currentAdIndexInAdGroup < adCountInAdGroup, "Ad group has less ads than adIndexInGroupIndex");
                    }
                }
            }
            if (builder.playerError != null) {
                Assertions.checkArgument(builder.playbackState == 1, "Player error only allowed in STATE_IDLE");
            }
            if (builder.playbackState == 1 || builder.playbackState == 4) {
                Assertions.checkArgument(!builder.isLoading, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED");
            }
            PositionSupplier positionSupplier = builder.contentPositionMsSupplier;
            if (builder.contentPositionMs != null) {
                if (builder.currentAdGroupIndex == -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0 && builder.contentPositionMs.longValue() != C.TIME_UNSET) {
                    final long longValue = builder.contentPositionMs.longValue();
                    final float f = builder.playbackParameters.speed;
                    int i3 = PositionSupplier.CC.$r8$clinit;
                    final long elapsedRealtime = SystemClock.elapsedRealtime();
                    simpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1 = new PositionSupplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0
                        @Override // com.google.android.exoplayer2.SimpleBasePlayer.PositionSupplier
                        public final long get() {
                            return longValue + ((long) ((SystemClock.elapsedRealtime() - elapsedRealtime) * f));
                        }
                    };
                } else {
                    long longValue2 = builder.contentPositionMs.longValue();
                    int i4 = PositionSupplier.CC.$r8$clinit;
                    simpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1 = new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(longValue2);
                }
                positionSupplier = simpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1;
            }
            PositionSupplier positionSupplier2 = builder.adPositionMsSupplier;
            if (builder.adPositionMs != null) {
                if (builder.currentAdGroupIndex != -1 && builder.playWhenReady && builder.playbackState == 3 && builder.playbackSuppressionReason == 0) {
                    final long longValue3 = builder.adPositionMs.longValue();
                    int i5 = PositionSupplier.CC.$r8$clinit;
                    final long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    final float f2 = 1.0f;
                    positionSupplier2 = new PositionSupplier() { // from class: com.google.android.exoplayer2.SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda0
                        @Override // com.google.android.exoplayer2.SimpleBasePlayer.PositionSupplier
                        public final long get() {
                            return longValue3 + ((long) ((SystemClock.elapsedRealtime() - elapsedRealtime2) * f2));
                        }
                    };
                } else {
                    long longValue4 = builder.adPositionMs.longValue();
                    int i6 = PositionSupplier.CC.$r8$clinit;
                    positionSupplier2 = new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(longValue4);
                }
            }
            this.availableCommands = builder.availableCommands;
            this.playWhenReady = builder.playWhenReady;
            this.playWhenReadyChangeReason = builder.playWhenReadyChangeReason;
            this.playbackState = builder.playbackState;
            this.playbackSuppressionReason = builder.playbackSuppressionReason;
            this.playerError = builder.playerError;
            this.repeatMode = builder.repeatMode;
            this.shuffleModeEnabled = builder.shuffleModeEnabled;
            this.isLoading = builder.isLoading;
            this.seekBackIncrementMs = builder.seekBackIncrementMs;
            this.seekForwardIncrementMs = builder.seekForwardIncrementMs;
            this.maxSeekToPreviousPositionMs = builder.maxSeekToPreviousPositionMs;
            this.playbackParameters = builder.playbackParameters;
            this.trackSelectionParameters = builder.trackSelectionParameters;
            this.audioAttributes = builder.audioAttributes;
            this.volume = builder.volume;
            this.videoSize = builder.videoSize;
            this.currentCues = builder.currentCues;
            this.deviceInfo = builder.deviceInfo;
            this.deviceVolume = builder.deviceVolume;
            this.isDeviceMuted = builder.isDeviceMuted;
            this.surfaceSize = builder.surfaceSize;
            this.newlyRenderedFirstFrame = builder.newlyRenderedFirstFrame;
            this.timedMetadata = builder.timedMetadata;
            this.playlist = builder.playlist;
            this.timeline = builder.timeline;
            this.playlistMetadata = builder.playlistMetadata;
            this.currentMediaItemIndex = builder.currentMediaItemIndex;
            this.currentAdGroupIndex = builder.currentAdGroupIndex;
            this.currentAdIndexInAdGroup = builder.currentAdIndexInAdGroup;
            this.contentPositionMsSupplier = positionSupplier;
            this.adPositionMsSupplier = positionSupplier2;
            this.contentBufferedPositionMsSupplier = builder.contentBufferedPositionMsSupplier;
            this.adBufferedPositionMsSupplier = builder.adBufferedPositionMsSupplier;
            this.totalBufferedDurationMsSupplier = builder.totalBufferedDurationMsSupplier;
            this.hasPositionDiscontinuity = builder.hasPositionDiscontinuity;
            this.positionDiscontinuityReason = builder.positionDiscontinuityReason;
            this.discontinuityPositionMs = builder.discontinuityPositionMs;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof State)) {
                return false;
            }
            State state = (State) obj;
            return this.playWhenReady == state.playWhenReady && this.playWhenReadyChangeReason == state.playWhenReadyChangeReason && this.availableCommands.equals(state.availableCommands) && this.playbackState == state.playbackState && this.playbackSuppressionReason == state.playbackSuppressionReason && Util.areEqual(this.playerError, state.playerError) && this.repeatMode == state.repeatMode && this.shuffleModeEnabled == state.shuffleModeEnabled && this.isLoading == state.isLoading && this.seekBackIncrementMs == state.seekBackIncrementMs && this.seekForwardIncrementMs == state.seekForwardIncrementMs && this.maxSeekToPreviousPositionMs == state.maxSeekToPreviousPositionMs && this.playbackParameters.equals(state.playbackParameters) && this.trackSelectionParameters.equals(state.trackSelectionParameters) && this.audioAttributes.equals(state.audioAttributes) && this.volume == state.volume && this.videoSize.equals(state.videoSize) && this.currentCues.equals(state.currentCues) && this.deviceInfo.equals(state.deviceInfo) && this.deviceVolume == state.deviceVolume && this.isDeviceMuted == state.isDeviceMuted && this.surfaceSize.equals(state.surfaceSize) && this.newlyRenderedFirstFrame == state.newlyRenderedFirstFrame && this.timedMetadata.equals(state.timedMetadata) && this.playlist.equals(state.playlist) && this.playlistMetadata.equals(state.playlistMetadata) && this.currentMediaItemIndex == state.currentMediaItemIndex && this.currentAdGroupIndex == state.currentAdGroupIndex && this.currentAdIndexInAdGroup == state.currentAdIndexInAdGroup && this.contentPositionMsSupplier.equals(state.contentPositionMsSupplier) && this.adPositionMsSupplier.equals(state.adPositionMsSupplier) && this.contentBufferedPositionMsSupplier.equals(state.contentBufferedPositionMsSupplier) && this.adBufferedPositionMsSupplier.equals(state.adBufferedPositionMsSupplier) && this.totalBufferedDurationMsSupplier.equals(state.totalBufferedDurationMsSupplier) && this.hasPositionDiscontinuity == state.hasPositionDiscontinuity && this.positionDiscontinuityReason == state.positionDiscontinuityReason && this.discontinuityPositionMs == state.discontinuityPositionMs;
        }

        public int hashCode() {
            int hashCode = (((((((((this.availableCommands.hashCode() + 217) * 31) + (this.playWhenReady ? 1 : 0)) * 31) + this.playWhenReadyChangeReason) * 31) + this.playbackState) * 31) + this.playbackSuppressionReason) * 31;
            PlaybackException playbackException = this.playerError;
            int hashCode2 = (((((((hashCode + (playbackException == null ? 0 : playbackException.hashCode())) * 31) + this.repeatMode) * 31) + (this.shuffleModeEnabled ? 1 : 0)) * 31) + (this.isLoading ? 1 : 0)) * 31;
            long j = this.seekBackIncrementMs;
            int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.seekForwardIncrementMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.maxSeekToPreviousPositionMs;
            int hashCode3 = (((((this.totalBufferedDurationMsSupplier.hashCode() + ((this.adBufferedPositionMsSupplier.hashCode() + ((this.contentBufferedPositionMsSupplier.hashCode() + ((this.adPositionMsSupplier.hashCode() + ((this.contentPositionMsSupplier.hashCode() + ((((((((this.playlistMetadata.hashCode() + ((this.playlist.hashCode() + ((this.timedMetadata.hashCode() + ((((this.surfaceSize.hashCode() + ((((((this.deviceInfo.hashCode() + ((this.currentCues.hashCode() + ((this.videoSize.hashCode() + ((Float.floatToRawIntBits(this.volume) + ((this.audioAttributes.hashCode() + ((this.trackSelectionParameters.hashCode() + ((this.playbackParameters.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + this.deviceVolume) * 31) + (this.isDeviceMuted ? 1 : 0)) * 31)) * 31) + (this.newlyRenderedFirstFrame ? 1 : 0)) * 31)) * 31)) * 31)) * 31) + this.currentMediaItemIndex) * 31) + this.currentAdGroupIndex) * 31) + this.currentAdIndexInAdGroup) * 31)) * 31)) * 31)) * 31)) * 31)) * 31) + (this.hasPositionDiscontinuity ? 1 : 0)) * 31) + this.positionDiscontinuityReason) * 31;
            long j4 = this.discontinuityPositionMs;
            return hashCode3 + ((int) (j4 ^ (j4 >>> 32)));
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public static final class Builder {
            private PositionSupplier adBufferedPositionMsSupplier;
            private Long adPositionMs;
            private PositionSupplier adPositionMsSupplier;
            private AudioAttributes audioAttributes;
            private Player.Commands availableCommands;
            private PositionSupplier contentBufferedPositionMsSupplier;
            private Long contentPositionMs;
            private PositionSupplier contentPositionMsSupplier;
            private int currentAdGroupIndex;
            private int currentAdIndexInAdGroup;
            private CueGroup currentCues;
            private int currentMediaItemIndex;
            private DeviceInfo deviceInfo;
            private int deviceVolume;
            private long discontinuityPositionMs;
            private boolean hasPositionDiscontinuity;
            private boolean isDeviceMuted;
            private boolean isLoading;
            private long maxSeekToPreviousPositionMs;
            private boolean newlyRenderedFirstFrame;
            private boolean playWhenReady;
            private int playWhenReadyChangeReason;
            private PlaybackParameters playbackParameters;
            private int playbackState;
            private int playbackSuppressionReason;
            private PlaybackException playerError;
            private ImmutableList playlist;
            private MediaMetadata playlistMetadata;
            private int positionDiscontinuityReason;
            private int repeatMode;
            private long seekBackIncrementMs;
            private long seekForwardIncrementMs;
            private boolean shuffleModeEnabled;
            private Size surfaceSize;
            private Metadata timedMetadata;
            private Timeline timeline;
            private PositionSupplier totalBufferedDurationMsSupplier;
            private TrackSelectionParameters trackSelectionParameters;
            private VideoSize videoSize;
            private float volume;

            private Builder(State state) {
                this.availableCommands = state.availableCommands;
                this.playWhenReady = state.playWhenReady;
                this.playWhenReadyChangeReason = state.playWhenReadyChangeReason;
                this.playbackState = state.playbackState;
                this.playbackSuppressionReason = state.playbackSuppressionReason;
                this.playerError = state.playerError;
                this.repeatMode = state.repeatMode;
                this.shuffleModeEnabled = state.shuffleModeEnabled;
                this.isLoading = state.isLoading;
                this.seekBackIncrementMs = state.seekBackIncrementMs;
                this.seekForwardIncrementMs = state.seekForwardIncrementMs;
                this.maxSeekToPreviousPositionMs = state.maxSeekToPreviousPositionMs;
                this.playbackParameters = state.playbackParameters;
                this.trackSelectionParameters = state.trackSelectionParameters;
                this.audioAttributes = state.audioAttributes;
                this.volume = state.volume;
                this.videoSize = state.videoSize;
                this.currentCues = state.currentCues;
                this.deviceInfo = state.deviceInfo;
                this.deviceVolume = state.deviceVolume;
                this.isDeviceMuted = state.isDeviceMuted;
                this.surfaceSize = state.surfaceSize;
                this.newlyRenderedFirstFrame = state.newlyRenderedFirstFrame;
                this.timedMetadata = state.timedMetadata;
                this.playlist = state.playlist;
                this.timeline = state.timeline;
                this.playlistMetadata = state.playlistMetadata;
                this.currentMediaItemIndex = state.currentMediaItemIndex;
                this.currentAdGroupIndex = state.currentAdGroupIndex;
                this.currentAdIndexInAdGroup = state.currentAdIndexInAdGroup;
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = state.contentPositionMsSupplier;
                this.adPositionMs = null;
                this.adPositionMsSupplier = state.adPositionMsSupplier;
                this.contentBufferedPositionMsSupplier = state.contentBufferedPositionMsSupplier;
                this.adBufferedPositionMsSupplier = state.adBufferedPositionMsSupplier;
                this.totalBufferedDurationMsSupplier = state.totalBufferedDurationMsSupplier;
                this.hasPositionDiscontinuity = state.hasPositionDiscontinuity;
                this.positionDiscontinuityReason = state.positionDiscontinuityReason;
                this.discontinuityPositionMs = state.discontinuityPositionMs;
            }

            public State build() {
                return new State(this);
            }

            public Builder clearPositionDiscontinuity() {
                this.hasPositionDiscontinuity = false;
                return this;
            }

            public Builder setAdBufferedPositionMs(PositionSupplier positionSupplier) {
                this.adBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setAdPositionMs(long j) {
                this.adPositionMs = Long.valueOf(j);
                return this;
            }

            public Builder setAudioAttributes(AudioAttributes audioAttributes) {
                this.audioAttributes = audioAttributes;
                return this;
            }

            public Builder setAvailableCommands(Player.Commands commands) {
                this.availableCommands = commands;
                return this;
            }

            public Builder setContentBufferedPositionMs(PositionSupplier positionSupplier) {
                this.contentBufferedPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setContentPositionMs(long j) {
                this.contentPositionMs = Long.valueOf(j);
                return this;
            }

            public Builder setCurrentAd(int i, int i2) {
                Assertions.checkArgument((i == -1) == (i2 == -1));
                this.currentAdGroupIndex = i;
                this.currentAdIndexInAdGroup = i2;
                return this;
            }

            public Builder setCurrentCues(CueGroup cueGroup) {
                this.currentCues = cueGroup;
                return this;
            }

            public Builder setCurrentMediaItemIndex(int i) {
                this.currentMediaItemIndex = i;
                return this;
            }

            public Builder setDeviceInfo(DeviceInfo deviceInfo) {
                this.deviceInfo = deviceInfo;
                return this;
            }

            public Builder setDeviceVolume(int i) {
                Assertions.checkArgument(i >= 0);
                this.deviceVolume = i;
                return this;
            }

            public Builder setIsDeviceMuted(boolean z) {
                this.isDeviceMuted = z;
                return this;
            }

            public Builder setIsLoading(boolean z) {
                this.isLoading = z;
                return this;
            }

            public Builder setMaxSeekToPreviousPositionMs(long j) {
                this.maxSeekToPreviousPositionMs = j;
                return this;
            }

            public Builder setNewlyRenderedFirstFrame(boolean z) {
                this.newlyRenderedFirstFrame = z;
                return this;
            }

            public Builder setPlayWhenReady(boolean z, int i) {
                this.playWhenReady = z;
                this.playWhenReadyChangeReason = i;
                return this;
            }

            public Builder setPlaybackParameters(PlaybackParameters playbackParameters) {
                this.playbackParameters = playbackParameters;
                return this;
            }

            public Builder setPlaybackState(int i) {
                this.playbackState = i;
                return this;
            }

            public Builder setPlaybackSuppressionReason(int i) {
                this.playbackSuppressionReason = i;
                return this;
            }

            public Builder setPlayerError(PlaybackException playbackException) {
                this.playerError = playbackException;
                return this;
            }

            public Builder setPlaylist(List<MediaItemData> list) {
                HashSet hashSet = new HashSet();
                for (int i = 0; i < list.size(); i++) {
                    Assertions.checkArgument(hashSet.add(list.get(i).uid), "Duplicate MediaItemData UID in playlist");
                }
                this.playlist = ImmutableList.copyOf((Collection) list);
                this.timeline = new PlaylistTimeline(this.playlist);
                return this;
            }

            public Builder setPlaylistMetadata(MediaMetadata mediaMetadata) {
                this.playlistMetadata = mediaMetadata;
                return this;
            }

            public Builder setPositionDiscontinuity(int i, long j) {
                this.hasPositionDiscontinuity = true;
                this.positionDiscontinuityReason = i;
                this.discontinuityPositionMs = j;
                return this;
            }

            public Builder setRepeatMode(int i) {
                this.repeatMode = i;
                return this;
            }

            public Builder setSeekBackIncrementMs(long j) {
                this.seekBackIncrementMs = j;
                return this;
            }

            public Builder setSeekForwardIncrementMs(long j) {
                this.seekForwardIncrementMs = j;
                return this;
            }

            public Builder setShuffleModeEnabled(boolean z) {
                this.shuffleModeEnabled = z;
                return this;
            }

            public Builder setSurfaceSize(Size size) {
                this.surfaceSize = size;
                return this;
            }

            public Builder setTimedMetadata(Metadata metadata) {
                this.timedMetadata = metadata;
                return this;
            }

            public Builder setTotalBufferedDurationMs(PositionSupplier positionSupplier) {
                this.totalBufferedDurationMsSupplier = positionSupplier;
                return this;
            }

            public Builder setTrackSelectionParameters(TrackSelectionParameters trackSelectionParameters) {
                this.trackSelectionParameters = trackSelectionParameters;
                return this;
            }

            public Builder setVideoSize(VideoSize videoSize) {
                this.videoSize = videoSize;
                return this;
            }

            public Builder setVolume(float f) {
                Assertions.checkArgument(f >= 0.0f && f <= 1.0f);
                this.volume = f;
                return this;
            }

            public Builder setAdPositionMs(PositionSupplier positionSupplier) {
                this.adPositionMs = null;
                this.adPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder setContentPositionMs(PositionSupplier positionSupplier) {
                this.contentPositionMs = null;
                this.contentPositionMsSupplier = positionSupplier;
                return this;
            }

            public Builder() {
                this.availableCommands = Player.Commands.EMPTY;
                this.playWhenReady = false;
                this.playWhenReadyChangeReason = 1;
                this.playbackState = 1;
                this.playbackSuppressionReason = 0;
                this.playerError = null;
                this.repeatMode = 0;
                this.shuffleModeEnabled = false;
                this.isLoading = false;
                this.seekBackIncrementMs = 5000L;
                this.seekForwardIncrementMs = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
                this.maxSeekToPreviousPositionMs = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                this.playbackParameters = PlaybackParameters.DEFAULT;
                this.trackSelectionParameters = TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
                this.audioAttributes = AudioAttributes.DEFAULT;
                this.volume = 1.0f;
                this.videoSize = VideoSize.UNKNOWN;
                this.currentCues = CueGroup.EMPTY_TIME_ZERO;
                this.deviceInfo = DeviceInfo.UNKNOWN;
                this.deviceVolume = 0;
                this.isDeviceMuted = false;
                this.surfaceSize = Size.UNKNOWN;
                this.newlyRenderedFirstFrame = false;
                this.timedMetadata = new Metadata(C.TIME_UNSET, new Metadata.Entry[0]);
                int i = ImmutableList.$r8$clinit;
                this.playlist = RegularImmutableList.EMPTY;
                this.timeline = Timeline.EMPTY;
                this.playlistMetadata = MediaMetadata.EMPTY;
                this.currentMediaItemIndex = -1;
                this.currentAdGroupIndex = -1;
                this.currentAdIndexInAdGroup = -1;
                this.contentPositionMs = null;
                int i2 = PositionSupplier.CC.$r8$clinit;
                this.contentPositionMsSupplier = new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(C.TIME_UNSET);
                this.adPositionMs = null;
                PositionSupplier positionSupplier = PositionSupplier.ZERO;
                this.adPositionMsSupplier = positionSupplier;
                this.contentBufferedPositionMsSupplier = new SimpleBasePlayer$PositionSupplier$$ExternalSyntheticLambda1(C.TIME_UNSET);
                this.adBufferedPositionMsSupplier = positionSupplier;
                this.totalBufferedDurationMsSupplier = positionSupplier;
                this.hasPositionDiscontinuity = false;
                this.positionDiscontinuityReason = 5;
                this.discontinuityPositionMs = 0L;
            }
        }
    }

    @Override // com.google.android.exoplayer2.Player, com.google.android.exoplayer2.ExoPlayer.VideoComponent
    public final void clearVideoSurface(Surface surface) {
        clearVideoOutput(surface);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class PeriodData {
        public final AdPlaybackState adPlaybackState;
        public final long durationUs;
        public final boolean isPlaceholder;
        public final Object uid;

        private PeriodData(Builder builder) {
            this.uid = builder.uid;
            this.durationUs = builder.durationUs;
            this.adPlaybackState = builder.adPlaybackState;
            this.isPlaceholder = builder.isPlaceholder;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PeriodData)) {
                return false;
            }
            PeriodData periodData = (PeriodData) obj;
            return this.uid.equals(periodData.uid) && this.durationUs == periodData.durationUs && this.adPlaybackState.equals(periodData.adPlaybackState) && this.isPlaceholder == periodData.isPlaceholder;
        }

        public int hashCode() {
            int hashCode = (this.uid.hashCode() + 217) * 31;
            long j = this.durationUs;
            return ((this.adPlaybackState.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31)) * 31) + (this.isPlaceholder ? 1 : 0);
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public static final class Builder {
            private AdPlaybackState adPlaybackState;
            private long durationUs;
            private boolean isPlaceholder;
            private Object uid;

            private Builder(PeriodData periodData) {
                this.uid = periodData.uid;
                this.durationUs = periodData.durationUs;
                this.adPlaybackState = periodData.adPlaybackState;
                this.isPlaceholder = periodData.isPlaceholder;
            }

            public PeriodData build() {
                return new PeriodData(this);
            }

            public Builder setAdPlaybackState(AdPlaybackState adPlaybackState) {
                this.adPlaybackState = adPlaybackState;
                return this;
            }

            public Builder setDurationUs(long j) {
                Assertions.checkArgument(j == C.TIME_UNSET || j >= 0);
                this.durationUs = j;
                return this;
            }

            public Builder setIsPlaceholder(boolean z) {
                this.isPlaceholder = z;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.durationUs = 0L;
                this.adPlaybackState = AdPlaybackState.NONE;
                this.isPlaceholder = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ State lambda$release$13(State state) {
        return state;
    }

    public State getPlaceholderState(State state) {
        return state;
    }

    @Override // com.google.android.exoplayer2.Player
    public final void decreaseDeviceVolume(int i) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleDecreaseDeviceVolume(i), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 2));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void increaseDeviceVolume(int i) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleIncreaseDeviceVolume(i), new SimpleBasePlayer$$ExternalSyntheticLambda1(state, 4));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setDeviceMuted(boolean z, int i) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(34)) {
            updateStateForPendingOperation(handleSetDeviceMuted(z, i), new SimpleBasePlayer$$ExternalSyntheticLambda3(state, z, 3));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setDeviceVolume(int i, int i2) {
        verifyApplicationThreadAndInitState();
        State state = this.state;
        if (shouldHandleCommand(33)) {
            updateStateForPendingOperation(handleSetDeviceVolume(i, i2), new SimpleBasePlayer$$ExternalSyntheticLambda4(state, i, 2));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public final void setMediaItems(List<MediaItem> list, int i, long j) {
        verifyApplicationThreadAndInitState();
        if (i == -1) {
            State state = this.state;
            int i2 = state.currentMediaItemIndex;
            long j2 = state.contentPositionMsSupplier.get();
            i = i2;
            j = j2;
        }
        setMediaItemsInternal(list, i, j);
    }

    public SimpleBasePlayer(Looper looper) {
        this(looper, Clock.DEFAULT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ListenableFuture lambda$handleReplaceMediaItems$30(ListenableFuture listenableFuture, Object obj) {
        return listenableFuture;
    }

    private void updateStateForPendingOperation(ListenableFuture listenableFuture, Supplier supplier) {
        updateStateForPendingOperation(listenableFuture, supplier, false, false);
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class MediaItemData {
        private final MediaMetadata combinedMediaMetadata;
        public final long defaultPositionUs;
        public final long durationUs;
        public final long elapsedRealtimeEpochOffsetMs;
        public final boolean isDynamic;
        public final boolean isPlaceholder;
        public final boolean isSeekable;
        public final MediaItem.LiveConfiguration liveConfiguration;
        public final Object manifest;
        public final MediaItem mediaItem;
        public final MediaMetadata mediaMetadata;
        private final long[] periodPositionInWindowUs;
        public final ImmutableList periods;
        public final long positionInFirstPeriodUs;
        public final long presentationStartTimeMs;
        public final Tracks tracks;
        public final Object uid;
        public final long windowStartTimeMs;

        private MediaItemData(Builder builder) {
            int i = 0;
            if (builder.liveConfiguration == null) {
                Assertions.checkArgument(builder.presentationStartTimeMs == C.TIME_UNSET, "presentationStartTimeMs can only be set if liveConfiguration != null");
                Assertions.checkArgument(builder.windowStartTimeMs == C.TIME_UNSET, "windowStartTimeMs can only be set if liveConfiguration != null");
                Assertions.checkArgument(builder.elapsedRealtimeEpochOffsetMs == C.TIME_UNSET, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null");
            } else if (builder.presentationStartTimeMs != C.TIME_UNSET && builder.windowStartTimeMs != C.TIME_UNSET) {
                Assertions.checkArgument(builder.windowStartTimeMs >= builder.presentationStartTimeMs, "windowStartTimeMs can't be less than presentationStartTimeMs");
            }
            int size = builder.periods.size();
            if (builder.durationUs != C.TIME_UNSET) {
                Assertions.checkArgument(builder.defaultPositionUs <= builder.durationUs, "defaultPositionUs can't be greater than durationUs");
            }
            this.uid = builder.uid;
            this.tracks = builder.tracks;
            this.mediaItem = builder.mediaItem;
            this.mediaMetadata = builder.mediaMetadata;
            this.manifest = builder.manifest;
            this.liveConfiguration = builder.liveConfiguration;
            this.presentationStartTimeMs = builder.presentationStartTimeMs;
            this.windowStartTimeMs = builder.windowStartTimeMs;
            this.elapsedRealtimeEpochOffsetMs = builder.elapsedRealtimeEpochOffsetMs;
            this.isSeekable = builder.isSeekable;
            this.isDynamic = builder.isDynamic;
            this.defaultPositionUs = builder.defaultPositionUs;
            this.durationUs = builder.durationUs;
            long j = builder.positionInFirstPeriodUs;
            this.positionInFirstPeriodUs = j;
            this.isPlaceholder = builder.isPlaceholder;
            ImmutableList immutableList = builder.periods;
            this.periods = immutableList;
            long[] jArr = new long[immutableList.size()];
            this.periodPositionInWindowUs = jArr;
            if (!immutableList.isEmpty()) {
                jArr[0] = -j;
                while (i < size - 1) {
                    long[] jArr2 = this.periodPositionInWindowUs;
                    int i2 = i + 1;
                    jArr2[i2] = jArr2[i] + ((PeriodData) this.periods.get(i)).durationUs;
                    i = i2;
                }
            }
            MediaMetadata mediaMetadata = this.mediaMetadata;
            this.combinedMediaMetadata = mediaMetadata == null ? getCombinedMediaMetadata(this.mediaItem, this.tracks) : mediaMetadata;
        }

        private static MediaMetadata getCombinedMediaMetadata(MediaItem mediaItem, Tracks tracks) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            int size = tracks.getGroups().size();
            for (int i = 0; i < size; i++) {
                Tracks.Group group = (Tracks.Group) tracks.getGroups().get(i);
                for (int i2 = 0; i2 < group.length; i2++) {
                    if (group.isTrackSelected(i2)) {
                        Format trackFormat = group.getTrackFormat(i2);
                        if (trackFormat.metadata != null) {
                            for (int i3 = 0; i3 < trackFormat.metadata.length(); i3++) {
                                trackFormat.metadata.get(i3).populateMediaMetadata(builder);
                            }
                        }
                    }
                }
            }
            return builder.populate(mediaItem.mediaMetadata).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Period getPeriod(int i, int i2, Timeline.Period period) {
            if (this.periods.isEmpty()) {
                Object obj = this.uid;
                period.set(obj, obj, i, this.positionInFirstPeriodUs + this.durationUs, 0L, AdPlaybackState.NONE, this.isPlaceholder);
                return period;
            }
            PeriodData periodData = (PeriodData) this.periods.get(i2);
            Object obj2 = periodData.uid;
            period.set(obj2, Pair.create(this.uid, obj2), i, periodData.durationUs, this.periodPositionInWindowUs[i2], periodData.adPlaybackState, periodData.isPlaceholder);
            return period;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Object getPeriodUid(int i) {
            if (this.periods.isEmpty()) {
                return this.uid;
            }
            return Pair.create(this.uid, ((PeriodData) this.periods.get(i)).uid);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Timeline.Window getWindow(int i, Timeline.Window window) {
            int size;
            boolean z;
            if (this.periods.isEmpty()) {
                size = 1;
                z = true;
            } else {
                size = this.periods.size();
                z = true;
            }
            window.set(this.uid, this.mediaItem, this.manifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, this.isSeekable, this.isDynamic, this.liveConfiguration, this.defaultPositionUs, this.durationUs, i, (i + size) - 1, this.positionInFirstPeriodUs);
            window.isPlaceholder = this.isPlaceholder;
            return window;
        }

        public Builder buildUpon() {
            return new Builder();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaItemData)) {
                return false;
            }
            MediaItemData mediaItemData = (MediaItemData) obj;
            return this.uid.equals(mediaItemData.uid) && this.tracks.equals(mediaItemData.tracks) && this.mediaItem.equals(mediaItemData.mediaItem) && Util.areEqual(this.mediaMetadata, mediaItemData.mediaMetadata) && Util.areEqual(this.manifest, mediaItemData.manifest) && Util.areEqual(this.liveConfiguration, mediaItemData.liveConfiguration) && this.presentationStartTimeMs == mediaItemData.presentationStartTimeMs && this.windowStartTimeMs == mediaItemData.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == mediaItemData.elapsedRealtimeEpochOffsetMs && this.isSeekable == mediaItemData.isSeekable && this.isDynamic == mediaItemData.isDynamic && this.defaultPositionUs == mediaItemData.defaultPositionUs && this.durationUs == mediaItemData.durationUs && this.positionInFirstPeriodUs == mediaItemData.positionInFirstPeriodUs && this.isPlaceholder == mediaItemData.isPlaceholder && this.periods.equals(mediaItemData.periods);
        }

        public int hashCode() {
            int hashCode = (this.mediaItem.hashCode() + ((this.tracks.hashCode() + ((this.uid.hashCode() + 217) * 31)) * 31)) * 31;
            MediaMetadata mediaMetadata = this.mediaMetadata;
            int hashCode2 = (hashCode + (mediaMetadata == null ? 0 : mediaMetadata.hashCode())) * 31;
            Object obj = this.manifest;
            int hashCode3 = (hashCode2 + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int hashCode4 = liveConfiguration != null ? liveConfiguration.hashCode() : 0;
            long j = this.presentationStartTimeMs;
            int i = (((hashCode3 + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.windowStartTimeMs;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.elapsedRealtimeEpochOffsetMs;
            int i3 = (((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31;
            long j4 = this.defaultPositionUs;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.durationUs;
            int i5 = (i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
            long j6 = this.positionInFirstPeriodUs;
            return this.periods.hashCode() + ((((i5 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31);
        }

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public static final class Builder {
            private long defaultPositionUs;
            private long durationUs;
            private long elapsedRealtimeEpochOffsetMs;
            private boolean isDynamic;
            private boolean isPlaceholder;
            private boolean isSeekable;
            private MediaItem.LiveConfiguration liveConfiguration;
            private Object manifest;
            private MediaItem mediaItem;
            private MediaMetadata mediaMetadata;
            private ImmutableList periods;
            private long positionInFirstPeriodUs;
            private long presentationStartTimeMs;
            private Tracks tracks;
            private Object uid;
            private long windowStartTimeMs;

            private Builder(MediaItemData mediaItemData) {
                this.uid = mediaItemData.uid;
                this.tracks = mediaItemData.tracks;
                this.mediaItem = mediaItemData.mediaItem;
                this.mediaMetadata = mediaItemData.mediaMetadata;
                this.manifest = mediaItemData.manifest;
                this.liveConfiguration = mediaItemData.liveConfiguration;
                this.presentationStartTimeMs = mediaItemData.presentationStartTimeMs;
                this.windowStartTimeMs = mediaItemData.windowStartTimeMs;
                this.elapsedRealtimeEpochOffsetMs = mediaItemData.elapsedRealtimeEpochOffsetMs;
                this.isSeekable = mediaItemData.isSeekable;
                this.isDynamic = mediaItemData.isDynamic;
                this.defaultPositionUs = mediaItemData.defaultPositionUs;
                this.durationUs = mediaItemData.durationUs;
                this.positionInFirstPeriodUs = mediaItemData.positionInFirstPeriodUs;
                this.isPlaceholder = mediaItemData.isPlaceholder;
                this.periods = mediaItemData.periods;
            }

            public MediaItemData build() {
                return new MediaItemData(this);
            }

            public Builder setDefaultPositionUs(long j) {
                Assertions.checkArgument(j >= 0);
                this.defaultPositionUs = j;
                return this;
            }

            public Builder setDurationUs(long j) {
                Assertions.checkArgument(j == C.TIME_UNSET || j >= 0);
                this.durationUs = j;
                return this;
            }

            public Builder setElapsedRealtimeEpochOffsetMs(long j) {
                this.elapsedRealtimeEpochOffsetMs = j;
                return this;
            }

            public Builder setIsDynamic(boolean z) {
                this.isDynamic = z;
                return this;
            }

            public Builder setIsPlaceholder(boolean z) {
                this.isPlaceholder = z;
                return this;
            }

            public Builder setIsSeekable(boolean z) {
                this.isSeekable = z;
                return this;
            }

            public Builder setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
                this.liveConfiguration = liveConfiguration;
                return this;
            }

            public Builder setManifest(Object obj) {
                this.manifest = obj;
                return this;
            }

            public Builder setMediaItem(MediaItem mediaItem) {
                this.mediaItem = mediaItem;
                return this;
            }

            public Builder setMediaMetadata(MediaMetadata mediaMetadata) {
                this.mediaMetadata = mediaMetadata;
                return this;
            }

            public Builder setPeriods(List<PeriodData> list) {
                int size = list.size();
                int i = 0;
                while (i < size - 1) {
                    Assertions.checkArgument(list.get(i).durationUs != C.TIME_UNSET, "Periods other than last need a duration");
                    int i2 = i + 1;
                    for (int i3 = i2; i3 < size; i3++) {
                        Assertions.checkArgument(!list.get(i).uid.equals(list.get(i3).uid), "Duplicate PeriodData UIDs in period list");
                    }
                    i = i2;
                }
                this.periods = ImmutableList.copyOf((Collection) list);
                return this;
            }

            public Builder setPositionInFirstPeriodUs(long j) {
                Assertions.checkArgument(j >= 0);
                this.positionInFirstPeriodUs = j;
                return this;
            }

            public Builder setPresentationStartTimeMs(long j) {
                this.presentationStartTimeMs = j;
                return this;
            }

            public Builder setTracks(Tracks tracks) {
                this.tracks = tracks;
                return this;
            }

            public Builder setUid(Object obj) {
                this.uid = obj;
                return this;
            }

            public Builder setWindowStartTimeMs(long j) {
                this.windowStartTimeMs = j;
                return this;
            }

            public Builder(Object obj) {
                this.uid = obj;
                this.tracks = Tracks.EMPTY;
                this.mediaItem = MediaItem.EMPTY;
                this.mediaMetadata = null;
                this.manifest = null;
                this.liveConfiguration = null;
                this.presentationStartTimeMs = C.TIME_UNSET;
                this.windowStartTimeMs = C.TIME_UNSET;
                this.elapsedRealtimeEpochOffsetMs = C.TIME_UNSET;
                this.isSeekable = false;
                this.isDynamic = false;
                this.defaultPositionUs = 0L;
                this.durationUs = C.TIME_UNSET;
                this.positionInFirstPeriodUs = 0L;
                this.isPlaceholder = false;
                int i = ImmutableList.$r8$clinit;
                this.periods = RegularImmutableList.EMPTY;
            }
        }
    }
}
