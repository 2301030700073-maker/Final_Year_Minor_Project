package expo.modules.video.player;

import androidx.media3.common.C;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultLoadControl;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;
import com.facebook.appevents.AppEventsConstants;
import expo.modules.video.records.BufferOptions;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoPlayerLoadControl.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u000b\b\u0007\u0018\u0000 K2\u00020\u0001:\u0002JKBQ\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fB\t\b\u0016¢\u0006\u0004\b\u000e\u0010\u0010J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\b\u0010.\u001a\u00020+H\u0002J\b\u0010/\u001a\u00020+H\u0016JA\u00100\u001a\u00020+2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u00105\u001a\u0002062\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001aH\u0016¢\u0006\u0002\u00107J\b\u00108\u001a\u00020+H\u0016J\b\u00109\u001a\u00020+H\u0016J\b\u0010:\u001a\u00020;H\u0016J\b\u0010<\u001a\u00020\u0012H\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016J \u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u00122\u0006\u0010@\u001a\u00020AH\u0016J8\u0010B\u001a\u00020\u000b2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u0010?\u001a\u00020\u00122\u0006\u0010@\u001a\u00020A2\u0006\u0010C\u001a\u00020\u000b2\u0006\u0010D\u001a\u00020\u0012H\u0016J)\u0010E\u001a\u00020\u00052\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001aH\u0004¢\u0006\u0002\u0010GJ\u0010\u0010H\u001a\u00020+2\u0006\u0010I\u001a\u00020\u000bH\u0002R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001cR\u0018\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010!\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R$\u0010\u0007\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010#\"\u0004\b'\u0010%R$\u0010\b\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0012@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%¨\u0006L"}, d2 = {"Lexpo/modules/video/player/VideoPlayerLoadControl;", "Landroidx/media3/exoplayer/LoadControl;", "allocator", "Landroidx/media3/exoplayer/upstream/DefaultAllocator;", "minBufferMs", "", "maxBufferMs", "bufferForPlaybackMs", "bufferForPlaybackAfterRebufferMs", "targetBufferBytes", "prioritizeTimeOverSizeThresholds", "", "backBufferDurationMs", "retainBackBufferFromKeyframe", "<init>", "(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIZIZ)V", "()V", "minBufferUs", "", "maxBufferUs", "bufferForPlaybackUs", "bufferForPlaybackAfterRebufferUs", "targetBufferBytesOverwrite", "backBufferDurationUs", "isLoading", "renderers", "", "Landroidx/media3/exoplayer/Renderer;", "[Landroidx/media3/exoplayer/Renderer;", "trackSelections", "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;", "[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;", "value", "targetBufferMs", "getTargetBufferMs", "()J", "setTargetBufferMs", "(J)V", "getBufferForPlaybackMs", "setBufferForPlaybackMs", "getBufferForPlaybackAfterRebufferMs", "setBufferForPlaybackAfterRebufferMs", "applyBufferOptions", "", "bufferOptions", "Lexpo/modules/video/records/BufferOptions;", "applyBufferBytes", "onPrepared", "onTracksSelected", "timeline", "Landroidx/media3/common/Timeline;", "mediaPeriodId", "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;", "trackGroups", "Landroidx/media3/exoplayer/source/TrackGroupArray;", "(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V", "onStopped", "onReleased", "getAllocator", "Landroidx/media3/exoplayer/upstream/Allocator;", "getBackBufferDurationUs", "shouldContinueLoading", "playbackPositionUs", "bufferedDurationUs", "playbackSpeed", "", "shouldStartPlayback", "rebuffering", "targetLiveOffsetUs", "calculateTargetBufferBytes", "trackSelectionArray", "([Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)I", "reset", "resetAllocator", "Builder", "Companion", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class VideoPlayerLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 2000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2000;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MAX_BUFFER_MS = 25000;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_MS = 25000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private long bufferForPlaybackAfterRebufferMs;
    private long bufferForPlaybackAfterRebufferUs;
    private long bufferForPlaybackMs;
    private long bufferForPlaybackUs;
    private boolean isLoading;
    private long maxBufferUs;
    private long minBufferUs;
    private boolean prioritizeTimeOverSizeThresholds;
    private Renderer[] renderers;
    private final boolean retainBackBufferFromKeyframe;
    private int targetBufferBytes;
    private int targetBufferBytesOverwrite;
    private long targetBufferMs;
    private ExoTrackSelection[] trackSelections;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DEFAULT_MUXED_BUFFER_SIZE = DefaultLoadControl.DEFAULT_MUXED_BUFFER_SIZE;

    public /* synthetic */ VideoPlayerLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2, DefaultConstructorMarker defaultConstructorMarker) {
        this(defaultAllocator, i, i2, i3, i4, i5, z, i6, z2);
    }

    private VideoPlayerLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        this.targetBufferMs = 25000L;
        this.bufferForPlaybackMs = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        this.bufferForPlaybackAfterRebufferMs = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;
        Companion companion = INSTANCE;
        companion.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        companion.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        companion.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
        companion.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        companion.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
        companion.assertGreaterOrEqual(i6, 0, "backBufferDurationMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.msToUs(i);
        this.maxBufferUs = Util.msToUs(i2);
        this.bufferForPlaybackUs = Util.msToUs(i3);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(i4);
        this.targetBufferBytesOverwrite = i5;
        this.targetBufferBytes = i5 == -1 ? 13107200 : i5;
        this.prioritizeTimeOverSizeThresholds = z;
        this.backBufferDurationUs = Util.msToUs(i6);
        this.retainBackBufferFromKeyframe = z2;
    }

    /* compiled from: VideoPlayerLoadControl.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J&\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0016\u001a\u00020\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lexpo/modules/video/player/VideoPlayerLoadControl$Builder;", "", "<init>", "()V", "allocator", "Landroidx/media3/exoplayer/upstream/DefaultAllocator;", "minBufferMs", "", "maxBufferMs", "bufferForPlaybackMs", "bufferForPlaybackAfterRebufferMs", "targetBufferBytes", "prioritizeTimeOverSizeThresholds", "", "backBufferDurationMs", "retainBackBufferFromKeyframe", "buildCalled", "setAllocator", "setBufferDurationsMs", "setTargetBufferBytes", "setPrioritizeTimeOverSizeThresholds", "setBackBuffer", "build", "Lexpo/modules/video/player/VideoPlayerLoadControl;", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Builder {
        private DefaultAllocator allocator;
        private boolean buildCalled;
        private int minBufferMs = 25000;
        private int maxBufferMs = 25000;
        private int bufferForPlaybackMs = 2000;
        private int bufferForPlaybackAfterRebufferMs = 2000;
        private int targetBufferBytes = -1;
        private boolean prioritizeTimeOverSizeThresholds = false;
        private int backBufferDurationMs = 0;
        private boolean retainBackBufferFromKeyframe = false;

        public final Builder setAllocator(DefaultAllocator allocator) {
            Assertions.checkState(!this.buildCalled);
            this.allocator = allocator;
            return this;
        }

        public final Builder setBufferDurationsMs(int minBufferMs, int maxBufferMs, int bufferForPlaybackMs, int bufferForPlaybackAfterRebufferMs) {
            Assertions.checkState(!this.buildCalled);
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(bufferForPlaybackMs, 0, "bufferForPlaybackMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(bufferForPlaybackAfterRebufferMs, 0, "bufferForPlaybackAfterRebufferMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(minBufferMs, bufferForPlaybackMs, "minBufferMs", "bufferForPlaybackMs");
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(minBufferMs, bufferForPlaybackAfterRebufferMs, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(maxBufferMs, minBufferMs, "maxBufferMs", "minBufferMs");
            this.minBufferMs = minBufferMs;
            this.maxBufferMs = maxBufferMs;
            this.bufferForPlaybackMs = bufferForPlaybackMs;
            this.bufferForPlaybackAfterRebufferMs = bufferForPlaybackAfterRebufferMs;
            return this;
        }

        public final Builder setTargetBufferBytes(int targetBufferBytes) {
            Assertions.checkState(!this.buildCalled);
            this.targetBufferBytes = targetBufferBytes;
            return this;
        }

        public final Builder setPrioritizeTimeOverSizeThresholds(boolean prioritizeTimeOverSizeThresholds) {
            Assertions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = prioritizeTimeOverSizeThresholds;
            return this;
        }

        public final Builder setBackBuffer(int backBufferDurationMs, boolean retainBackBufferFromKeyframe) {
            Assertions.checkState(!this.buildCalled);
            VideoPlayerLoadControl.INSTANCE.assertGreaterOrEqual(backBufferDurationMs, 0, "backBufferDurationMs", AppEventsConstants.EVENT_PARAM_VALUE_NO);
            this.backBufferDurationMs = backBufferDurationMs;
            this.retainBackBufferFromKeyframe = retainBackBufferFromKeyframe;
            return this;
        }

        public final VideoPlayerLoadControl build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            DefaultAllocator defaultAllocator = this.allocator;
            Intrinsics.checkNotNull(defaultAllocator);
            return new VideoPlayerLoadControl(defaultAllocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.backBufferDurationMs, this.retainBackBufferFromKeyframe, null);
        }
    }

    public final long getTargetBufferMs() {
        return this.targetBufferMs;
    }

    public final void setTargetBufferMs(long j) {
        this.minBufferUs = Util.msToUs(j);
        this.maxBufferUs = Util.msToUs(j);
    }

    public final long getBufferForPlaybackMs() {
        return this.bufferForPlaybackMs;
    }

    public final void setBufferForPlaybackMs(long j) {
        this.bufferForPlaybackUs = Util.msToUs(j);
    }

    public final long getBufferForPlaybackAfterRebufferMs() {
        return this.bufferForPlaybackAfterRebufferMs;
    }

    public final void setBufferForPlaybackAfterRebufferMs(long j) {
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(j);
    }

    public VideoPlayerLoadControl() {
        this(new DefaultAllocator(true, 65536), 25000, 25000, 2000, 2000, -1, false, 0, false);
    }

    public final void applyBufferOptions(BufferOptions bufferOptions) {
        Number valueOf;
        Intrinsics.checkNotNullParameter(bufferOptions, "bufferOptions");
        Double preferredForwardBufferDuration = bufferOptions.getPreferredForwardBufferDuration();
        if (preferredForwardBufferDuration != null) {
            setTargetBufferMs((long) (preferredForwardBufferDuration.doubleValue() * 1000));
        } else {
            setTargetBufferMs(25000L);
        }
        int maxBufferBytes = bufferOptions.getMaxBufferBytes() == 0 ? -1 : (int) bufferOptions.getMaxBufferBytes();
        this.targetBufferBytesOverwrite = maxBufferBytes;
        if (maxBufferBytes != -1) {
            this.targetBufferBytes = maxBufferBytes;
        }
        applyBufferBytes();
        this.prioritizeTimeOverSizeThresholds = bufferOptions.getPrioritizeTimeOverSizeThreshold();
        double minBufferForPlayback = bufferOptions.getMinBufferForPlayback() * 1000;
        long j = this.targetBufferMs;
        if (minBufferForPlayback > j) {
            valueOf = Long.valueOf(j);
        } else {
            valueOf = Double.valueOf(bufferOptions.getMinBufferForPlayback());
        }
        setBufferForPlaybackMs(valueOf.longValue());
        setBufferForPlaybackAfterRebufferMs(valueOf.longValue());
    }

    private final void applyBufferBytes() {
        ExoTrackSelection[] exoTrackSelectionArr;
        Renderer[] rendererArr = this.renderers;
        Integer num = null;
        if (rendererArr != null && (exoTrackSelectionArr = this.trackSelections) != null) {
            num = Integer.valueOf(calculateTargetBufferBytes(rendererArr, exoTrackSelectionArr));
        }
        int i = this.targetBufferBytesOverwrite;
        if (i == -1 && num != null) {
            this.allocator.setTargetBufferSize(num.intValue());
            this.targetBufferBytes = num.intValue();
        } else {
            this.allocator.setTargetBufferSize(i);
        }
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onTracksSelected(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, Renderer[] renderers, TrackGroupArray trackGroups, ExoTrackSelection[] trackSelections) {
        Intrinsics.checkNotNullParameter(timeline, "timeline");
        Intrinsics.checkNotNullParameter(mediaPeriodId, "mediaPeriodId");
        Intrinsics.checkNotNullParameter(renderers, "renderers");
        Intrinsics.checkNotNullParameter(trackGroups, "trackGroups");
        Intrinsics.checkNotNullParameter(trackSelections, "trackSelections");
        this.renderers = renderers;
        this.trackSelections = trackSelections;
        applyBufferBytes();
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    /* renamed from: retainBackBufferFromKeyframe, reason: from getter */
    public boolean getRetainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldContinueLoading(long playbackPositionUs, long bufferedDurationUs, float playbackSpeed) {
        boolean z = true;
        boolean z2 = this.allocator.getTotalBytesAllocated() >= this.targetBufferBytes;
        long j = this.minBufferUs;
        if (playbackSpeed > 1.0f) {
            j = (long) Math.min(Util.getMediaDurationForPlayoutDuration(j, playbackSpeed), this.maxBufferUs);
        }
        if (bufferedDurationUs < ((long) Math.max(j, 500000.0d))) {
            if (!this.prioritizeTimeOverSizeThresholds && z2) {
                z = false;
            }
            this.isLoading = z;
            if (!z && bufferedDurationUs < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (bufferedDurationUs >= this.maxBufferUs || z2) {
            this.isLoading = false;
        }
        return this.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean shouldStartPlayback(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId, long bufferedDurationUs, float playbackSpeed, boolean rebuffering, long targetLiveOffsetUs) {
        Intrinsics.checkNotNullParameter(timeline, "timeline");
        Intrinsics.checkNotNullParameter(mediaPeriodId, "mediaPeriodId");
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(bufferedDurationUs, playbackSpeed);
        long j = rebuffering ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        if (targetLiveOffsetUs != C.TIME_UNSET) {
            j = (long) Math.min(targetLiveOffsetUs / 2, j);
        }
        return j <= 0 || playoutDurationForMediaDuration >= j || (!this.prioritizeTimeOverSizeThresholds && this.allocator.getTotalBytesAllocated() >= this.targetBufferBytes);
    }

    protected final int calculateTargetBufferBytes(Renderer[] renderers, ExoTrackSelection[] trackSelectionArray) {
        Intrinsics.checkNotNullParameter(renderers, "renderers");
        Intrinsics.checkNotNullParameter(trackSelectionArray, "trackSelectionArray");
        int length = renderers.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (trackSelectionArray[i2] != null) {
                i += INSTANCE.getDefaultBufferSize(renderers[i2].getTrackType());
            }
        }
        return (int) Math.max(1.31072E7d, i);
    }

    private final void reset(boolean resetAllocator) {
        int i = this.targetBufferBytesOverwrite;
        if (i == -1) {
            i = 13107200;
        }
        this.targetBufferBytes = i;
        this.isLoading = false;
        if (resetAllocator) {
            this.allocator.reset();
        }
    }

    /* compiled from: VideoPlayerLoadControl.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lexpo/modules/video/player/VideoPlayerLoadControl$Companion;", "", "<init>", "()V", "DEFAULT_MIN_BUFFER_MS", "", "DEFAULT_MAX_BUFFER_MS", "DEFAULT_BUFFER_FOR_PLAYBACK_MS", "DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS", "DEFAULT_TARGET_BUFFER_BYTES", "DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS", "", "DEFAULT_BACK_BUFFER_DURATION_MS", "DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME", "DEFAULT_VIDEO_BUFFER_SIZE", "DEFAULT_AUDIO_BUFFER_SIZE", "DEFAULT_TEXT_BUFFER_SIZE", "DEFAULT_METADATA_BUFFER_SIZE", "DEFAULT_CAMERA_MOTION_BUFFER_SIZE", "DEFAULT_IMAGE_BUFFER_SIZE", "DEFAULT_MUXED_BUFFER_SIZE", "getDEFAULT_MUXED_BUFFER_SIZE", "()I", "DEFAULT_MIN_BUFFER_SIZE", "getDefaultBufferSize", "trackType", "assertGreaterOrEqual", "", "value1", "value2", "name1", "", "name2", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final int getDEFAULT_MUXED_BUFFER_SIZE() {
            return VideoPlayerLoadControl.DEFAULT_MUXED_BUFFER_SIZE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getDefaultBufferSize(int trackType) {
            switch (trackType) {
                case -2:
                    return 0;
                case -1:
                    throw new IllegalArgumentException();
                case 0:
                    return getDEFAULT_MUXED_BUFFER_SIZE();
                case 1:
                    return 13107200;
                case 2:
                    return 131072000;
                case 3:
                case 4:
                case 5:
                case 6:
                    return 131072;
                default:
                    throw new IllegalArgumentException();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void assertGreaterOrEqual(int value1, int value2, String name1, String name2) {
            Assertions.checkArgument(value1 >= value2, name1 + " cannot be less than " + name2);
        }
    }
}
