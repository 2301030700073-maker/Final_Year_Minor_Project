package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.audio.DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecInfo;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.DebugViewProvider;
import com.google.android.exoplayer2.util.Effect;
import com.google.android.exoplayer2.util.FrameInfo;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MediaFormatUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Size;
import com.google.android.exoplayer2.util.SurfaceInfo;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.util.VideoFrameProcessingException;
import com.google.android.exoplayer2.util.VideoFrameProcessor;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.RegularImmutableList;
import j$.util.Objects;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private final Context context;
    private VideoSize decodedVideoSize;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private Surface displaySurface;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private long initialPositionUs;
    private long joiningDeadlineMs;
    private long lastBufferPresentationTimeUs;
    private long lastFrameReleaseTimeNs;
    private long lastRenderRealtimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    private PlaceholderSurface placeholderSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    private int videoFrameProcessingOffsetCount;
    private final VideoFrameProcessorManager videoFrameProcessorManager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class Api26 {
        private Api26() {
        }

        public static boolean doesDisplaySupportDolbyVision(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display != null && display.isHdr()) {
                for (int i : display.getHdrCapabilities().getSupportedHdrTypes()) {
                    if (i == 1) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.inputSize = i3;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OnFrameRenderedListenerV23 implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;

        public OnFrameRenderedListenerV23(MediaCodecAdapter mediaCodecAdapter) {
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper(this);
            this.handler = createHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, createHandlerForCurrentLooper);
        }

        private void handleFrameRendered(long j) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener || mediaCodecVideoRenderer.getCodec() == null) {
                return;
            }
            MediaCodecVideoRenderer mediaCodecVideoRenderer2 = MediaCodecVideoRenderer.this;
            if (j == Long.MAX_VALUE) {
                mediaCodecVideoRenderer2.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                mediaCodecVideoRenderer2.onProcessedTunneledBuffer(j);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            handleFrameRendered(Util.toLong(message.arg1, message.arg2));
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j, long j2) {
            if (Util.SDK_INT >= 30) {
                handleFrameRendered(j);
            } else {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j >> 32), (int) j));
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public static final class VideoFrameProcessorManager {
        private static final long EARLY_THRESHOLD_US = 50000;
        private Pair<Long, Format> currentFrameFormat;
        private Pair<Surface, Size> currentSurfaceAndSize;
        private final VideoFrameReleaseHelper frameReleaseHelper;
        private Handler handler;
        private Format inputFormat;
        private boolean pendingOutputSizeChange;
        private boolean processedLastFrame;
        private boolean registeredLastFrame;
        private boolean releasedLastFrame;
        private final MediaCodecVideoRenderer renderer;
        private CopyOnWriteArrayList<Effect> videoEffects;
        private VideoFrameProcessor videoFrameProcessor;
        private final ArrayDeque<Long> processedFramesTimestampsUs = new ArrayDeque<>();
        private final ArrayDeque<Pair<Long, Format>> pendingFrameFormats = new ArrayDeque<>();
        private int videoFrameProcessorMaxPendingFrameCount = -1;
        private boolean canEnableFrameProcessing = true;
        private long lastCodecBufferPresentationTimestampUs = C.TIME_UNSET;
        private VideoSize processedFrameSize = VideoSize.UNKNOWN;
        private long pendingOutputSizeChangeNotificationTimeUs = C.TIME_UNSET;
        private long initialStreamOffsetUs = C.TIME_UNSET;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public static final class VideoFrameProcessorAccessor {
            private static Method buildScaleAndRotateTransformationMethod;
            private static Method buildVideoFrameProcessorFactoryMethod;
            private static Constructor<?> scaleAndRotateTransformationBuilderConstructor;
            private static Method setRotationMethod;
            private static Constructor<?> videoFrameProcessorFactoryBuilderConstructor;

            private VideoFrameProcessorAccessor() {
            }

            public static Effect createRotationEffect(float f) {
                prepare();
                Object newInstance = scaleAndRotateTransformationBuilderConstructor.newInstance(null);
                setRotationMethod.invoke(newInstance, Float.valueOf(f));
                return (Effect) Assertions.checkNotNull(buildScaleAndRotateTransformationMethod.invoke(newInstance, null));
            }

            public static VideoFrameProcessor.Factory getFrameProcessorFactory() {
                prepare();
                return (VideoFrameProcessor.Factory) Assertions.checkNotNull(buildVideoFrameProcessorFactoryMethod.invoke(videoFrameProcessorFactoryBuilderConstructor.newInstance(null), null));
            }

            private static void prepare() {
                if (scaleAndRotateTransformationBuilderConstructor == null || setRotationMethod == null || buildScaleAndRotateTransformationMethod == null) {
                    Class<?> cls = Class.forName("com.google.android.exoplayer2.effect.ScaleAndRotateTransformation$Builder");
                    scaleAndRotateTransformationBuilderConstructor = cls.getConstructor(null);
                    setRotationMethod = cls.getMethod("setRotationDegrees", Float.TYPE);
                    buildScaleAndRotateTransformationMethod = cls.getMethod("build", null);
                }
                if (videoFrameProcessorFactoryBuilderConstructor == null || buildVideoFrameProcessorFactoryMethod == null) {
                    Class<?> cls2 = Class.forName("com.google.android.exoplayer2.effect.DefaultVideoFrameProcessor$Factory$Builder");
                    videoFrameProcessorFactoryBuilderConstructor = cls2.getConstructor(null);
                    buildVideoFrameProcessorFactoryMethod = cls2.getMethod("build", null);
                }
            }
        }

        public VideoFrameProcessorManager(VideoFrameReleaseHelper videoFrameReleaseHelper, MediaCodecVideoRenderer mediaCodecVideoRenderer) {
            this.frameReleaseHelper = videoFrameReleaseHelper;
            this.renderer = mediaCodecVideoRenderer;
        }

        private void releaseProcessedFrameInternal(long j, boolean z) {
            Assertions.checkStateNotNull(this.videoFrameProcessor);
            this.videoFrameProcessor.renderOutputFrame(j);
            this.processedFramesTimestampsUs.remove();
            this.renderer.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
            if (j != -2) {
                this.renderer.maybeNotifyRenderedFirstFrame();
            }
            if (z) {
                this.releasedLastFrame = true;
            }
        }

        public MediaFormat amendMediaFormatKeys(MediaFormat mediaFormat) {
            if (Util.SDK_INT >= 29 && this.renderer.context.getApplicationContext().getApplicationInfo().targetSdkVersion >= 29) {
                mediaFormat.setInteger("allow-frame-drop", 0);
            }
            return mediaFormat;
        }

        public void clearOutputSurfaceInfo() {
            ((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).setOutputSurfaceInfo(null);
            this.currentSurfaceAndSize = null;
        }

        public void flush() {
            Assertions.checkStateNotNull(this.videoFrameProcessor);
            this.videoFrameProcessor.flush();
            this.processedFramesTimestampsUs.clear();
            this.handler.removeCallbacksAndMessages(null);
            if (this.registeredLastFrame) {
                this.registeredLastFrame = false;
                this.processedLastFrame = false;
                this.releasedLastFrame = false;
            }
        }

        public long getCorrectedFramePresentationTimeUs(long j, long j2) {
            Assertions.checkState(this.initialStreamOffsetUs != C.TIME_UNSET);
            return (j + j2) - this.initialStreamOffsetUs;
        }

        public Surface getInputSurface() {
            return ((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).getInputSurface();
        }

        public boolean isEnabled() {
            return this.videoFrameProcessor != null;
        }

        public boolean isReady() {
            Pair<Surface, Size> pair = this.currentSurfaceAndSize;
            return pair == null || !((Size) pair.second).equals(Size.UNKNOWN);
        }

        public boolean maybeEnable(final Format format, long j) {
            int i;
            Assertions.checkState(!isEnabled());
            if (!this.canEnableFrameProcessing) {
                return false;
            }
            if (this.videoEffects == null) {
                this.canEnableFrameProcessing = false;
                return false;
            }
            this.handler = Util.createHandlerForCurrentLooper();
            Pair<ColorInfo, ColorInfo> experimentalGetVideoFrameProcessorColorConfiguration = this.renderer.experimentalGetVideoFrameProcessorColorConfiguration(format.colorInfo);
            try {
                if (!MediaCodecVideoRenderer.codecAppliesRotation() && (i = format.rotationDegrees) != 0) {
                    this.videoEffects.add(0, VideoFrameProcessorAccessor.createRotationEffect(i));
                }
                VideoFrameProcessor.Factory frameProcessorFactory = VideoFrameProcessorAccessor.getFrameProcessorFactory();
                Context context = this.renderer.context;
                List<Effect> list = (List) Assertions.checkNotNull(this.videoEffects);
                DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
                ColorInfo colorInfo = (ColorInfo) experimentalGetVideoFrameProcessorColorConfiguration.first;
                ColorInfo colorInfo2 = (ColorInfo) experimentalGetVideoFrameProcessorColorConfiguration.second;
                Handler handler = this.handler;
                Objects.requireNonNull(handler);
                VideoFrameProcessor create = frameProcessorFactory.create(context, list, debugViewProvider, colorInfo, colorInfo2, false, new DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0(handler, 0), new VideoFrameProcessor.Listener() { // from class: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.VideoFrameProcessorManager.1
                    @Override // com.google.android.exoplayer2.util.VideoFrameProcessor.Listener
                    public void onEnded() {
                        throw new IllegalStateException();
                    }

                    @Override // com.google.android.exoplayer2.util.VideoFrameProcessor.Listener
                    public void onError(VideoFrameProcessingException videoFrameProcessingException) {
                        VideoFrameProcessorManager.this.renderer.setPendingPlaybackException(VideoFrameProcessorManager.this.renderer.createRendererException(videoFrameProcessingException, format, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED));
                    }

                    @Override // com.google.android.exoplayer2.util.VideoFrameProcessor.Listener
                    public void onOutputFrameAvailableForRendering(long j2) {
                        if (VideoFrameProcessorManager.this.registeredLastFrame) {
                            Assertions.checkState(VideoFrameProcessorManager.this.lastCodecBufferPresentationTimestampUs != C.TIME_UNSET);
                        }
                        VideoFrameProcessorManager.this.processedFramesTimestampsUs.add(Long.valueOf(j2));
                        if (VideoFrameProcessorManager.this.registeredLastFrame && j2 >= VideoFrameProcessorManager.this.lastCodecBufferPresentationTimestampUs) {
                            VideoFrameProcessorManager.this.processedLastFrame = true;
                        }
                        if (VideoFrameProcessorManager.this.pendingOutputSizeChange) {
                            VideoFrameProcessorManager.this.pendingOutputSizeChange = false;
                            VideoFrameProcessorManager.this.pendingOutputSizeChangeNotificationTimeUs = j2;
                        }
                    }

                    @Override // com.google.android.exoplayer2.util.VideoFrameProcessor.Listener
                    public void onOutputSizeChanged(int i2, int i3) {
                        Assertions.checkStateNotNull(VideoFrameProcessorManager.this.inputFormat);
                        VideoFrameProcessorManager.this.processedFrameSize = new VideoSize(i2, i3, 0, 1.0f);
                        VideoFrameProcessorManager.this.pendingOutputSizeChange = true;
                    }
                });
                this.videoFrameProcessor = create;
                create.registerInputStream(1);
                this.initialStreamOffsetUs = j;
                Pair<Surface, Size> pair = this.currentSurfaceAndSize;
                if (pair != null) {
                    Size size = (Size) pair.second;
                    this.videoFrameProcessor.setOutputSurfaceInfo(new SurfaceInfo((Surface) pair.first, size.getWidth(), size.getHeight()));
                }
                setInputFormat(format);
                return true;
            } catch (Exception e) {
                throw this.renderer.createRendererException(e, format, 7000);
            }
        }

        public boolean maybeRegisterFrame(Format format, long j, boolean z) {
            Assertions.checkStateNotNull(this.videoFrameProcessor);
            Assertions.checkState(this.videoFrameProcessorMaxPendingFrameCount != -1);
            if (this.videoFrameProcessor.getPendingInputFrameCount() >= this.videoFrameProcessorMaxPendingFrameCount) {
                return false;
            }
            this.videoFrameProcessor.registerInputFrame();
            Pair<Long, Format> pair = this.currentFrameFormat;
            if (pair == null) {
                this.currentFrameFormat = Pair.create(Long.valueOf(j), format);
            } else if (!Util.areEqual(format, pair.second)) {
                this.pendingFrameFormats.add(Pair.create(Long.valueOf(j), format));
            }
            if (z) {
                this.registeredLastFrame = true;
                this.lastCodecBufferPresentationTimestampUs = j;
            }
            return true;
        }

        public void onCodecInitialized(String str) {
            this.videoFrameProcessorMaxPendingFrameCount = Util.getMaxPendingFramesCountForMediaCodecDecoders(this.renderer.context, str, false);
        }

        public void releaseProcessedFrames(long j, long j2) {
            Assertions.checkStateNotNull(this.videoFrameProcessor);
            while (!this.processedFramesTimestampsUs.isEmpty()) {
                boolean z = false;
                boolean z2 = this.renderer.getState() == 2;
                long longValue = ((Long) Assertions.checkNotNull(this.processedFramesTimestampsUs.peek())).longValue();
                long j3 = longValue + this.initialStreamOffsetUs;
                long calculateEarlyTimeUs = this.renderer.calculateEarlyTimeUs(j, j2, SystemClock.elapsedRealtime() * 1000, j3, z2);
                if (this.processedLastFrame && this.processedFramesTimestampsUs.size() == 1) {
                    z = true;
                }
                if (this.renderer.shouldForceRender(j, calculateEarlyTimeUs)) {
                    releaseProcessedFrameInternal(-1L, z);
                    return;
                }
                if (!z2 || j == this.renderer.initialPositionUs || calculateEarlyTimeUs > EARLY_THRESHOLD_US) {
                    return;
                }
                this.frameReleaseHelper.onNextFrame(j3);
                long adjustReleaseTime = this.frameReleaseHelper.adjustReleaseTime((calculateEarlyTimeUs * 1000) + System.nanoTime());
                if (this.renderer.shouldDropOutputBuffer((adjustReleaseTime - System.nanoTime()) / 1000, j2, z)) {
                    releaseProcessedFrameInternal(-2L, z);
                } else {
                    if (!this.pendingFrameFormats.isEmpty() && j3 > ((Long) this.pendingFrameFormats.peek().first).longValue()) {
                        this.currentFrameFormat = this.pendingFrameFormats.remove();
                    }
                    this.renderer.notifyFrameMetadataListener(longValue, adjustReleaseTime, (Format) this.currentFrameFormat.second);
                    if (this.pendingOutputSizeChangeNotificationTimeUs >= j3) {
                        this.pendingOutputSizeChangeNotificationTimeUs = C.TIME_UNSET;
                        this.renderer.maybeNotifyVideoSizeChanged(this.processedFrameSize);
                    }
                    releaseProcessedFrameInternal(adjustReleaseTime, z);
                }
            }
        }

        public boolean releasedLastFrame() {
            return this.releasedLastFrame;
        }

        public void reset() {
            ((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).release();
            this.videoFrameProcessor = null;
            Handler handler = this.handler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            CopyOnWriteArrayList<Effect> copyOnWriteArrayList = this.videoEffects;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.clear();
            }
            this.processedFramesTimestampsUs.clear();
            this.canEnableFrameProcessing = true;
        }

        public void setInputFormat(Format format) {
            ((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).setInputFrameInfo(new FrameInfo.Builder(format.width, format.height).setPixelWidthHeightRatio(format.pixelWidthHeightRatio).build());
            this.inputFormat = format;
            if (this.registeredLastFrame) {
                this.registeredLastFrame = false;
                this.processedLastFrame = false;
                this.releasedLastFrame = false;
            }
        }

        public void setOutputSurfaceInfo(Surface surface, Size size) {
            Pair<Surface, Size> pair = this.currentSurfaceAndSize;
            if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
                return;
            }
            this.currentSurfaceAndSize = Pair.create(surface, size);
            if (isEnabled()) {
                ((VideoFrameProcessor) Assertions.checkNotNull(this.videoFrameProcessor)).setOutputSurfaceInfo(new SurfaceInfo(surface, size.getWidth(), size.getHeight()));
            }
        }

        public void setVideoEffects(List<Effect> list) {
            CopyOnWriteArrayList<Effect> copyOnWriteArrayList = this.videoEffects;
            if (copyOnWriteArrayList == null) {
                this.videoEffects = new CopyOnWriteArrayList<>(list);
            } else {
                copyOnWriteArrayList.clear();
                this.videoEffects.addAll(list);
            }
        }
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i, float f) {
        super(2, factory, mediaCodecSelector, z, f);
        this.allowedJoiningTimeMs = j;
        this.maxDroppedFramesToNotify = i;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        VideoFrameReleaseHelper videoFrameReleaseHelper = new VideoFrameReleaseHelper(applicationContext);
        this.frameReleaseHelper = videoFrameReleaseHelper;
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.videoFrameProcessorManager = new VideoFrameProcessorManager(videoFrameReleaseHelper, this);
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.joiningDeadlineMs = C.TIME_UNSET;
        this.scalingMode = 1;
        this.decodedVideoSize = VideoSize.UNKNOWN;
        this.tunnelingAudioSessionId = 0;
        clearReportedVideoSize();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long calculateEarlyTimeUs(long j, long j2, long j3, long j4, boolean z) {
        long playbackSpeed = (long) ((j4 - j) / getPlaybackSpeed());
        return z ? playbackSpeed - (j3 - j2) : playbackSpeed;
    }

    private void clearRenderedFirstFrame() {
        MediaCodecAdapter codec;
        this.renderedFirstFrameAfterReset = false;
        if (Util.SDK_INT < 23 || !this.tunneling || (codec = getCodec()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(codec);
    }

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean codecAppliesRotation() {
        return Util.SDK_INT >= 21;
    }

    private static void configureTunnelingV21(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Util.MANUFACTURER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x084b, code lost:
    
        if (r0.equals("PGN528") == false) goto L91;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        /*
            Method dump skipped, instructions count: 3188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.evaluateDeviceNeedsSetOutputSurfaceWorkaround():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0081, code lost:
    
        if (r3.equals(com.google.android.exoplayer2.util.MimeTypes.VIDEO_AV1) == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo r9, com.google.android.exoplayer2.Format r10) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo, com.google.android.exoplayer2.Format):int");
    }

    private static Point getCodecMaxSize(MediaCodecInfo mediaCodecInfo, Format format) {
        int i = format.height;
        int i2 = format.width;
        boolean z = i > i2;
        int i3 = z ? i : i2;
        if (z) {
            i = i2;
        }
        float f = i / i3;
        for (int i4 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i5 = (int) (i4 * f);
            if (i4 <= i3 || i5 <= i) {
                break;
            }
            if (Util.SDK_INT >= 21) {
                int i6 = z ? i5 : i4;
                if (!z) {
                    i4 = i5;
                }
                Point alignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i6, i4);
                if (mediaCodecInfo.isVideoSizeAndRateSupportedV21(alignVideoSizeV21.x, alignVideoSizeV21.y, format.frameRate)) {
                    return alignVideoSizeV21;
                }
            } else {
                try {
                    int ceilDivide = Util.ceilDivide(i4, 16) * 16;
                    int ceilDivide2 = Util.ceilDivide(i5, 16) * 16;
                    if (ceilDivide * ceilDivide2 <= MediaCodecUtil.maxH264DecodableFrameSize()) {
                        int i7 = z ? ceilDivide2 : ceilDivide;
                        if (!z) {
                            ceilDivide = ceilDivide2;
                        }
                        return new Point(i7, ceilDivide);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List<MediaCodecInfo> getDecoderInfos(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        String str = format.sampleMimeType;
        if (str == null) {
            int i = ImmutableList.$r8$clinit;
            return RegularImmutableList.EMPTY;
        }
        if (Util.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(str) && !Api26.doesDisplaySupportDolbyVision(context)) {
            List<MediaCodecInfo> alternativeDecoderInfos = MediaCodecUtil.getAlternativeDecoderInfos(mediaCodecSelector, format, z, z2);
            if (!alternativeDecoderInfos.isEmpty()) {
                return alternativeDecoderInfos;
            }
        }
        return MediaCodecUtil.getDecoderInfosSoftMatch(mediaCodecSelector, format, z, z2);
    }

    public static int getMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize == -1) {
            return getCodecMaxInputSize(mediaCodecInfo, format);
        }
        int size = format.initializationData.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += format.initializationData.get(i2).length;
        }
        return format.maxInputSize + i;
    }

    private static int getMaxSampleSize(int i, int i2) {
        return (i * 3) / (i2 * 2);
    }

    private static boolean isBufferLate(long j) {
        return j < -30000;
    }

    private static boolean isBufferVeryLate(long j) {
        return j < -500000;
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, elapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = elapsedRealtime;
        }
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        int i = this.videoFrameProcessingOffsetCount;
        if (i != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, i);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeNotifyVideoSizeChanged(VideoSize videoSize) {
        if (videoSize.equals(VideoSize.UNKNOWN) || videoSize.equals(this.reportedVideoSize)) {
            return;
        }
        this.reportedVideoSize = videoSize;
        this.eventDispatcher.videoSizeChanged(videoSize);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        }
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyFrameMetadataListener(long j, long j2, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, getCodecOutputMediaFormat());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    private void releasePlaceholderSurface() {
        Surface surface = this.displaySurface;
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (surface == placeholderSurface) {
            this.displaySurface = null;
        }
        placeholderSurface.release();
        this.placeholderSurface = null;
    }

    private void renderOutputBufferNow(MediaCodecAdapter mediaCodecAdapter, Format format, int i, long j, boolean z) {
        long j2;
        long correctedFramePresentationTimeUs = this.videoFrameProcessorManager.isEnabled() ? this.videoFrameProcessorManager.getCorrectedFramePresentationTimeUs(j, getOutputStreamOffsetUs()) * 1000 : System.nanoTime();
        if (z) {
            j2 = j;
            notifyFrameMetadataListener(j2, correctedFramePresentationTimeUs, format);
        } else {
            j2 = j;
        }
        if (Util.SDK_INT >= 21) {
            renderOutputBufferV21(mediaCodecAdapter, i, j2, correctedFramePresentationTimeUs);
        } else {
            renderOutputBuffer(mediaCodecAdapter, i, j2);
        }
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.view.Surface] */
    private void setOutput(Object obj) {
        PlaceholderSurface placeholderSurface = obj instanceof Surface ? (Surface) obj : null;
        if (placeholderSurface == null) {
            PlaceholderSurface placeholderSurface2 = this.placeholderSurface;
            if (placeholderSurface2 != null) {
                placeholderSurface = placeholderSurface2;
            } else {
                MediaCodecInfo codecInfo = getCodecInfo();
                if (codecInfo != null && shouldUsePlaceholderSurface(codecInfo)) {
                    placeholderSurface = PlaceholderSurface.newInstanceV17(this.context, codecInfo.secure);
                    this.placeholderSurface = placeholderSurface;
                }
            }
        }
        if (this.displaySurface == placeholderSurface) {
            if (placeholderSurface == null || placeholderSurface == this.placeholderSurface) {
                return;
            }
            maybeRenotifyVideoSizeChanged();
            maybeRenotifyRenderedFirstFrame();
            return;
        }
        this.displaySurface = placeholderSurface;
        this.frameReleaseHelper.onSurfaceChanged(placeholderSurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        MediaCodecAdapter codec = getCodec();
        if (codec != null && !this.videoFrameProcessorManager.isEnabled()) {
            if (Util.SDK_INT < 23 || placeholderSurface == null || this.codecNeedsSetOutputSurfaceWorkaround) {
                releaseCodec();
                maybeInitCodecOrBypass();
            } else {
                setOutputSurfaceV23(codec, placeholderSurface);
            }
        }
        if (placeholderSurface == null || placeholderSurface == this.placeholderSurface) {
            clearReportedVideoSize();
            clearRenderedFirstFrame();
            if (this.videoFrameProcessorManager.isEnabled()) {
                this.videoFrameProcessorManager.clearOutputSurfaceInfo();
                return;
            }
            return;
        }
        maybeRenotifyVideoSizeChanged();
        clearRenderedFirstFrame();
        if (state == 2) {
            setJoiningDeadlineMs();
        }
        if (this.videoFrameProcessorManager.isEnabled()) {
            this.videoFrameProcessorManager.setOutputSurfaceInfo(placeholderSurface, Size.UNKNOWN);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldForceRender(long j, long j2) {
        boolean z = getState() == 2;
        return this.joiningDeadlineMs == C.TIME_UNSET && j >= getOutputStreamOffsetUs() && ((this.renderedFirstFrameAfterEnable ? !this.renderedFirstFrameAfterReset : !(!z && !this.mayRenderFirstFrameAfterEnableIfNotStarted)) || (z && shouldForceRenderOutputBuffer(j2, (SystemClock.elapsedRealtime() * 1000) - this.lastRenderRealtimeUs)));
    }

    private boolean shouldUsePlaceholderSurface(MediaCodecInfo mediaCodecInfo) {
        if (Util.SDK_INT < 23 || this.tunneling || codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name)) {
            return false;
        }
        return !mediaCodecInfo.secure || PlaceholderSurface.isSecureSupported(this.context);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        DecoderReuseEvaluation canReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = canReuseCodec.discardReasons;
        int i2 = format2.width;
        CodecMaxValues codecMaxValues = this.codecMaxValues;
        if (i2 > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > this.codecMaxValues.inputSize) {
            i |= 64;
        }
        int i3 = i;
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i3 != 0 ? 0 : canReuseCodec.result, i3);
    }

    public boolean codecNeedsSetOutputSurfaceWorkaround(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                    evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.displaySurface);
    }

    public void dropOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    public Pair<ColorInfo, ColorInfo> experimentalGetVideoFrameProcessorColorConfiguration(ColorInfo colorInfo) {
        if (ColorInfo.isTransferHdr(colorInfo)) {
            return colorInfo.colorTransfer == 7 ? Pair.create(colorInfo, colorInfo.buildUpon().setColorTransfer(6).build()) : Pair.create(colorInfo, colorInfo);
        }
        ColorInfo colorInfo2 = ColorInfo.SDR_BT709_LIMITED;
        return Pair.create(colorInfo2, colorInfo2);
    }

    public CodecMaxValues getCodecMaxValues(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int codecMaxInputSize;
        int i = format.width;
        int i2 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format)) != -1) {
                maxInputSize = Math.min((int) (maxInputSize * INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR), codecMaxInputSize);
            }
            return new CodecMaxValues(i, i2, maxInputSize);
        }
        int length = formatArr.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            Format format2 = formatArr[i3];
            if (format.colorInfo != null && format2.colorInfo == null) {
                format2 = format2.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, format2).result != 0) {
                int i4 = format2.width;
                z |= i4 == -1 || format2.height == -1;
                i = Math.max(i, i4);
                i2 = Math.max(i2, format2.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, format2));
            }
        }
        if (z) {
            Log.w(TAG, "Resolutions unknown. Codec max resolution: " + i + "x" + i2);
            Point codecMaxSize = getCodecMaxSize(mediaCodecInfo, format);
            if (codecMaxSize != null) {
                i = Math.max(i, codecMaxSize.x);
                i2 = Math.max(i2, codecMaxSize.y);
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(mediaCodecInfo, format.buildUpon().setWidth(i).setHeight(i2).build()));
                Log.w(TAG, "Codec max resolution adjusted to: " + i + "x" + i2);
            }
        }
        return new CodecMaxValues(i, i2, maxInputSize);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean getCodecNeedsEosPropagation() {
        return this.tunneling && Util.SDK_INT < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        float f2 = -1.0f;
        for (Format format2 : formatArr) {
            float f3 = format2.frameRate;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f) {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != mediaCodecInfo.secure) {
            releasePlaceholderSurface();
        }
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.codecMaxValues = codecMaxValues;
        MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        if (this.displaySurface == null) {
            if (!shouldUsePlaceholderSurface(mediaCodecInfo)) {
                Node$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            if (this.placeholderSurface == null) {
                this.placeholderSurface = PlaceholderSurface.newInstanceV17(this.context, mediaCodecInfo.secure);
            }
            this.displaySurface = this.placeholderSurface;
        }
        if (this.videoFrameProcessorManager.isEnabled()) {
            mediaFormat = this.videoFrameProcessorManager.amendMediaFormatKeys(mediaFormat);
        }
        return MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, this.videoFrameProcessorManager.isEnabled() ? this.videoFrameProcessorManager.getInputSurface() : this.displaySurface, mediaCrypto);
    }

    public MediaFormat getMediaFormat(Format format, String str, CodecMaxValues codecMaxValues, float f, boolean z, int i) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if (MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, "profile", ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        if (Util.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            configureTunnelingV21(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return TAG;
    }

    public Surface getSurface() {
        return this.displaySurface;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        setHdr10PlusInfoV29(getCodec(), bArr);
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, Object obj) {
        Surface surface;
        if (i == 1) {
            setOutput(obj);
            return;
        }
        if (i == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
            return;
        }
        if (i == 10) {
            int intValue = ((Integer) obj).intValue();
            if (this.tunnelingAudioSessionId != intValue) {
                this.tunnelingAudioSessionId = intValue;
                if (this.tunneling) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i == 4) {
            this.scalingMode = ((Integer) obj).intValue();
            MediaCodecAdapter codec = getCodec();
            if (codec != null) {
                codec.setVideoScalingMode(this.scalingMode);
                return;
            }
            return;
        }
        if (i == 5) {
            this.frameReleaseHelper.setChangeFrameRateStrategy(((Integer) obj).intValue());
            return;
        }
        if (i == 13) {
            this.videoFrameProcessorManager.setVideoEffects((List) Assertions.checkNotNull(obj));
            return;
        }
        if (i != 14) {
            super.handleMessage(i, obj);
            return;
        }
        Size size = (Size) Assertions.checkNotNull(obj);
        if (size.getWidth() == 0 || size.getHeight() == 0 || (surface = this.displaySurface) == null) {
            return;
        }
        this.videoFrameProcessorManager.setOutputSurfaceInfo(surface, size);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        boolean isEnded = super.isEnded();
        return this.videoFrameProcessorManager.isEnabled() ? this.videoFrameProcessorManager.releasedLastFrame() & isEnded : isEnded;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && ((!this.videoFrameProcessorManager.isEnabled() || this.videoFrameProcessorManager.isReady()) && (this.renderedFirstFrameAfterReset || (((placeholderSurface = this.placeholderSurface) != null && this.displaySurface == placeholderSurface) || getCodec() == null || this.tunneling)))) {
            this.joiningDeadlineMs = C.TIME_UNSET;
            return true;
        }
        if (this.joiningDeadlineMs == C.TIME_UNSET) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = C.TIME_UNSET;
        return false;
    }

    public boolean maybeDropBuffersToKeyframe(long j, boolean z) {
        int skipSource = skipSource(j);
        if (skipSource == 0) {
            return false;
        }
        DecoderCounters decoderCounters = this.decoderCounters;
        if (z) {
            decoderCounters.skippedInputBufferCount += skipSource;
            decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
        } else {
            decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(skipSource, this.buffersInCodecCount);
        }
        flushOrReinitializeCodec();
        if (this.videoFrameProcessorManager.isEnabled()) {
            this.videoFrameProcessorManager.flush();
        }
        return true;
    }

    public void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.displaySurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecError(Exception exc) {
        Log.e(TAG, "Video codec error", exc);
        this.eventDispatcher.videoCodecError(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
        this.eventDispatcher.decoderInitialized(str, j, j2);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        if (Util.SDK_INT >= 23 && this.tunneling) {
            this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23((MediaCodecAdapter) Assertions.checkNotNull(getCodec()));
        }
        this.videoFrameProcessorManager.onCodecInitialized(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecReleased(String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
            this.eventDispatcher.videoSizeChanged(VideoSize.UNKNOWN);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        super.onEnabled(z, z2);
        boolean z3 = getConfiguration().tunneling;
        Assertions.checkState((z3 && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != z3) {
            this.tunneling = z3;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z2;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) {
        DecoderReuseEvaluation onInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged(formatHolder.format, onInputFormatChanged);
        return onInputFormatChanged;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
        int integer;
        int i;
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        int i2 = 0;
        if (this.tunneling) {
            i = format.width;
            integer = format.height;
        } else {
            Assertions.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
            int integer2 = z ? (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1 : mediaFormat.getInteger("width");
            integer = z ? (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1 : mediaFormat.getInteger("height");
            i = integer2;
        }
        float f = format.pixelWidthHeightRatio;
        if (codecAppliesRotation()) {
            int i3 = format.rotationDegrees;
            if (i3 == 90 || i3 == 270) {
                f = 1.0f / f;
                int i4 = integer;
                integer = i;
                i = i4;
            }
        } else if (!this.videoFrameProcessorManager.isEnabled()) {
            i2 = format.rotationDegrees;
        }
        this.decodedVideoSize = new VideoSize(i, integer, i2, f);
        this.frameReleaseHelper.onFormatChanged(format.frameRate);
        if (this.videoFrameProcessorManager.isEnabled()) {
            this.videoFrameProcessorManager.setInputFormat(format.buildUpon().setWidth(i).setHeight(integer).setRotationDegrees(i2).setPixelWidthHeightRatio(f).build());
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        super.onPositionReset(j, z);
        if (this.videoFrameProcessorManager.isEnabled()) {
            this.videoFrameProcessorManager.flush();
        }
        clearRenderedFirstFrame();
        this.frameReleaseHelper.onPositionReset();
        this.lastBufferPresentationTimeUs = C.TIME_UNSET;
        this.initialPositionUs = C.TIME_UNSET;
        this.consecutiveDroppedFrameCount = 0;
        if (z) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = C.TIME_UNSET;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedOutputBuffer(long j) {
        super.onProcessedOutputBuffer(j);
        if (this.tunneling) {
            return;
        }
        this.buffersInCodecCount--;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        clearRenderedFirstFrame();
    }

    public void onProcessedTunneledBuffer(long j) {
        updateOutputFormatForTime(j);
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        boolean z = this.tunneling;
        if (!z) {
            this.buffersInCodecCount++;
        }
        if (Util.SDK_INT >= 23 || !z) {
            return;
        }
        onProcessedTunneledBuffer(decoderInputBuffer.timeUs);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onReadyToInitializeCodec(Format format) {
        if (this.videoFrameProcessorManager.isEnabled()) {
            return;
        }
        this.videoFrameProcessorManager.maybeEnable(format, getOutputStreamOffsetUs());
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onReset() {
        try {
            super.onReset();
        } finally {
            if (this.videoFrameProcessorManager.isEnabled()) {
                this.videoFrameProcessorManager.reset();
            }
            if (this.placeholderSurface != null) {
                releasePlaceholderSurface();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.onStarted();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.joiningDeadlineMs = C.TIME_UNSET;
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        this.frameReleaseHelper.onStopped();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) {
        long j4;
        boolean z3;
        long j5;
        boolean z4;
        Assertions.checkNotNull(mediaCodecAdapter);
        if (this.initialPositionUs == C.TIME_UNSET) {
            this.initialPositionUs = j;
        }
        if (j3 != this.lastBufferPresentationTimeUs) {
            if (!this.videoFrameProcessorManager.isEnabled()) {
                this.frameReleaseHelper.onNextFrame(j3);
            }
            this.lastBufferPresentationTimeUs = j3;
        }
        long outputStreamOffsetUs = j3 - getOutputStreamOffsetUs();
        if (z && !z2) {
            skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
            return true;
        }
        boolean z5 = getState() == 2;
        long calculateEarlyTimeUs = calculateEarlyTimeUs(j, j2, SystemClock.elapsedRealtime() * 1000, j3, z5);
        if (this.displaySurface == this.placeholderSurface) {
            if (!isBufferLate(calculateEarlyTimeUs)) {
                return false;
            }
            skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
            updateVideoFrameProcessingOffsetCounters(calculateEarlyTimeUs);
            return true;
        }
        if (shouldForceRender(j, calculateEarlyTimeUs)) {
            if (!this.videoFrameProcessorManager.isEnabled()) {
                z4 = true;
            } else {
                if (!this.videoFrameProcessorManager.maybeRegisterFrame(format, outputStreamOffsetUs, z2)) {
                    return false;
                }
                z4 = false;
            }
            renderOutputBufferNow(mediaCodecAdapter, format, i, outputStreamOffsetUs, z4);
            updateVideoFrameProcessingOffsetCounters(calculateEarlyTimeUs);
            return true;
        }
        if (z5 && j != this.initialPositionUs) {
            long nanoTime = System.nanoTime();
            long adjustReleaseTime = this.frameReleaseHelper.adjustReleaseTime((calculateEarlyTimeUs * 1000) + nanoTime);
            if (!this.videoFrameProcessorManager.isEnabled()) {
                calculateEarlyTimeUs = (adjustReleaseTime - nanoTime) / 1000;
            }
            if (this.joiningDeadlineMs != C.TIME_UNSET) {
                j4 = calculateEarlyTimeUs;
                z3 = true;
            } else {
                j4 = calculateEarlyTimeUs;
                z3 = false;
            }
            long j6 = j4;
            if (shouldDropBuffersToKeyframe(j6, j2, z2) && maybeDropBuffersToKeyframe(j, z3)) {
                return false;
            }
            if (shouldDropOutputBuffer(j6, j2, z2)) {
                if (z3) {
                    skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                } else {
                    dropOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                }
                updateVideoFrameProcessingOffsetCounters(j6);
                return true;
            }
            if (this.videoFrameProcessorManager.isEnabled()) {
                this.videoFrameProcessorManager.releaseProcessedFrames(j, j2);
                if (!this.videoFrameProcessorManager.maybeRegisterFrame(format, outputStreamOffsetUs, z2)) {
                    return false;
                }
                renderOutputBufferNow(mediaCodecAdapter, format, i, outputStreamOffsetUs, false);
                return true;
            }
            if (Util.SDK_INT >= 21) {
                if (j6 < 50000) {
                    if (adjustReleaseTime == this.lastFrameReleaseTimeNs) {
                        skipOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                        j5 = adjustReleaseTime;
                    } else {
                        notifyFrameMetadataListener(outputStreamOffsetUs, adjustReleaseTime, format);
                        renderOutputBufferV21(mediaCodecAdapter, i, outputStreamOffsetUs, adjustReleaseTime);
                        j5 = adjustReleaseTime;
                    }
                    updateVideoFrameProcessingOffsetCounters(j6);
                    this.lastFrameReleaseTimeNs = j5;
                    return true;
                }
            } else if (j6 < 30000) {
                if (j6 > 11000) {
                    try {
                        Thread.sleep((j6 - 10000) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                notifyFrameMetadataListener(outputStreamOffsetUs, adjustReleaseTime, format);
                renderOutputBuffer(mediaCodecAdapter, i, outputStreamOffsetUs);
                updateVideoFrameProcessingOffsetCounters(j6);
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        super.render(j, j2);
        if (this.videoFrameProcessorManager.isEnabled()) {
            this.videoFrameProcessorManager.releaseProcessedFrames(j, j2);
        }
    }

    public void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, true);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoFrameProcessorManager.isEnabled()) {
            return;
        }
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        maybeNotifyRenderedFirstFrame();
    }

    public void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, j2);
        TraceUtil.endSection();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (this.videoFrameProcessorManager.isEnabled()) {
            return;
        }
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        maybeNotifyVideoSizeChanged(this.decodedVideoSize);
        maybeNotifyRenderedFirstFrame();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.buffersInCodecCount = 0;
    }

    public void setOutputSurfaceV23(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        mediaCodecAdapter.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f, float f2) {
        super.setPlaybackSpeed(f, f2);
        this.frameReleaseHelper.onPlaybackSpeed(f);
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2, boolean z) {
        return isBufferVeryLate(j) && !z;
    }

    public boolean shouldDropOutputBuffer(long j, long j2, boolean z) {
        return isBufferLate(j) && !z;
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return isBufferLate(j) && j2 > 100000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return this.displaySurface != null || shouldUsePlaceholderSurface(mediaCodecInfo);
    }

    public void skipOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) {
        boolean z;
        int i = 0;
        if (!MimeTypes.isVideo(format.sampleMimeType)) {
            return RecordTag.create(0, 0, 0);
        }
        boolean z2 = format.drmInitData != null;
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.context, mediaCodecSelector, format, z2, false);
        if (z2 && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(this.context, mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return RecordTag.create(1, 0, 0);
        }
        if (!MediaCodecRenderer.supportsFormatDrm(format)) {
            return RecordTag.create(2, 0, 0);
        }
        MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean isFormatSupported = mediaCodecInfo.isFormatSupported(format);
        if (!isFormatSupported) {
            for (int i2 = 1; i2 < decoderInfos.size(); i2++) {
                MediaCodecInfo mediaCodecInfo2 = decoderInfos.get(i2);
                if (mediaCodecInfo2.isFormatSupported(format)) {
                    z = false;
                    isFormatSupported = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        z = true;
        int i3 = isFormatSupported ? 4 : 3;
        int i4 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        int i5 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i6 = z ? 128 : 0;
        if (Util.SDK_INT >= 26 && MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(this.context)) {
            i6 = 256;
        }
        if (isFormatSupported) {
            List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(this.context, mediaCodecSelector, format, z2, true);
            if (!decoderInfos2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(decoderInfos2, format).get(0);
                if (mediaCodecInfo3.isFormatSupported(format) && mediaCodecInfo3.isSeamlessAdaptationSupported(format)) {
                    i = 32;
                }
            }
        }
        return i3 | i4 | i | i5 | i6;
    }

    public void updateDroppedBufferCounters(int i, int i2) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        decoderCounters.droppedBufferCount += i3;
        this.droppedFrames += i3;
        int i4 = this.consecutiveDroppedFrameCount + i3;
        this.consecutiveDroppedFrameCount = i4;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i4, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i5 = this.maxDroppedFramesToNotify;
        if (i5 <= 0 || this.droppedFrames < i5) {
            return;
        }
        maybeNotifyDroppedFrames();
    }

    public void updateVideoFrameProcessingOffsetCounters(long j) {
        this.decoderCounters.addVideoFrameProcessingOffset(j);
        this.totalVideoFrameProcessingOffsetUs += j;
        this.videoFrameProcessingOffsetCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(getDecoderInfos(this.context, mediaCodecSelector, format, z, this.tunneling), format);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j) {
        this(context, mediaCodecSelector, j, null, null, 0);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, false, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, factory, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, 0L);
    }
}
