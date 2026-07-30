package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Property;
import android.view.View;
import b.l.W;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.plugins.OverviewScreenshotActions;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ConfigurationCompat;
import com.android.systemui.shared.system.QuickStepContract;

/* loaded from: classes.dex */
public class TaskThumbnailView extends View implements PluginListener {
    public final BaseActivity mActivity;
    public final Paint mBackgroundPaint;
    public BitmapShader mBitmapShader;
    public final Paint mClearPaint;
    public float mDimAlpha;
    public float mDimAlphaMultiplier;
    public final Paint mDimmingPaintAfterClearing;
    public TaskView.FullscreenDrawParams mFullscreenParams;
    public final boolean mIsDarkTextTheme;
    public final TaskOverlayFactory.TaskOverlay mOverlay;
    public boolean mOverlayEnabled;
    public OverviewScreenshotActions mOverviewScreenshotActionsPlugin;
    public final Paint mPaint;
    public final PreviewPositionHelper mPreviewPositionHelper;
    public final Rect mPreviewRect;
    public float mSaturation;
    public Task mTask;
    public ThumbnailData mThumbnailData;
    public static final ColorMatrix COLOR_MATRIX = new ColorMatrix();
    public static final ColorMatrix SATURATION_COLOR_MATRIX = new ColorMatrix();
    public static final MainThreadInitializedObject TEMP_PARAMS = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.b.d2.A
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new TaskView.FullscreenDrawParams(context);
        }
    });
    public static final Property DIM_ALPHA = new FloatProperty("dimAlpha") { // from class: com.android.quickstep.views.TaskThumbnailView.1
        @Override // android.util.Property
        public Float get(TaskThumbnailView taskThumbnailView) {
            return Float.valueOf(taskThumbnailView.mDimAlpha);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskThumbnailView taskThumbnailView, float f) {
            taskThumbnailView.setDimAlpha(f);
        }
    };

    public class PreviewPositionHelper {
        public boolean mIsOrientationChanged;
        public final RectF mClippedInsets = new RectF();
        public final Matrix mMatrix = new Matrix();
        public float mClipBottom = -1.0f;

        private Rect getBoundedInsets(Rect rect, Rect rect2) {
            return new Rect(Math.min(rect2.left, rect.left), Math.min(rect2.top, rect.top), Math.min(rect2.right, rect.right), Math.min(rect2.bottom, rect.bottom));
        }

        private int getRotationDelta(int i, int i2) {
            int i3 = i2 - i;
            return i3 < 0 ? i3 + 4 : i3;
        }

        private boolean isOrientationChange(int i) {
            return i == 1 || i == 3;
        }

        private void setThumbnailRotation(int i, Rect rect, float f, Rect rect2) {
            int i2;
            int height;
            int i3;
            int height2;
            int i4;
            this.mMatrix.setRotate(i * 90);
            int i5 = 0;
            if (i != 1) {
                if (i == 2) {
                    i5 = -rect.top;
                    int i6 = -rect.left;
                    int width = rect2.width();
                    height2 = rect2.height();
                    i4 = width;
                    i2 = i6;
                } else if (i != 3) {
                    i3 = 0;
                    i2 = 0;
                    height = 0;
                } else {
                    int i7 = rect.top;
                    i2 = rect.right;
                    height2 = rect2.width();
                    i4 = 0;
                    i5 = i7;
                }
                i3 = height2;
                height = i4;
            } else {
                int i8 = rect.bottom;
                i2 = rect.left;
                height = rect2.height();
                i5 = i8;
                i3 = 0;
            }
            this.mClippedInsets.offsetTo(i5 * f, i2 * f);
            Matrix matrix = this.mMatrix;
            RectF rectF = this.mClippedInsets;
            matrix.postTranslate(height - rectF.left, i3 - rectF.top);
        }

        public RectF getInsetsToDrawInFullscreen() {
            return this.mClippedInsets;
        }

        public Matrix getMatrix() {
            return this.mMatrix;
        }

        public void updateThumbnailMatrix(Rect rect, ThumbnailData thumbnailData, int i, int i2, DeviceProfile deviceProfile, int i3) {
            float f;
            float width;
            int height;
            this.mClipBottom = -1.0f;
            float f2 = thumbnailData.scale;
            Rect boundedInsets = getBoundedInsets(deviceProfile.mInsets, thumbnailData.insets);
            float width2 = rect.width() - ((boundedInsets.left + boundedInsets.right) * f2);
            float height2 = rect.height() - ((boundedInsets.top + boundedInsets.bottom) * f2);
            int rotationDelta = getRotationDelta(i3, thumbnailData.rotation);
            boolean z = false;
            boolean z2 = !deviceProfile.isMultiWindowMode && thumbnailData.windowingMode == 1;
            boolean z3 = isOrientationChange(rotationDelta) && z2;
            if (i == 0) {
                f = 0.0f;
            } else {
                boolean z4 = rotationDelta > 0 && z2;
                f = z3 ? i / height2 : i / width2;
                z = z4;
            }
            Rect rect2 = deviceProfile.mInsets;
            if (z) {
                setThumbnailRotation(rotationDelta, boundedInsets, f2, rect);
            } else {
                if (deviceProfile.isMultiWindowMode) {
                    this.mClippedInsets.offsetTo(rect2.left * f2, rect2.top * f2);
                } else {
                    this.mClippedInsets.offsetTo(boundedInsets.left * f2, boundedInsets.top * f2);
                }
                this.mMatrix.setTranslate((-boundedInsets.left) * f2, (-boundedInsets.top) * f2);
            }
            if (z3) {
                width = rect.height() * f;
                height = rect.width();
            } else {
                width = rect.width() * f;
                height = rect.height();
            }
            float f3 = height * f;
            RectF rectF = this.mClippedInsets;
            float f4 = rectF.left * f;
            rectF.left = f4;
            rectF.top *= f;
            if (deviceProfile.isMultiWindowMode) {
                rectF.right = rect2.right * f2 * f;
                rectF.bottom = rect2.bottom * f2 * f;
            } else {
                rectF.right = Math.max(RecentsState.NO_OFFSET, (width - f4) - i);
                RectF rectF2 = this.mClippedInsets;
                rectF2.bottom = Math.max(RecentsState.NO_OFFSET, (f3 - rectF2.top) - i2);
            }
            this.mMatrix.postScale(f, f);
            if (!z3) {
                width2 = height2;
            }
            float max = Math.max(RecentsState.NO_OFFSET, width2 * f);
            if (Math.round(max) < i2) {
                this.mClipBottom = max;
            }
            this.mIsOrientationChanged = z3;
        }
    }

    public TaskThumbnailView(Context context) {
        this(context, null);
    }

    public static ColorFilter getColorFilter(int i, boolean z, float f) {
        int boundToRange = Utilities.boundToRange(i, 0, 255);
        if (boundToRange == 255 && f == 1.0f) {
            return null;
        }
        float f2 = boundToRange / 255.0f;
        COLOR_MATRIX.setScale(f2, f2, f2, 1.0f);
        if (f != 1.0f) {
            SATURATION_COLOR_MATRIX.setSaturation(f);
            COLOR_MATRIX.postConcat(SATURATION_COLOR_MATRIX);
        }
        if (z) {
            float[] array = COLOR_MATRIX.getArray();
            float f3 = 255 - boundToRange;
            array[4] = f3;
            array[9] = f3;
            array[14] = f3;
        }
        return new ColorMatrixColorFilter(COLOR_MATRIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOverlay() {
        ThumbnailData thumbnailData;
        if (!this.mOverlayEnabled || this.mBitmapShader == null || (thumbnailData = this.mThumbnailData) == null) {
            this.mOverlay.reset();
        } else {
            this.mOverlay.initOverlay(this.mTask, thumbnailData, this.mPreviewPositionHelper.mMatrix, this.mPreviewPositionHelper.mIsOrientationChanged);
        }
    }

    private void updateThumbnailMatrix() {
        ThumbnailData thumbnailData;
        this.mPreviewPositionHelper.mClipBottom = -1.0f;
        this.mPreviewPositionHelper.mIsOrientationChanged = false;
        if (this.mBitmapShader != null && (thumbnailData = this.mThumbnailData) != null) {
            this.mPreviewRect.set(0, 0, thumbnailData.thumbnail.getWidth(), this.mThumbnailData.thumbnail.getHeight());
            this.mPreviewPositionHelper.updateThumbnailMatrix(this.mPreviewRect, this.mThumbnailData, getMeasuredWidth(), getMeasuredHeight(), this.mActivity.getDeviceProfile(), ConfigurationCompat.getWindowConfigurationRotation(this.mActivity.getResources().getConfiguration()));
            this.mBitmapShader.setLocalMatrix(this.mPreviewPositionHelper.mMatrix);
            this.mPaint.setShader(this.mBitmapShader);
        }
        getTaskView().updateCurrentFullscreenParams(this.mPreviewPositionHelper);
        invalidate();
        post(new Runnable() { // from class: c.a.b.d2.F
            @Override // java.lang.Runnable
            public final void run() {
                TaskThumbnailView.this.updateOverlay();
            }
        });
    }

    private void updateThumbnailPaintFilter() {
        int i = (int) ((1.0f - (this.mDimAlpha * this.mDimAlphaMultiplier)) * 255.0f);
        ColorFilter colorFilter = getColorFilter(i, this.mIsDarkTextTheme, this.mSaturation);
        this.mBackgroundPaint.setColorFilter(colorFilter);
        this.mDimmingPaintAfterClearing.setAlpha(255 - i);
        if (this.mBitmapShader != null) {
            this.mPaint.setColorFilter(colorFilter);
        } else {
            this.mPaint.setColorFilter(null);
            this.mPaint.setColor(Color.argb(255, i, i, i));
        }
        invalidate();
    }

    public void bind(Task task) {
        this.mOverlay.reset();
        this.mTask = task;
        int i = task != null ? (-16777216) | task.colorBackground : -16777216;
        this.mPaint.setColor(i);
        this.mBackgroundPaint.setColor(i);
    }

    public void drawOnCanvas(Canvas canvas, float f, float f2, float f3, float f4, float f5) {
        if (FeatureFlags.ENABLE_QUICKSTEP_LIVE_TILE.get() && this.mTask != null && getTaskView().isRunningTask() && !getTaskView().showScreenshot()) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mClearPaint);
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mDimmingPaintAfterClearing);
            return;
        }
        Task task = this.mTask;
        boolean z = task == null || task.isLocked || this.mBitmapShader == null || this.mThumbnailData == null;
        if (z || this.mPreviewPositionHelper.mClipBottom > RecentsState.NO_OFFSET || this.mThumbnailData.isTranslucent) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mBackgroundPaint);
            if (z) {
                return;
            }
        }
        if (this.mPreviewPositionHelper.mClipBottom <= RecentsState.NO_OFFSET) {
            canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mPaint);
            return;
        }
        canvas.save();
        canvas.clipRect(f, f2, f3, this.mPreviewPositionHelper.mClipBottom);
        canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mPaint);
        canvas.restore();
    }

    public float getDimAlpha() {
        return this.mDimAlpha;
    }

    public Rect getInsets(Rect rect) {
        ThumbnailData thumbnailData = this.mThumbnailData;
        return thumbnailData != null ? thumbnailData.insets : rect;
    }

    public PreviewPositionHelper getPreviewPositionHelper() {
        return this.mPreviewPositionHelper;
    }

    public Insets getScaledInsets() {
        if (this.mThumbnailData == null) {
            return Insets.NONE;
        }
        RectF rectF = new RectF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, this.mThumbnailData.thumbnail.getWidth(), this.mThumbnailData.thumbnail.getHeight());
        RectF rectF2 = new RectF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, getMeasuredWidth(), getMeasuredHeight());
        Matrix matrix = new Matrix();
        this.mPreviewPositionHelper.getMatrix().invert(matrix);
        RectF rectF3 = new RectF();
        matrix.mapRect(rectF3, rectF2);
        return Insets.of(Math.round(rectF3.left), Math.round(rectF3.top), Math.round(rectF.right - rectF3.right), Math.round(rectF.bottom - rectF3.bottom));
    }

    public int getSysUiStatusNavFlags() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData == null) {
            return 0;
        }
        return ((this.mThumbnailData.systemUiVisibility & 16) != 0 ? 1 : 2) | ((thumbnailData.systemUiVisibility & QuickStepContract.SYSUI_STATE_ASSIST_GESTURE_CONSTRAINED) != 0 ? 4 : 8) | 0;
    }

    public TaskOverlayFactory.TaskOverlay getTaskOverlay() {
        return this.mOverlay;
    }

    public TaskView getTaskView() {
        return (TaskView) getParent();
    }

    public Bitmap getThumbnail() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData == null) {
            return null;
        }
        return thumbnailData.thumbnail;
    }

    public boolean isRealSnapshot() {
        ThumbnailData thumbnailData = this.mThumbnailData;
        return (thumbnailData == null || !thumbnailData.isRealSnapshot || this.mTask.isLocked) ? false : true;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.addPluginListener((PluginListener) this, OverviewScreenshotActions.class, false);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext())).mPluginManager.removePluginListener(this);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        RectF rectF = this.mFullscreenParams.mCurrentDrawnInsets;
        canvas.save();
        float f = this.mFullscreenParams.mScale;
        canvas.scale(f, f);
        canvas.translate(rectF.left, rectF.top);
        drawOnCanvas(canvas, -rectF.left, -rectF.top, getMeasuredWidth() + rectF.right, getMeasuredHeight() + rectF.bottom, this.mFullscreenParams.mCurrentDrawnCornerRadius);
        canvas.restore();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateThumbnailMatrix();
    }

    public void refresh() {
        Bitmap bitmap;
        ThumbnailData thumbnailData = this.mThumbnailData;
        if (thumbnailData == null || (bitmap = thumbnailData.thumbnail) == null) {
            this.mBitmapShader = null;
            this.mThumbnailData = null;
            this.mPaint.setShader(null);
            this.mOverlay.reset();
        } else {
            bitmap.prepareToDraw();
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.mBitmapShader = bitmapShader;
            this.mPaint.setShader(bitmapShader);
            updateThumbnailMatrix();
        }
        OverviewScreenshotActions overviewScreenshotActions = this.mOverviewScreenshotActionsPlugin;
        if (overviewScreenshotActions != null) {
            overviewScreenshotActions.setupActions(getTaskView(), getThumbnail(), this.mActivity);
        }
        updateThumbnailPaintFilter();
    }

    public void setDimAlpha(float f) {
        this.mDimAlpha = f;
        updateThumbnailPaintFilter();
    }

    public void setDimAlphaMultipler(float f) {
        this.mDimAlphaMultiplier = f;
        setDimAlpha(this.mDimAlpha);
    }

    public void setFullscreenParams(TaskView.FullscreenDrawParams fullscreenDrawParams) {
        this.mFullscreenParams = fullscreenDrawParams;
        invalidate();
    }

    public void setOverlayEnabled(boolean z) {
        if (this.mOverlayEnabled != z) {
            this.mOverlayEnabled = z;
            updateOverlay();
        }
    }

    public void setThumbnail(Task task, ThumbnailData thumbnailData, boolean z) {
        this.mTask = task;
        if (thumbnailData == null || thumbnailData.thumbnail == null) {
            thumbnailData = null;
        }
        this.mThumbnailData = thumbnailData;
        if (z) {
            refresh();
        }
    }

    public TaskThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(OverviewScreenshotActions overviewScreenshotActions, Context context) {
        this.mOverviewScreenshotActionsPlugin = overviewScreenshotActions;
        overviewScreenshotActions.setupActions(getTaskView(), getThumbnail(), this.mActivity);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(OverviewScreenshotActions overviewScreenshotActions) {
        if (this.mOverviewScreenshotActionsPlugin != null) {
            this.mOverviewScreenshotActionsPlugin = null;
        }
    }

    public TaskThumbnailView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint(1);
        this.mBackgroundPaint = new Paint(1);
        this.mClearPaint = new Paint();
        this.mDimmingPaintAfterClearing = new Paint();
        this.mPreviewRect = new Rect();
        this.mPreviewPositionHelper = new PreviewPositionHelper();
        this.mDimAlpha = 1.0f;
        this.mDimAlphaMultiplier = 1.0f;
        this.mSaturation = 1.0f;
        this.mOverlay = ((TaskOverlayFactory) TaskOverlayFactory.INSTANCE.b(context)).createOverlay(this);
        this.mPaint.setFilterBitmap(true);
        this.mBackgroundPaint.setColor(-1);
        this.mClearPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.mDimmingPaintAfterClearing.setColor(-16777216);
        BaseActivity fromContext = BaseActivity.fromContext(context);
        this.mActivity = fromContext;
        this.mIsDarkTextTheme = W.getAttrBoolean(fromContext, R.attr.isWorkspaceDarkText);
        this.mFullscreenParams = (TaskView.FullscreenDrawParams) TEMP_PARAMS.b(context);
    }

    public void setThumbnail(Task task, ThumbnailData thumbnailData) {
        setThumbnail(task, thumbnailData, true);
    }
}
