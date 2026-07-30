package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import b.e.d.a;
import b.l.W;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class FolderAnimationManager {
    public FolderPagedView mContent;
    public Context mContext;
    public final int mDelay;
    public final int mDuration;
    public Folder mFolder;
    public GradientDrawable mFolderBackground;
    public FolderIcon mFolderIcon;
    public final TimeInterpolator mFolderInterpolator;
    public final boolean mIsOpening;
    public final TimeInterpolator mLargeFolderPreviewItemCloseInterpolator;
    public final TimeInterpolator mLargeFolderPreviewItemOpenInterpolator;
    public Launcher mLauncher;
    public PreviewBackground mPreviewBackground;
    public final FolderGridOrganizer mPreviewVerifier;
    public final PreviewItemDrawingParams mTmpParams = new PreviewItemDrawingParams(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);

    public FolderAnimationManager(Folder folder, boolean z) {
        this.mFolder = folder;
        this.mContent = folder.mContent;
        this.mFolderBackground = (GradientDrawable) folder.getBackground();
        FolderIcon folderIcon = folder.mFolderIcon;
        this.mFolderIcon = folderIcon;
        this.mPreviewBackground = folderIcon.mBackground;
        this.mContext = folder.getContext();
        Launcher launcher = folder.mLauncher;
        this.mLauncher = launcher;
        this.mPreviewVerifier = new FolderGridOrganizer(launcher.getDeviceProfile().inv);
        this.mIsOpening = z;
        Resources resources = this.mContent.getResources();
        this.mDuration = resources.getInteger(R.integer.config_materialFolderExpandDuration);
        this.mDelay = resources.getInteger(R.integer.config_folderDelay);
        this.mFolderInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.folder_interpolator);
        this.mLargeFolderPreviewItemOpenInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.large_folder_preview_item_open_interpolator);
        this.mLargeFolderPreviewItemCloseInterpolator = AnimationUtils.loadInterpolator(this.mContext, R.interpolator.large_folder_preview_item_close_interpolator);
    }

    public AnimatorSet getAnimator() {
        ArrayList arrayList;
        int i;
        float f;
        char c2;
        int i2;
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) this.mFolder.getLayoutParams();
        this.mFolderIcon.mPreviewItemManager.recomputePreviewDrawingParams();
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule = this.mFolderIcon.mPreviewLayoutRule;
        FolderGridOrganizer folderGridOrganizer = this.mPreviewVerifier;
        folderGridOrganizer.setFolderInfo(this.mFolder.mInfo);
        ArrayList previewItemsForPage = folderGridOrganizer.previewItemsForPage(0, this.mFolder.getIconsInReadingOrder());
        Rect rect = new Rect();
        float descendantRectRelativeToSelf = this.mLauncher.mDragLayer.getDescendantRectRelativeToSelf(this.mFolderIcon, rect);
        int scaledRadius = this.mPreviewBackground.getScaledRadius();
        float f2 = scaledRadius * 2 * descendantRectRelativeToSelf;
        float scaleForItem = clippedFolderIconLayoutRule.mIconSize * clippedFolderIconLayoutRule.scaleForItem(previewItemsForPage.size());
        float f3 = (scaleForItem / ((BubbleTextView) previewItemsForPage.get(0)).mIconSize) * descendantRectRelativeToSelf;
        float f4 = this.mIsOpening ? f3 : 1.0f;
        this.mFolder.setPivotX(RecentsState.NO_OFFSET);
        this.mFolder.setPivotY(RecentsState.NO_OFFSET);
        this.mFolder.mContent.setScaleX(f4);
        this.mFolder.mContent.setScaleY(f4);
        this.mFolder.mContent.setPivotX(RecentsState.NO_OFFSET);
        this.mFolder.mContent.setPivotY(RecentsState.NO_OFFSET);
        this.mFolder.mFooter.setScaleX(f4);
        this.mFolder.mFooter.setScaleY(f4);
        this.mFolder.mFooter.setPivotX(RecentsState.NO_OFFSET);
        this.mFolder.mFooter.setPivotY(RecentsState.NO_OFFSET);
        int i3 = (int) (scaleForItem / 2.0f);
        if (Utilities.isRtl(this.mContext.getResources())) {
            i3 = (int) (((((FrameLayout.LayoutParams) layoutParams).width * f3) - f2) - i3);
        }
        int i4 = i3;
        int paddingLeft = (int) (this.mContent.getPaddingLeft() * f3);
        int paddingTop = (int) (this.mContent.getPaddingTop() * f3);
        int offsetX = ((this.mPreviewBackground.getOffsetX() + (this.mFolder.getPaddingLeft() + rect.left)) - paddingLeft) - i4;
        int offsetY = (this.mPreviewBackground.getOffsetY() + (this.mFolder.getPaddingTop() + rect.top)) - paddingTop;
        float f5 = offsetX - layoutParams.x;
        float f6 = offsetY - layoutParams.y;
        int j = a.j(W.getAttrColor(this.mContext, R.attr.folderFillColor), 255);
        int colorAlphaBound = GraphicsUtils.setColorAlphaBound(j, (int) Math.min(225.0f, this.mPreviewBackground.mColorMultiplier * 160.0f));
        this.mFolderBackground.mutate();
        this.mFolderBackground.setColor(this.mIsOpening ? colorAlphaBound : j);
        int i5 = paddingLeft + i4;
        Rect rect2 = new Rect(i5, paddingTop, Math.round(i5 + f2), Math.round(paddingTop + f2));
        Rect rect3 = new Rect(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
        float pxFromDp = W.pxFromDp(2.0f, this.mContext.getResources().getDisplayMetrics());
        AnimatorSet animatorSet = new AnimatorSet();
        PropertyResetListener propertyResetListener = new PropertyResetListener(BubbleTextView.TEXT_ALPHA_PROPERTY, Float.valueOf(1.0f));
        Folder folder = this.mFolder;
        int currentPage = folder.mContent.getCurrentPage();
        ArrayList iconsInReadingOrder = folder.getIconsInReadingOrder();
        int pageCount = folder.mContent.getPageCount() - 1;
        int size = iconsInReadingOrder.size();
        int i6 = folder.mContent.mOrganizer.mMaxItemsPerPage;
        int i7 = currentPage == pageCount ? size - (i6 * currentPage) : i6;
        int i8 = currentPage * i6;
        ArrayList arrayList2 = new ArrayList(i7);
        int i9 = i8;
        for (int min = Math.min(i8 + i7, iconsInReadingOrder.size()); i9 < min; min = min) {
            arrayList2.add((BubbleTextView) iconsInReadingOrder.get(i9));
            i9++;
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            BubbleTextView bubbleTextView = (BubbleTextView) it.next();
            if (this.mIsOpening) {
                bubbleTextView.setTextVisibility(false);
            }
            ObjectAnimator createTextAlphaAnimator = bubbleTextView.createTextAlphaAnimator(this.mIsOpening);
            createTextAlphaAnimator.addListener(propertyResetListener);
            play(animatorSet, createTextAlphaAnimator);
        }
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_X, f5, RecentsState.NO_OFFSET));
        play(animatorSet, getAnimator(this.mFolder, View.TRANSLATION_Y, f6, RecentsState.NO_OFFSET));
        play(animatorSet, getAnimator(this.mFolder.mContent, LauncherAnimUtils.SCALE_PROPERTY, f3, 1.0f));
        play(animatorSet, getAnimator(this.mFolder.mFooter, LauncherAnimUtils.SCALE_PROPERTY, f3, 1.0f));
        GradientDrawable gradientDrawable = this.mFolderBackground;
        boolean z = true;
        play(animatorSet, this.mIsOpening ? ObjectAnimator.ofArgb(gradientDrawable, "color", colorAlphaBound, j) : ObjectAnimator.ofArgb(gradientDrawable, "color", j, colorAlphaBound));
        play(animatorSet, this.mFolderIcon.mFolderName.createTextAlphaAnimator(!this.mIsOpening));
        play(animatorSet, IconShape.sInstance.createRevealAnimator(this.mFolder, rect2, rect3, pxFromDp, !this.mIsOpening));
        this.mFolder.mFolderName.setAlpha(this.mIsOpening ? RecentsState.NO_OFFSET : 1.0f);
        play(animatorSet, getAnimator(this.mFolder.mFolderName, View.ALPHA, RecentsState.NO_OFFSET, 1.0f), this.mIsOpening ? 32L : 0L, this.mIsOpening ? this.mDuration - 32 : 32);
        float contentAreaHeight = this.mFolder.getContentAreaHeight();
        play(animatorSet, getAnimator(this.mFolder.mFooter, View.TRANSLATION_Y, -(contentAreaHeight - (contentAreaHeight * f3)), RecentsState.NO_OFFSET));
        int i10 = this.mDuration / 2;
        Folder folder2 = this.mFolder;
        play(animatorSet, getAnimator(folder2, View.TRANSLATION_Z, -folder2.getElevation(), RecentsState.NO_OFFSET), this.mIsOpening ? i10 : 0L, i10);
        final CellLayout currentCellLayout = this.mContent.getCurrentCellLayout();
        final boolean clipChildren = this.mFolder.getClipChildren();
        final boolean clipToPadding = this.mFolder.getClipToPadding();
        final boolean clipChildren2 = this.mContent.getClipChildren();
        final boolean clipToPadding2 = this.mContent.getClipToPadding();
        final boolean clipChildren3 = currentCellLayout.getClipChildren();
        final boolean clipToPadding3 = currentCellLayout.getClipToPadding();
        this.mFolder.setClipChildren(false);
        this.mFolder.setClipToPadding(false);
        this.mContent.setClipChildren(false);
        this.mContent.setClipToPadding(false);
        currentCellLayout.setClipChildren(false);
        currentCellLayout.setClipToPadding(false);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                FolderAnimationManager.this.mFolder.setTranslationX(RecentsState.NO_OFFSET);
                FolderAnimationManager.this.mFolder.setTranslationY(RecentsState.NO_OFFSET);
                FolderAnimationManager.this.mFolder.setTranslationZ(RecentsState.NO_OFFSET);
                FolderAnimationManager.this.mFolder.mContent.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mContent.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleX(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setScaleY(1.0f);
                FolderAnimationManager.this.mFolder.mFooter.setTranslationX(RecentsState.NO_OFFSET);
                FolderAnimationManager.this.mFolder.mFolderName.setAlpha(1.0f);
                FolderAnimationManager.this.mFolder.setClipChildren(clipChildren);
                FolderAnimationManager.this.mFolder.setClipToPadding(clipToPadding);
                FolderAnimationManager.this.mContent.setClipChildren(clipChildren2);
                FolderAnimationManager.this.mContent.setClipToPadding(clipToPadding2);
                currentCellLayout.setClipChildren(clipChildren3);
                currentCellLayout.setClipToPadding(clipToPadding3);
            }
        });
        Iterator<Animator> it2 = animatorSet.getChildAnimations().iterator();
        while (it2.hasNext()) {
            it2.next().setInterpolator(this.mFolderInterpolator);
        }
        int i11 = scaledRadius - (this.mPreviewBackground.previewSize / 2);
        float f7 = f3 / descendantRectRelativeToSelf;
        int i12 = i4 + i11;
        ClippedFolderIconLayoutRule clippedFolderIconLayoutRule2 = this.mFolderIcon.mPreviewLayoutRule;
        boolean z2 = this.mFolder.mContent.getCurrentPage() == 0;
        int currentPage2 = z2 ? 0 : this.mFolder.mContent.getCurrentPage();
        FolderGridOrganizer folderGridOrganizer2 = this.mPreviewVerifier;
        folderGridOrganizer2.setFolderInfo(this.mFolder.mInfo);
        ArrayList previewItemsForPage2 = folderGridOrganizer2.previewItemsForPage(currentPage2, this.mFolder.getIconsInReadingOrder());
        int size2 = previewItemsForPage2.size();
        int i13 = z2 ? size2 : 4;
        TimeInterpolator timeInterpolator = this.mFolder.getItemCount() > 4 ? this.mIsOpening ? this.mLargeFolderPreviewItemOpenInterpolator : this.mLargeFolderPreviewItemCloseInterpolator : this.mFolderInterpolator;
        int i14 = 0;
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mContent.getPageAt(0).mShortcutsAndWidgets;
        while (i14 < size2) {
            final BubbleTextView bubbleTextView2 = (BubbleTextView) previewItemsForPage2.get(i14);
            CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) bubbleTextView2.getLayoutParams();
            layoutParams2.isLockedToGrid = z;
            shortcutAndWidgetContainer.setupLp(bubbleTextView2);
            float scaleForItem2 = (clippedFolderIconLayoutRule2.mIconSize * clippedFolderIconLayoutRule2.scaleForItem(i13)) / ((BubbleTextView) previewItemsForPage2.get(i14)).mIconSize;
            final float f8 = scaleForItem2 / f7;
            ShortcutAndWidgetContainer shortcutAndWidgetContainer2 = shortcutAndWidgetContainer;
            float f9 = this.mIsOpening ? f8 : 1.0f;
            bubbleTextView2.setScaleX(f9);
            bubbleTextView2.setScaleY(f9);
            clippedFolderIconLayoutRule2.computePreviewItemDrawingParams(i14, i13, this.mTmpParams);
            int i15 = i14;
            PreviewItemDrawingParams previewItemDrawingParams = this.mTmpParams;
            int i16 = (int) (((previewItemDrawingParams.transX - (((int) ((((ViewGroup.MarginLayoutParams) layoutParams2).width - bubbleTextView2.mIconSize) * scaleForItem2)) / 2)) + i12) / f7);
            int i17 = (int) ((previewItemDrawingParams.transY + i11) / f7);
            final float f10 = i16 - layoutParams2.x;
            final float f11 = i17 - layoutParams2.y;
            Animator animator = getAnimator(bubbleTextView2, View.TRANSLATION_X, f10, RecentsState.NO_OFFSET);
            animator.setInterpolator(timeInterpolator);
            play(animatorSet, animator);
            int i18 = i13;
            Animator animator2 = getAnimator(bubbleTextView2, View.TRANSLATION_Y, f11, RecentsState.NO_OFFSET);
            animator2.setInterpolator(timeInterpolator);
            play(animatorSet, animator2);
            int i19 = i12;
            Animator animator3 = getAnimator(bubbleTextView2, LauncherAnimUtils.SCALE_PROPERTY, f8, 1.0f);
            animator3.setInterpolator(timeInterpolator);
            play(animatorSet, animator3);
            ClippedFolderIconLayoutRule clippedFolderIconLayoutRule3 = clippedFolderIconLayoutRule2;
            if (this.mFolder.getItemCount() > 4) {
                if (this.mIsOpening) {
                    i2 = this.mDelay;
                    c2 = 2;
                } else {
                    c2 = 2;
                    i2 = this.mDelay * 2;
                }
                arrayList = previewItemsForPage2;
                if (this.mIsOpening) {
                    long j2 = i2;
                    animator.setStartDelay(j2);
                    animator2.setStartDelay(j2);
                    animator3.setStartDelay(j2);
                }
                i = i11;
                f = f7;
                long j3 = i2;
                animator.setDuration(animator.getDuration() - j3);
                animator2.setDuration(animator2.getDuration() - j3);
                animator3.setDuration(animator3.getDuration() - j3);
            } else {
                arrayList = previewItemsForPage2;
                i = i11;
                f = f7;
                c2 = 2;
            }
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.FolderAnimationManager.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator4) {
                    super.onAnimationEnd(animator4);
                    bubbleTextView2.setTranslationX(RecentsState.NO_OFFSET);
                    bubbleTextView2.setTranslationY(RecentsState.NO_OFFSET);
                    bubbleTextView2.setScaleX(1.0f);
                    bubbleTextView2.setScaleY(1.0f);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator4) {
                    super.onAnimationStart(animator4);
                    if (FolderAnimationManager.this.mIsOpening) {
                        bubbleTextView2.setTranslationX(f10);
                        bubbleTextView2.setTranslationY(f11);
                        bubbleTextView2.setScaleX(f8);
                        bubbleTextView2.setScaleY(f8);
                    }
                }
            });
            i14 = i15 + 1;
            shortcutAndWidgetContainer = shortcutAndWidgetContainer2;
            i13 = i18;
            timeInterpolator = timeInterpolator;
            i12 = i19;
            clippedFolderIconLayoutRule2 = clippedFolderIconLayoutRule3;
            previewItemsForPage2 = arrayList;
            i11 = i;
            f7 = f;
            z = true;
        }
        return animatorSet;
    }

    public final void play(AnimatorSet animatorSet, Animator animator) {
        play(animatorSet, animator, animator.getStartDelay(), this.mDuration);
    }

    public final void play(AnimatorSet animatorSet, Animator animator, long j, int i) {
        animator.setStartDelay(j);
        animator.setDuration(i);
        animatorSet.play(animator);
    }

    public final Animator getAnimator(View view, Property property, float f, float f2) {
        if (this.mIsOpening) {
            return ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f, f2);
        }
        return ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f2, f);
    }
}
