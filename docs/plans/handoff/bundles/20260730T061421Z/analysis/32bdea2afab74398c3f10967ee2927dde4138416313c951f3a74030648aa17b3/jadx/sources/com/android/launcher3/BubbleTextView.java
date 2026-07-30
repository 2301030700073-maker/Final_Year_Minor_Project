package com.android.launcher3;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.widget.TextView;
import b.e.d.a;
import c.a.a.C0240i;
import com.android.launcher3.Launcher;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DraggableView;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.DotRenderer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconLabelDotView;
import com.android.quickstep.fallback.RecentsState;
import java.text.NumberFormat;

/* loaded from: classes.dex */
public class BubbleTextView extends TextView implements IconCache.ItemInfoUpdateReceiver, Launcher.OnResumeCallback, IconLabelDotView, DraggableView, Reorderable {
    public final ActivityContext mActivity;
    public boolean mCenterVertically;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mDisableRelayout;
    public final int mDisplay;

    @ViewDebug.ExportedProperty(category = "launcher")
    public DotInfo mDotInfo;

    @ViewDebug.ExportedProperty(category = "launcher", deepExport = true)
    public DotRenderer.DrawParams mDotParams;
    public DotRenderer mDotRenderer;
    public Animator mDotScaleAnim;
    public boolean mForceHideDot;
    public Drawable mIcon;
    public IconCache.AnonymousClass1 mIconLoadRequest;
    public final int mIconSize;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mIgnorePressedStateChange;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mIsIconVisible;
    public final boolean mLayoutHorizontal;
    public final CheckLongPressHelper mLongPressHelper;
    public float mScaleForReorderBounce;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mStayPressed;

    @ViewDebug.ExportedProperty(category = "launcher")
    public float mTextAlpha;

    @ViewDebug.ExportedProperty(category = "launcher")
    public int mTextColor;
    public final PointF mTranslationForReorderBounce;
    public final PointF mTranslationForReorderPreview;
    public static final int[] STATE_PRESSED = {R.attr.state_pressed};
    public static final Property DOT_SCALE_PROPERTY = new Property(Float.TYPE, "dotScale") { // from class: com.android.launcher3.BubbleTextView.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((BubbleTextView) obj).mDotParams.scale);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            BubbleTextView bubbleTextView = (BubbleTextView) obj;
            bubbleTextView.mDotParams.scale = ((Float) obj2).floatValue();
            bubbleTextView.invalidate();
        }
    };
    public static final Property TEXT_ALPHA_PROPERTY = new Property(Float.class, "textAlpha") { // from class: com.android.launcher3.BubbleTextView.2
        @Override // android.util.Property
        public Object get(Object obj) {
            return Float.valueOf(((BubbleTextView) obj).mTextAlpha);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            BubbleTextView.access$200((BubbleTextView) obj, ((Float) obj2).floatValue());
        }
    };

    public BubbleTextView(Context context) {
        this(context, null, 0);
    }

    public static /* synthetic */ void a() {
    }

    public static void access$200(BubbleTextView bubbleTextView, float f) {
        bubbleTextView.mTextAlpha = f;
        super.setTextColor(bubbleTextView.getModifiedColor());
    }

    public final void animateDotScale(float... fArr) {
        cancelDotScaleAnim();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, (Property<BubbleTextView, Float>) DOT_SCALE_PROPERTY, fArr);
        this.mDotScaleAnim = ofFloat;
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.BubbleTextView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BubbleTextView.this.mDotScaleAnim = null;
            }
        });
        this.mDotScaleAnim.start();
    }

    public void applyCompoundDrawables(Drawable drawable) {
        this.mDisableRelayout = this.mIcon != null;
        int i = this.mIconSize;
        drawable.setBounds(0, 0, i, i);
        if (this.mLayoutHorizontal) {
            setCompoundDrawablesRelative(drawable, null, null, null);
        } else {
            setCompoundDrawables(null, drawable, null, null);
        }
        this.mDisableRelayout = false;
    }

    public void applyDotState(ItemInfo itemInfo, boolean z) {
        if (this.mIcon instanceof FastBitmapDrawable) {
            boolean z2 = this.mDotInfo != null;
            DotInfo dotInfoForItem = this.mActivity.getDotInfoForItem(itemInfo);
            this.mDotInfo = dotInfoForItem;
            boolean z3 = dotInfoForItem != null;
            float f = z3 ? 1.0f : RecentsState.NO_OFFSET;
            if (this.mDisplay == 1) {
                this.mDotRenderer = this.mActivity.getDeviceProfile().mDotRendererAllApps;
            } else {
                this.mDotRenderer = this.mActivity.getDeviceProfile().mDotRendererWorkSpace;
            }
            if (z2 || z3) {
                if (z && (z2 ^ z3) && isShown()) {
                    animateDotScale(f);
                } else {
                    cancelDotScaleAnim();
                    this.mDotParams.scale = f;
                    invalidate();
                }
            }
            if (itemInfo.contentDescription != null) {
                if (itemInfo.isDisabled()) {
                    setContentDescription(getContext().getString(com.android.systemui.shared.R.string.disabled_app_label, itemInfo.contentDescription));
                } else if (!hasDot()) {
                    setContentDescription(itemInfo.contentDescription);
                } else {
                    int notificationCount = this.mDotInfo.getNotificationCount();
                    setContentDescription(getContext().getResources().getQuantityString(com.android.systemui.shared.R.plurals.dotted_app_label, notificationCount, itemInfo.contentDescription, Integer.valueOf(notificationCount)));
                }
            }
        }
    }

    public void applyFromApplicationInfo(AppInfo appInfo) {
        applyIconAndLabel(appInfo);
        super.setTag(appInfo);
        verifyHighRes();
        if (appInfo instanceof PromiseAppInfo) {
            applyProgressLevel(((PromiseAppInfo) appInfo).level);
        }
        applyDotState(appInfo, false);
    }

    public void applyFromPackageItemInfo(PackageItemInfo packageItemInfo) {
        applyIconAndLabel(packageItemInfo);
        super.setTag(packageItemInfo);
        verifyHighRes();
    }

    public void applyFromWorkspaceItem(WorkspaceItemInfo workspaceItemInfo) {
        applyIconAndLabel(workspaceItemInfo);
        setTag(workspaceItemInfo);
        if (workspaceItemInfo.hasPromiseIconUi()) {
            applyPromiseState(false);
        }
        applyDotState(workspaceItemInfo, false);
    }

    public final void applyIconAndLabel(ItemInfoWithIcon itemInfoWithIcon) {
        FastBitmapDrawable newIcon = FastBitmapDrawable.newIcon(getContext(), itemInfoWithIcon);
        this.mDotParams.color = a.f(GraphicsUtils.setColorAlphaBound(-1, (int) 137.70001f), itemInfoWithIcon.bitmap.color);
        setIcon(newIcon);
        setText(itemInfoWithIcon.title);
        if (itemInfoWithIcon.contentDescription != null) {
            setContentDescription(itemInfoWithIcon.isDisabled() ? getContext().getString(com.android.systemui.shared.R.string.disabled_app_label, itemInfoWithIcon.contentDescription) : itemInfoWithIcon.contentDescription);
        }
    }

    public PreloadIconDrawable applyProgressLevel(int i) {
        if (!(getTag() instanceof ItemInfoWithIcon)) {
            return null;
        }
        ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
        if (i >= 100) {
            CharSequence charSequence = itemInfoWithIcon.contentDescription;
            if (charSequence == null) {
                charSequence = "";
            }
            setContentDescription(charSequence);
        } else if (i > 0) {
            setContentDescription(getContext().getString(com.android.systemui.shared.R.string.app_downloading_title, itemInfoWithIcon.title, NumberFormat.getPercentInstance().format(i * 0.01d)));
        } else {
            setContentDescription(getContext().getString(com.android.systemui.shared.R.string.app_waiting_download_title, itemInfoWithIcon.title));
        }
        Drawable drawable = this.mIcon;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof PreloadIconDrawable) {
            PreloadIconDrawable preloadIconDrawable = (PreloadIconDrawable) drawable;
            preloadIconDrawable.setLevel(i);
            return preloadIconDrawable;
        }
        PreloadIconDrawable preloadIconDrawable2 = new PreloadIconDrawable(itemInfoWithIcon, getContext());
        preloadIconDrawable2.setLevel(i);
        setIcon(preloadIconDrawable2);
        return preloadIconDrawable2;
    }

    public void applyPromiseState(boolean z) {
        if (getTag() instanceof WorkspaceItemInfo) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) getTag();
            PreloadIconDrawable applyProgressLevel = applyProgressLevel(workspaceItemInfo.hasPromiseIconUi() ? workspaceItemInfo.hasStatusFlag(4) ? workspaceItemInfo.mInstallProgress : 0 : 100);
            if (applyProgressLevel == null || !z) {
                return;
            }
            if (applyProgressLevel.mInternalStateProgress == RecentsState.NO_OFFSET) {
                applyProgressLevel.mInternalStateProgress = 1.0f;
            }
            applyProgressLevel.updateInternalState(1.3f, true, true);
        }
    }

    public final void cancelDotScaleAnim() {
        Animator animator = this.mDotScaleAnim;
        if (animator != null) {
            animator.cancel();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }

    public ObjectAnimator createTextAlphaAnimator(boolean z) {
        return ObjectAnimator.ofFloat(this, (Property<BubbleTextView, Float>) TEXT_ALPHA_PROPERTY, (shouldTextBeVisible() && z) ? 1.0f : RecentsState.NO_OFFSET);
    }

    public void drawDotIfNecessary(Canvas canvas) {
        if (this.mForceHideDot) {
            return;
        }
        if (hasDot() || this.mDotParams.scale > RecentsState.NO_OFFSET) {
            getIconBounds(this.mDotParams.iconBounds);
            Utilities.scaleRectAboutCenter(this.mDotParams.iconBounds, IconShape.sNormalizationScale);
            canvas.translate(getScrollX(), getScrollY());
            this.mDotRenderer.draw(canvas, this.mDotParams);
            canvas.translate(-r0, -r1);
        }
    }

    public void drawWithoutDot(Canvas canvas) {
        super.onDraw(canvas);
    }

    public void getIconBounds(Rect rect) {
        getIconBounds(this, rect, this.mIconSize);
    }

    public final int getModifiedColor() {
        if (this.mTextAlpha == RecentsState.NO_OFFSET) {
            return 0;
        }
        return GraphicsUtils.setColorAlphaBound(this.mTextColor, Math.round(Color.alpha(r0) * this.mTextAlpha));
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderBounceOffset(PointF pointF) {
        pointF.set(this.mTranslationForReorderBounce);
    }

    @Override // com.android.launcher3.Reorderable
    public float getReorderBounceScale() {
        return this.mScaleForReorderBounce;
    }

    @Override // com.android.launcher3.Reorderable
    public void getReorderPreviewOffset(PointF pointF) {
        pointF.set(this.mTranslationForReorderPreview);
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getSourceVisualDragBounds(Rect rect) {
        int i = this.mDisplay;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        getIconBounds(this, rect, i != 1 ? deviceProfile.iconSizePx : deviceProfile.allAppsIconSizePx);
    }

    @Override // com.android.launcher3.Reorderable
    public View getView() {
        return this;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public int getViewType() {
        return 0;
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public void getWorkspaceVisualDragBounds(Rect rect) {
        getIconBounds(this, rect, this.mActivity.getDeviceProfile().iconSizePx);
    }

    public final boolean hasDot() {
        return this.mDotInfo != null;
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.mStayPressed) {
            TextView.mergeDrawableStates(onCreateDrawableState, STATE_PRESSED);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawDotIfNecessary(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        setEllipsize(z ? TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.END);
        super.onFocusChanged(z, i, rect);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        this.mIgnorePressedStateChange = true;
        boolean onKeyUp = super.onKeyUp(i, keyEvent);
        this.mIgnorePressedStateChange = false;
        refreshDrawableState();
        return onKeyUp;
    }

    @Override // com.android.launcher3.Launcher.OnResumeCallback
    public void onLauncherResume() {
        this.mStayPressed = false;
        refreshDrawableState();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mCenterVertically) {
            Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
            setPadding(getPaddingLeft(), (View.MeasureSpec.getSize(i2) - ((getCompoundDrawablePadding() + this.mIconSize) + ((int) Math.ceil(fontMetrics.bottom - fontMetrics.top)))) / 2, getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && (motionEvent.getY() < getPaddingTop() || motionEvent.getX() < getPaddingLeft() || motionEvent.getY() > getHeight() - getPaddingBottom() || motionEvent.getX() > getWidth() - getPaddingRight())) {
            return false;
        }
        if (!isLongClickable()) {
            return super.onTouchEvent(motionEvent);
        }
        super.onTouchEvent(motionEvent);
        this.mLongPressHelper.onTouchEvent(motionEvent);
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
        Drawable drawable = this.mIcon;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // com.android.launcher3.dragndrop.DraggableView
    public SafeCloseable prepareDrawDragView() {
        Drawable drawable = this.mIcon;
        if (drawable instanceof FastBitmapDrawable) {
            ((FastBitmapDrawable) drawable).setScale(1.0f);
        }
        setForceHideDot(true);
        return C0240i.f1865a;
    }

    @Override // com.android.launcher3.icons.IconCache.ItemInfoUpdateReceiver
    public void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon) {
        if (getTag() == itemInfoWithIcon) {
            this.mIconLoadRequest = null;
            this.mDisableRelayout = true;
            itemInfoWithIcon.bitmap.icon.prepareToDraw();
            if (itemInfoWithIcon instanceof AppInfo) {
                applyFromApplicationInfo((AppInfo) itemInfoWithIcon);
            } else if (itemInfoWithIcon instanceof WorkspaceItemInfo) {
                applyFromWorkspaceItem((WorkspaceItemInfo) itemInfoWithIcon);
                this.mActivity.invalidateParent(itemInfoWithIcon);
            } else if (itemInfoWithIcon instanceof PackageItemInfo) {
                PackageItemInfo packageItemInfo = (PackageItemInfo) itemInfoWithIcon;
                applyIconAndLabel(packageItemInfo);
                super.setTag(packageItemInfo);
                verifyHighRes();
            }
            this.mDisableRelayout = false;
        }
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        if (this.mIgnorePressedStateChange) {
            return;
        }
        super.refreshDrawableState();
    }

    @Override // android.view.View
    public void requestLayout() {
        if (this.mDisableRelayout) {
            return;
        }
        super.requestLayout();
    }

    public void reset() {
        this.mDotInfo = null;
        this.mDotParams.color = 0;
        cancelDotScaleAnim();
        this.mDotParams.scale = RecentsState.NO_OFFSET;
        this.mForceHideDot = false;
        setBackground(null);
    }

    @Override // android.view.View
    public void setAccessibilityDelegate(View.AccessibilityDelegate accessibilityDelegate) {
        if (accessibilityDelegate instanceof LauncherAccessibilityDelegate) {
            super.setAccessibilityDelegate(accessibilityDelegate);
        }
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setForceHideDot(boolean z) {
        if (this.mForceHideDot == z) {
            return;
        }
        this.mForceHideDot = z;
        if (z) {
            invalidate();
        } else if (hasDot()) {
            animateDotScale(RecentsState.NO_OFFSET, 1.0f);
        }
    }

    public final void setIcon(Drawable drawable) {
        if (this.mIsIconVisible) {
            applyCompoundDrawables(drawable);
        }
        this.mIcon = drawable;
        drawable.setVisible(getWindowVisibility() == 0 && isShown(), false);
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    public void setIconVisible(boolean z) {
        this.mIsIconVisible = z;
        applyCompoundDrawables(z ? this.mIcon : new ColorDrawable(0));
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceOffset(float f, float f2) {
        this.mTranslationForReorderBounce.set(f, f2);
        updateTranslation();
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderBounceScale(float f) {
        this.mScaleForReorderBounce = f;
        super.setScaleX(f);
        super.setScaleY(f);
    }

    @Override // com.android.launcher3.Reorderable
    public void setReorderPreviewOffset(float f, float f2) {
        this.mTranslationForReorderPreview.set(f, f2);
        updateTranslation();
    }

    public final void setTextAlpha(float f) {
        this.mTextAlpha = f;
        super.setTextColor(getModifiedColor());
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        this.mTextColor = i;
        super.setTextColor(getModifiedColor());
    }

    public void setTextVisibility(boolean z) {
        setTextAlpha(z ? 1.0f : RecentsState.NO_OFFSET);
    }

    public boolean shouldTextBeVisible() {
        int i;
        Object tag = getParent() instanceof FolderIcon ? ((View) getParent()).getTag() : getTag();
        ItemInfo itemInfo = tag instanceof ItemInfo ? (ItemInfo) tag : null;
        return itemInfo == null || !((i = itemInfo.container) == -101 || i == -103);
    }

    public final void updateTranslation() {
        super.setTranslationX(this.mTranslationForReorderBounce.x + this.mTranslationForReorderPreview.x);
        super.setTranslationY(this.mTranslationForReorderBounce.y + this.mTranslationForReorderPreview.y);
    }

    public void verifyHighRes() {
        IconCache.AnonymousClass1 anonymousClass1 = this.mIconLoadRequest;
        if (anonymousClass1 != null) {
            anonymousClass1.cancel();
            this.mIconLoadRequest = null;
        }
        if (getTag() instanceof ItemInfoWithIcon) {
            ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon) getTag();
            if (itemInfoWithIcon.usingLowResIcon()) {
                this.mIconLoadRequest = LauncherAppState.getInstance(getContext()).mIconCache.updateIconInBackground(this, itemInfoWithIcon);
            }
        }
    }

    public BubbleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static void getIconBounds(View view, Rect rect, int i) {
        int paddingTop = view.getPaddingTop();
        int width = (view.getWidth() - i) / 2;
        rect.set(width, paddingTop, width + i, i + paddingTop);
    }

    public BubbleTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        this.mTranslationForReorderBounce = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mTranslationForReorderPreview = new PointF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET);
        this.mScaleForReorderBounce = 1.0f;
        this.mIsIconVisible = true;
        this.mTextAlpha = 1.0f;
        this.mDisableRelayout = false;
        this.mActivity = ActivityContext.lookupContext(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.BubbleTextView, i, 0);
        this.mLayoutHorizontal = obtainStyledAttributes.getBoolean(3, false);
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        int integer = obtainStyledAttributes.getInteger(1, 0);
        this.mDisplay = integer;
        if (integer == 0) {
            setTextSize(0, deviceProfile.iconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.iconDrawablePaddingPx);
            i2 = deviceProfile.iconSizePx;
        } else if (integer == 1) {
            setTextSize(0, deviceProfile.allAppsIconTextSizePx);
            setCompoundDrawablePadding(deviceProfile.allAppsIconDrawablePaddingPx);
            i2 = deviceProfile.allAppsIconSizePx;
        } else if (integer == 2) {
            setTextSize(0, deviceProfile.folderChildTextSizePx);
            setCompoundDrawablePadding(deviceProfile.folderChildDrawablePaddingPx);
            i2 = deviceProfile.folderChildIconSizePx;
        } else {
            i2 = deviceProfile.iconSizePx;
        }
        this.mCenterVertically = obtainStyledAttributes.getBoolean(0, false);
        this.mIconSize = obtainStyledAttributes.getDimensionPixelSize(2, i2);
        obtainStyledAttributes.recycle();
        this.mLongPressHelper = new CheckLongPressHelper(this, null);
        this.mDotParams = new DotRenderer.DrawParams();
        setEllipsize(TextUtils.TruncateAt.END);
        setAccessibilityDelegate(this.mActivity.getAccessibilityDelegate());
        setTextAlpha(1.0f);
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        this.mTextColor = colorStateList.getDefaultColor();
        if (Float.compare(this.mTextAlpha, 1.0f) == 0) {
            super.setTextColor(colorStateList);
        } else {
            super.setTextColor(getModifiedColor());
        }
    }
}
