package com.android.launcher3.uioverrides;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Process;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import b.e.d.a;
import c.a.a.C0240i;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Launcher;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.hybridhotseat.HotseatPredictionController;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconNormalizer;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.DoubleShadowBubbleTextView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.SysUiStatsLog;

/* loaded from: classes.dex */
public class PredictedAppIcon extends DoubleShadowBubbleTextView implements LauncherAccessibilityDelegate.AccessibilityActionHandler {
    public final DeviceProfile mDeviceProfile;
    public boolean mDrawForDrag;
    public final Paint mIconRingPaint;
    public boolean mIsDrawingDot;
    public boolean mIsPinned;
    public final int mNormalizedIconRadius;
    public int mPlateColor;
    public final Path mRingPath;
    public final BlurMaskFilter mShadowFilter;

    public class PredictedIconOutlineDrawing extends CellLayout.DelegatedCellDrawing {
        public int mIconRadius;
        public int mOffsetX;
        public int mOffsetY;
        public Paint mOutlinePaint = new Paint(1);

        public PredictedIconOutlineDrawing(int i, int i2, PredictedAppIcon predictedAppIcon) {
            this.mDelegateCellX = i;
            this.mDelegateCellY = i2;
            this.mOffsetX = predictedAppIcon.getOutlineOffsetX();
            this.mOffsetY = predictedAppIcon.getOutlineOffsetY();
            this.mIconRadius = predictedAppIcon.mNormalizedIconRadius;
            this.mOutlinePaint.setStyle(Paint.Style.FILL);
            this.mOutlinePaint.setColor(Color.argb(24, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, SysUiStatsLog.NOTIFICATION_PANEL_REPORTED));
        }

        @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
        public void drawOverItem(Canvas canvas) {
        }

        @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
        public void drawUnderItem(Canvas canvas) {
            IconShape.sInstance.drawShape(canvas, this.mOffsetX, this.mOffsetY, this.mIconRadius, this.mOutlinePaint);
        }
    }

    public PredictedAppIcon(Context context) {
        this(context, null, 0);
    }

    public static PredictedAppIcon createIcon(ViewGroup viewGroup, WorkspaceItemInfo workspaceItemInfo) {
        PredictedAppIcon predictedAppIcon = (PredictedAppIcon) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.predicted_app_icon, viewGroup, false);
        predictedAppIcon.applyFromWorkspaceItem(workspaceItemInfo);
        predictedAppIcon.setOnClickListener(ItemClickHandler.INSTANCE);
        predictedAppIcon.setOnFocusChangeListener(Launcher.getLauncher(viewGroup.getContext()).mFocusHandler);
        return predictedAppIcon;
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate.AccessibilityActionHandler
    public void addSupportedAccessibilityActions(AccessibilityNodeInfo accessibilityNodeInfo) {
        if (this.mIsPinned) {
            return;
        }
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.id.action_pin_prediction, getContext().getText(R.string.pin_prediction)));
    }

    @Override // com.android.launcher3.BubbleTextView
    public void applyFromWorkspaceItem(WorkspaceItemInfo workspaceItemInfo) {
        super.applyFromWorkspaceItem(workspaceItemInfo);
        this.mPlateColor = a.j(a.f(GraphicsUtils.setColorAlphaBound(-1, (int) 137.70001f), workspaceItemInfo.bitmap.color), 200);
        if (this.mIsPinned) {
            setContentDescription(workspaceItemInfo.contentDescription);
        } else {
            setContentDescription(getContext().getString(R.string.hotseat_prediction_content_description, workspaceItemInfo.contentDescription));
        }
    }

    public /* synthetic */ void b(SafeCloseable safeCloseable) {
        safeCloseable.close();
        this.mDrawForDrag = false;
    }

    @Override // com.android.launcher3.BubbleTextView
    public void drawDotIfNecessary(Canvas canvas) {
        this.mIsDrawingDot = true;
        int save = canvas.save();
        canvas.translate((-getWidth()) * 0.095f, (-getHeight()) * 0.095f);
        canvas.scale(1.19f, 1.19f);
        super.drawDotIfNecessary(canvas);
        canvas.restoreToCount(save);
        this.mIsDrawingDot = false;
    }

    @Override // com.android.launcher3.BubbleTextView
    public void getIconBounds(Rect rect) {
        BubbleTextView.getIconBounds(this, rect, this.mIconSize);
        if (this.mIsPinned || this.mIsDrawingDot) {
            return;
        }
        int i = (int) (this.mIconSize * 0.095f);
        rect.inset(i, i);
    }

    public final int getOutlineOffsetX() {
        return (getMeasuredWidth() / 2) - this.mNormalizedIconRadius;
    }

    public final int getOutlineOffsetY() {
        return getPaddingTop() + this.mDeviceProfile.folderIconOffsetYPx;
    }

    @Override // com.android.launcher3.BubbleTextView, com.android.launcher3.dragndrop.DraggableView
    public void getSourceVisualDragBounds(Rect rect) {
        super.getSourceVisualDragBounds(rect);
        if (this.mIsPinned) {
            return;
        }
        int width = (int) (rect.width() * 0.095f);
        rect.inset(width, width);
    }

    @Override // com.android.launcher3.views.DoubleShadowBubbleTextView, com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        int save = canvas.save();
        if (!this.mIsPinned) {
            boolean z = (getTag() instanceof WorkspaceItemInfo) && !Process.myUserHandle().equals(((ItemInfo) getTag()).user);
            if (!this.mDrawForDrag) {
                this.mRingPath.reset();
                IconShape.sInstance.addToPath(this.mRingPath, getOutlineOffsetX(), getOutlineOffsetY(), this.mNormalizedIconRadius);
                if (z) {
                    float badgeSizeForIconSize = BaseIconFactory.getBadgeSizeForIconSize((int) (this.mIconSize * 0.81f)) + (this.mNormalizedIconRadius * 0.095f * 2.0f);
                    float f = (this.mNormalizedIconRadius * 2) - badgeSizeForIconSize;
                    IconShape.sInstance.addToPath(this.mRingPath, getOutlineOffsetX() + f, getOutlineOffsetY() + f, badgeSizeForIconSize / 2.0f);
                }
                this.mIconRingPaint.setColor(-1728053248);
                this.mIconRingPaint.setMaskFilter(this.mShadowFilter);
                canvas.drawPath(this.mRingPath, this.mIconRingPaint);
                this.mIconRingPaint.setColor(this.mPlateColor);
                this.mIconRingPaint.setMaskFilter(null);
                canvas.drawPath(this.mRingPath, this.mIconRingPaint);
            }
            canvas.translate(getWidth() * 0.095f, getHeight() * 0.095f);
            canvas.scale(0.81f, 0.81f);
        }
        super.onDraw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate.AccessibilityActionHandler
    public boolean performAccessibilityAction(int i, ItemInfo itemInfo) {
        HotseatPredictionController hotseatPredictionController;
        QuickstepLauncher quickstepLauncher = (QuickstepLauncher) Launcher.getLauncher(getContext());
        if (i != R.id.action_pin_prediction || quickstepLauncher == null || (hotseatPredictionController = quickstepLauncher.mHotseatPredictionController) == null) {
            return false;
        }
        hotseatPredictionController.pinPrediction(itemInfo);
        return true;
    }

    @Override // com.android.launcher3.BubbleTextView, com.android.launcher3.dragndrop.DraggableView
    public SafeCloseable prepareDrawDragView() {
        this.mDrawForDrag = true;
        invalidate();
        Drawable drawable = this.mIcon;
        if (drawable instanceof FastBitmapDrawable) {
            ((FastBitmapDrawable) drawable).setScale(1.0f);
        }
        setForceHideDot(true);
        final C0240i c0240i = C0240i.f1865a;
        return new SafeCloseable() { // from class: c.a.a.Z0.d
            @Override // com.android.launcher3.util.SafeCloseable, java.lang.AutoCloseable
            public final void close() {
                PredictedAppIcon.this.b(c0240i);
            }
        };
    }

    public PredictedAppIcon(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PredictedAppIcon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsDrawingDot = false;
        this.mIconRingPaint = new Paint(1);
        this.mRingPath = new Path();
        this.mIsPinned = false;
        this.mDrawForDrag = false;
        this.mDeviceProfile = ActivityContext.lookupContext(context).getDeviceProfile();
        this.mNormalizedIconRadius = IconNormalizer.getNormalizedCircleSize(this.mIconSize) / 2;
        this.mShadowFilter = new BlurMaskFilter(context.getResources().getDimensionPixelSize(R.dimen.blur_size_thin_outline), BlurMaskFilter.Blur.OUTER);
    }
}
