package com.android.quickstep.util;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.IntProperty;
import c.a.a.Y0.i;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.AnimatedFloat;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import com.android.systemui.shared.system.SyncRtSurfaceTransactionApplierCompat;
import java.util.function.IntConsumer;

/* loaded from: classes.dex */
public class TaskViewSimulator implements TransformParams.BuilderProxy {
    public static final IntProperty SCROLL = new IntProperty("scroll") { // from class: com.android.quickstep.util.TaskViewSimulator.1
        @Override // android.util.Property
        public Integer get(TaskViewSimulator taskViewSimulator) {
            return Integer.valueOf(taskViewSimulator.mScrollState.scroll);
        }

        @Override // android.util.IntProperty
        public void setValue(TaskViewSimulator taskViewSimulator, int i) {
            taskViewSimulator.setScroll(i);
        }
    };
    public final Context mContext;
    public final TaskView.FullscreenDrawParams mCurrentFullscreenParams;
    public DeviceProfile mDp;
    public final RecentsOrientedState mOrientationState;
    public final int mPageSpacing;
    public final BaseActivityInterface mSizeStrategy;
    public final Rect mTmpCropRect = new Rect();
    public final RectF mTempRectF = new RectF();
    public final float[] mTempPoint = new float[2];
    public final Rect mTaskRect = new Rect();
    public final PointF mPivot = new PointF();
    public final Matrix mMatrix = new Matrix();
    public final Point mRunningTargetWindowPosition = new Point();
    public final Rect mThumbnailPosition = new Rect();
    public final ThumbnailData mThumbnailData = new ThumbnailData();
    public final TaskThumbnailView.PreviewPositionHelper mPositionHelper = new TaskThumbnailView.PreviewPositionHelper();
    public final Matrix mInversePositionMatrix = new Matrix();
    public float mCurveScale = 1.0f;
    public final AnimatedFloat recentsViewScale = new AnimatedFloat();
    public final AnimatedFloat fullScreenProgress = new AnimatedFloat();
    public final RecentsView.ScrollState mScrollState = new RecentsView.ScrollState();
    public boolean mLayoutValid = false;
    public boolean mScrollValid = false;

    public TaskViewSimulator(Context context, BaseActivityInterface baseActivityInterface) {
        this.mContext = context;
        this.mSizeStrategy = baseActivityInterface;
        RecentsOrientedState recentsOrientedState = new RecentsOrientedState(context, baseActivityInterface, new IntConsumer() { // from class: c.a.b.c2.l
            @Override // java.util.function.IntConsumer
            public final void accept(int i) {
                TaskViewSimulator.a(i);
            }
        });
        this.mOrientationState = recentsOrientedState;
        recentsOrientedState.setGestureActive(true);
        this.mCurrentFullscreenParams = new TaskView.FullscreenDrawParams(context);
        this.mPageSpacing = context.getResources().getDimensionPixelSize(R.dimen.recents_page_spacing);
    }

    public static /* synthetic */ void a(int i) {
    }

    public void addAppToOverviewAnim(PendingAnimation pendingAnimation, TimeInterpolator timeInterpolator) {
        pendingAnimation.addFloat(this.fullScreenProgress, AnimatedFloat.VALUE, 1.0f, RecentsState.NO_OFFSET, timeInterpolator);
        pendingAnimation.addFloat(this.recentsViewScale, AnimatedFloat.VALUE, getFullScreenScale(), 1.0f, timeInterpolator);
    }

    public void apply(TransformParams transformParams) {
        if (this.mDp == null || this.mThumbnailPosition.isEmpty()) {
            return;
        }
        if (!this.mLayoutValid) {
            this.mLayoutValid = true;
            getFullScreenScale();
            this.mThumbnailData.rotation = this.mOrientationState.getDisplayRotation();
            this.mPositionHelper.updateThumbnailMatrix(this.mThumbnailPosition, this.mThumbnailData, this.mTaskRect.width(), this.mTaskRect.height(), this.mDp, this.mOrientationState.getRecentsActivityRotation());
            this.mPositionHelper.getMatrix().invert(this.mInversePositionMatrix);
            PagedOrientationHandler orientationHandler = this.mOrientationState.getOrientationHandler();
            this.mScrollState.halfPageSize = orientationHandler.getPrimaryValue(this.mTaskRect.width(), this.mTaskRect.height()) / 2;
            RecentsView.ScrollState scrollState = this.mScrollState;
            DeviceProfile deviceProfile = this.mDp;
            scrollState.halfScreenSize = orientationHandler.getPrimaryValue(deviceProfile.widthPx, deviceProfile.heightPx) / 2;
            this.mScrollValid = false;
        }
        if (!this.mScrollValid) {
            this.mScrollValid = true;
            PagedOrientationHandler orientationHandler2 = this.mOrientationState.getOrientationHandler();
            Rect rect = this.mTaskRect;
            int primaryValue = orientationHandler2.getPrimaryValue(rect.left, rect.top);
            RecentsView.ScrollState scrollState2 = this.mScrollState;
            scrollState2.screenCenter = scrollState2.scroll + primaryValue + scrollState2.halfPageSize;
            scrollState2.updateInterpolation(primaryValue, this.mPageSpacing);
            this.mCurveScale = TaskView.getCurveScaleForInterpolation(this.mScrollState.linearInterpolation);
        }
        this.mCurrentFullscreenParams.setProgress(Utilities.boundToRange(this.fullScreenProgress.value, RecentsState.NO_OFFSET, 1.0f), this.recentsViewScale.value, this.mTaskRect.width(), this.mDp, this.mPositionHelper);
        TaskView.FullscreenDrawParams fullscreenDrawParams = this.mCurrentFullscreenParams;
        RectF rectF = fullscreenDrawParams.mCurrentDrawnInsets;
        float f = fullscreenDrawParams.mScale;
        float width = this.mTaskRect.width();
        float height = this.mTaskRect.height();
        this.mMatrix.set(this.mPositionHelper.getMatrix());
        this.mMatrix.postTranslate(rectF.left, rectF.top);
        this.mMatrix.postScale(f, f);
        Matrix matrix = this.mMatrix;
        Rect rect2 = this.mTaskRect;
        matrix.postTranslate(rect2.left, rect2.top);
        Matrix matrix2 = this.mMatrix;
        float f2 = this.mCurveScale;
        matrix2.postScale(f2, f2, width / 2.0f, height / 2.0f);
        PagedOrientationHandler orientationHandler3 = this.mOrientationState.getOrientationHandler();
        Matrix matrix3 = this.mMatrix;
        PagedOrientationHandler.Float2DAction float2DAction = PagedOrientationHandler.MATRIX_POST_TRANSLATE;
        orientationHandler3.set(matrix3, i.f1713a, this.mScrollState.scroll);
        Matrix matrix4 = this.mMatrix;
        float f3 = this.recentsViewScale.value;
        PointF pointF = this.mPivot;
        matrix4.postScale(f3, f3, pointF.x, pointF.y);
        applyWindowToHomeRotation(this.mMatrix);
        this.mTempRectF.set(-rectF.left, -rectF.top, width + rectF.right, height + rectF.bottom);
        this.mInversePositionMatrix.mapRect(this.mTempRectF);
        this.mTempRectF.roundOut(this.mTmpCropRect);
        transformParams.applySurfaceParams(transformParams.createSurfaceParams(this));
    }

    public void applyWindowToHomeRotation(Matrix matrix) {
        Matrix matrix2 = this.mMatrix;
        DeviceProfile deviceProfile = this.mDp;
        matrix2.postTranslate(deviceProfile.windowX, deviceProfile.windowY);
        int displayRotation = this.mOrientationState.getDisplayRotation() - this.mOrientationState.getRecentsActivityRotation();
        if (displayRotation < 0) {
            displayRotation += 4;
        }
        DeviceProfile deviceProfile2 = this.mDp;
        RecentsOrientedState.postDisplayRotation(displayRotation, deviceProfile2.widthPx, deviceProfile2.heightPx, matrix);
        Point point = this.mRunningTargetWindowPosition;
        matrix.postTranslate(-point.x, -point.y);
    }

    public float getCurrentCornerRadius() {
        float f = this.mCurrentFullscreenParams.mCurrentDrawnCornerRadius;
        float[] fArr = this.mTempPoint;
        fArr[0] = f;
        fArr[1] = 0.0f;
        this.mInversePositionMatrix.mapVectors(fArr);
        return Math.max(Math.abs(this.mTempPoint[0]), Math.abs(this.mTempPoint[1]));
    }

    public RectF getCurrentCropRect() {
        RectF rectF = this.mCurrentFullscreenParams.mCurrentDrawnInsets;
        this.mTempRectF.set(-rectF.left, -rectF.top, this.mTaskRect.width() + rectF.right, this.mTaskRect.height() + rectF.bottom);
        this.mInversePositionMatrix.mapRect(this.mTempRectF);
        return this.mTempRectF;
    }

    public Matrix getCurrentMatrix() {
        return this.mMatrix;
    }

    public float getFullScreenScale() {
        DeviceProfile deviceProfile = this.mDp;
        if (deviceProfile == null) {
            return 1.0f;
        }
        this.mSizeStrategy.calculateTaskSize(this.mContext, deviceProfile, this.mTaskRect, this.mOrientationState.getOrientationHandler());
        return this.mOrientationState.getFullScreenScaleAndPivot(this.mTaskRect, this.mDp, this.mPivot);
    }

    public RecentsOrientedState getOrientationState() {
        return this.mOrientationState;
    }

    @Override // com.android.quickstep.util.TransformParams.BuilderProxy
    public void onBuildTargetParams(SyncRtSurfaceTransactionApplierCompat.SurfaceParams.Builder builder, RemoteAnimationTargetCompat remoteAnimationTargetCompat, TransformParams transformParams) {
        builder.withMatrix(this.mMatrix).withWindowCrop(this.mTmpCropRect).withCornerRadius(getCurrentCornerRadius());
    }

    public void setDp(DeviceProfile deviceProfile) {
        this.mDp = deviceProfile;
        this.mOrientationState.setMultiWindowMode(deviceProfile.isMultiWindowMode);
        this.mLayoutValid = false;
    }

    public void setLayoutRotation(int i, int i2) {
        this.mOrientationState.update(i, i2);
        this.mLayoutValid = false;
    }

    public void setPreview(RemoteAnimationTargetCompat remoteAnimationTargetCompat) {
        setPreviewBounds(remoteAnimationTargetCompat.screenSpaceBounds, remoteAnimationTargetCompat.contentInsets);
        Point point = this.mRunningTargetWindowPosition;
        Rect rect = remoteAnimationTargetCompat.screenSpaceBounds;
        point.set(rect.left, rect.top);
    }

    public void setPreviewBounds(Rect rect, Rect rect2) {
        this.mThumbnailData.insets.set(rect2);
        this.mThumbnailData.windowingMode = 1;
        this.mThumbnailPosition.set(rect);
        this.mLayoutValid = false;
    }

    public void setRecentsConfiguration(Configuration configuration) {
        this.mOrientationState.setActivityConfiguration(configuration);
        this.mLayoutValid = false;
    }

    public void setScroll(int i) {
        RecentsView.ScrollState scrollState = this.mScrollState;
        if (scrollState.scroll != i) {
            scrollState.scroll = i;
            this.mScrollValid = false;
        }
    }
}
