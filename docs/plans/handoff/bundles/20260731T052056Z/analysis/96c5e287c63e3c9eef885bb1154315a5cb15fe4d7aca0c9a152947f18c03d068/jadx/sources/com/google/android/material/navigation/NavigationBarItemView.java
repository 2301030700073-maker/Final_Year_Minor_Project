package com.google.android.material.navigation;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.core.provider.CallbackWrapper$2;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.Extras;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.bottomnavigation.BottomNavigationItemView;
import com.google.android.material.carousel.CarouselLayoutManager$$ExternalSyntheticLambda0;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.BaselineLayout;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class NavigationBarItemView extends FrameLayout implements NavigationBarMenuItemView {
    public static final Transition.AnonymousClass1 ACTIVE_INDICATOR_LABELED_TRANSFORM;
    public static final ActiveIndicatorUnlabeledTransform ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public ValueAnimator activeIndicatorAnimator;
    public int activeIndicatorDesiredHeight;
    public int activeIndicatorDesiredWidth;
    public boolean activeIndicatorEnabled;
    public int activeIndicatorExpandedDesiredHeight;
    public int activeIndicatorExpandedDesiredWidth;
    public int activeIndicatorExpandedMarginHorizontal;
    public int activeIndicatorLabelPadding;
    public int activeIndicatorMarginHorizontal;
    public float activeIndicatorProgress;
    public boolean activeIndicatorResizeable;
    public Transition.AnonymousClass1 activeIndicatorTransform;
    public final View activeIndicatorView;
    public BadgeDrawable badgeDrawable;
    public int badgeFixedEdge;
    public boolean boldText;
    public final LinearLayout contentContainer;
    public BaselineLayout currentLabelGroup;
    public boolean expanded;
    public final BaselineLayout expandedLabelGroup;
    public float expandedLabelScaleDownFactor;
    public float expandedLabelScaleUpFactor;
    public float expandedLabelShiftAmountY;
    public final TextView expandedLargeLabel;
    public final TextView expandedSmallLabel;
    public int horizontalTextAppearanceActive;
    public int horizontalTextAppearanceInactive;
    public final ImageView icon;
    public final FrameLayout iconContainer;
    public int iconLabelHorizontalSpacing;
    public ColorStateList iconTint;
    public boolean initialized;
    public final LinearLayout innerContentContainer;
    public boolean isShifting;
    public Rect itemActiveIndicatorExpandedPadding;
    public Drawable itemBackground;
    public MenuItemImpl itemData;
    public int itemGravity;
    public int itemIconGravity;
    public int itemPaddingBottom;
    public int itemPaddingTop;
    public int itemPosition;
    public ColorStateList itemRippleColor;
    public final BaselineLayout labelGroup;
    public int labelVisibilityMode;
    public final TextView largeLabel;
    public boolean measurePaddingFromBaseline;
    public boolean onlyShowWhenExpanded;
    public Drawable originalIconDrawable;
    public float scaleDownFactor;
    public boolean scaleLabelSizeWithFont;
    public float scaleUpFactor;
    public float shiftAmountY;
    public final TextView smallLabel;
    public int textAppearanceActive;
    public int textAppearanceInactive;
    public ColorStateList textColor;
    public Drawable wrappedIconDrawable;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ActiveIndicatorUnlabeledTransform extends Transition.AnonymousClass1 {
        @Override // androidx.transition.Transition.AnonymousClass1
        public final float calculateScaleY(float f) {
            return AnimationUtils.lerp(0.4f, 1.0f, f);
        }
    }

    static {
        int i = 23;
        boolean z = false;
        ACTIVE_INDICATOR_LABELED_TRANSFORM = new Transition.AnonymousClass1(i, z);
        ACTIVE_INDICATOR_UNLABELED_TRANSFORM = new ActiveIndicatorUnlabeledTransform(i, z);
    }

    public NavigationBarItemView(Context context) {
        super(context);
        this.initialized = false;
        this.itemPosition = -1;
        this.textAppearanceActive = 0;
        this.textAppearanceInactive = 0;
        this.horizontalTextAppearanceActive = 0;
        this.horizontalTextAppearanceInactive = 0;
        this.boldText = false;
        this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
        this.activeIndicatorProgress = RecyclerView.DECELERATION_RATE;
        this.activeIndicatorEnabled = false;
        this.activeIndicatorDesiredWidth = 0;
        this.activeIndicatorDesiredHeight = 0;
        this.activeIndicatorExpandedDesiredWidth = -2;
        this.activeIndicatorExpandedDesiredHeight = 0;
        this.activeIndicatorResizeable = false;
        this.activeIndicatorMarginHorizontal = 0;
        this.activeIndicatorExpandedMarginHorizontal = 0;
        this.badgeFixedEdge = 0;
        this.itemGravity = 49;
        this.expanded = false;
        this.onlyShowWhenExpanded = false;
        this.measurePaddingFromBaseline = false;
        this.scaleLabelSizeWithFont = false;
        this.itemActiveIndicatorExpandedPadding = new Rect();
        LayoutInflater.from(context).inflate(getItemLayoutResId(), (ViewGroup) this, true);
        this.contentContainer = (LinearLayout) findViewById(org.wikipedia.R.id.navigation_bar_item_content_container);
        LinearLayout linearLayout = (LinearLayout) findViewById(org.wikipedia.R.id.navigation_bar_item_inner_content_container);
        this.innerContentContainer = linearLayout;
        this.activeIndicatorView = findViewById(org.wikipedia.R.id.navigation_bar_item_active_indicator_view);
        this.iconContainer = (FrameLayout) findViewById(org.wikipedia.R.id.navigation_bar_item_icon_container);
        this.icon = (ImageView) findViewById(org.wikipedia.R.id.navigation_bar_item_icon_view);
        BaselineLayout baselineLayout = (BaselineLayout) findViewById(org.wikipedia.R.id.navigation_bar_item_labels_group);
        this.labelGroup = baselineLayout;
        TextView textView = (TextView) findViewById(org.wikipedia.R.id.navigation_bar_item_small_label_view);
        this.smallLabel = textView;
        TextView textView2 = (TextView) findViewById(org.wikipedia.R.id.navigation_bar_item_large_label_view);
        this.largeLabel = textView2;
        float dimension = getResources().getDimension(org.wikipedia.R.dimen.default_navigation_text_size);
        float dimension2 = getResources().getDimension(org.wikipedia.R.dimen.default_navigation_active_text_size);
        BaselineLayout baselineLayout2 = new BaselineLayout(getContext(), null, 0);
        baselineLayout2.baseline = -1;
        this.expandedLabelGroup = baselineLayout2;
        baselineLayout2.setVisibility(8);
        this.expandedLabelGroup.setDuplicateParentStateEnabled(true);
        this.expandedLabelGroup.setMeasurePaddingFromBaseline(this.measurePaddingFromBaseline);
        TextView textView3 = new TextView(getContext());
        this.expandedSmallLabel = textView3;
        textView3.setMaxLines(1);
        TextView textView4 = this.expandedSmallLabel;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView4.setEllipsize(truncateAt);
        this.expandedSmallLabel.setDuplicateParentStateEnabled(true);
        this.expandedSmallLabel.setIncludeFontPadding(false);
        this.expandedSmallLabel.setGravity(16);
        this.expandedSmallLabel.setTextSize(dimension);
        TextView textView5 = new TextView(getContext());
        this.expandedLargeLabel = textView5;
        textView5.setMaxLines(1);
        this.expandedLargeLabel.setEllipsize(truncateAt);
        this.expandedLargeLabel.setDuplicateParentStateEnabled(true);
        this.expandedLargeLabel.setVisibility(4);
        this.expandedLargeLabel.setIncludeFontPadding(false);
        this.expandedLargeLabel.setGravity(16);
        this.expandedLargeLabel.setTextSize(dimension2);
        this.expandedLabelGroup.addView(this.expandedSmallLabel);
        this.expandedLabelGroup.addView(this.expandedLargeLabel);
        this.currentLabelGroup = baselineLayout;
        setBackgroundResource(getItemBackgroundResId());
        this.itemPaddingTop = getResources().getDimensionPixelSize(getItemDefaultMarginResId());
        this.itemPaddingBottom = baselineLayout.getPaddingBottom();
        this.activeIndicatorLabelPadding = 0;
        this.iconLabelHorizontalSpacing = 0;
        textView.setImportantForAccessibility(2);
        textView2.setImportantForAccessibility(2);
        this.expandedSmallLabel.setImportantForAccessibility(2);
        this.expandedLargeLabel.setImportantForAccessibility(2);
        setFocusable(true);
        calculateTextScaleFactors();
        this.activeIndicatorExpandedDesiredHeight = getResources().getDimensionPixelSize(org.wikipedia.R.dimen.m3_navigation_item_expanded_active_indicator_height_default);
        linearLayout.addOnLayoutChangeListener(new CarouselLayoutManager$$ExternalSyntheticLambda0(1, (BottomNavigationItemView) this));
    }

    private int getItemVisiblePosition() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        int indexOfChild = viewGroup.indexOfChild(this);
        int i = 0;
        for (int i2 = 0; i2 < indexOfChild; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if ((childAt instanceof NavigationBarItemView) && childAt.getVisibility() == 0) {
                i++;
            }
        }
        return i;
    }

    private int getSuggestedIconWidth() {
        BadgeDrawable badgeDrawable = this.badgeDrawable;
        int minimumWidth = badgeDrawable == null ? 0 : badgeDrawable.getMinimumWidth() - this.badgeDrawable.state.currentState.horizontalOffsetWithoutText.intValue();
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.iconContainer.getLayoutParams();
        return Math.max(minimumWidth, layoutParams.rightMargin) + this.icon.getMeasuredWidth() + Math.max(minimumWidth, layoutParams.leftMargin);
    }

    private void setLabelPivots(TextView textView) {
        textView.setPivotX(textView.getWidth() / 2);
        textView.setPivotY(textView.getBaseline());
    }

    public static void setViewMarginAndGravity(int i, int i2, int i3, View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.bottomMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    public final void calculateTextScaleFactors() {
        float textSize = this.smallLabel.getTextSize();
        float textSize2 = this.largeLabel.getTextSize();
        this.shiftAmountY = textSize - textSize2;
        this.scaleUpFactor = (textSize2 * 1.0f) / textSize;
        this.scaleDownFactor = (textSize * 1.0f) / textSize2;
        float textSize3 = this.expandedSmallLabel.getTextSize();
        float textSize4 = this.expandedLargeLabel.getTextSize();
        this.expandedLabelShiftAmountY = textSize3 - textSize4;
        this.expandedLabelScaleUpFactor = (textSize4 * 1.0f) / textSize3;
        this.expandedLabelScaleDownFactor = (textSize3 * 1.0f) / textSize4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.activeIndicatorEnabled) {
            this.iconContainer.dispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public Drawable getActiveIndicatorDrawable() {
        return this.activeIndicatorView.getBackground();
    }

    public BadgeDrawable getBadge() {
        return this.badgeDrawable;
    }

    public BaselineLayout getExpandedLabelGroup() {
        return this.expandedLabelGroup;
    }

    public int getItemBackgroundResId() {
        return org.wikipedia.R.drawable.mtrl_navigation_bar_item_background;
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.itemData;
    }

    public int getItemDefaultMarginResId() {
        return org.wikipedia.R.dimen.mtrl_navigation_bar_item_default_margin;
    }

    public abstract int getItemLayoutResId();

    public int getItemPosition() {
        return this.itemPosition;
    }

    public BaselineLayout getLabelGroup() {
        return this.labelGroup;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        LinearLayout linearLayout = this.contentContainer;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
        return linearLayout.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        if (this.itemIconGravity == 1) {
            LinearLayout linearLayout = this.innerContentContainer;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            return linearLayout.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
        }
        BaselineLayout baselineLayout = this.labelGroup;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) baselineLayout.getLayoutParams();
        return Math.max(getSuggestedIconWidth(), baselineLayout.getMeasuredWidth() + layoutParams2.leftMargin + layoutParams2.rightMargin);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void initialize(MenuItemImpl menuItemImpl) {
        this.itemData = menuItemImpl;
        setCheckable(menuItemImpl.isCheckable());
        setChecked(menuItemImpl.isChecked());
        setEnabled(menuItemImpl.isEnabled());
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.mTitle);
        setId(menuItemImpl.mId);
        if (!TextUtils.isEmpty(menuItemImpl.mContentDescription)) {
            setContentDescription(menuItemImpl.mContentDescription);
        }
        CharSequence charSequence = !TextUtils.isEmpty(menuItemImpl.mTooltipText) ? menuItemImpl.mTooltipText : menuItemImpl.mTitle;
        if (Build.VERSION.SDK_INT > 23) {
            RegexKt.setTooltipText(this, charSequence);
        }
        updateVisibility$1();
        this.initialized = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null && menuItemImpl.isCheckable() && this.itemData.isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        BadgeDrawable badgeDrawable = this.badgeDrawable;
        if (badgeDrawable != null && badgeDrawable.isVisible()) {
            MenuItemImpl menuItemImpl = this.itemData;
            CharSequence charSequence = menuItemImpl.mTitle;
            if (!TextUtils.isEmpty(menuItemImpl.mContentDescription)) {
                charSequence = this.itemData.mContentDescription;
            }
            accessibilityNodeInfo.setContentDescription(((Object) charSequence) + ", " + ((Object) this.badgeDrawable.getContentDescription()));
        }
        accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) Extras.Key.obtain(isSelected(), 0, 1, getItemVisiblePosition(), 1).f16default);
        if (isSelected()) {
            accessibilityNodeInfo.setClickable(false);
            accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK.mAction);
        }
        accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(org.wikipedia.R.string.item_view_role_description));
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        post(new CallbackWrapper$2(i, 4, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.graphics.drawable.LayerDrawable, android.graphics.drawable.RippleDrawable] */
    public final void refreshItemBackground() {
        Drawable drawable = this.itemBackground;
        boolean z = true;
        if (this.itemRippleColor != null) {
            Drawable activeIndicatorDrawable = getActiveIndicatorDrawable();
            if (this.activeIndicatorEnabled && activeIndicatorDrawable != null) {
                ?? rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.itemRippleColor), null, activeIndicatorDrawable);
                FocusRingDrawable.layer(getContext(), rippleDrawable, activeIndicatorDrawable instanceof MaterialShapeDrawable ? (MaterialShapeDrawable) activeIndicatorDrawable : null);
                r3 = rippleDrawable;
                z = false;
            } else if (drawable == null) {
                RippleDrawable rippleDrawable2 = new RippleDrawable(RippleUtils.convertToRippleDrawableColor(this.itemRippleColor), null, null);
                Context context = getContext();
                ColorDrawable colorDrawable = FocusRingDrawable.EMPTY_DRAWABLE;
                drawable = (Build.VERSION.SDK_INT < 24 || !Operation$State.resolveBoolean(context.getTheme(), org.wikipedia.R.attr.focusRingsEnabled, false)) ? rippleDrawable2 : new FocusRingDrawable(context, rippleDrawable2);
            }
        }
        FrameLayout frameLayout = this.iconContainer;
        frameLayout.setPadding(0, 0, 0, 0);
        frameLayout.setForeground(r3);
        setBackground(drawable);
        if (Build.VERSION.SDK_INT >= 26) {
            setDefaultFocusHighlightEnabled(z);
        }
    }

    public void setActiveIndicatorDrawable(Drawable drawable) {
        this.activeIndicatorView.setBackground(drawable);
        refreshItemBackground();
    }

    public void setActiveIndicatorEnabled(boolean z) {
        this.activeIndicatorEnabled = z;
        refreshItemBackground();
        this.activeIndicatorView.setVisibility(z ? 0 : 8);
        requestLayout();
    }

    public void setActiveIndicatorExpandedHeight(int i) {
        this.activeIndicatorExpandedDesiredHeight = i;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorExpandedMarginHorizontal(int i) {
        this.activeIndicatorExpandedMarginHorizontal = i;
        if (this.itemIconGravity == 1) {
            setPadding(i, 0, i, 0);
        }
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorExpandedPadding(Rect rect) {
        this.itemActiveIndicatorExpandedPadding = rect;
    }

    public void setActiveIndicatorExpandedWidth(int i) {
        this.activeIndicatorExpandedDesiredWidth = i;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorHeight(int i) {
        this.activeIndicatorDesiredHeight = i;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setActiveIndicatorLabelPadding(int i) {
        if (this.activeIndicatorLabelPadding != i) {
            this.activeIndicatorLabelPadding = i;
            ((LinearLayout.LayoutParams) this.labelGroup.getLayoutParams()).topMargin = i;
            BaselineLayout baselineLayout = this.expandedLabelGroup;
            if (baselineLayout.getLayoutParams() != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) baselineLayout.getLayoutParams();
                layoutParams.rightMargin = getLayoutDirection() == 1 ? i : 0;
                if (getLayoutDirection() == 1) {
                    i = 0;
                }
                layoutParams.leftMargin = i;
                requestLayout();
            }
        }
    }

    public void setActiveIndicatorMarginHorizontal(int i) {
        this.activeIndicatorMarginHorizontal = i;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public final void setActiveIndicatorProgress(float f, float f2) {
        Transition.AnonymousClass1 anonymousClass1 = this.activeIndicatorTransform;
        anonymousClass1.getClass();
        float lerp = AnimationUtils.lerp(0.4f, 1.0f, f);
        View view = this.activeIndicatorView;
        view.setScaleX(lerp);
        view.setScaleY(anonymousClass1.calculateScaleY(f));
        view.setAlpha(AnimationUtils.lerp(RecyclerView.DECELERATION_RATE, 1.0f, f2 == RecyclerView.DECELERATION_RATE ? 0.8f : 0.0f, f2 == RecyclerView.DECELERATION_RATE ? 1.0f : 0.2f, f));
        this.activeIndicatorProgress = f;
    }

    public void setActiveIndicatorResizeable(boolean z) {
        this.activeIndicatorResizeable = z;
    }

    public void setActiveIndicatorWidth(int i) {
        this.activeIndicatorDesiredWidth = i;
        updateActiveIndicatorLayoutParams(getWidth());
    }

    public void setBadge(BadgeDrawable badgeDrawable) {
        BadgeDrawable badgeDrawable2 = this.badgeDrawable;
        if (badgeDrawable2 == badgeDrawable) {
            return;
        }
        ImageView imageView = this.icon;
        if (badgeDrawable2 != null && imageView != null) {
            Log.w("NavigationBar", "Multiple badges shouldn't be attached to one item.");
            if (this.badgeDrawable != null) {
                setClipChildren(true);
                setClipToPadding(true);
                BadgeDrawable badgeDrawable3 = this.badgeDrawable;
                if (badgeDrawable3 != null) {
                    if (badgeDrawable3.getCustomBadgeParent() != null) {
                        badgeDrawable3.getCustomBadgeParent().setForeground(null);
                    } else {
                        imageView.getOverlay().remove(badgeDrawable3);
                    }
                }
                this.badgeDrawable = null;
            }
        }
        this.badgeDrawable = badgeDrawable;
        int i = this.badgeFixedEdge;
        BadgeState badgeState = badgeDrawable.state;
        if (badgeState.badgeFixedEdge != i) {
            badgeState.badgeFixedEdge = i;
            badgeDrawable.updateCenterAndBounds();
        }
        if (imageView == null || this.badgeDrawable == null) {
            return;
        }
        setClipChildren(false);
        setClipToPadding(false);
        BadgeDrawable badgeDrawable4 = this.badgeDrawable;
        Rect rect = new Rect();
        imageView.getDrawingRect(rect);
        badgeDrawable4.setBounds(rect);
        badgeDrawable4.updateBadgeCoordinates(imageView, null);
        if (badgeDrawable4.getCustomBadgeParent() != null) {
            badgeDrawable4.getCustomBadgeParent().setForeground(badgeDrawable4);
        } else {
            imageView.getOverlay().add(badgeDrawable4);
        }
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.largeLabel;
        setLabelPivots(textView);
        TextView textView2 = this.smallLabel;
        setLabelPivots(textView2);
        TextView textView3 = this.expandedLargeLabel;
        setLabelPivots(textView3);
        TextView textView4 = this.expandedSmallLabel;
        setLabelPivots(textView4);
        final float f = z ? 1.0f : 0.0f;
        if (this.activeIndicatorEnabled && this.initialized && isAttachedToWindow()) {
            ValueAnimator valueAnimator = this.activeIndicatorAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.activeIndicatorAnimator = null;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.activeIndicatorProgress, f);
            this.activeIndicatorAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.navigation.NavigationBarItemView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    NavigationBarItemView.this.setActiveIndicatorProgress(((Float) valueAnimator2.getAnimatedValue()).floatValue(), f);
                }
            });
            this.activeIndicatorAnimator.setInterpolator(DpKt.resolveThemeInterpolator(getContext(), org.wikipedia.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            this.activeIndicatorAnimator.setDuration(Operation$State.resolveInteger(getContext(), org.wikipedia.R.attr.motionDurationLong2, getResources().getInteger(org.wikipedia.R.integer.material_motion_duration_long_1)));
            this.activeIndicatorAnimator.start();
        } else {
            setActiveIndicatorProgress(f, f);
        }
        float f2 = this.shiftAmountY;
        float f3 = this.scaleUpFactor;
        float f4 = this.scaleDownFactor;
        if (this.itemIconGravity == 1) {
            f2 = this.expandedLabelShiftAmountY;
            f3 = this.expandedLabelScaleUpFactor;
            f4 = this.expandedLabelScaleDownFactor;
            textView = textView3;
            textView2 = textView4;
        }
        int i = this.labelVisibilityMode;
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        setLayoutConfigurationIconOnly();
                    }
                } else if (z) {
                    setLayoutConfigurationIconAndLabel(textView, textView2, f3, f2);
                } else {
                    setLayoutConfigurationIconAndLabel(textView2, textView, f4, RecyclerView.DECELERATION_RATE);
                }
            } else if (z) {
                setLayoutConfigurationIconAndLabel(textView, textView2, f3, RecyclerView.DECELERATION_RATE);
            } else {
                setLayoutConfigurationIconOnly();
            }
        } else if (this.isShifting) {
            if (z) {
                setLayoutConfigurationIconAndLabel(textView, textView2, f3, RecyclerView.DECELERATION_RATE);
            } else {
                setLayoutConfigurationIconOnly();
            }
        } else if (z) {
            setLayoutConfigurationIconAndLabel(textView, textView2, f3, f2);
        } else {
            setLayoutConfigurationIconAndLabel(textView2, textView, f4, RecyclerView.DECELERATION_RATE);
        }
        refreshDrawableState();
        setSelected(z);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.smallLabel.setEnabled(z);
        this.largeLabel.setEnabled(z);
        this.expandedSmallLabel.setEnabled(z);
        this.expandedLargeLabel.setEnabled(z);
        this.icon.setEnabled(z);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setExpanded(boolean z) {
        this.expanded = z;
        updateVisibility$1();
    }

    public final void setExpandedLabelGroupMargins() {
        int i = this.icon.getLayoutParams().width > 0 ? this.iconLabelHorizontalSpacing : 0;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.expandedLabelGroup.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.rightMargin = getLayoutDirection() == 1 ? i : 0;
            layoutParams.leftMargin = getLayoutDirection() != 1 ? i : 0;
        }
    }

    public void setHorizontalTextAppearanceActive(int i) {
        this.horizontalTextAppearanceActive = i;
        if (i == 0) {
            i = this.textAppearanceActive;
        }
        updateActiveLabelTextAppearance(this.expandedLargeLabel, i);
    }

    public void setHorizontalTextAppearanceInactive(int i) {
        this.horizontalTextAppearanceInactive = i;
        if (i == 0) {
            i = this.textAppearanceInactive;
        }
        TextView textView = this.expandedSmallLabel;
        if (textView == null) {
            return;
        }
        setTextAppearanceForLabel(textView, i);
        calculateTextScaleFactors();
        textView.setMinimumHeight(OperationKt.getUnscaledLineHeight(textView.getContext(), i));
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable == this.originalIconDrawable) {
            return;
        }
        this.originalIconDrawable = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = drawable.mutate();
            this.wrappedIconDrawable = drawable;
            ColorStateList colorStateList = this.iconTint;
            if (colorStateList != null) {
                drawable.setTintList(colorStateList);
            }
        }
        this.icon.setImageDrawable(drawable);
    }

    public void setIconLabelHorizontalSpacing(int i) {
        if (this.iconLabelHorizontalSpacing != i) {
            this.iconLabelHorizontalSpacing = i;
            setExpandedLabelGroupMargins();
            requestLayout();
        }
    }

    public void setIconSize(int i) {
        ImageView imageView = this.icon;
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        imageView.setLayoutParams(layoutParams);
        setExpandedLabelGroupMargins();
    }

    public void setIconTintList(ColorStateList colorStateList) {
        Drawable drawable;
        this.iconTint = colorStateList;
        if (this.itemData == null || (drawable = this.wrappedIconDrawable) == null) {
            return;
        }
        drawable.setTintList(colorStateList);
        this.wrappedIconDrawable.invalidateSelf();
    }

    public void setItemBackground(Drawable drawable) {
        if (drawable != null && drawable.getConstantState() != null) {
            drawable = drawable.getConstantState().newDrawable().mutate();
        }
        this.itemBackground = drawable;
        refreshItemBackground();
    }

    public void setItemGravity(int i) {
        this.itemGravity = i;
        requestLayout();
    }

    public void setItemIconGravity(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (this.itemIconGravity != i) {
            this.itemIconGravity = i;
            this.badgeFixedEdge = 0;
            BaselineLayout baselineLayout = this.labelGroup;
            this.currentLabelGroup = baselineLayout;
            BaselineLayout baselineLayout2 = this.expandedLabelGroup;
            LinearLayout linearLayout = this.innerContentContainer;
            int i8 = 8;
            if (i == 1) {
                if (baselineLayout2.getParent() == null) {
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 17;
                    linearLayout.addView(baselineLayout2, layoutParams);
                    setExpandedLabelGroupMargins();
                }
                Rect rect = this.itemActiveIndicatorExpandedPadding;
                int i9 = rect.left;
                int i10 = rect.right;
                int i11 = rect.top;
                i2 = rect.bottom;
                this.badgeFixedEdge = 1;
                int i12 = this.activeIndicatorExpandedMarginHorizontal;
                this.currentLabelGroup = baselineLayout2;
                i6 = i11;
                i5 = i10;
                i4 = i9;
                i3 = i12;
                i7 = 0;
            } else {
                i2 = 0;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                i6 = 0;
                i7 = 8;
                i8 = 0;
            }
            baselineLayout.setVisibility(i8);
            baselineLayout2.setVisibility(i7);
            ((FrameLayout.LayoutParams) this.contentContainer.getLayoutParams()).gravity = this.itemGravity;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams2.leftMargin = i4;
            layoutParams2.rightMargin = i5;
            layoutParams2.topMargin = i6;
            layoutParams2.bottomMargin = i2;
            setPadding(i3, 0, i3, 0);
            updateActiveIndicatorLayoutParams(getWidth());
            refreshItemBackground();
        }
    }

    public void setItemPaddingBottom(int i) {
        if (this.itemPaddingBottom != i) {
            this.itemPaddingBottom = i;
            MenuItemImpl menuItemImpl = this.itemData;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setItemPaddingTop(int i) {
        if (this.itemPaddingTop != i) {
            this.itemPaddingTop = i;
            MenuItemImpl menuItemImpl = this.itemData;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setItemPosition(int i) {
        this.itemPosition = i;
    }

    public void setItemRippleColor(ColorStateList colorStateList) {
        this.itemRippleColor = colorStateList;
        refreshItemBackground();
    }

    public void setLabelFontScalingEnabled(boolean z) {
        this.scaleLabelSizeWithFont = z;
        setTextAppearanceActive(this.textAppearanceActive);
        setTextAppearanceInactive(this.textAppearanceInactive);
        setHorizontalTextAppearanceActive(this.horizontalTextAppearanceActive);
        setHorizontalTextAppearanceInactive(this.horizontalTextAppearanceInactive);
    }

    public void setLabelMaxLines(int i) {
        TextView textView = this.smallLabel;
        textView.setMaxLines(i);
        TextView textView2 = this.largeLabel;
        textView2.setMaxLines(i);
        this.expandedSmallLabel.setMaxLines(i);
        this.expandedLargeLabel.setMaxLines(i);
        if (Build.VERSION.SDK_INT > 34) {
            textView.setGravity(17);
            textView2.setGravity(17);
        } else if (i > 1) {
            textView.setEllipsize(null);
            textView2.setEllipsize(null);
            textView.setGravity(17);
            textView2.setGravity(17);
        } else {
            textView.setGravity(16);
            textView2.setGravity(16);
        }
        requestLayout();
    }

    public void setLabelVisibilityMode(int i) {
        if (this.labelVisibilityMode != i) {
            this.labelVisibilityMode = i;
            if (this.activeIndicatorResizeable && i == 2) {
                this.activeIndicatorTransform = ACTIVE_INDICATOR_UNLABELED_TRANSFORM;
            } else {
                this.activeIndicatorTransform = ACTIVE_INDICATOR_LABELED_TRANSFORM;
            }
            updateActiveIndicatorLayoutParams(getWidth());
            MenuItemImpl menuItemImpl = this.itemData;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public final void setLayoutConfigurationIconAndLabel(TextView textView, TextView textView2, float f, float f2) {
        setViewMarginAndGravity(this.itemIconGravity == 0 ? (int) (this.itemPaddingTop + f2) : 0, 0, this.itemGravity, this.contentContainer);
        int i = this.itemIconGravity;
        setViewMarginAndGravity(i == 0 ? 0 : this.itemActiveIndicatorExpandedPadding.top, i == 0 ? 0 : this.itemActiveIndicatorExpandedPadding.bottom, i == 0 ? 17 : 8388627, this.innerContentContainer);
        int i2 = this.itemPaddingBottom;
        BaselineLayout baselineLayout = this.labelGroup;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), i2);
        this.currentLabelGroup.setVisibility(0);
        textView.setScaleX(1.0f);
        textView.setScaleY(1.0f);
        textView.setVisibility(0);
        textView2.setScaleX(f);
        textView2.setScaleY(f);
        textView2.setVisibility(4);
    }

    public final void setLayoutConfigurationIconOnly() {
        int i = this.itemPaddingTop;
        setViewMarginAndGravity(i, i, this.itemIconGravity == 0 ? 17 : this.itemGravity, this.contentContainer);
        setViewMarginAndGravity(0, 0, 17, this.innerContentContainer);
        BaselineLayout baselineLayout = this.labelGroup;
        baselineLayout.setPadding(baselineLayout.getPaddingLeft(), baselineLayout.getPaddingTop(), baselineLayout.getPaddingRight(), 0);
        this.currentLabelGroup.setVisibility(8);
    }

    public void setMeasureBottomPaddingFromLabelBaseline(boolean z) {
        this.measurePaddingFromBaseline = z;
        this.labelGroup.setMeasurePaddingFromBaseline(z);
        this.smallLabel.setIncludeFontPadding(z);
        this.largeLabel.setIncludeFontPadding(z);
        this.expandedLabelGroup.setMeasurePaddingFromBaseline(z);
        this.expandedSmallLabel.setIncludeFontPadding(z);
        this.expandedLargeLabel.setIncludeFontPadding(z);
        requestLayout();
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setOnlyShowWhenExpanded(boolean z) {
        this.onlyShowWhenExpanded = z;
        updateVisibility$1();
    }

    public void setShifting(boolean z) {
        if (this.isShifting != z) {
            this.isShifting = z;
            MenuItemImpl menuItemImpl = this.itemData;
            if (menuItemImpl != null) {
                setChecked(menuItemImpl.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(int i) {
        this.textAppearanceActive = i;
        updateActiveLabelTextAppearance(this.largeLabel, i);
    }

    public void setTextAppearanceActiveBoldEnabled(boolean z) {
        this.boldText = z;
        setTextAppearanceActive(this.textAppearanceActive);
        setHorizontalTextAppearanceActive(this.horizontalTextAppearanceActive);
        TextView textView = this.largeLabel;
        textView.setTypeface(textView.getTypeface(), this.boldText ? 1 : 0);
        TextView textView2 = this.expandedLargeLabel;
        textView2.setTypeface(textView2.getTypeface(), this.boldText ? 1 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:16:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setTextAppearanceForLabel(android.widget.TextView r4, int r5) {
        /*
            r3 = this;
            boolean r3 = r3.scaleLabelSizeWithFont
            if (r3 == 0) goto L8
            r4.setTextAppearance(r5)
            return
        L8:
            r4.setTextAppearance(r5)
            android.content.Context r3 = r4.getContext()
            r0 = 0
            if (r5 != 0) goto L13
            goto L27
        L13:
            int[] r1 = androidx.appcompat.R$styleable.TextAppearance
            android.content.res.TypedArray r5 = r3.obtainStyledAttributes(r5, r1)
            android.util.TypedValue r1 = new android.util.TypedValue
            r1.<init>()
            boolean r2 = r5.getValue(r0, r1)
            r5.recycle()
            if (r2 != 0) goto L29
        L27:
            r3 = r0
            goto L52
        L29:
            int r5 = r1.getComplexUnit()
            int r1 = r1.data
            r2 = 2
            if (r5 != r2) goto L46
            float r5 = android.util.TypedValue.complexToFloat(r1)
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = r3.density
            float r5 = r5 * r3
            int r3 = java.lang.Math.round(r5)
            goto L52
        L46:
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            int r3 = android.util.TypedValue.complexToDimensionPixelSize(r1, r3)
        L52:
            if (r3 == 0) goto L58
            float r3 = (float) r3
            r4.setTextSize(r0, r3)
        L58:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationBarItemView.setTextAppearanceForLabel(android.widget.TextView, int):void");
    }

    public void setTextAppearanceInactive(int i) {
        this.textAppearanceInactive = i;
        TextView textView = this.smallLabel;
        if (textView == null) {
            return;
        }
        setTextAppearanceForLabel(textView, i);
        calculateTextScaleFactors();
        textView.setMinimumHeight(OperationKt.getUnscaledLineHeight(textView.getContext(), i));
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
        if (colorStateList != null) {
            this.smallLabel.setTextColor(colorStateList);
            this.largeLabel.setTextColor(colorStateList);
            this.expandedSmallLabel.setTextColor(colorStateList);
            this.expandedLargeLabel.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.smallLabel.setText(charSequence);
        this.largeLabel.setText(charSequence);
        this.expandedSmallLabel.setText(charSequence);
        this.expandedLargeLabel.setText(charSequence);
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl == null || TextUtils.isEmpty(menuItemImpl.mContentDescription)) {
            setContentDescription(charSequence);
        }
        MenuItemImpl menuItemImpl2 = this.itemData;
        if (menuItemImpl2 != null && !TextUtils.isEmpty(menuItemImpl2.mTooltipText)) {
            charSequence = this.itemData.mTooltipText;
        }
        if (Build.VERSION.SDK_INT > 23) {
            RegexKt.setTooltipText(this, charSequence);
        }
    }

    public final void updateActiveIndicatorLayoutParams(int i) {
        if (i > 0 || getVisibility() != 0) {
            int min = Math.min(this.activeIndicatorDesiredWidth, i - (this.activeIndicatorMarginHorizontal * 2));
            int i2 = this.activeIndicatorDesiredHeight;
            if (this.itemIconGravity == 1) {
                int i3 = i - (this.activeIndicatorExpandedMarginHorizontal * 2);
                int i4 = this.activeIndicatorExpandedDesiredWidth;
                if (i4 != -1) {
                    i3 = i4 == -2 ? this.contentContainer.getMeasuredWidth() : Math.min(i4, i3);
                }
                min = i3;
                i2 = Math.max(this.activeIndicatorExpandedDesiredHeight, this.innerContentContainer.getMeasuredHeight());
            }
            View view = this.activeIndicatorView;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            if (this.activeIndicatorResizeable && this.labelVisibilityMode == 2) {
                i2 = min;
            }
            layoutParams.height = i2;
            layoutParams.width = Math.max(0, min);
            view.setLayoutParams(layoutParams);
        }
    }

    public final void updateActiveLabelTextAppearance(TextView textView, int i) {
        if (textView == null) {
            return;
        }
        setTextAppearanceForLabel(textView, i);
        calculateTextScaleFactors();
        textView.setMinimumHeight(OperationKt.getUnscaledLineHeight(textView.getContext(), i));
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        TextView textView2 = this.largeLabel;
        textView2.setTypeface(textView2.getTypeface(), this.boldText ? 1 : 0);
        TextView textView3 = this.expandedLargeLabel;
        textView3.setTypeface(textView3.getTypeface(), this.boldText ? 1 : 0);
    }

    public final void updateVisibility$1() {
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setVisibility((!menuItemImpl.isVisible() || (!this.expanded && this.onlyShowWhenExpanded)) ? 8 : 0);
        }
    }

    public void setItemBackground(int i) {
        setItemBackground(i == 0 ? null : getContext().getDrawable(i));
    }
}
