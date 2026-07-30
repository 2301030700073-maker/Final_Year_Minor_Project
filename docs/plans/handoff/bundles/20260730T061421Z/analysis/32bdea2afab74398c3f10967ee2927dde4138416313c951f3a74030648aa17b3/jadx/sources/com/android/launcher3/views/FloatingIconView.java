package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.CancellationSignal;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.FloatingIconView;
import com.android.launcher3.views.IconLabelDotView;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.Objects;

@TargetApi(29)
/* loaded from: classes.dex */
public class FloatingIconView extends FrameLayout implements Animator.AnimatorListener, ViewTreeObserver.OnGlobalLayoutListener {
    public static IconLoadResult sIconLoadResult;
    public Drawable mBadge;
    public ClipIconView mClipIconView;
    public Runnable mEndRunnable;
    public AnimatorSet mFadeAnimatorSet;
    public Runnable mFastFinishRunnable;
    public final Rect mFinalDrawableBounds;
    public IconLoadResult mIconLoadResult;
    public boolean mIsOpening;
    public final boolean mIsRtl;
    public boolean mIsVerticalBarLayout;
    public final Launcher mLauncher;
    public ListenerView mListenerView;
    public CancellationSignal mLoadIconSignal;
    public Runnable mOnTargetChangeRunnable;
    public View mOriginalIcon;
    public RectF mPositionOut;
    public static final String TAG = FloatingIconView.class.getSimpleName();
    public static final RectF sTmpRectF = new RectF();
    public static final Object[] sTmpObjArray = new Object[1];

    public class IconLoadResult {
        public Drawable badge;
        public Drawable drawable;
        public int iconOffset;
        public boolean isIconLoaded;
        public final ItemInfo itemInfo;
        public Runnable onIconLoaded;

        public IconLoadResult(ItemInfo itemInfo) {
            this.itemInfo = itemInfo;
        }
    }

    public FloatingIconView(Context context) {
        this(context, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(com.android.launcher3.Launcher r7, android.view.View r8, boolean r9, com.android.launcher3.model.data.ItemInfo r10, com.android.launcher3.views.FloatingIconView.IconLoadResult r11) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.FloatingIconView.b(com.android.launcher3.Launcher, android.view.View, boolean, com.android.launcher3.model.data.ItemInfo, com.android.launcher3.views.FloatingIconView$IconLoadResult):void");
    }

    public static IconLoadResult fetchIcon(final Launcher launcher, final View view, final ItemInfo itemInfo, final boolean z) {
        final IconLoadResult iconLoadResult = new IconLoadResult(itemInfo);
        Executors.MODEL_EXECUTOR.mHandler.postAtFrontOfQueue(new Runnable() { // from class: c.a.a.b1.i
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.b(Launcher.this, view, z, itemInfo, iconLoadResult);
            }
        });
        sIconLoadResult = iconLoadResult;
        return iconLoadResult;
    }

    public static FloatingIconView getFloatingIconView(Launcher launcher, final View view, final boolean z, RectF rectF, final boolean z2) {
        final DragLayer dragLayer = launcher.mDragLayer;
        ViewGroup viewGroup = (ViewGroup) dragLayer.getParent();
        final FloatingIconView floatingIconView = (FloatingIconView) launcher.getViewCache().getView(R.layout.floating_icon_view, launcher, viewGroup);
        floatingIconView.recycle();
        boolean z3 = (view.getTag() instanceof ItemInfo) && z;
        if (z3) {
            IconLoadResult iconLoadResult = sIconLoadResult;
            if (iconLoadResult == null || iconLoadResult.itemInfo != view.getTag()) {
                floatingIconView.mIconLoadResult = fetchIcon(launcher, view, (ItemInfo) view.getTag(), z2);
            } else {
                floatingIconView.mIconLoadResult = sIconLoadResult;
            }
        }
        sIconLoadResult = null;
        floatingIconView.mIsVerticalBarLayout = launcher.getDeviceProfile().isVerticalBarLayout();
        floatingIconView.mIsOpening = z2;
        floatingIconView.mOriginalIcon = view;
        floatingIconView.mPositionOut = rectF;
        getLocationBoundsForView(launcher, view, z2, rectF);
        InsettableFrameLayout.LayoutParams layoutParams = new InsettableFrameLayout.LayoutParams(Math.round(rectF.width()), Math.round(rectF.height()));
        floatingIconView.updatePosition(rectF, layoutParams);
        floatingIconView.setLayoutParams(layoutParams);
        floatingIconView.mClipIconView.setLayoutParams(new FrameLayout.LayoutParams(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height));
        floatingIconView.setVisibility(4);
        viewGroup.addView(floatingIconView);
        dragLayer.addView(floatingIconView.mListenerView);
        floatingIconView.mListenerView.mCloseListener = new Runnable() { // from class: c.a.a.b1.s
            @Override // java.lang.Runnable
            public final void run() {
                FloatingIconView.this.fastFinish();
            }
        };
        floatingIconView.mEndRunnable = new Runnable() { // from class: c.a.a.b1.j
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public final void run() {
                final FloatingIconView floatingIconView2 = FloatingIconView.this;
                boolean z4 = z;
                boolean z5 = z2;
                final View view2 = view;
                final DragLayer dragLayer2 = dragLayer;
                floatingIconView2.mEndRunnable = null;
                if (!z4) {
                    floatingIconView2.finish(dragLayer2);
                    return;
                }
                if (z5) {
                    if (view2 instanceof BubbleTextView) {
                        BubbleTextView bubbleTextView = (BubbleTextView) view2;
                        bubbleTextView.setIconVisible(true);
                        bubbleTextView.setForceHideDot(false);
                    } else {
                        view2.setVisibility(0);
                    }
                    floatingIconView2.finish(dragLayer2);
                    return;
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setDuration(200L);
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.FloatingIconView.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        FloatingIconView.this.finish(dragLayer2);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        view2.setVisibility(0);
                    }
                });
                if (view2 instanceof IconLabelDotView) {
                    animatorSet.addListener(new AnimatorListenerAdapter(floatingIconView2, (IconLabelDotView) view2) { // from class: com.android.launcher3.views.FloatingIconView.2
                        public final /* synthetic */ IconLabelDotView val$view;

                        {
                            this.val$view = r2;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            this.val$view.setIconVisible(true);
                            this.val$view.setForceHideDot(false);
                        }
                    });
                }
                if (view2 instanceof BubbleTextView) {
                    BubbleTextView bubbleTextView2 = (BubbleTextView) view2;
                    animatorSet.addListener(new AnimatorListenerAdapter(floatingIconView2, bubbleTextView2) { // from class: com.android.launcher3.views.FloatingIconView.3
                        public final /* synthetic */ BubbleTextView val$btv;

                        {
                            this.val$btv = bubbleTextView2;
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationStart(Animator animator) {
                            this.val$btv.setIconVisible(true);
                            this.val$btv.setForceHideDot(true);
                        }
                    });
                    animatorSet.play(ObjectAnimator.ofInt(bubbleTextView2.mIcon, LauncherAnimUtils.DRAWABLE_ALPHA, 0, 255));
                } else if (!(view2 instanceof FolderIcon)) {
                    animatorSet.play(ObjectAnimator.ofFloat(view2, (Property<View, Float>) FrameLayout.ALPHA, RecentsState.NO_OFFSET, 1.0f));
                }
                floatingIconView2.mFadeAnimatorSet = animatorSet;
                animatorSet.start();
            }
        };
        if (z3) {
            final CancellationSignal cancellationSignal = new CancellationSignal();
            IconLoadResult iconLoadResult2 = floatingIconView.mIconLoadResult;
            if (iconLoadResult2 == null) {
                Log.w(TAG, "No icon load result found in checkIconResult");
            } else {
                synchronized (iconLoadResult2) {
                    if (floatingIconView.mIconLoadResult.isIconLoaded) {
                        floatingIconView.setIcon(floatingIconView.mIconLoadResult.drawable, floatingIconView.mIconLoadResult.badge, floatingIconView.mIconLoadResult.iconOffset);
                        floatingIconView.hideOriginalView(view);
                    } else {
                        floatingIconView.mIconLoadResult.onIconLoaded = new Runnable() { // from class: c.a.a.b1.h
                            @Override // java.lang.Runnable
                            public final void run() {
                                FloatingIconView.this.a(cancellationSignal, view);
                            }
                        };
                        floatingIconView.mLoadIconSignal = cancellationSignal;
                    }
                }
            }
        }
        return floatingIconView;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0020 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void getLocationBoundsForView(com.android.launcher3.Launcher r6, android.view.View r7, boolean r8, android.graphics.RectF r9) {
        /*
            r0 = 1
            r8 = r8 ^ r0
            boolean r1 = r7 instanceof com.android.launcher3.shortcuts.DeepShortcutView
            r2 = 0
            if (r1 == 0) goto Ld
            com.android.launcher3.shortcuts.DeepShortcutView r7 = (com.android.launcher3.shortcuts.DeepShortcutView) r7
            com.android.launcher3.BubbleTextView r7 = r7.mBubbleText
        Lb:
            r8 = r2
            goto L1e
        Ld:
            android.view.ViewParent r1 = r7.getParent()
            boolean r1 = r1 instanceof com.android.launcher3.shortcuts.DeepShortcutView
            if (r1 == 0) goto L1e
            android.view.ViewParent r7 = r7.getParent()
            com.android.launcher3.shortcuts.DeepShortcutView r7 = (com.android.launcher3.shortcuts.DeepShortcutView) r7
            android.view.View r7 = r7.mIconView
            goto Lb
        L1e:
            if (r7 != 0) goto L21
            return
        L21:
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            boolean r3 = r7 instanceof com.android.launcher3.BubbleTextView
            if (r3 == 0) goto L31
            r3 = r7
            com.android.launcher3.BubbleTextView r3 = (com.android.launcher3.BubbleTextView) r3
            r3.getIconBounds(r1)
            goto L47
        L31:
            boolean r3 = r7 instanceof com.android.launcher3.folder.FolderIcon
            if (r3 == 0) goto L3c
            r3 = r7
            com.android.launcher3.folder.FolderIcon r3 = (com.android.launcher3.folder.FolderIcon) r3
            r3.getPreviewBounds(r1)
            goto L47
        L3c:
            int r3 = r7.getWidth()
            int r4 = r7.getHeight()
            r1.set(r2, r2, r3, r4)
        L47:
            r3 = 4
            float[] r3 = new float[r3]
            int r4 = r1.left
            float r4 = (float) r4
            r3[r2] = r4
            int r4 = r1.top
            float r4 = (float) r4
            r3[r0] = r4
            int r4 = r1.right
            float r4 = (float) r4
            r5 = 2
            r3[r5] = r4
            int r1 = r1.bottom
            float r1 = (float) r1
            r4 = 3
            r3[r4] = r1
            com.android.launcher3.dragndrop.DragLayer r6 = r6.mDragLayer
            com.android.launcher3.Utilities.getDescendantCoordRelativeToAncestor(r7, r6, r3, r2, r8)
            r6 = r3[r2]
            r7 = r3[r5]
            float r6 = java.lang.Math.min(r6, r7)
            r7 = r3[r0]
            r8 = r3[r4]
            float r7 = java.lang.Math.min(r7, r8)
            r8 = r3[r2]
            r1 = r3[r5]
            float r8 = java.lang.Math.max(r8, r1)
            r0 = r3[r0]
            r1 = r3[r4]
            float r0 = java.lang.Math.max(r0, r1)
            r9.set(r6, r7, r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.views.FloatingIconView.getLocationBoundsForView(com.android.launcher3.Launcher, android.view.View, boolean, android.graphics.RectF):void");
    }

    public /* synthetic */ void a(CancellationSignal cancellationSignal, View view) {
        if (cancellationSignal.isCanceled()) {
            return;
        }
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        setIcon(iconLoadResult.drawable, iconLoadResult.badge, iconLoadResult.iconOffset);
        setVisibility(0);
        hideOriginalView(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    public void fastFinish() {
        Runnable runnable = this.mFastFinishRunnable;
        if (runnable != null) {
            runnable.run();
            this.mFastFinishRunnable = null;
        }
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
            this.mLoadIconSignal = null;
        }
        Runnable runnable2 = this.mEndRunnable;
        if (runnable2 != null) {
            runnable2.run();
            this.mEndRunnable = null;
        }
        AnimatorSet animatorSet = this.mFadeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.end();
            this.mFadeAnimatorSet = null;
        }
    }

    public final void finish(DragLayer dragLayer) {
        ((ViewGroup) dragLayer.getParent()).removeView(this);
        dragLayer.removeView(this.mListenerView);
        recycle();
        this.mLauncher.getViewCache().recycleView(R.layout.floating_icon_view, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void hideOriginalView(View view) {
        if (!(view instanceof IconLabelDotView)) {
            view.setVisibility(4);
            return;
        }
        IconLabelDotView iconLabelDotView = (IconLabelDotView) view;
        iconLabelDotView.setIconVisible(false);
        iconLabelDotView.setForceHideDot(true);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        Runnable runnable = this.mEndRunnable;
        if (runnable != null) {
            runnable.run();
            return;
        }
        ValueAnimator valueAnimator = this.mClipIconView.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        IconLoadResult iconLoadResult = this.mIconLoadResult;
        if (iconLoadResult != null && iconLoadResult.isIconLoaded) {
            setVisibility(0);
        }
        if (this.mIsOpening) {
            return;
        }
        hideOriginalView(this.mOriginalIcon);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mIsOpening) {
            return;
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getViewTreeObserver().removeOnGlobalLayoutListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (!this.mOriginalIcon.isAttachedToWindow() || this.mPositionOut == null) {
            return;
        }
        getLocationBoundsForView(this.mLauncher, this.mOriginalIcon, this.mIsOpening, sTmpRectF);
        if (sTmpRectF.equals(this.mPositionOut)) {
            return;
        }
        updatePosition(sTmpRectF, (InsettableFrameLayout.LayoutParams) getLayoutParams());
        Runnable runnable = this.mOnTargetChangeRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void recycle() {
        setTranslationX(RecentsState.NO_OFFSET);
        setTranslationY(RecentsState.NO_OFFSET);
        setScaleX(1.0f);
        setScaleY(1.0f);
        setAlpha(1.0f);
        CancellationSignal cancellationSignal = this.mLoadIconSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.mLoadIconSignal = null;
        this.mEndRunnable = null;
        this.mFinalDrawableBounds.setEmpty();
        AnimatorSet animatorSet = this.mFadeAnimatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.mPositionOut = null;
        this.mFadeAnimatorSet = null;
        this.mListenerView.mCloseListener = null;
        this.mOriginalIcon = null;
        this.mOnTargetChangeRunnable = null;
        this.mBadge = null;
        sTmpObjArray[0] = null;
        this.mIconLoadResult = null;
        ClipIconView clipIconView = this.mClipIconView;
        clipIconView.setBackground(null);
        clipIconView.mIsAdaptiveIcon = false;
        clipIconView.mForeground = null;
        clipIconView.mBackground = null;
        clipIconView.mClipPath = null;
        clipIconView.mFinalDrawableBounds.setEmpty();
        ValueAnimator valueAnimator = clipIconView.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        clipIconView.mRevealAnimator = null;
        clipIconView.mTaskCornerRadius = RecentsState.NO_OFFSET;
        clipIconView.mOutline.setEmpty();
        clipIconView.mFgTransY = RecentsState.NO_OFFSET;
        clipIconView.mFgSpringX.c();
        clipIconView.mFgTransX = RecentsState.NO_OFFSET;
        clipIconView.mFgSpringY.c();
        this.mFastFinishRunnable = null;
    }

    public final void setIcon(Drawable drawable, Drawable drawable2, int i) {
        InsettableFrameLayout.LayoutParams layoutParams = (InsettableFrameLayout.LayoutParams) getLayoutParams();
        this.mBadge = drawable2;
        final ClipIconView clipIconView = this.mClipIconView;
        boolean z = this.mIsOpening;
        boolean z2 = this.mIsVerticalBarLayout;
        Objects.requireNonNull(clipIconView);
        boolean z3 = drawable instanceof AdaptiveIconDrawable;
        clipIconView.mIsAdaptiveIcon = z3;
        if (z3) {
            boolean z4 = drawable instanceof FolderAdaptiveIcon;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            Drawable background = adaptiveIconDrawable.getBackground();
            if (background == null) {
                background = new ColorDrawable(0);
            }
            clipIconView.mBackground = background;
            Drawable foreground = adaptiveIconDrawable.getForeground();
            if (foreground == null) {
                foreground = new ColorDrawable(0);
            }
            clipIconView.mForeground = foreground;
            int i2 = ((FrameLayout.LayoutParams) layoutParams).height;
            int i3 = ((FrameLayout.LayoutParams) layoutParams).width;
            int i4 = clipIconView.mBlurSizeOutline / 2;
            clipIconView.mFinalDrawableBounds.set(0, 0, i3, i2);
            if (!z4) {
                int i5 = i - i4;
                clipIconView.mFinalDrawableBounds.inset(i5, i5);
            }
            clipIconView.mForeground.setBounds(clipIconView.mFinalDrawableBounds);
            clipIconView.mBackground.setBounds(clipIconView.mFinalDrawableBounds);
            clipIconView.mStartRevealRect.set(0, 0, i3, i2);
            if (!z4) {
                Utilities.scaleRectAboutCenter(clipIconView.mStartRevealRect, IconShape.sNormalizationScale);
            }
            float f = clipIconView.mLauncher.getDeviceProfile().aspectRatio;
            if (z2) {
                ((FrameLayout.LayoutParams) layoutParams).width = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height * f);
            } else {
                ((FrameLayout.LayoutParams) layoutParams).height = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).height, ((FrameLayout.LayoutParams) layoutParams).width * f);
            }
            int marginStart = clipIconView.mIsRtl ? (clipIconView.mLauncher.getDeviceProfile().widthPx - layoutParams.getMarginStart()) - ((FrameLayout.LayoutParams) layoutParams).width : ((FrameLayout.LayoutParams) layoutParams).leftMargin;
            int i6 = ((FrameLayout.LayoutParams) layoutParams).topMargin;
            clipIconView.layout(marginStart, i6, ((FrameLayout.LayoutParams) layoutParams).width + marginStart, ((FrameLayout.LayoutParams) layoutParams).height + i6);
            float max = Math.max(((FrameLayout.LayoutParams) layoutParams).height / i2, ((FrameLayout.LayoutParams) layoutParams).width / i3);
            if (z) {
                max = 1.0f;
                clipIconView.mOutline.set(0, 0, i3, i2);
            } else {
                clipIconView.mOutline.set(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
            }
            clipIconView.setBackgroundDrawableBounds(max, z2);
            clipIconView.mEndRevealRect.set(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
            clipIconView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.views.ClipIconView.4
                public AnonymousClass4() {
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    ClipIconView clipIconView2 = ClipIconView.this;
                    outline.setRoundRect(clipIconView2.mOutline, clipIconView2.mTaskCornerRadius);
                }
            });
            clipIconView.setClipToOutline(true);
        } else {
            clipIconView.setBackground(drawable);
            clipIconView.setClipToOutline(false);
        }
        clipIconView.invalidate();
        clipIconView.invalidateOutline();
        if (z3) {
            this.mFinalDrawableBounds.set(0, 0, ((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
            float f2 = this.mLauncher.getDeviceProfile().aspectRatio;
            if (this.mIsVerticalBarLayout) {
                ((FrameLayout.LayoutParams) layoutParams).width = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height * f2);
            } else {
                ((FrameLayout.LayoutParams) layoutParams).height = (int) Math.max(((FrameLayout.LayoutParams) layoutParams).height, ((FrameLayout.LayoutParams) layoutParams).width * f2);
            }
            setLayoutParams(layoutParams);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mClipIconView.getLayoutParams();
            int i7 = layoutParams2.height;
            int i8 = layoutParams2.width;
            layoutParams2.width = ((FrameLayout.LayoutParams) layoutParams).width;
            layoutParams2.height = ((FrameLayout.LayoutParams) layoutParams).height;
            this.mClipIconView.setLayoutParams(layoutParams2);
            Drawable drawable3 = this.mBadge;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i8, i7);
            }
        }
        invalidate();
    }

    public void update(RectF rectF, float f, float f2, float f3, float f4, boolean z) {
        float f5;
        int marginStart;
        float f6;
        int i;
        setAlpha(f);
        InsettableFrameLayout.LayoutParams layoutParams = (InsettableFrameLayout.LayoutParams) getLayoutParams();
        float marginStart2 = this.mIsRtl ? rectF.left - ((this.mLauncher.getDeviceProfile().widthPx - layoutParams.getMarginStart()) - ((FrameLayout.LayoutParams) layoutParams).width) : rectF.left - layoutParams.getMarginStart();
        float f7 = rectF.top - ((FrameLayout.LayoutParams) layoutParams).topMargin;
        setTranslationX(marginStart2);
        setTranslationY(f7);
        float min = Math.min(((FrameLayout.LayoutParams) layoutParams).width, ((FrameLayout.LayoutParams) layoutParams).height);
        float max = Math.max(1.0f, Math.min(rectF.width() / min, rectF.height() / min));
        final ClipIconView clipIconView = this.mClipIconView;
        boolean z2 = this.mIsVerticalBarLayout;
        DeviceProfile deviceProfile = clipIconView.mLauncher.getDeviceProfile();
        if (clipIconView.mIsRtl) {
            f5 = rectF.left;
            marginStart = (deviceProfile.widthPx - layoutParams.getMarginStart()) - ((FrameLayout.LayoutParams) layoutParams).width;
        } else {
            f5 = rectF.left;
            marginStart = layoutParams.getMarginStart();
        }
        float f8 = f5 - marginStart;
        float f9 = rectF.top - ((FrameLayout.LayoutParams) layoutParams).topMargin;
        float boundToRange = Utilities.boundToRange(Utilities.mapToRange(Math.max(f3, f2), f3, 1.0f, RecentsState.NO_OFFSET, z ? 10.0f : 1.0f, Interpolators.LINEAR), RecentsState.NO_OFFSET, 1.0f);
        if (z2) {
            clipIconView.mOutline.right = (int) (rectF.width() / max);
        } else {
            clipIconView.mOutline.bottom = (int) (rectF.height() / max);
        }
        float f10 = f4 / max;
        clipIconView.mTaskCornerRadius = f10;
        if (clipIconView.mIsAdaptiveIcon) {
            if (z || f2 < f3) {
                f6 = 0.0f;
            } else {
                if (clipIconView.mRevealAnimator == null) {
                    f6 = 0.0f;
                    ValueAnimator valueAnimator = (ValueAnimator) IconShape.sInstance.createRevealAnimator(clipIconView, clipIconView.mStartRevealRect, clipIconView.mOutline, f10, !z);
                    clipIconView.mRevealAnimator = valueAnimator;
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.ClipIconView.3
                        public AnonymousClass3() {
                        }

                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            ClipIconView.this.mRevealAnimator = null;
                        }
                    });
                    clipIconView.mRevealAnimator.start();
                    clipIconView.mRevealAnimator.pause();
                } else {
                    f6 = 0.0f;
                }
                clipIconView.mRevealAnimator.setCurrentFraction(boundToRange);
            }
            Rect rect = clipIconView.mOutline;
            float width = (z2 ? rect.width() : rect.height()) / min;
            clipIconView.setBackgroundDrawableBounds(width, z2);
            if (z) {
                int height = clipIconView.mFinalDrawableBounds.height();
                int width2 = clipIconView.mFinalDrawableBounds.width();
                int i2 = 0;
                if (z2) {
                    i = 0;
                } else {
                    float f11 = height;
                    i = (int) (((f11 * width) - f11) / 2.0f);
                }
                if (z2) {
                    float f12 = width2;
                    i2 = (int) (((width * f12) - f12) / 2.0f);
                }
                ClipIconView.sTmpRect.set(clipIconView.mFinalDrawableBounds);
                ClipIconView.sTmpRect.offset(i2, i);
                clipIconView.mForeground.setBounds(ClipIconView.sTmpRect);
            } else {
                clipIconView.mFgSpringX.k((int) (60.0f * (f8 / deviceProfile.availableWidthPx)));
                clipIconView.mFgSpringY.k((int) (75.0f * (f9 / deviceProfile.availableHeightPx)));
            }
        } else {
            f6 = 0.0f;
        }
        clipIconView.invalidate();
        clipIconView.invalidateOutline();
        setPivotX(f6);
        setPivotY(f6);
        setScaleX(max);
        setScaleY(max);
        invalidate();
    }

    public final void updatePosition(RectF rectF, InsettableFrameLayout.LayoutParams layoutParams) {
        this.mPositionOut.set(rectF);
        layoutParams.ignoreInsets = true;
        ((FrameLayout.LayoutParams) layoutParams).topMargin = Math.round(rectF.top);
        if (this.mIsRtl) {
            layoutParams.setMarginStart(Math.round(this.mLauncher.getDeviceProfile().widthPx - rectF.right));
        } else {
            layoutParams.setMarginStart(Math.round(rectF.left));
        }
        int marginStart = this.mIsRtl ? (this.mLauncher.getDeviceProfile().widthPx - layoutParams.getMarginStart()) - ((FrameLayout.LayoutParams) layoutParams).width : ((FrameLayout.LayoutParams) layoutParams).leftMargin;
        int i = ((FrameLayout.LayoutParams) layoutParams).topMargin;
        layout(marginStart, i, ((FrameLayout.LayoutParams) layoutParams).width + marginStart, ((FrameLayout.LayoutParams) layoutParams).height + i);
    }

    public FloatingIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsVerticalBarLayout = false;
        this.mFinalDrawableBounds = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mListenerView = new ListenerView(context, attributeSet);
        ClipIconView clipIconView = new ClipIconView(context, attributeSet);
        this.mClipIconView = clipIconView;
        addView(clipIconView);
        setWillNotDraw(false);
    }
}
