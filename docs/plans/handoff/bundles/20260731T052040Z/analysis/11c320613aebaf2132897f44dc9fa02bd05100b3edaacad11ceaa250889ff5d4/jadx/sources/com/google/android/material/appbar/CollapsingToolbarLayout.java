package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.Modifier;
import androidx.core.os.BundleKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import coil3.decode.StaticImageDecoderKt;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.math.MathKt;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CollapsingToolbarLayout extends FrameLayout {
    public final CollapsingTextHelper collapsingTextHelper;
    public boolean collapsingTitleEnabled;
    public Drawable contentScrim;
    public int currentOffset;
    public boolean drawCollapsingTitle;
    public View dummyView;
    public final ElevationOverlayProvider elevationOverlayProvider;
    public int expandedMarginBottom;
    public int expandedMarginEnd;
    public int expandedMarginStart;
    public int expandedMarginTop;
    public int extraMultilineHeight;
    public boolean extraMultilineHeightEnabled;
    public boolean forceApplySystemWindowInsetTop;
    public WindowInsetsCompat lastInsets;
    public OffsetUpdateListener onOffsetChangedListener;
    public boolean refreshToolbar;
    public int scrimAlpha;
    public long scrimAnimationDuration;
    public final TimeInterpolator scrimAnimationFadeInInterpolator;
    public final TimeInterpolator scrimAnimationFadeOutInterpolator;
    public ValueAnimator scrimAnimator;
    public int scrimVisibleHeightTrigger;
    public boolean scrimsAreShown;
    public Drawable statusBarScrim;
    public int titleCollapseMode;
    public final Rect tmpRect;
    public ViewGroup toolbar;
    public View toolbarDirectChild;
    public final int toolbarId;
    public int topInsetApplied;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class LayoutParams extends FrameLayout.LayoutParams {
        public int collapseMode;
        public float parallaxMult;
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class OffsetUpdateListener implements AppBarLayout.OnOffsetChangedListener {
        public OffsetUpdateListener() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
        public final void onOffsetChanged(int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            CollapsingTextHelper collapsingTextHelper = collapsingToolbarLayout.collapsingTextHelper;
            collapsingToolbarLayout.currentOffset = i;
            WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout.lastInsets;
            int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
            int childCount = collapsingToolbarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = collapsingToolbarLayout.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ViewOffsetHelper viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                int i3 = layoutParams.collapseMode;
                if (i3 == 1) {
                    viewOffsetHelper.setTopAndBottomOffset(Cookie.Companion.clamp(-i, 0, ((collapsingToolbarLayout.getHeight() - CollapsingToolbarLayout.getViewOffsetHelper(childAt).layoutTop) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).bottomMargin));
                } else if (i3 == 2) {
                    viewOffsetHelper.setTopAndBottomOffset(Math.round((-i) * layoutParams.parallaxMult));
                }
            }
            collapsingToolbarLayout.updateScrimVisibility();
            if (collapsingToolbarLayout.statusBarScrim != null && systemWindowInsetTop > 0) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                collapsingToolbarLayout.postInvalidateOnAnimation();
            }
            int height = collapsingToolbarLayout.getHeight();
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            int minimumHeight = (height - collapsingToolbarLayout.getMinimumHeight()) - systemWindowInsetTop;
            float scrimVisibleHeightTrigger = height - collapsingToolbarLayout.getScrimVisibleHeightTrigger();
            float f = minimumHeight;
            float min = Math.min(1.0f, scrimVisibleHeightTrigger / f);
            collapsingTextHelper.fadeModeStartFraction = min;
            collapsingTextHelper.fadeModeThresholdFraction = Modifier.CC.m(1.0f, min, 0.5f, min);
            collapsingTextHelper.currentOffsetY = collapsingToolbarLayout.currentOffset + minimumHeight;
            collapsingTextHelper.setExpansionFraction(Math.abs(i) / f);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface StaticLayoutBuilderConfigurer {
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, R.style.Widget_Design_CollapsingToolbar), attributeSet, i);
        int i2;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        this.topInsetApplied = 0;
        this.extraMultilineHeight = 0;
        Context context2 = getContext();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTextHelper = collapsingTextHelper;
        collapsingTextHelper.textSizeInterpolator = AnimationUtils.DECELERATE_INTERPOLATOR;
        collapsingTextHelper.recalculate(false);
        collapsingTextHelper.isRtlTextDirectionHeuristicsEnabled = false;
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        ViewUtils.checkCompatibleTheme(context2, attributeSet, i, R.style.Widget_Design_CollapsingToolbar);
        int[] iArr = R$styleable.CollapsingToolbarLayout;
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, i, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i, R.style.Widget_Design_CollapsingToolbar);
        int i3 = obtainStyledAttributes.getInt(4, 8388691);
        if (collapsingTextHelper.expandedTextGravity != i3) {
            collapsingTextHelper.expandedTextGravity = i3;
            collapsingTextHelper.recalculate(false);
        }
        collapsingTextHelper.setCollapsedTextGravity(obtainStyledAttributes.getInt(0, 8388627));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.expandedMarginBottom = dimensionPixelSize;
        this.expandedMarginEnd = dimensionPixelSize;
        this.expandedMarginTop = dimensionPixelSize;
        this.expandedMarginStart = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(8)) {
            this.expandedMarginStart = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        }
        if (obtainStyledAttributes.hasValue(7)) {
            this.expandedMarginEnd = obtainStyledAttributes.getDimensionPixelSize(7, 0);
        }
        if (obtainStyledAttributes.hasValue(9)) {
            this.expandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(9, 0);
        }
        if (obtainStyledAttributes.hasValue(6)) {
            this.expandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(6, 0);
        }
        this.collapsingTitleEnabled = obtainStyledAttributes.getBoolean(20, true);
        setTitle(obtainStyledAttributes.getText(18));
        collapsingTextHelper.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        collapsingTextHelper.setCollapsedTextAppearance(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(10)) {
            collapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(10, 0));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            collapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(1, 0));
        }
        if (obtainStyledAttributes.hasValue(22)) {
            int i4 = obtainStyledAttributes.getInt(22, -1);
            setTitleEllipsize(i4 != 0 ? i4 != 1 ? i4 != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.MIDDLE : TextUtils.TruncateAt.START);
        }
        if (obtainStyledAttributes.hasValue(11) && collapsingTextHelper.expandedTextColor != (colorStateList2 = BundleKt.getColorStateList(context2, obtainStyledAttributes, 11))) {
            collapsingTextHelper.expandedTextColor = colorStateList2;
            collapsingTextHelper.recalculate(false);
        }
        if (obtainStyledAttributes.hasValue(2) && collapsingTextHelper.collapsedTextColor != (colorStateList = BundleKt.getColorStateList(context2, obtainStyledAttributes, 2))) {
            collapsingTextHelper.collapsedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
        this.scrimVisibleHeightTrigger = obtainStyledAttributes.getDimensionPixelSize(16, -1);
        if (obtainStyledAttributes.hasValue(14) && (i2 = obtainStyledAttributes.getInt(14, 1)) != collapsingTextHelper.maxLines) {
            collapsingTextHelper.maxLines = i2;
            Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                collapsingTextHelper.expandedTitleTexture = null;
            }
            collapsingTextHelper.recalculate(false);
        }
        if (obtainStyledAttributes.hasValue(21)) {
            collapsingTextHelper.positionInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context2, obtainStyledAttributes.getResourceId(21, 0));
            collapsingTextHelper.recalculate(false);
        }
        this.scrimAnimationDuration = obtainStyledAttributes.getInt(15, 600);
        this.scrimAnimationFadeInInterpolator = Cookie.Companion.resolveThemeInterpolator(context2, R.attr.motionEasingStandardInterpolator, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        this.scrimAnimationFadeOutInterpolator = Cookie.Companion.resolveThemeInterpolator(context2, R.attr.motionEasingStandardInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        setContentScrim(obtainStyledAttributes.getDrawable(3));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(17));
        setTitleCollapseMode(obtainStyledAttributes.getInt(19, 0));
        this.toolbarId = obtainStyledAttributes.getResourceId(23, -1);
        this.forceApplySystemWindowInsetTop = obtainStyledAttributes.getBoolean(13, false);
        this.extraMultilineHeightEnabled = obtainStyledAttributes.getBoolean(12, false);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        ConnectionPool connectionPool = new ConnectionPool(this, 3);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, connectionPool);
    }

    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        Context context = getContext();
        TypedValue resolve = MathKt.resolve(context, R.attr.colorSurfaceContainer);
        ColorStateList colorStateList = null;
        if (resolve != null) {
            int i = resolve.resourceId;
            if (i != 0) {
                colorStateList = StaticImageDecoderKt.getColorStateList(context, i);
            } else {
                int i2 = resolve.data;
                if (i2 != 0) {
                    colorStateList = ColorStateList.valueOf(i2);
                }
            }
        }
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
        ElevationOverlayProvider elevationOverlayProvider = this.elevationOverlayProvider;
        return elevationOverlayProvider.compositeOverlayIfNeeded(dimension, elevationOverlayProvider.colorSurface);
    }

    public static ViewOffsetHelper getViewOffsetHelper(View view) {
        ViewOffsetHelper viewOffsetHelper = (ViewOffsetHelper) view.getTag(R.id.view_offset_helper);
        if (viewOffsetHelper != null) {
            return viewOffsetHelper;
        }
        ViewOffsetHelper viewOffsetHelper2 = new ViewOffsetHelper(view);
        view.setTag(R.id.view_offset_helper, viewOffsetHelper2);
        return viewOffsetHelper2;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        ensureToolbar();
        if (this.toolbar == null && (drawable = this.contentScrim) != null && this.scrimAlpha > 0) {
            drawable.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
        }
        if (this.collapsingTitleEnabled && this.drawCollapsingTitle) {
            ViewGroup viewGroup = this.toolbar;
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            if (viewGroup == null || this.contentScrim == null || this.scrimAlpha <= 0 || this.titleCollapseMode != 1 || collapsingTextHelper.expandedFraction >= collapsingTextHelper.fadeModeThresholdFraction) {
                collapsingTextHelper.draw(canvas);
            } else {
                int save = canvas.save();
                canvas.clipRect(this.contentScrim.getBounds(), Region.Op.DIFFERENCE);
                collapsingTextHelper.draw(canvas);
                canvas.restoreToCount(save);
            }
        }
        if (this.statusBarScrim == null || this.scrimAlpha <= 0) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.statusBarScrim.setBounds(0, -this.currentOffset, getWidth(), systemWindowInsetTop - this.currentOffset);
            this.statusBarScrim.mutate().setAlpha(this.scrimAlpha);
            this.statusBarScrim.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        boolean z;
        View view2;
        Drawable drawable = this.contentScrim;
        if (drawable == null || this.scrimAlpha <= 0 || ((view2 = this.toolbarDirectChild) == null || view2 == this ? view != this.toolbar : view != view2)) {
            z = false;
        } else {
            int width = getWidth();
            int height = getHeight();
            if (this.titleCollapseMode == 1 && view != null && this.collapsingTitleEnabled) {
                height = view.getBottom();
            }
            drawable.setBounds(0, 0, width, height);
            this.contentScrim.mutate().setAlpha(this.scrimAlpha);
            this.contentScrim.draw(canvas);
            z = true;
        }
        return super.drawChild(canvas, view, j) || z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        ColorStateList colorStateList;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.statusBarScrim;
        boolean z = false;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper != null) {
            collapsingTextHelper.state = drawableState;
            ColorStateList colorStateList2 = collapsingTextHelper.collapsedTextColor;
            if ((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = collapsingTextHelper.expandedTextColor) != null && colorStateList.isStateful())) {
                collapsingTextHelper.recalculate(false);
                z = true;
            }
            state |= z;
        }
        if (state) {
            invalidate();
        }
    }

    public final void ensureToolbar() {
        if (this.refreshToolbar) {
            ViewGroup viewGroup = null;
            this.toolbar = null;
            this.toolbarDirectChild = null;
            int i = this.toolbarId;
            if (i != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i);
                this.toolbar = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view = (View) parent;
                        }
                        parent = parent.getParent();
                        view = view;
                    }
                    this.toolbarDirectChild = view;
                }
            }
            if (this.toolbar == null) {
                int childCount = getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = getChildAt(i2);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                }
                this.toolbar = viewGroup;
            }
            updateDummyView();
            this.refreshToolbar = false;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.collapseMode = 0;
        layoutParams.parallaxMult = 0.5f;
        return layoutParams;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.collapseMode = 0;
        layoutParams.parallaxMult = 0.5f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.CollapsingToolbarLayout_Layout);
        layoutParams.collapseMode = obtainStyledAttributes.getInt(0, 0);
        layoutParams.parallaxMult = obtainStyledAttributes.getFloat(1, 0.5f);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTextHelper.collapsedTextGravity;
    }

    public float getCollapsedTitleTextSize() {
        return this.collapsingTextHelper.collapsedTextSize;
    }

    public Typeface getCollapsedTitleTypeface() {
        Typeface typeface = this.collapsingTextHelper.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public Drawable getContentScrim() {
        return this.contentScrim;
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTextHelper.expandedTextGravity;
    }

    public int getExpandedTitleMarginBottom() {
        return this.expandedMarginBottom;
    }

    public int getExpandedTitleMarginEnd() {
        return this.expandedMarginEnd;
    }

    public int getExpandedTitleMarginStart() {
        return this.expandedMarginStart;
    }

    public int getExpandedTitleMarginTop() {
        return this.expandedMarginTop;
    }

    public float getExpandedTitleTextSize() {
        return this.collapsingTextHelper.expandedTextSize;
    }

    public Typeface getExpandedTitleTypeface() {
        Typeface typeface = this.collapsingTextHelper.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getHyphenationFrequency() {
        return this.collapsingTextHelper.hyphenationFrequency;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.collapsingTextHelper.textLayout;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public float getLineSpacingAdd() {
        return this.collapsingTextHelper.textLayout.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.collapsingTextHelper.textLayout.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.collapsingTextHelper.maxLines;
    }

    public int getScrimAlpha() {
        return this.scrimAlpha;
    }

    public long getScrimAnimationDuration() {
        return this.scrimAnimationDuration;
    }

    public int getScrimVisibleHeightTrigger() {
        int i = this.scrimVisibleHeightTrigger;
        if (i >= 0) {
            return i + this.topInsetApplied + this.extraMultilineHeight;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    public CharSequence getTitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingTextHelper.text;
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.titleCollapseMode;
    }

    public TimeInterpolator getTitlePositionInterpolator() {
        return this.collapsingTextHelper.positionInterpolator;
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.collapsingTextHelper.titleTextEllipsize;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.titleCollapseMode == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            if (this.onOffsetChangedListener == null) {
                this.onOffsetChangedListener = new OffsetUpdateListener();
            }
            appBarLayout.addOnOffsetChangedListener(this.onOffsetChangedListener);
            requestApplyInsets();
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.collapsingTextHelper.maybeUpdateFontWeightAdjustment(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ArrayList arrayList;
        ViewParent parent = getParent();
        OffsetUpdateListener offsetUpdateListener = this.onOffsetChangedListener;
        if (offsetUpdateListener != null && (parent instanceof AppBarLayout) && (arrayList = ((AppBarLayout) parent).listeners) != null) {
            arrayList.remove(offsetUpdateListener);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        if (windowInsetsCompat != null) {
            int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < systemWindowInsetTop) {
                    childAt.offsetTopAndBottom(systemWindowInsetTop);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            ViewOffsetHelper viewOffsetHelper = getViewOffsetHelper(getChildAt(i6));
            View view = viewOffsetHelper.view;
            viewOffsetHelper.layoutTop = view.getTop();
            viewOffsetHelper.layoutLeft = view.getLeft();
        }
        updateTextBounds(false, i, i2, i3, i4);
        updateTitleFromToolbarIfNeeded();
        updateScrimVisibility();
        int childCount3 = getChildCount();
        for (int i7 = 0; i7 < childCount3; i7++) {
            getViewOffsetHelper(getChildAt(i7)).applyOffsets();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r10, int r11) {
        /*
            r9 = this;
            r9.ensureToolbar()
            super.onMeasure(r10, r11)
            int r11 = android.view.View.MeasureSpec.getMode(r11)
            androidx.core.view.WindowInsetsCompat r0 = r9.lastInsets
            if (r0 == 0) goto L13
            int r0 = r0.getSystemWindowInsetTop()
            goto L14
        L13:
            r0 = 0
        L14:
            r1 = 1073741824(0x40000000, float:2.0)
            if (r11 == 0) goto L1c
            boolean r11 = r9.forceApplySystemWindowInsetTop
            if (r11 == 0) goto L2c
        L1c:
            if (r0 <= 0) goto L2c
            r9.topInsetApplied = r0
            int r11 = r9.getMeasuredHeight()
            int r11 = r11 + r0
            int r11 = android.view.View.MeasureSpec.makeMeasureSpec(r11, r1)
            super.onMeasure(r10, r11)
        L2c:
            boolean r11 = r9.extraMultilineHeightEnabled
            if (r11 == 0) goto L7f
            com.google.android.material.internal.CollapsingTextHelper r11 = r9.collapsingTextHelper
            int r0 = r11.maxLines
            r2 = 1
            if (r0 <= r2) goto L7f
            r9.updateTitleFromToolbarIfNeeded()
            int r7 = r9.getMeasuredWidth()
            int r8 = r9.getMeasuredHeight()
            r4 = 1
            r5 = 0
            r6 = 0
            r3 = r9
            r3.updateTextBounds(r4, r5, r6, r7, r8)
            int r9 = r11.expandedLineCount
            if (r9 <= r2) goto L80
            android.text.TextPaint r0 = r11.tmpPaint
            float r4 = r11.expandedTextSize
            r0.setTextSize(r4)
            android.graphics.Typeface r4 = r11.expandedTypeface
            r0.setTypeface(r4)
            float r11 = r11.expandedLetterSpacing
            r0.setLetterSpacing(r11)
            float r11 = r0.ascent()
            float r11 = -r11
            float r0 = r0.descent()
            float r0 = r0 + r11
            int r11 = java.lang.Math.round(r0)
            int r9 = r9 - r2
            int r9 = r9 * r11
            r3.extraMultilineHeight = r9
            int r9 = r3.getMeasuredHeight()
            int r11 = r3.extraMultilineHeight
            int r9 = r9 + r11
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r1)
            super.onMeasure(r10, r9)
            goto L80
        L7f:
            r3 = r9
        L80:
            android.view.ViewGroup r9 = r3.toolbar
            if (r9 == 0) goto Lc4
            android.view.View r10 = r3.toolbarDirectChild
            if (r10 == 0) goto La8
            if (r10 != r3) goto L8b
            goto La8
        L8b:
            android.view.ViewGroup$LayoutParams r9 = r10.getLayoutParams()
            boolean r11 = r9 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r11 == 0) goto La0
            android.view.ViewGroup$MarginLayoutParams r9 = (android.view.ViewGroup.MarginLayoutParams) r9
            int r10 = r10.getMeasuredHeight()
            int r11 = r9.topMargin
            int r10 = r10 + r11
            int r9 = r9.bottomMargin
            int r10 = r10 + r9
            goto La4
        La0:
            int r10 = r10.getMeasuredHeight()
        La4:
            r3.setMinimumHeight(r10)
            return
        La8:
            android.view.ViewGroup$LayoutParams r10 = r9.getLayoutParams()
            boolean r11 = r10 instanceof android.view.ViewGroup.MarginLayoutParams
            if (r11 == 0) goto Lbd
            android.view.ViewGroup$MarginLayoutParams r10 = (android.view.ViewGroup.MarginLayoutParams) r10
            int r9 = r9.getMeasuredHeight()
            int r11 = r10.topMargin
            int r9 = r9 + r11
            int r10 = r10.bottomMargin
            int r9 = r9 + r10
            goto Lc1
        Lbd:
            int r9 = r9.getMeasuredHeight()
        Lc1:
            r3.setMinimumHeight(r9)
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Drawable drawable = this.contentScrim;
        if (drawable != null) {
            ViewGroup viewGroup = this.toolbar;
            if (this.titleCollapseMode == 1 && viewGroup != null && this.collapsingTitleEnabled) {
                i2 = viewGroup.getBottom();
            }
            drawable.setBounds(0, 0, i, i2);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.collapsingTextHelper.setCollapsedTextGravity(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.collapsingTextHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.collapsedTextColor != colorStateList) {
            collapsingTextHelper.collapsedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setCollapsedTitleTextSize(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.collapsedTextSize != f) {
            collapsingTextHelper.collapsedTextSize = f;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.setCollapsedTypefaceInternal(typeface)) {
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setContentScrim(Drawable drawable) {
        Drawable drawable2 = this.contentScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.contentScrim = mutate;
            if (mutate != null) {
                int width = getWidth();
                int height = getHeight();
                ViewGroup viewGroup = this.toolbar;
                if (this.titleCollapseMode == 1 && viewGroup != null && this.collapsingTitleEnabled) {
                    height = viewGroup.getBottom();
                }
                mutate.setBounds(0, 0, width, height);
                this.contentScrim.setCallback(this);
                this.contentScrim.setAlpha(this.scrimAlpha);
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(getContext().getDrawable(i));
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.expandedTextGravity != i) {
            collapsingTextHelper.expandedTextGravity = i;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedTitleMarginBottom(int i) {
        this.expandedMarginBottom = i;
        requestLayout();
    }

    public void setExpandedTitleMarginEnd(int i) {
        this.expandedMarginEnd = i;
        requestLayout();
    }

    public void setExpandedTitleMarginStart(int i) {
        this.expandedMarginStart = i;
        requestLayout();
    }

    public void setExpandedTitleMarginTop(int i) {
        this.expandedMarginTop = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.collapsingTextHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.expandedTextColor != colorStateList) {
            collapsingTextHelper.expandedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedTitleTextSize(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.expandedTextSize != f) {
            collapsingTextHelper.expandedTextSize = f;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (collapsingTextHelper.setExpandedTypefaceInternal(typeface)) {
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExtraMultilineHeightEnabled(boolean z) {
        this.extraMultilineHeightEnabled = z;
    }

    public void setForceApplySystemWindowInsetTop(boolean z) {
        this.forceApplySystemWindowInsetTop = z;
    }

    public void setHyphenationFrequency(int i) {
        this.collapsingTextHelper.hyphenationFrequency = i;
    }

    public void setLineSpacingAdd(float f) {
        this.collapsingTextHelper.lineSpacingAdd = f;
    }

    public void setLineSpacingMultiplier(float f) {
        this.collapsingTextHelper.lineSpacingMultiplier = f;
    }

    public void setMaxLines(int i) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (i != collapsingTextHelper.maxLines) {
            collapsingTextHelper.maxLines = i;
            Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                collapsingTextHelper.expandedTitleTexture = null;
            }
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.collapsingTextHelper.isRtlTextDirectionHeuristicsEnabled = z;
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.scrimAlpha) {
            if (this.contentScrim != null && (viewGroup = this.toolbar) != null) {
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                viewGroup.postInvalidateOnAnimation();
            }
            this.scrimAlpha = i;
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            postInvalidateOnAnimation();
        }
    }

    public void setScrimAnimationDuration(long j) {
        this.scrimAnimationDuration = j;
    }

    public void setScrimVisibleHeightTrigger(int i) {
        if (this.scrimVisibleHeightTrigger != i) {
            this.scrimVisibleHeightTrigger = i;
            updateScrimVisibility();
        }
    }

    public void setScrimsShown(boolean z) {
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        boolean z2 = isLaidOut() && !isInEditMode();
        if (this.scrimsAreShown != z) {
            if (z2) {
                int i = z ? 255 : 0;
                ensureToolbar();
                ValueAnimator valueAnimator = this.scrimAnimator;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.scrimAnimator = valueAnimator2;
                    valueAnimator2.setInterpolator(i > this.scrimAlpha ? this.scrimAnimationFadeInInterpolator : this.scrimAnimationFadeOutInterpolator);
                    this.scrimAnimator.addUpdateListener(new TabLayout.AnonymousClass1(this, 1));
                } else if (valueAnimator.isRunning()) {
                    this.scrimAnimator.cancel();
                }
                this.scrimAnimator.setDuration(this.scrimAnimationDuration);
                this.scrimAnimator.setIntValues(this.scrimAlpha, i);
                this.scrimAnimator.start();
            } else {
                setScrimAlpha(z ? 255 : 0);
            }
            this.scrimsAreShown = z;
        }
    }

    public void setStaticLayoutBuilderConfigurer(StaticLayoutBuilderConfigurer staticLayoutBuilderConfigurer) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (staticLayoutBuilderConfigurer != null) {
            collapsingTextHelper.recalculate(true);
        } else {
            collapsingTextHelper.getClass();
        }
    }

    public void setStatusBarScrim(Drawable drawable) {
        Drawable drawable2 = this.statusBarScrim;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.statusBarScrim = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.statusBarScrim.setState(getDrawableState());
                }
                Drawable drawable3 = this.statusBarScrim;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                drawable3.setLayoutDirection(getLayoutDirection());
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(getContext().getDrawable(i));
    }

    public void setTitle(CharSequence charSequence) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        if (charSequence == null || !TextUtils.equals(collapsingTextHelper.text, charSequence)) {
            collapsingTextHelper.text = charSequence;
            collapsingTextHelper.textToDraw = null;
            Bitmap bitmap = collapsingTextHelper.expandedTitleTexture;
            if (bitmap != null) {
                bitmap.recycle();
                collapsingTextHelper.expandedTitleTexture = null;
            }
            collapsingTextHelper.recalculate(false);
        }
        setContentDescription(getTitle());
    }

    public void setTitleCollapseMode(int i) {
        this.titleCollapseMode = i;
        boolean z = i == 1;
        this.collapsingTextHelper.fadeModeEnabled = z;
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.titleCollapseMode == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
        }
        if (z && this.contentScrim == null) {
            setContentScrimColor(getDefaultContentScrimColorForTitleCollapseFadeMode());
        }
    }

    public void setTitleEllipsize(TextUtils.TruncateAt truncateAt) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        collapsingTextHelper.titleTextEllipsize = truncateAt;
        collapsingTextHelper.recalculate(false);
    }

    public void setTitleEnabled(boolean z) {
        if (z != this.collapsingTitleEnabled) {
            this.collapsingTitleEnabled = z;
            setContentDescription(getTitle());
            updateDummyView();
            requestLayout();
        }
    }

    public void setTitlePositionInterpolator(TimeInterpolator timeInterpolator) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
        collapsingTextHelper.positionInterpolator = timeInterpolator;
        collapsingTextHelper.recalculate(false);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.statusBarScrim;
        if (drawable != null && drawable.isVisible() != z) {
            this.statusBarScrim.setVisible(z, false);
        }
        Drawable drawable2 = this.contentScrim;
        if (drawable2 == null || drawable2.isVisible() == z) {
            return;
        }
        this.contentScrim.setVisible(z, false);
    }

    public final void updateDummyView() {
        View view;
        if (!this.collapsingTitleEnabled && (view = this.dummyView) != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.dummyView);
            }
        }
        if (!this.collapsingTitleEnabled || this.toolbar == null) {
            return;
        }
        if (this.dummyView == null) {
            this.dummyView = new View(getContext());
        }
        if (this.dummyView.getParent() == null) {
            this.toolbar.addView(this.dummyView, -1, -1);
        }
    }

    public final void updateScrimVisibility() {
        if (this.contentScrim == null && this.statusBarScrim == null) {
            return;
        }
        setScrimsShown(getHeight() + this.currentOffset < getScrimVisibleHeightTrigger());
    }

    public final void updateTextBounds(boolean z, int i, int i2, int i3, int i4) {
        View view;
        int i5;
        int i6;
        int i7;
        if (!this.collapsingTitleEnabled || (view = this.dummyView) == null) {
            return;
        }
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        int i8 = 0;
        boolean z2 = view.isAttachedToWindow() && this.dummyView.getVisibility() == 0;
        this.drawCollapsingTitle = z2;
        if (z2 || z) {
            boolean z3 = getLayoutDirection() == 1;
            View view2 = this.toolbarDirectChild;
            if (view2 == null) {
                view2 = this.toolbar;
            }
            int height = ((getHeight() - getViewOffsetHelper(view2).layoutTop) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view2.getLayoutParams())).bottomMargin;
            View view3 = this.dummyView;
            Rect rect = this.tmpRect;
            DescendantOffsetUtils.getDescendantRect(this, view3, rect);
            ViewGroup viewGroup = this.toolbar;
            if (viewGroup instanceof Toolbar) {
                Toolbar toolbar = (Toolbar) viewGroup;
                i8 = toolbar.getTitleMarginStart();
                i6 = toolbar.getTitleMarginEnd();
                i7 = toolbar.getTitleMarginTop();
                i5 = toolbar.getTitleMarginBottom();
            } else if (Build.VERSION.SDK_INT < 24 || !(viewGroup instanceof android.widget.Toolbar)) {
                i5 = 0;
                i6 = 0;
                i7 = 0;
            } else {
                android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                i8 = toolbar2.getTitleMarginStart();
                i6 = toolbar2.getTitleMarginEnd();
                i7 = toolbar2.getTitleMarginTop();
                i5 = toolbar2.getTitleMarginBottom();
            }
            int i9 = rect.left + (z3 ? i6 : i8);
            int i10 = rect.top + height + i7;
            int i11 = rect.right;
            if (!z3) {
                i8 = i6;
            }
            int i12 = i11 - i8;
            int i13 = (rect.bottom + height) - i5;
            CollapsingTextHelper collapsingTextHelper = this.collapsingTextHelper;
            Rect rect2 = collapsingTextHelper.collapsedBounds;
            if (rect2.left != i9 || rect2.top != i10 || rect2.right != i12 || rect2.bottom != i13) {
                rect2.set(i9, i10, i12, i13);
                collapsingTextHelper.boundsChanged = true;
            }
            int i14 = z3 ? this.expandedMarginEnd : this.expandedMarginStart;
            int i15 = rect.top + this.expandedMarginTop;
            int i16 = (i3 - i) - (z3 ? this.expandedMarginStart : this.expandedMarginEnd);
            int i17 = (i4 - i2) - this.expandedMarginBottom;
            Rect rect3 = collapsingTextHelper.expandedBounds;
            if (rect3.left != i14 || rect3.top != i15 || rect3.right != i16 || rect3.bottom != i17) {
                rect3.set(i14, i15, i16, i17);
                collapsingTextHelper.boundsChanged = true;
            }
            collapsingTextHelper.recalculate(z);
        }
    }

    public final void updateTitleFromToolbarIfNeeded() {
        if (this.toolbar != null && this.collapsingTitleEnabled && TextUtils.isEmpty(this.collapsingTextHelper.text)) {
            ViewGroup viewGroup = this.toolbar;
            setTitle(viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).getTitle() : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.contentScrim || drawable == this.statusBarScrim;
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.collapseMode = 0;
        layoutParams.parallaxMult = 0.5f;
        return layoutParams;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams(layoutParams);
        layoutParams2.collapseMode = 0;
        layoutParams2.parallaxMult = 0.5f;
        return layoutParams2;
    }
}
