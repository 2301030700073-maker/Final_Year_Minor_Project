package com.android.launcher3.folder;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.views.ActivityContext;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class PreviewItemManager {
    public static final FloatProperty CURRENT_PAGE_ITEMS_TRANS_X = new FloatProperty("currentPageItemsTransX") { // from class: com.android.launcher3.folder.PreviewItemManager.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((PreviewItemManager) obj).mCurrentPageItemsTransX);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            PreviewItemManager previewItemManager = (PreviewItemManager) obj;
            previewItemManager.mCurrentPageItemsTransX = f;
            previewItemManager.mIcon.invalidate();
        }
    };
    public final Context mContext;
    public final FolderIcon mIcon;
    public final int mIconSize;
    public boolean mShouldSlideInFirstPage;
    public float mIntrinsicIconSize = -1.0f;
    public int mTotalWidth = -1;
    public int mPrevTopPadding = -1;
    public Drawable mReferenceDrawable = null;
    public ArrayList mFirstPageParams = new ArrayList();
    public ArrayList mCurrentPageParams = new ArrayList();
    public float mCurrentPageItemsTransX = RecentsState.NO_OFFSET;

    public PreviewItemManager(FolderIcon folderIcon) {
        Context context = folderIcon.getContext();
        this.mContext = context;
        this.mIcon = folderIcon;
        this.mIconSize = ActivityContext.lookupContext(context).getDeviceProfile().folderChildIconSizePx;
    }

    public void buildParamsForPage(int i, ArrayList arrayList, boolean z) {
        ArrayList arrayList2;
        PreviewItemManager previewItemManager = this;
        List previewItemsOnPage = previewItemManager.mIcon.getPreviewItemsOnPage(i);
        int size = arrayList.size();
        while (true) {
            arrayList2 = (ArrayList) previewItemsOnPage;
            if (arrayList2.size() >= arrayList.size()) {
                break;
            } else {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        while (arrayList2.size() > arrayList.size()) {
            arrayList.add(new PreviewItemDrawingParams(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET));
        }
        int size2 = i == 0 ? arrayList2.size() : 4;
        int i2 = 0;
        while (i2 < arrayList.size()) {
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) arrayList.get(i2);
            previewItemManager.setDrawable(previewItemDrawingParams, (WorkspaceItemInfo) arrayList2.get(i2));
            if (z) {
                FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i2, size, i2, size2, 400, null);
                FolderPreviewItemAnim folderPreviewItemAnim2 = previewItemDrawingParams.anim;
                if (folderPreviewItemAnim2 != null) {
                    if (!Arrays.equals(folderPreviewItemAnim2.finalState, folderPreviewItemAnim.finalState)) {
                        previewItemDrawingParams.anim.mAnimator.cancel();
                    }
                }
                previewItemDrawingParams.anim = folderPreviewItemAnim;
                folderPreviewItemAnim.mAnimator.start();
            } else {
                previewItemManager.computePreviewItemDrawingParams(i2, size2, previewItemDrawingParams);
                if (previewItemManager.mReferenceDrawable == null) {
                    previewItemManager.mReferenceDrawable = previewItemDrawingParams.drawable;
                }
            }
            i2++;
            previewItemManager = this;
        }
    }

    public final void computePreviewDrawingParams(int i, int i2) {
        float f = i;
        if (this.mIntrinsicIconSize == f && this.mTotalWidth == i2 && this.mPrevTopPadding == this.mIcon.getPaddingTop()) {
            return;
        }
        this.mIntrinsicIconSize = f;
        this.mTotalWidth = i2;
        this.mPrevTopPadding = this.mIcon.getPaddingTop();
        FolderIcon folderIcon = this.mIcon;
        PreviewBackground previewBackground = folderIcon.mBackground;
        Context context = folderIcon.getContext();
        FolderIcon folderIcon2 = this.mIcon;
        previewBackground.setup(context, folderIcon2.mActivity, folderIcon2, this.mTotalWidth, folderIcon2.getPaddingTop());
        FolderIcon folderIcon3 = this.mIcon;
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule = folderIcon3.mPreviewLayoutRule;
        int i3 = folderIcon3.mBackground.previewSize;
        float f2 = this.mIntrinsicIconSize;
        boolean isRtl = Utilities.isRtl(folderIcon3.getResources());
        float f3 = i3;
        clippedFolderIconLayoutRule.mAvailableSpace = f3;
        clippedFolderIconLayoutRule.mRadius = (1.33f * f3) / 2.0f;
        clippedFolderIconLayoutRule.mIconSize = f2;
        clippedFolderIconLayoutRule.mIsRtl = isRtl;
        clippedFolderIconLayoutRule.mBaselineIconScale = f3 / (f2 * 1.0f);
        buildParamsForPage(0, this.mFirstPageParams, false);
    }

    public PreviewItemDrawingParams computePreviewItemDrawingParams(int i, int i2, PreviewItemDrawingParams previewItemDrawingParams) {
        if (i != -1) {
            return this.mIcon.mPreviewLayoutRule.computePreviewItemDrawingParams(i, i2, previewItemDrawingParams);
        }
        float f = this.mIcon.mActivity.getDeviceProfile().iconSizePx;
        float intrinsicWidth = f / this.mReferenceDrawable.getIntrinsicWidth();
        float f2 = (this.mIcon.mBackground.previewSize - f) / 2.0f;
        previewItemDrawingParams.update(f2, f2, intrinsicWidth);
        return previewItemDrawingParams;
    }

    public FolderPreviewItemAnim createFirstItemAnimation(boolean z, Runnable runnable) {
        return z ? new FolderPreviewItemAnim(this, (PreviewItemDrawingParams) this.mFirstPageParams.get(0), 0, 2, -1, -1, 200, runnable) : new FolderPreviewItemAnim(this, (PreviewItemDrawingParams) this.mFirstPageParams.get(0), -1, -1, 0, 2, 350, runnable);
    }

    public void draw(Canvas canvas) {
        float f;
        PreviewBackground previewBackground = this.mIcon.mBackground;
        canvas.translate(previewBackground.basePreviewOffsetX, previewBackground.basePreviewOffsetY);
        if (this.mShouldSlideInFirstPage) {
            drawParams(canvas, this.mCurrentPageParams, this.mCurrentPageItemsTransX);
            f = this.mCurrentPageItemsTransX - 200.0f;
        } else {
            f = RecentsState.NO_OFFSET;
        }
        drawParams(canvas, this.mFirstPageParams, f);
        canvas.translate(-previewBackground.basePreviewOffsetX, -previewBackground.basePreviewOffsetY);
    }

    public void drawParams(Canvas canvas, ArrayList arrayList, float f) {
        canvas.translate(f, RecentsState.NO_OFFSET);
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                canvas.translate(-f, RecentsState.NO_OFFSET);
                return;
            }
            PreviewItemDrawingParams previewItemDrawingParams = (PreviewItemDrawingParams) arrayList.get(size);
            if (!previewItemDrawingParams.hidden) {
                canvas.save();
                canvas.translate(previewItemDrawingParams.transX, previewItemDrawingParams.transY);
                float f2 = previewItemDrawingParams.scale;
                canvas.scale(f2, f2);
                Drawable drawable = previewItemDrawingParams.drawable;
                if (drawable != null) {
                    Rect bounds = drawable.getBounds();
                    canvas.save();
                    canvas.translate(-bounds.left, -bounds.top);
                    canvas.scale(this.mIntrinsicIconSize / bounds.width(), this.mIntrinsicIconSize / bounds.height());
                    drawable.draw(canvas);
                    canvas.restore();
                }
                canvas.restore();
            }
        }
    }

    public void hidePreviewItem(int i, boolean z) {
        int max = Math.max(this.mFirstPageParams.size() - 4, 0) + i;
        PreviewItemDrawingParams previewItemDrawingParams = max < this.mFirstPageParams.size() ? (PreviewItemDrawingParams) this.mFirstPageParams.get(max) : null;
        if (previewItemDrawingParams != null) {
            previewItemDrawingParams.hidden = z;
        }
    }

    public void recomputePreviewDrawingParams() {
        Drawable drawable = this.mReferenceDrawable;
        if (drawable != null) {
            computePreviewDrawingParams(drawable.getIntrinsicWidth(), this.mIcon.getMeasuredWidth());
        }
    }

    public final void setDrawable(PreviewItemDrawingParams previewItemDrawingParams, WorkspaceItemInfo workspaceItemInfo) {
        if (workspaceItemInfo.hasPromiseIconUi()) {
            PreloadIconDrawable preloadIconDrawable = new PreloadIconDrawable(workspaceItemInfo, this.mContext);
            preloadIconDrawable.setLevel(workspaceItemInfo.mInstallProgress);
            previewItemDrawingParams.drawable = preloadIconDrawable;
        } else {
            previewItemDrawingParams.drawable = FastBitmapDrawable.newIcon(this.mContext, workspaceItemInfo);
        }
        Drawable drawable = previewItemDrawingParams.drawable;
        int i = this.mIconSize;
        drawable.setBounds(0, 0, i, i);
        previewItemDrawingParams.item = workspaceItemInfo;
        previewItemDrawingParams.drawable.setCallback(this.mIcon);
    }

    public final void updateTransitionParam(PreviewItemDrawingParams previewItemDrawingParams, WorkspaceItemInfo workspaceItemInfo, int i, int i2, int i3) {
        setDrawable(previewItemDrawingParams, workspaceItemInfo);
        FolderPreviewItemAnim folderPreviewItemAnim = new FolderPreviewItemAnim(this, previewItemDrawingParams, i, i3, i2, i3, 400, null);
        FolderPreviewItemAnim folderPreviewItemAnim2 = previewItemDrawingParams.anim;
        if (folderPreviewItemAnim2 != null && !Arrays.equals(folderPreviewItemAnim2.finalState, folderPreviewItemAnim.finalState)) {
            previewItemDrawingParams.anim.mAnimator.cancel();
        }
        previewItemDrawingParams.anim = folderPreviewItemAnim;
    }
}
