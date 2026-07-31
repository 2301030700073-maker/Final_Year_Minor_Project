package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.RenderMode;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final List ALLOWED_REDUCED_MOTION_MARKERS;
    public static final boolean invalidateSelfOnMainThread;
    public static final ThreadPoolExecutor setProgressExecutor;
    public int alpha;
    public final LottieValueAnimator animator;
    public AsyncUpdates asyncUpdates;
    public Rect canvasClipBounds;
    public RectF canvasClipBoundsRectF;
    public boolean clipToCompositionBounds;
    public LottieComposition composition;
    public CompositionLayer compositionLayer;
    public ImageLoader$Builder fontAssetManager;
    public ImageAssetManager imageAssetManager;
    public LottieDrawable$$ExternalSyntheticLambda2 invalidateSelfRunnable;
    public boolean isApplyingShadowToLayersEnabled;
    public boolean isDirty;
    public float lastDrawnProgress;
    public final ArrayList lazyCompositionTasks;
    public final LottieFeatureFlags lottieFeatureFlags;
    public Handler mainThreadHandler;
    public OnVisibleAction onVisibleAction;
    public RenderMode renderMode;
    public final Matrix renderingMatrix;
    public final Semaphore setProgressDrawLock;
    public Bitmap softwareRenderingBitmap;
    public Canvas softwareRenderingCanvas;
    public Rect softwareRenderingDstBoundsRect;
    public RectF softwareRenderingDstBoundsRectF;
    public Matrix softwareRenderingOriginalCanvasMatrix;
    public final float[] softwareRenderingOriginalCanvasMatrixElements;
    public Matrix softwareRenderingOriginalCanvasMatrixInverse;
    public LPaint softwareRenderingPaint;
    public Rect softwareRenderingSrcBoundsRect;
    public RectF softwareRenderingTransformedBounds;
    public final boolean systemAnimationsEnabled;
    public final LottieDrawable$$ExternalSyntheticLambda2 updateProgressRunnable;
    public boolean useSoftwareRendering;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface LazyCompositionTask {
        void run();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OnVisibleAction {
        private static final /* synthetic */ OnVisibleAction[] $VALUES;
        public static final OnVisibleAction NONE;
        public static final OnVisibleAction PLAY;
        public static final OnVisibleAction RESUME;

        static {
            OnVisibleAction onVisibleAction = new OnVisibleAction("NONE", 0);
            NONE = onVisibleAction;
            OnVisibleAction onVisibleAction2 = new OnVisibleAction("PLAY", 1);
            PLAY = onVisibleAction2;
            OnVisibleAction onVisibleAction3 = new OnVisibleAction("RESUME", 2);
            RESUME = onVisibleAction3;
            $VALUES = new OnVisibleAction[]{onVisibleAction, onVisibleAction2, onVisibleAction3};
        }

        public static OnVisibleAction valueOf(String str) {
            return (OnVisibleAction) Enum.valueOf(OnVisibleAction.class, str);
        }

        public static OnVisibleAction[] values() {
            return (OnVisibleAction[]) $VALUES.clone();
        }
    }

    static {
        invalidateSelfOnMainThread = Build.VERSION.SDK_INT <= 25;
        ALLOWED_REDUCED_MOTION_MARKERS = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
        setProgressExecutor = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new LottieThreadFactory());
    }

    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        lottieValueAnimator.speed = 1.0f;
        lottieValueAnimator.speedReversedForRepeatMode = false;
        lottieValueAnimator.lastFrameTimeNs = 0L;
        lottieValueAnimator.frameRaw = RecyclerView.DECELERATION_RATE;
        lottieValueAnimator.frame = RecyclerView.DECELERATION_RATE;
        lottieValueAnimator.repeatCount = 0;
        lottieValueAnimator.minFrame = -2.1474836E9f;
        lottieValueAnimator.maxFrame = 2.1474836E9f;
        lottieValueAnimator.running = false;
        this.animator = lottieValueAnimator;
        this.systemAnimationsEnabled = true;
        this.onVisibleAction = OnVisibleAction.NONE;
        this.lazyCompositionTasks = new ArrayList();
        this.lottieFeatureFlags = new LottieFeatureFlags(0);
        this.clipToCompositionBounds = true;
        this.alpha = 255;
        this.renderMode = RenderMode.AUTOMATIC;
        this.useSoftwareRendering = false;
        this.renderingMatrix = new Matrix();
        this.softwareRenderingOriginalCanvasMatrixElements = new float[9];
        this.isDirty = false;
        LottieDrawable$$ExternalSyntheticLambda1 lottieDrawable$$ExternalSyntheticLambda1 = new LottieDrawable$$ExternalSyntheticLambda1(0, this);
        this.setProgressDrawLock = new Semaphore(1);
        this.updateProgressRunnable = new LottieDrawable$$ExternalSyntheticLambda2(this, 0);
        this.lastDrawnProgress = -3.4028235E38f;
        lottieValueAnimator.addUpdateListener(lottieDrawable$$ExternalSyntheticLambda1);
    }

    public static void convertRect(Rect rect, RectF rectF) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public static boolean isFinite(float f) {
        return (Float.isNaN(f) || Float.isInfinite(f)) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean animationsEnabled(android.content.Context r2) {
        /*
            r1 = this;
            boolean r1 = r1.systemAnimationsEnabled
            if (r1 == 0) goto L2a
            androidx.collection.internal.Lock r1 = com.airbnb.lottie.L.reducedMotionOption
            r1.getClass()
            if (r2 == 0) goto L22
            android.graphics.Matrix r1 = com.airbnb.lottie.utils.Utils.IDENTITY_MATRIX
            android.content.ContentResolver r1 = r2.getContentResolver()
            java.lang.String r2 = "animator_duration_scale"
            r0 = 1065353216(0x3f800000, float:1.0)
            float r1 = android.provider.Settings.Global.getFloat(r1, r2, r0)
            r2 = 0
            int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r1 == 0) goto L1f
            goto L22
        L1f:
            com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode r1 = com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode.REDUCED_MOTION
            goto L24
        L22:
            com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode r1 = com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode.STANDARD_MOTION
        L24:
            com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode r2 = com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode.STANDARD_MOTION
            if (r1 != r2) goto L2a
            r1 = 1
            return r1
        L2a:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieDrawable.animationsEnabled(android.content.Context):boolean");
    }

    public final void buildCompositionLayer() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        AndroidSvg androidSvg = LayerParser.NAMES;
        Rect rect = lottieComposition.bounds;
        List list = Collections.EMPTY_LIST;
        CompositionLayer compositionLayer = new CompositionLayer(this, new Layer(list, lottieComposition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, list, new AnimatableTransform(), 0, 0, 0, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, rect.width(), rect.height(), null, null, list, Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL), lottieComposition.layers, lottieComposition);
        this.compositionLayer = compositionLayer;
        compositionLayer.clipToCompositionBounds = this.clipToCompositionBounds;
    }

    public final void computeRenderMode() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        RenderMode renderMode = this.renderMode;
        int i = Build.VERSION.SDK_INT;
        boolean z = lottieComposition.hasDashPattern;
        int i2 = lottieComposition.maskAndMatteCount;
        renderMode.getClass();
        int i3 = RenderMode.AnonymousClass1.$SwitchMap$com$airbnb$lottie$RenderMode[renderMode.ordinal()];
        boolean z2 = false;
        if (i3 != 1 && (i3 == 2 || ((z && i < 28) || i2 > 4 || i <= 25))) {
            z2 = true;
        }
        this.useSoftwareRendering = z2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer == null) {
            return;
        }
        AsyncUpdates asyncUpdates = this.asyncUpdates;
        if (asyncUpdates == null) {
            asyncUpdates = L.defaultAsyncUpdates;
        }
        boolean z = asyncUpdates == AsyncUpdates.ENABLED;
        LottieDrawable$$ExternalSyntheticLambda2 lottieDrawable$$ExternalSyntheticLambda2 = this.updateProgressRunnable;
        ThreadPoolExecutor threadPoolExecutor = setProgressExecutor;
        LottieValueAnimator lottieValueAnimator = this.animator;
        Semaphore semaphore = this.setProgressDrawLock;
        if (z) {
            try {
                semaphore.acquire();
            } catch (InterruptedException unused) {
                AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
                if (z) {
                    semaphore.release();
                    if (compositionLayer.progress != lottieValueAnimator.getAnimatedValueAbsolute()) {
                        threadPoolExecutor.execute(lottieDrawable$$ExternalSyntheticLambda2);
                        return;
                    }
                    return;
                }
                return;
            } catch (Throwable th) {
                AsyncUpdates asyncUpdates3 = L.defaultAsyncUpdates;
                if (z) {
                    semaphore.release();
                    if (compositionLayer.progress != lottieValueAnimator.getAnimatedValueAbsolute()) {
                        threadPoolExecutor.execute(lottieDrawable$$ExternalSyntheticLambda2);
                    }
                }
                throw th;
            }
        }
        AsyncUpdates asyncUpdates4 = L.defaultAsyncUpdates;
        if (z && shouldSetProgressBeforeDrawing()) {
            setProgress(lottieValueAnimator.getAnimatedValueAbsolute());
        }
        if (this.useSoftwareRendering) {
            renderAndDrawAsBitmap(canvas, compositionLayer);
        } else {
            drawDirectlyToCanvas(canvas);
        }
        this.isDirty = false;
        if (z) {
            semaphore.release();
            if (compositionLayer.progress != lottieValueAnimator.getAnimatedValueAbsolute()) {
                threadPoolExecutor.execute(lottieDrawable$$ExternalSyntheticLambda2);
            }
        }
    }

    public final void drawDirectlyToCanvas(Canvas canvas) {
        CompositionLayer compositionLayer = this.compositionLayer;
        LottieComposition lottieComposition = this.composition;
        if (compositionLayer == null || lottieComposition == null) {
            return;
        }
        Matrix matrix = this.renderingMatrix;
        matrix.reset();
        if (!getBounds().isEmpty()) {
            matrix.preTranslate(r3.left, r3.top);
            matrix.preScale(r3.width() / lottieComposition.bounds.width(), r3.height() / lottieComposition.bounds.height());
        }
        compositionLayer.draw(canvas, matrix, this.alpha, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.alpha;
    }

    public final Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.bounds.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.bounds.width();
    }

    public final Marker getMarkerForAnimationsDisabled() {
        Marker marker = null;
        for (String str : ALLOWED_REDUCED_MOTION_MARKERS) {
            LottieComposition lottieComposition = this.composition;
            int size = lottieComposition.markers.size();
            for (int i = 0; i < size; i++) {
                Marker marker2 = (Marker) lottieComposition.markers.get(i);
                String str2 = marker2.name;
                if (str2.equalsIgnoreCase(str) || (str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                    marker = marker2;
                    break;
                }
            }
            marker = null;
            if (marker != null) {
                break;
            }
        }
        return marker;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable.Callback callback;
        if (this.isDirty) {
            return;
        }
        this.isDirty = true;
        if ((!invalidateSelfOnMainThread || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.running;
    }

    public final void playAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda0(this, 1));
            return;
        }
        computeRenderMode();
        boolean animationsEnabled = animationsEnabled(getContext());
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (animationsEnabled || lottieValueAnimator.getRepeatCount() == 0) {
            if (isVisible()) {
                lottieValueAnimator.running = true;
                lottieValueAnimator.notifyStart(lottieValueAnimator.isReversed());
                lottieValueAnimator.setFrame((int) (lottieValueAnimator.isReversed() ? lottieValueAnimator.getMaxFrame() : lottieValueAnimator.getMinFrame()));
                lottieValueAnimator.lastFrameTimeNs = 0L;
                lottieValueAnimator.repeatCount = 0;
                if (lottieValueAnimator.running) {
                    lottieValueAnimator.removeFrameCallback(false);
                    Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                }
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.PLAY;
            }
        }
        if (animationsEnabled(getContext())) {
            return;
        }
        Marker markerForAnimationsDisabled = getMarkerForAnimationsDisabled();
        if (markerForAnimationsDisabled != null) {
            setFrame((int) markerForAnimationsDisabled.startFrame);
        } else {
            setFrame((int) (lottieValueAnimator.speed < RecyclerView.DECELERATION_RATE ? lottieValueAnimator.getMinFrame() : lottieValueAnimator.getMaxFrame()));
        }
        lottieValueAnimator.removeFrameCallback(true);
        lottieValueAnimator.notifyEnd(lottieValueAnimator.isReversed());
        if (isVisible()) {
            return;
        }
        this.onVisibleAction = OnVisibleAction.NONE;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void renderAndDrawAsBitmap(android.graphics.Canvas r12, com.airbnb.lottie.model.layer.CompositionLayer r13) {
        /*
            Method dump skipped, instructions count: 535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieDrawable.renderAndDrawAsBitmap(android.graphics.Canvas, com.airbnb.lottie.model.layer.CompositionLayer):void");
    }

    public final void resumeAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LottieDrawable$$ExternalSyntheticLambda0(this, 0));
            return;
        }
        computeRenderMode();
        boolean animationsEnabled = animationsEnabled(getContext());
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (animationsEnabled || lottieValueAnimator.getRepeatCount() == 0) {
            if (isVisible()) {
                lottieValueAnimator.running = true;
                lottieValueAnimator.removeFrameCallback(false);
                Choreographer.getInstance().postFrameCallback(lottieValueAnimator);
                lottieValueAnimator.lastFrameTimeNs = 0L;
                if (lottieValueAnimator.isReversed() && lottieValueAnimator.frame == lottieValueAnimator.getMinFrame()) {
                    lottieValueAnimator.setFrame(lottieValueAnimator.getMaxFrame());
                } else if (!lottieValueAnimator.isReversed() && lottieValueAnimator.frame == lottieValueAnimator.getMaxFrame()) {
                    lottieValueAnimator.setFrame(lottieValueAnimator.getMinFrame());
                }
                Iterator it = lottieValueAnimator.pauseListeners.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationResume(lottieValueAnimator);
                }
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.RESUME;
            }
        }
        if (animationsEnabled(getContext())) {
            return;
        }
        setFrame((int) (lottieValueAnimator.speed < RecyclerView.DECELERATION_RATE ? lottieValueAnimator.getMinFrame() : lottieValueAnimator.getMaxFrame()));
        lottieValueAnimator.removeFrameCallback(true);
        lottieValueAnimator.notifyEnd(lottieValueAnimator.isReversed());
        if (isVisible()) {
            return;
        }
        this.onVisibleAction = OnVisibleAction.NONE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.alpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Logger.warning("Use addColorFilter instead.");
    }

    public final void setFrame(final int i) {
        if (this.composition != null) {
            this.animator.setFrame(i);
        } else {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda5
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    LottieDrawable.this.setFrame(i);
                }
            });
        }
    }

    public final void setProgress(final float f) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda4
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run() {
                    LottieDrawable.this.setProgress(f);
                }
            });
        } else {
            AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
            this.animator.setFrame(MiscUtils.lerp(lottieComposition.startFrame, lottieComposition.endFrame, f));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean isVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            OnVisibleAction onVisibleAction = this.onVisibleAction;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                playAnimation();
                return visible;
            }
            if (onVisibleAction == OnVisibleAction.RESUME) {
                resumeAnimation();
                return visible;
            }
        } else {
            LottieValueAnimator lottieValueAnimator = this.animator;
            if (lottieValueAnimator.running) {
                this.lazyCompositionTasks.clear();
                lottieValueAnimator.removeFrameCallback(true);
                Iterator it = lottieValueAnimator.pauseListeners.iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorPauseListener) it.next()).onAnimationPause(lottieValueAnimator);
                }
                if (!isVisible()) {
                    this.onVisibleAction = OnVisibleAction.NONE;
                }
                this.onVisibleAction = OnVisibleAction.RESUME;
                return visible;
            }
            if (isVisible) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
        return visible;
    }

    public final boolean shouldSetProgressBeforeDrawing() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return false;
        }
        float f = this.lastDrawnProgress;
        float animatedValueAbsolute = this.animator.getAnimatedValueAbsolute();
        this.lastDrawnProgress = animatedValueAbsolute;
        return Math.abs(animatedValueAbsolute - f) * lottieComposition.getDuration() >= 50.0f;
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.lazyCompositionTasks.clear();
        LottieValueAnimator lottieValueAnimator = this.animator;
        lottieValueAnimator.removeFrameCallback(true);
        lottieValueAnimator.notifyEnd(lottieValueAnimator.isReversed());
        if (isVisible()) {
            return;
        }
        this.onVisibleAction = OnVisibleAction.NONE;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }
}
