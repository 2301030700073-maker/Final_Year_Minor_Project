package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.compose.ui.unit.DpKt;
import androidx.core.util.Pools$SimplePool;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import androidx.work.impl.AutoMigration_14_15;
import coil3.Extras;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.language.LanguageUtil;
import org.wikipedia.util.FileUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final Pools$SynchronizedPool tabPool = new Pools$SynchronizedPool(16);
    public final int contentInsetStart;
    public final int defaultTabTextAppearance;
    public int indicatorPosition;
    public boolean inlineLabel;
    public int mode;
    public final int requestedTabMaxWidth;
    public final int requestedTabMinWidth;
    public ValueAnimator scrollAnimator;
    public final int scrollableTabMinWidth;
    public BaseOnTabSelectedListener selectedListener;
    public final ArrayList selectedListeners;
    public Tab selectedTab;
    public final int selectedTabTextAppearance;
    public final float selectedTabTextSize;
    public final SlidingTabIndicator slidingTabIndicator;
    public final int tabBackgroundResId;
    public int tabGravity;
    public ColorStateList tabIconTint;
    public final PorterDuff.Mode tabIconTintMode;
    public final int tabIndicatorAnimationDuration;
    public int tabIndicatorAnimationMode;
    public boolean tabIndicatorFullWidth;
    public int tabIndicatorGravity;
    public int tabIndicatorHeight;
    public AutoMigration_14_15 tabIndicatorInterpolator;
    public final TimeInterpolator tabIndicatorTimeInterpolator;
    public int tabMaxWidth;
    public final int tabPaddingBottom;
    public final int tabPaddingEnd;
    public final int tabPaddingStart;
    public final int tabPaddingTop;
    public ColorStateList tabRippleColorStateList;
    public Drawable tabSelectedIndicator;
    public int tabSelectedIndicatorColor;
    public final int tabTextAppearance;
    public ColorStateList tabTextColors;
    public final float tabTextMultiLineSize;
    public final float tabTextSize;
    public final Pools$SimplePool tabViewPool;
    public final ArrayList tabs;
    public boolean unboundedRipple;
    public int viewPagerScrollState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: com.google.android.material.tabs.TabLayout$1, reason: invalid class name */
    public final class AnonymousClass1 implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((TabLayout) obj).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                    break;
                case 1:
                    int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
                    FastScroller fastScroller = (FastScroller) obj;
                    fastScroller.mVerticalThumbDrawable.setAlpha(floatValue);
                    fastScroller.mVerticalTrackDrawable.setAlpha(floatValue);
                    fastScroller.mRecyclerView.invalidate();
                    break;
                case 2:
                    ((ItemTouchHelper.AnonymousClass3) obj).mFraction = valueAnimator.getAnimatedFraction();
                    break;
                case 3:
                    ((CollapsingToolbarLayout) obj).setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                    break;
                case 4:
                    float floatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    MaterialShapeDrawable materialShapeDrawable = ((BottomSheetBehavior) obj).materialShapeDrawable;
                    if (materialShapeDrawable != null) {
                        materialShapeDrawable.setInterpolation(floatValue2);
                        break;
                    }
                    break;
                case 5:
                    float floatValue3 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    TextView textView = (TextView) obj;
                    textView.setScaleX(floatValue3);
                    textView.setScaleY(floatValue3);
                    break;
                default:
                    ((TextInputLayout) obj).collapsingTextHelper.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface BaseOnTabSelectedListener {
        void onTabReselected(Tab tab);

        void onTabSelected(Tab tab);

        void onTabUnselected(Tab tab);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SlidingTabIndicator extends LinearLayout {
        public static final /* synthetic */ int $r8$clinit = 0;
        public ValueAnimator indicatorAnimator;

        public SlidingTabIndicator(Context context) {
            super(context);
            setWillNotDraw(false);
        }

        @Override // android.view.View
        public final void draw(Canvas canvas) {
            int height;
            TabLayout tabLayout = TabLayout.this;
            int height2 = tabLayout.tabSelectedIndicator.getBounds().height();
            if (height2 < 0) {
                height2 = tabLayout.tabSelectedIndicator.getIntrinsicHeight();
            }
            int i = tabLayout.tabIndicatorGravity;
            if (i == 0) {
                height = getHeight() - height2;
                height2 = getHeight();
            } else if (i != 1) {
                height = 0;
                if (i != 2) {
                    height2 = i != 3 ? 0 : getHeight();
                }
            } else {
                height = (getHeight() - height2) / 2;
                height2 = (getHeight() + height2) / 2;
            }
            if (tabLayout.tabSelectedIndicator.getBounds().width() > 0) {
                Rect bounds = tabLayout.tabSelectedIndicator.getBounds();
                tabLayout.tabSelectedIndicator.setBounds(bounds.left, height, bounds.right, height2);
                tabLayout.tabSelectedIndicator.draw(canvas);
            }
            super.draw(canvas);
        }

        public final void jumpIndicatorToPosition(int i) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.viewPagerScrollState == 0 || (tabLayout.getTabSelectedIndicator().getBounds().left == -1 && tabLayout.getTabSelectedIndicator().getBounds().right == -1)) {
                View childAt = getChildAt(i);
                AutoMigration_14_15 autoMigration_14_15 = tabLayout.tabIndicatorInterpolator;
                Drawable drawable = tabLayout.tabSelectedIndicator;
                autoMigration_14_15.getClass();
                RectF calculateIndicatorWidthForTab = AutoMigration_14_15.calculateIndicatorWidthForTab(tabLayout, childAt);
                drawable.setBounds((int) calculateIndicatorWidthForTab.left, drawable.getBounds().top, (int) calculateIndicatorWidthForTab.right, drawable.getBounds().bottom);
                tabLayout.indicatorPosition = i;
            }
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.indicatorAnimator;
            TabLayout tabLayout = TabLayout.this;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                updateOrRecreateIndicatorAnimation(tabLayout.getSelectedTabPosition(), -1, false);
                return;
            }
            int i5 = tabLayout.indicatorPosition;
            if (i5 == -1) {
                i5 = tabLayout.getSelectedTabPosition();
                tabLayout.indicatorPosition = i5;
            }
            jumpIndicatorToPosition(i5);
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                int childCount = getChildCount();
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i3, childAt.getMeasuredWidth());
                    }
                }
                if (i3 <= 0) {
                    return;
                }
                if (i3 * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != i3 || layoutParams.weight != RecyclerView.DECELERATION_RATE) {
                            layoutParams.width = i3;
                            layoutParams.weight = RecyclerView.DECELERATION_RATE;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    tabLayout.tabGravity = 0;
                    tabLayout.updateTabViews(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        public final void setSelectedIndicatorHeight(int i) {
            TabLayout tabLayout = TabLayout.this;
            Rect bounds = tabLayout.tabSelectedIndicator.getBounds();
            tabLayout.tabSelectedIndicator.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }

        public final void tweenIndicatorPosition(View view, View view2, float f) {
            TabLayout tabLayout = TabLayout.this;
            if (view == null || view.getWidth() <= 0) {
                Drawable drawable = tabLayout.tabSelectedIndicator;
                drawable.setBounds(-1, drawable.getBounds().top, -1, tabLayout.tabSelectedIndicator.getBounds().bottom);
            } else {
                tabLayout.tabIndicatorInterpolator.updateIndicatorForOffset(tabLayout, view, view2, f, tabLayout.tabSelectedIndicator);
            }
            postInvalidateOnAnimation();
        }

        public final void updateOrRecreateIndicatorAnimation(int i, int i2, boolean z) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.indicatorPosition == i) {
                return;
            }
            final View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            final View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                jumpIndicatorToPosition(tabLayout.getSelectedTabPosition());
                return;
            }
            tabLayout.indicatorPosition = i;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    SlidingTabIndicator.this.tweenIndicatorPosition(childAt, childAt2, valueAnimator.getAnimatedFraction());
                }
            };
            if (!z) {
                this.indicatorAnimator.removeAllUpdateListeners();
                this.indicatorAnimator.addUpdateListener(animatorUpdateListener);
                return;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            this.indicatorAnimator = valueAnimator;
            valueAnimator.setInterpolator(tabLayout.tabIndicatorTimeInterpolator);
            valueAnimator.setDuration(i2);
            valueAnimator.setFloatValues(RecyclerView.DECELERATION_RATE, 1.0f);
            valueAnimator.addUpdateListener(animatorUpdateListener);
            valueAnimator.start();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Tab {
        public CharSequence contentDesc;
        public View customView;
        public Drawable icon;
        public TabLayout parent;
        public int position;
        public CharSequence text;
        public TabView view;

        public final void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                tabLayout.selectTab(this, true);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Tab not attached to a TabLayout");
            }
        }

        public final void setText(CharSequence charSequence) {
            if (TextUtils.isEmpty(this.contentDesc) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.text = charSequence;
            updateView();
        }

        public final void updateView() {
            boolean z;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.updateTab();
                Tab tab = tabView.tab;
                if (tab != null) {
                    TabLayout tabLayout = tab.parent;
                    if (tabLayout == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Tab not attached to a TabLayout");
                        return;
                    }
                    int selectedTabPosition = tabLayout.getSelectedTabPosition();
                    if (selectedTabPosition != -1 && selectedTabPosition == tab.position) {
                        z = true;
                        tabView.setSelected(z);
                    }
                }
                z = false;
                tabView.setSelected(z);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TabView extends LinearLayout {
        public static final /* synthetic */ int $r8$clinit = 0;
        public View badgeAnchorView;
        public BadgeDrawable badgeDrawable;
        public Drawable baseBackgroundDrawable;
        public ImageView customIconView;
        public TextView customTextView;
        public View customView;
        public int defaultMaxLines;
        public ImageView iconView;
        public Tab tab;
        public TextView textView;

        public TabView(Context context) {
            super(context);
            this.defaultMaxLines = 2;
            updateBackgroundDrawable(context);
            setPaddingRelative(TabLayout.this.tabPaddingStart, TabLayout.this.tabPaddingTop, TabLayout.this.tabPaddingEnd, TabLayout.this.tabPaddingBottom);
            setGravity(17);
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            setClickable(true);
            int i = 14;
            ViewCompat.setPointerIcon(this, Build.VERSION.SDK_INT >= 24 ? new HintHandler(i, LanguageUtil.getSystemIcon(getContext())) : new HintHandler(i, (Object) null));
        }

        private BadgeDrawable getBadge() {
            return this.badgeDrawable;
        }

        private BadgeDrawable getOrCreateBadge() {
            if (this.badgeDrawable == null) {
                this.badgeDrawable = new BadgeDrawable(getContext(), null);
            }
            tryUpdateBadgeAnchor();
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unable to create badge");
            return null;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void drawableStateChanged() {
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.baseBackgroundDrawable;
            if ((drawable == null || !drawable.isStateful()) ? false : this.baseBackgroundDrawable.setState(drawableState)) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getTop()) : view.getTop();
                    i = z ? Math.max(i, view.getBottom()) : view.getBottom();
                    z = true;
                }
            }
            return i - i2;
        }

        public int getContentWidth() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    i2 = z ? Math.min(i2, view.getLeft()) : view.getLeft();
                    i = z ? Math.max(i, view.getRight()) : view.getRight();
                    z = true;
                }
            }
            return i - i2;
        }

        public Tab getTab() {
            return this.tab;
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                accessibilityNodeInfo.setContentDescription(this.badgeDrawable.getContentDescription());
            }
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) Extras.Key.obtain(isSelected(), 0, 1, this.tab.position, 1).f16default);
            if (isSelected()) {
                accessibilityNodeInfo.setClickable(false);
                accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK.mAction);
            }
            accessibilityNodeInfo.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i, int i2) {
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            TabLayout tabLayout = TabLayout.this;
            int tabMaxWidth = tabLayout.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(tabLayout.tabMaxWidth, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.textView != null) {
                float f = tabLayout.tabTextSize;
                if (isSelected() && tabLayout.selectedTabTextAppearance != -1) {
                    f = tabLayout.selectedTabTextSize;
                }
                int i3 = this.defaultMaxLines;
                ImageView imageView = this.iconView;
                if (imageView == null || imageView.getVisibility() != 0) {
                    TextView textView = this.textView;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = tabLayout.tabTextMultiLineSize;
                    }
                } else {
                    i3 = 1;
                }
                float textSize = this.textView.getTextSize();
                int lineCount = this.textView.getLineCount();
                int maxLines = this.textView.getMaxLines();
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (tabLayout.mode == 1 && f > textSize && lineCount == 1) {
                        Layout layout = this.textView.getLayout();
                        if (layout == null) {
                            return;
                        }
                        if ((f / layout.getPaint().getTextSize()) * layout.getLineWidth(0) > (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight()) {
                            return;
                        }
                    }
                    this.textView.setTextSize(0, f);
                    this.textView.setMaxLines(i3);
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.view.View
        public final boolean performClick() {
            boolean performClick = super.performClick();
            if (this.tab == null) {
                return performClick;
            }
            if (!performClick) {
                playSoundEffect(0);
            }
            this.tab.select();
            return true;
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.textView;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.iconView;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.customView;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(Tab tab) {
            boolean z;
            if (tab != this.tab) {
                this.tab = tab;
                updateTab();
                Tab tab2 = this.tab;
                if (tab2 != null) {
                    TabLayout tabLayout = tab2.parent;
                    if (tabLayout == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Tab not attached to a TabLayout");
                        return;
                    }
                    int selectedTabPosition = tabLayout.getSelectedTabPosition();
                    if (selectedTabPosition != -1 && selectedTabPosition == tab2.position) {
                        z = true;
                        setSelected(z);
                    }
                }
                z = false;
                setSelected(z);
            }
        }

        public final void tryRemoveBadgeFromAnchor() {
            if (this.badgeDrawable != null) {
                setClipChildren(true);
                setClipToPadding(true);
                ViewGroup viewGroup = (ViewGroup) getParent();
                if (viewGroup != null) {
                    viewGroup.setClipChildren(true);
                    viewGroup.setClipToPadding(true);
                }
                View view = this.badgeAnchorView;
                if (view != null) {
                    BadgeDrawable badgeDrawable = this.badgeDrawable;
                    if (badgeDrawable != null) {
                        if (badgeDrawable.getCustomBadgeParent() != null) {
                            badgeDrawable.getCustomBadgeParent().setForeground(null);
                        } else {
                            view.getOverlay().remove(badgeDrawable);
                        }
                    }
                    this.badgeAnchorView = null;
                }
            }
        }

        public final void tryUpdateBadgeAnchor() {
            Tab tab;
            if (this.badgeDrawable != null) {
                if (this.customView != null) {
                    tryRemoveBadgeFromAnchor();
                    return;
                }
                ImageView imageView = this.iconView;
                if (imageView != null && (tab = this.tab) != null && tab.icon != null) {
                    if (this.badgeAnchorView == imageView) {
                        tryUpdateBadgeDrawableBounds(imageView);
                        return;
                    }
                    tryRemoveBadgeFromAnchor();
                    ImageView imageView2 = this.iconView;
                    if (this.badgeDrawable == null || imageView2 == null) {
                        return;
                    }
                    setClipChildren(false);
                    setClipToPadding(false);
                    ViewGroup viewGroup = (ViewGroup) getParent();
                    if (viewGroup != null) {
                        viewGroup.setClipChildren(false);
                        viewGroup.setClipToPadding(false);
                    }
                    BadgeDrawable badgeDrawable = this.badgeDrawable;
                    Rect rect = new Rect();
                    imageView2.getDrawingRect(rect);
                    badgeDrawable.setBounds(rect);
                    badgeDrawable.updateBadgeCoordinates(imageView2, null);
                    if (badgeDrawable.getCustomBadgeParent() != null) {
                        badgeDrawable.getCustomBadgeParent().setForeground(badgeDrawable);
                    } else {
                        imageView2.getOverlay().add(badgeDrawable);
                    }
                    this.badgeAnchorView = imageView2;
                    return;
                }
                TextView textView = this.textView;
                if (textView == null || this.tab == null) {
                    tryRemoveBadgeFromAnchor();
                    return;
                }
                if (this.badgeAnchorView == textView) {
                    tryUpdateBadgeDrawableBounds(textView);
                    return;
                }
                tryRemoveBadgeFromAnchor();
                TextView textView2 = this.textView;
                if (this.badgeDrawable == null || textView2 == null) {
                    return;
                }
                setClipChildren(false);
                setClipToPadding(false);
                ViewGroup viewGroup2 = (ViewGroup) getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setClipChildren(false);
                    viewGroup2.setClipToPadding(false);
                }
                BadgeDrawable badgeDrawable2 = this.badgeDrawable;
                Rect rect2 = new Rect();
                textView2.getDrawingRect(rect2);
                badgeDrawable2.setBounds(rect2);
                badgeDrawable2.updateBadgeCoordinates(textView2, null);
                if (badgeDrawable2.getCustomBadgeParent() != null) {
                    badgeDrawable2.getCustomBadgeParent().setForeground(badgeDrawable2);
                } else {
                    textView2.getOverlay().add(badgeDrawable2);
                }
                this.badgeAnchorView = textView2;
            }
        }

        public final void tryUpdateBadgeDrawableBounds(View view) {
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable == null || view != this.badgeAnchorView) {
                return;
            }
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            badgeDrawable.setBounds(rect);
            badgeDrawable.updateBadgeCoordinates(view, null);
        }

        public final void updateBackgroundDrawable(Context context) {
            TabLayout tabLayout = TabLayout.this;
            int i = tabLayout.tabBackgroundResId;
            if (i != 0) {
                Drawable drawable = TuplesKt.getDrawable(context, i);
                this.baseBackgroundDrawable = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.baseBackgroundDrawable.setState(getDrawableState());
                }
            } else {
                this.baseBackgroundDrawable = null;
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(0);
            Drawable drawable2 = gradientDrawable;
            if (tabLayout.tabRippleColorStateList != null) {
                GradientDrawable gradientDrawable2 = new GradientDrawable();
                gradientDrawable2.setCornerRadius(1.0E-5f);
                gradientDrawable2.setColor(-1);
                ColorStateList convertToRippleDrawableColor = RippleUtils.convertToRippleDrawableColor(tabLayout.tabRippleColorStateList);
                if (tabLayout.unboundedRipple) {
                    RippleDrawable rippleDrawable = new RippleDrawable(convertToRippleDrawableColor, null, null);
                    ColorDrawable colorDrawable = FocusRingDrawable.EMPTY_DRAWABLE;
                    drawable2 = rippleDrawable;
                    if (Build.VERSION.SDK_INT >= 24) {
                        drawable2 = rippleDrawable;
                        if (Operation$State.resolveBoolean(context.getTheme(), R.attr.focusRingsEnabled, false)) {
                            drawable2 = new FocusRingDrawable(context, rippleDrawable);
                        }
                    }
                } else {
                    RippleDrawable rippleDrawable2 = new RippleDrawable(convertToRippleDrawableColor, gradientDrawable, gradientDrawable2);
                    FocusRingDrawable.layer(context, rippleDrawable2, null);
                    drawable2 = rippleDrawable2;
                }
            }
            setBackground(drawable2);
            tabLayout.invalidate();
        }

        public final void updateTab() {
            int i;
            ViewParent parent;
            Tab tab = this.tab;
            View view = tab != null ? tab.customView : null;
            if (view != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(view);
                    }
                    View view2 = this.customView;
                    if (view2 != null && (parent = view2.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.customView);
                    }
                    addView(view);
                }
                this.customView = view;
                TextView textView = this.textView;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.iconView;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.iconView.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(android.R.id.text1);
                this.customTextView = textView2;
                if (textView2 != null) {
                    this.defaultMaxLines = textView2.getMaxLines();
                }
                this.customIconView = (ImageView) view.findViewById(android.R.id.icon);
            } else {
                View view3 = this.customView;
                if (view3 != null) {
                    removeView(view3);
                    this.customView = null;
                }
                this.customTextView = null;
                this.customIconView = null;
            }
            if (this.customView == null) {
                if (this.iconView == null) {
                    ImageView imageView2 = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) this, false);
                    this.iconView = imageView2;
                    addView(imageView2, 0);
                }
                if (this.textView == null) {
                    TextView textView3 = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) this, false);
                    this.textView = textView3;
                    addView(textView3);
                    this.defaultMaxLines = this.textView.getMaxLines();
                }
                TextView textView4 = this.textView;
                TabLayout tabLayout = TabLayout.this;
                textView4.setTextAppearance(tabLayout.defaultTabTextAppearance);
                if (!isSelected() || (i = tabLayout.selectedTabTextAppearance) == -1) {
                    this.textView.setTextAppearance(tabLayout.tabTextAppearance);
                } else {
                    this.textView.setTextAppearance(i);
                }
                ColorStateList colorStateList = tabLayout.tabTextColors;
                if (colorStateList != null) {
                    this.textView.setTextColor(colorStateList);
                }
                updateTextAndIcon(this.textView, this.iconView, true);
                tryUpdateBadgeAnchor();
                final ImageView imageView3 = this.iconView;
                if (imageView3 != null) {
                    imageView3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view4, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                            View view5 = imageView3;
                            if (view5.getVisibility() == 0) {
                                TabView.this.tryUpdateBadgeDrawableBounds(view5);
                            }
                        }
                    });
                }
                final TextView textView5 = this.textView;
                if (textView5 != null) {
                    textView5.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public final void onLayoutChange(View view4, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                            View view5 = textView5;
                            if (view5.getVisibility() == 0) {
                                TabView.this.tryUpdateBadgeDrawableBounds(view5);
                            }
                        }
                    });
                }
            } else {
                TextView textView6 = this.customTextView;
                if (textView6 != null || this.customIconView != null) {
                    updateTextAndIcon(textView6, this.customIconView, false);
                }
            }
            if (tab == null || TextUtils.isEmpty(tab.contentDesc)) {
                return;
            }
            setContentDescription(tab.contentDesc);
        }

        public final void updateTextAndIcon(TextView textView, ImageView imageView, boolean z) {
            boolean z2;
            Drawable drawable;
            Tab tab = this.tab;
            Drawable mutate = (tab == null || (drawable = tab.icon) == null) ? null : drawable.mutate();
            TabLayout tabLayout = TabLayout.this;
            if (mutate != null) {
                mutate.setTintList(tabLayout.tabIconTint);
                PorterDuff.Mode mode = tabLayout.tabIconTintMode;
                if (mode != null) {
                    mutate.setTintMode(mode);
                }
            }
            Tab tab2 = this.tab;
            CharSequence charSequence = tab2 != null ? tab2.text : null;
            if (imageView != null) {
                if (mutate != null) {
                    imageView.setImageDrawable(mutate);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean isEmpty = TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (isEmpty) {
                    z2 = false;
                } else {
                    this.tab.getClass();
                    z2 = true;
                }
                textView.setText(!isEmpty ? charSequence : null);
                textView.setVisibility(z2 ? 0 : 8);
                if (!isEmpty) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                int dpToPx = (z2 && imageView.getVisibility() == 0) ? (int) ViewUtils.dpToPx(getContext(), 8) : 0;
                if (tabLayout.inlineLabel) {
                    if (dpToPx != marginLayoutParams.getMarginEnd()) {
                        marginLayoutParams.setMarginEnd(dpToPx);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (dpToPx != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = dpToPx;
                    marginLayoutParams.setMarginEnd(0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.tab;
            CharSequence charSequence2 = tab3 != null ? tab3.contentDesc : null;
            if (Build.VERSION.SDK_INT > 23) {
                if (isEmpty) {
                    charSequence = charSequence2;
                }
                RegexKt.setTooltipText(this, charSequence);
            }
        }
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, R.attr.tabStyle, R.style.Widget_Design_TabLayout), attributeSet, R.attr.tabStyle);
        int i;
        this.indicatorPosition = -1;
        this.tabs = new ArrayList();
        this.selectedTabTextAppearance = -1;
        this.tabSelectedIndicatorColor = 0;
        this.tabMaxWidth = Integer.MAX_VALUE;
        this.tabIndicatorHeight = -1;
        this.selectedListeners = new ArrayList();
        this.tabViewPool = new Pools$SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        SlidingTabIndicator slidingTabIndicator = new SlidingTabIndicator(context2);
        this.slidingTabIndicator = slidingTabIndicator;
        super.addView(slidingTabIndicator, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray obtainStyledAttributes = ViewUtils.obtainStyledAttributes(context2, attributeSet, R$styleable.TabLayout, R.attr.tabStyle, R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListOrNull = FileUtil.getColorStateListOrNull(getBackground());
        if (colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.setFillColor(colorStateListOrNull);
            materialShapeDrawable.initializeElevationOverlay(context2);
            materialShapeDrawable.setElevation(getElevation());
            setBackground(materialShapeDrawable);
        }
        setSelectedTabIndicator(OperationKt.getDrawable(context2, obtainStyledAttributes, 5));
        setSelectedTabIndicatorColor(obtainStyledAttributes.getColor(8, 0));
        slidingTabIndicator.setSelectedIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(obtainStyledAttributes.getInt(10, 0));
        setTabIndicatorAnimationMode(obtainStyledAttributes.getInt(7, 0));
        setTabIndicatorFullWidth(obtainStyledAttributes.getBoolean(9, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(16, 0);
        this.tabPaddingBottom = dimensionPixelSize;
        this.tabPaddingEnd = dimensionPixelSize;
        this.tabPaddingTop = dimensionPixelSize;
        this.tabPaddingStart = dimensionPixelSize;
        this.tabPaddingStart = obtainStyledAttributes.getDimensionPixelSize(19, dimensionPixelSize);
        this.tabPaddingTop = obtainStyledAttributes.getDimensionPixelSize(20, dimensionPixelSize);
        this.tabPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(18, dimensionPixelSize);
        this.tabPaddingBottom = obtainStyledAttributes.getDimensionPixelSize(17, dimensionPixelSize);
        if (Operation$State.resolveBoolean(context2.getTheme(), R.attr.isMaterial3Theme, false)) {
            this.defaultTabTextAppearance = R.attr.textAppearanceTitleSmall;
        } else {
            this.defaultTabTextAppearance = R.attr.textAppearanceButton;
        }
        int resourceId = obtainStyledAttributes.getResourceId(24, R.style.TextAppearance_Design_Tab);
        this.tabTextAppearance = resourceId;
        int[] iArr = androidx.appcompat.R$styleable.TextAppearance;
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            this.tabTextSize = obtainStyledAttributes2.getDimensionPixelSize(0, 0);
            this.tabTextColors = OperationKt.getColorStateList(context2, obtainStyledAttributes2, 3);
            obtainStyledAttributes2.recycle();
            if (obtainStyledAttributes.hasValue(22)) {
                i = obtainStyledAttributes.getResourceId(22, resourceId);
                this.selectedTabTextAppearance = i;
            } else {
                i = -1;
            }
            int[] iArr2 = HorizontalScrollView.EMPTY_STATE_SET;
            int[] iArr3 = HorizontalScrollView.SELECTED_STATE_SET;
            if (i != -1) {
                obtainStyledAttributes2 = context2.obtainStyledAttributes(i, iArr);
                try {
                    this.selectedTabTextSize = obtainStyledAttributes2.getDimensionPixelSize(0, (int) r6);
                    ColorStateList colorStateList = OperationKt.getColorStateList(context2, obtainStyledAttributes2, 3);
                    if (colorStateList != null) {
                        this.tabTextColors = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{colorStateList.getColorForState(new int[]{android.R.attr.state_selected}, colorStateList.getDefaultColor()), this.tabTextColors.getDefaultColor()});
                    }
                } finally {
                }
            }
            if (obtainStyledAttributes.hasValue(25)) {
                this.tabTextColors = OperationKt.getColorStateList(context2, obtainStyledAttributes, 25);
            }
            if (obtainStyledAttributes.hasValue(23)) {
                this.tabTextColors = new ColorStateList(new int[][]{iArr3, iArr2}, new int[]{obtainStyledAttributes.getColor(23, 0), this.tabTextColors.getDefaultColor()});
            }
            this.tabIconTint = OperationKt.getColorStateList(context2, obtainStyledAttributes, 3);
            this.tabIconTintMode = ViewUtils.parseTintMode(obtainStyledAttributes.getInt(4, -1), null);
            this.tabRippleColorStateList = OperationKt.getColorStateList(context2, obtainStyledAttributes, 21);
            this.tabIndicatorAnimationDuration = obtainStyledAttributes.getInt(6, 300);
            this.tabIndicatorTimeInterpolator = DpKt.resolveThemeInterpolator(context2, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.requestedTabMinWidth = obtainStyledAttributes.getDimensionPixelSize(14, -1);
            this.requestedTabMaxWidth = obtainStyledAttributes.getDimensionPixelSize(13, -1);
            this.tabBackgroundResId = obtainStyledAttributes.getResourceId(0, 0);
            this.contentInsetStart = obtainStyledAttributes.getDimensionPixelSize(1, 0);
            this.mode = obtainStyledAttributes.getInt(15, 1);
            this.tabGravity = obtainStyledAttributes.getInt(2, 0);
            this.inlineLabel = obtainStyledAttributes.getBoolean(12, false);
            this.unboundedRipple = obtainStyledAttributes.getBoolean(26, false);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.tabTextMultiLineSize = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.scrollableTabMinWidth = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            applyModeAndGravity();
        } finally {
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.tabs;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Tab tab = (Tab) arrayList.get(i);
            if (tab != null && tab.icon != null && !TextUtils.isEmpty(tab.text)) {
                return !this.inlineLabel ? 72 : 48;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i = this.requestedTabMinWidth;
        if (i != -1) {
            return i;
        }
        int i2 = this.mode;
        if (i2 == 0 || i2 == 2) {
            return this.scrollableTabMinWidth;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.slidingTabIndicator.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i) {
        SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
        int childCount = slidingTabIndicator.getChildCount();
        if (i < childCount) {
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = slidingTabIndicator.getChildAt(i2);
                if ((i2 != i || childAt.isSelected()) && (i2 == i || !childAt.isSelected())) {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                } else {
                    childAt.setSelected(i2 == i);
                    childAt.setActivated(i2 == i);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).updateTab();
                    }
                }
                i2++;
            }
        }
    }

    public final void addOnTabSelectedListener(BaseOnTabSelectedListener baseOnTabSelectedListener) {
        ArrayList arrayList = this.selectedListeners;
        if (arrayList.contains(baseOnTabSelectedListener)) {
            return;
        }
        arrayList.add(baseOnTabSelectedListener);
    }

    public final void addTab(Tab tab, boolean z) {
        ArrayList arrayList = this.tabs;
        int size = arrayList.size();
        if (tab.parent != this) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Tab belongs to a different TabLayout.");
            return;
        }
        tab.position = size;
        arrayList.add(size, tab);
        int size2 = arrayList.size();
        int i = -1;
        for (int i2 = size + 1; i2 < size2; i2++) {
            if (((Tab) arrayList.get(i2)).position == this.indicatorPosition) {
                i = i2;
            }
            ((Tab) arrayList.get(i2)).position = i2;
        }
        this.indicatorPosition = i;
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        int i3 = tab.position;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.mode == 1 && this.tabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = RecyclerView.DECELERATION_RATE;
        }
        this.slidingTabIndicator.addView(tabView, i3, layoutParams);
        if (z) {
            tab.select();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        addViewInternal(view);
    }

    public final void addViewInternal(View view) {
        if (!(view instanceof TabItem)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Only TabItem instances can be added to TabLayout");
            return;
        }
        TabItem tabItem = (TabItem) view;
        Tab newTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            newTab.setText(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            newTab.icon = drawable;
            TabLayout tabLayout = newTab.parent;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                tabLayout.updateTabViews(true);
            }
            newTab.updateView();
        }
        int i = tabItem.customLayout;
        if (i != 0) {
            newTab.customView = LayoutInflater.from(newTab.view.getContext()).inflate(i, (ViewGroup) newTab.view, false);
            newTab.updateView();
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.contentDesc = tabItem.getContentDescription();
            newTab.updateView();
        }
        addTab(newTab, this.tabs.isEmpty());
    }

    public final void animateToTab(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && isLaidOut()) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            int childCount = slidingTabIndicator.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                if (slidingTabIndicator.getChildAt(i2).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int calculateScrollXForTab = calculateScrollXForTab(i, RecyclerView.DECELERATION_RATE);
            if (scrollX != calculateScrollXForTab) {
                ensureScrollAnimator();
                this.scrollAnimator.setIntValues(scrollX, calculateScrollXForTab);
                this.scrollAnimator.start();
            }
            ValueAnimator valueAnimator = slidingTabIndicator.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.indicatorPosition != i) {
                slidingTabIndicator.indicatorAnimator.cancel();
            }
            slidingTabIndicator.updateOrRecreateIndicatorAnimation(i, this.tabIndicatorAnimationDuration, true);
            return;
        }
        setScrollPosition(i, RecyclerView.DECELERATION_RATE, true, true, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
    
        if (r0 != 2) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void applyModeAndGravity() {
        /*
            r5 = this;
            int r0 = r5.mode
            r1 = 2
            r2 = 0
            if (r0 == 0) goto Lb
            if (r0 != r1) goto L9
            goto Lb
        L9:
            r0 = r2
            goto L14
        Lb:
            int r0 = r5.contentInsetStart
            int r3 = r5.tabPaddingStart
            int r0 = r0 - r3
            int r0 = java.lang.Math.max(r2, r0)
        L14:
            com.google.android.material.tabs.TabLayout$SlidingTabIndicator r3 = r5.slidingTabIndicator
            r3.setPaddingRelative(r0, r2, r2, r2)
            int r0 = r5.mode
            java.lang.String r2 = "TabLayout"
            r4 = 1
            if (r0 == 0) goto L32
            if (r0 == r4) goto L25
            if (r0 == r1) goto L25
            goto L4a
        L25:
            int r0 = r5.tabGravity
            if (r0 != r1) goto L2e
            java.lang.String r0 = "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"
            android.util.Log.w(r2, r0)
        L2e:
            r3.setGravity(r4)
            goto L4a
        L32:
            int r0 = r5.tabGravity
            if (r0 == 0) goto L3f
            if (r0 == r4) goto L3b
            if (r0 == r1) goto L44
            goto L4a
        L3b:
            r3.setGravity(r4)
            goto L4a
        L3f:
            java.lang.String r0 = "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"
            android.util.Log.w(r2, r0)
        L44:
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r3.setGravity(r0)
        L4a:
            r5.updateTabViews(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.tabs.TabLayout.applyModeAndGravity():void");
    }

    public final int calculateScrollXForTab(int i, float f) {
        SlidingTabIndicator slidingTabIndicator;
        View childAt;
        int i2 = this.mode;
        if ((i2 != 0 && i2 != 2) || (childAt = (slidingTabIndicator = this.slidingTabIndicator).getChildAt(i)) == null) {
            return 0;
        }
        int i3 = i + 1;
        View childAt2 = i3 < slidingTabIndicator.getChildCount() ? slidingTabIndicator.getChildAt(i3) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i4 = (int) ((width + width2) * 0.5f * f);
        return getLayoutDirection() == 0 ? left + i4 : left - i4;
    }

    public final void ensureScrollAnimator() {
        if (this.scrollAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.scrollAnimator = valueAnimator;
            valueAnimator.setInterpolator(this.tabIndicatorTimeInterpolator);
            this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
            this.scrollAnimator.addUpdateListener(new AnonymousClass1(0, this));
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        Tab tab = this.selectedTab;
        if (tab != null) {
            return tab.position;
        }
        return -1;
    }

    public final Tab getTabAt(int i) {
        if (i < 0 || i >= getTabCount()) {
            return null;
        }
        return (Tab) this.tabs.get(i);
    }

    public int getTabCount() {
        return this.tabs.size();
    }

    public int getTabGravity() {
        return this.tabGravity;
    }

    public ColorStateList getTabIconTint() {
        return this.tabIconTint;
    }

    public int getTabIndicatorAnimationMode() {
        return this.tabIndicatorAnimationMode;
    }

    public int getTabIndicatorGravity() {
        return this.tabIndicatorGravity;
    }

    public int getTabMaxWidth() {
        return this.tabMaxWidth;
    }

    public int getTabMode() {
        return this.mode;
    }

    public ColorStateList getTabRippleColor() {
        return this.tabRippleColorStateList;
    }

    public Drawable getTabSelectedIndicator() {
        return this.tabSelectedIndicator;
    }

    public ColorStateList getTabTextColors() {
        return this.tabTextColors;
    }

    public final Tab newTab() {
        Tab tab = (Tab) tabPool.acquire();
        if (tab == null) {
            tab = new Tab();
            tab.position = -1;
        }
        tab.parent = this;
        Pools$SimplePool pools$SimplePool = this.tabViewPool;
        TabView tabView = pools$SimplePool != null ? (TabView) pools$SimplePool.acquire() : null;
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabView.setContentDescription(tab.text);
        } else {
            tabView.setContentDescription(tab.contentDesc);
        }
        tab.view = tabView;
        return tab;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ResultKt.setParentAbsoluteElevation(this);
        getParent();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (i >= slidingTabIndicator.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i);
            if (childAt instanceof TabView) {
                TabView tabView = (TabView) childAt;
                int i2 = TabView.$r8$clinit;
                Drawable drawable = tabView.baseBackgroundDrawable;
                if (drawable != null) {
                    drawable.setBounds(tabView.getLeft(), tabView.getTop(), tabView.getRight(), tabView.getBottom());
                    tabView.baseBackgroundDrawable.draw(canvas);
                }
            }
            i++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) Extras.Key.obtain(1, getTabCount(), 1).f16default);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int round = Math.round(ViewUtils.dpToPx(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + round, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int i3 = this.requestedTabMaxWidth;
            if (i3 <= 0) {
                i3 = (int) (size - ViewUtils.dpToPx(getContext(), 56));
            }
            this.tabMaxWidth = i3;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i4 = this.mode;
            if (i4 != 0) {
                if (i4 == 1) {
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
                }
                if (i4 != 2) {
                    return;
                }
            }
            if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public final void removeAllTabs() {
        SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
        int childCount = slidingTabIndicator.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            TabView tabView = (TabView) slidingTabIndicator.getChildAt(childCount);
            slidingTabIndicator.removeViewAt(childCount);
            if (tabView != null) {
                tabView.setTab(null);
                tabView.setSelected(false);
                this.tabViewPool.mo741release((Object) tabView);
            }
            requestLayout();
        }
        Iterator it = this.tabs.iterator();
        while (it.hasNext()) {
            Tab tab = (Tab) it.next();
            it.remove();
            tab.parent = null;
            tab.view = null;
            tab.icon = null;
            tab.text = null;
            tab.contentDesc = null;
            tab.position = -1;
            tab.customView = null;
            tabPool.mo741release((Object) tab);
        }
        this.selectedTab = null;
    }

    public final void selectTab(Tab tab, boolean z) {
        TabLayout tabLayout;
        Tab tab2 = this.selectedTab;
        ArrayList arrayList = this.selectedListeners;
        if (tab2 == tab) {
            if (tab2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((BaseOnTabSelectedListener) arrayList.get(size)).onTabReselected(tab);
                }
                animateToTab(tab.position);
                return;
            }
            return;
        }
        int i = tab != null ? tab.position : -1;
        if (z) {
            if ((tab2 == null || tab2.position == -1) && i != -1) {
                tabLayout = this;
                tabLayout.setScrollPosition(i, RecyclerView.DECELERATION_RATE, true, true, true);
            } else {
                tabLayout = this;
                tabLayout.animateToTab(i);
            }
            if (i != -1) {
                tabLayout.setSelectedTabView(i);
            }
        } else {
            tabLayout = this;
        }
        tabLayout.selectedTab = tab;
        if (tab2 != null && tab2.parent != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((BaseOnTabSelectedListener) arrayList.get(size2)).onTabUnselected(tab2);
            }
        }
        if (tab != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((BaseOnTabSelectedListener) arrayList.get(size3)).onTabSelected(tab);
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ResultKt.setElevation(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.inlineLabel == z) {
            return;
        }
        this.inlineLabel = z;
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (i >= slidingTabIndicator.getChildCount()) {
                applyModeAndGravity();
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i);
            if (childAt instanceof TabView) {
                TabView tabView = (TabView) childAt;
                tabView.setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
                TextView textView = tabView.customTextView;
                if (textView == null && tabView.customIconView == null) {
                    tabView.updateTextAndIcon(tabView.textView, tabView.iconView, true);
                } else {
                    tabView.updateTextAndIcon(textView, tabView.customIconView, false);
                }
            }
            i++;
        }
    }

    public void setInlineLabelResource(int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.selectedListener;
        if (baseOnTabSelectedListener2 != null) {
            this.selectedListeners.remove(baseOnTabSelectedListener2);
        }
        this.selectedListener = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.scrollAnimator.addListener(animatorListener);
    }

    public final void setScrollPosition(int i, float f, boolean z, boolean z2, boolean z3) {
        float f2 = i + f;
        int round = Math.round(f2);
        if (round >= 0) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (round >= slidingTabIndicator.getChildCount()) {
                return;
            }
            if (z2) {
                TabLayout.this.indicatorPosition = Math.round(f2);
                ValueAnimator valueAnimator = slidingTabIndicator.indicatorAnimator;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    slidingTabIndicator.indicatorAnimator.cancel();
                }
                slidingTabIndicator.tweenIndicatorPosition(slidingTabIndicator.getChildAt(i), slidingTabIndicator.getChildAt(i + 1), f);
            }
            ValueAnimator valueAnimator2 = this.scrollAnimator;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.scrollAnimator.cancel();
            }
            int calculateScrollXForTab = calculateScrollXForTab(i, f);
            int scrollX = getScrollX();
            boolean z4 = (i < getSelectedTabPosition() && calculateScrollXForTab >= scrollX) || (i > getSelectedTabPosition() && calculateScrollXForTab <= scrollX) || i == getSelectedTabPosition();
            if (getLayoutDirection() == 1) {
                z4 = (i < getSelectedTabPosition() && calculateScrollXForTab <= scrollX) || (i > getSelectedTabPosition() && calculateScrollXForTab >= scrollX) || i == getSelectedTabPosition();
            }
            if (z4 || this.viewPagerScrollState == 1 || z3) {
                if (i < 0) {
                    calculateScrollXForTab = 0;
                }
                scrollTo(calculateScrollXForTab, 0);
            }
            if (z) {
                setSelectedTabView(round);
            }
        }
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable mutate = drawable.mutate();
        this.tabSelectedIndicator = mutate;
        int i = this.tabSelectedIndicatorColor;
        if (i != 0) {
            mutate.setTint(i);
        } else {
            mutate.setTintList(null);
        }
        int i2 = this.tabIndicatorHeight;
        if (i2 == -1) {
            i2 = this.tabSelectedIndicator.getIntrinsicHeight();
        }
        this.slidingTabIndicator.setSelectedIndicatorHeight(i2);
    }

    public void setSelectedTabIndicatorColor(int i) {
        this.tabSelectedIndicatorColor = i;
        Drawable drawable = this.tabSelectedIndicator;
        if (i != 0) {
            drawable.setTint(i);
        } else {
            drawable.setTintList(null);
        }
        updateTabViews(false);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.tabIndicatorGravity != i) {
            this.tabIndicatorGravity = i;
            this.slidingTabIndicator.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.tabIndicatorHeight = i;
        this.slidingTabIndicator.setSelectedIndicatorHeight(i);
    }

    public void setTabGravity(int i) {
        if (this.tabGravity != i) {
            this.tabGravity = i;
            applyModeAndGravity();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.tabIconTint != colorStateList) {
            this.tabIconTint = colorStateList;
            ArrayList arrayList = this.tabs;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Tab) arrayList.get(i)).updateView();
            }
        }
    }

    public void setTabIconTintResource(int i) {
        setTabIconTint(FileUtil.getColorStateList(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.tabIndicatorAnimationMode = i;
        if (i == 0) {
            this.tabIndicatorInterpolator = new AutoMigration_14_15(24);
            return;
        }
        int i2 = 1;
        if (i == 1) {
            this.tabIndicatorInterpolator = new FadeTabIndicatorInterpolator(i2);
        } else {
            if (i == 2) {
                this.tabIndicatorInterpolator = new FadeTabIndicatorInterpolator(0);
                return;
            }
            throw new IllegalArgumentException(i + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.tabIndicatorFullWidth = z;
        int i = SlidingTabIndicator.$r8$clinit;
        SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
        slidingTabIndicator.jumpIndicatorToPosition(TabLayout.this.getSelectedTabPosition());
        slidingTabIndicator.postInvalidateOnAnimation();
    }

    public void setTabMode(int i) {
        if (i != this.mode) {
            this.mode = i;
            applyModeAndGravity();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.tabRippleColorStateList == colorStateList) {
            return;
        }
        this.tabRippleColorStateList = colorStateList;
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (i >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i2 = TabView.$r8$clinit;
                ((TabView) childAt).updateBackgroundDrawable(context);
            }
            i++;
        }
    }

    public void setTabRippleColorResource(int i) {
        setTabRippleColor(FileUtil.getColorStateList(getContext(), i));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.tabTextColors != colorStateList) {
            this.tabTextColors = colorStateList;
            ArrayList arrayList = this.tabs;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((Tab) arrayList.get(i)).updateView();
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(PagerAdapter pagerAdapter) {
        removeAllTabs();
    }

    public void setUnboundedRipple(boolean z) {
        if (this.unboundedRipple == z) {
            return;
        }
        this.unboundedRipple = z;
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (i >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i);
            if (childAt instanceof TabView) {
                Context context = getContext();
                int i2 = TabView.$r8$clinit;
                ((TabView) childAt).updateBackgroundDrawable(context);
            }
            i++;
        }
    }

    public void setUnboundedRippleResource(int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        removeAllTabs();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    public final void updateTabViews(boolean z) {
        int i = 0;
        while (true) {
            SlidingTabIndicator slidingTabIndicator = this.slidingTabIndicator;
            if (i >= slidingTabIndicator.getChildCount()) {
                return;
            }
            View childAt = slidingTabIndicator.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.mode == 1 && this.tabGravity == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = RecyclerView.DECELERATION_RATE;
            }
            if (z) {
                childAt.requestLayout();
            }
            i++;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i) {
        addViewInternal(view);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    @Deprecated
    public void setOnTabSelectedListener(OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setSelectedTabIndicator(int i) {
        if (i != 0) {
            setSelectedTabIndicator(TuplesKt.getDrawable(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
