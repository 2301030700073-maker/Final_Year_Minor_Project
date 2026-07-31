package com.google.android.material.appbar;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.compose.ui.unit.DpKt;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import coil3.memory.MemoryCacheService;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.WeakHashMap;
import org.wikipedia.R;
import org.wikipedia.readinglist.ReadingListFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {
    public final int collapsedTitleGravityMode;
    public final CollapsingTextHelper collapsingSubtitleHelper;
    public boolean collapsingTitleEnabled;
    public final CollapsingTextHelper collapsingTitleHelper;
    public Drawable contentScrim;
    public int currentOffset;
    public boolean drawCollapsingTitle;
    public View dummyView;
    public final ElevationOverlayProvider elevationOverlayProvider;
    public int expandedMarginBottom;
    public int expandedMarginEnd;
    public int expandedMarginStart;
    public int expandedMarginTop;
    public int expandedTitleSpacing;
    public int extraHeightForTitles;
    public boolean extraMultilineHeightEnabled;
    public int extraMultilineSubtitleHeight;
    public int extraMultilineTitleHeight;
    public boolean forceApplySystemWindowInsetTop;
    public WindowInsetsCompat lastInsets;
    public ReadingListFragment.AppBarListener onOffsetChangedListener;
    public boolean refreshToolbar;
    public int screenOrientation;
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LayoutParams extends FrameLayout.LayoutParams {
        public int collapseMode;
        public float parallaxMult;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface StaticLayoutBuilderConfigurer extends com.google.android.material.internal.StaticLayoutBuilderConfigurer {
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, R.attr.collapsingToolbarLayoutStyle, R.style.Widget_Design_CollapsingToolbar), attributeSet, R.attr.collapsingToolbarLayoutStyle);
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.refreshToolbar = true;
        this.tmpRect = new Rect();
        this.scrimVisibleHeightTrigger = -1;
        this.topInsetApplied = 0;
        this.extraMultilineTitleHeight = 0;
        this.extraMultilineSubtitleHeight = 0;
        this.extraHeightForTitles = 0;
        Context context2 = getContext();
        this.screenOrientation = getResources().getConfiguration().orientation;
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.collapsingTitleHelper = collapsingTextHelper;
        DecelerateInterpolator decelerateInterpolator = AnimationUtils.DECELERATE_INTERPOLATOR;
        collapsingTextHelper.textSizeInterpolator = decelerateInterpolator;
        collapsingTextHelper.recalculate(false);
        collapsingTextHelper.isRtlTextDirectionHeuristicsEnabled = false;
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        ViewUtils.checkCompatibleTheme(context2, attributeSet, R.attr.collapsingToolbarLayoutStyle, R.style.Widget_Design_CollapsingToolbar);
        int[] iArr = R$styleable.CollapsingToolbarLayout;
        ViewUtils.checkTextAppearance(context2, attributeSet, iArr, R.attr.collapsingToolbarLayoutStyle, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, R.attr.collapsingToolbarLayoutStyle, R.style.Widget_Design_CollapsingToolbar);
        int i = obtainStyledAttributes.getInt(9, 8388691);
        int i2 = obtainStyledAttributes.getInt(2, 8388627);
        this.collapsedTitleGravityMode = obtainStyledAttributes.getInt(3, 1);
        collapsingTextHelper.setExpandedTextGravity(i);
        collapsingTextHelper.setCollapsedTextGravity(i2);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(10, 0);
        this.expandedMarginBottom = dimensionPixelSize;
        this.expandedMarginEnd = dimensionPixelSize;
        this.expandedMarginTop = dimensionPixelSize;
        this.expandedMarginStart = dimensionPixelSize;
        if (obtainStyledAttributes.hasValue(13)) {
            this.expandedMarginStart = obtainStyledAttributes.getDimensionPixelSize(13, 0);
        }
        if (obtainStyledAttributes.hasValue(12)) {
            this.expandedMarginEnd = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        }
        if (obtainStyledAttributes.hasValue(14)) {
            this.expandedMarginTop = obtainStyledAttributes.getDimensionPixelSize(14, 0);
        }
        if (obtainStyledAttributes.hasValue(11)) {
            this.expandedMarginBottom = obtainStyledAttributes.getDimensionPixelSize(11, 0);
        }
        if (obtainStyledAttributes.hasValue(15)) {
            this.expandedTitleSpacing = obtainStyledAttributes.getDimensionPixelSize(15, 0);
        }
        this.collapsingTitleEnabled = obtainStyledAttributes.getBoolean(28, true);
        setTitle(obtainStyledAttributes.getText(26));
        collapsingTextHelper.setExpandedTextAppearance(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        collapsingTextHelper.setCollapsedTextAppearance(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (obtainStyledAttributes.hasValue(16)) {
            collapsingTextHelper.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(16, 0));
        }
        if (obtainStyledAttributes.hasValue(4)) {
            collapsingTextHelper.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(4, 0));
        }
        if (obtainStyledAttributes.hasValue(31)) {
            int i3 = obtainStyledAttributes.getInt(31, -1);
            setTitleEllipsize(i3 != 0 ? i3 != 1 ? i3 != 3 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.MARQUEE : TextUtils.TruncateAt.MIDDLE : TextUtils.TruncateAt.START);
        }
        if (obtainStyledAttributes.hasValue(17) && collapsingTextHelper.expandedTextColor != (colorStateList2 = OperationKt.getColorStateList(context2, obtainStyledAttributes, 17))) {
            collapsingTextHelper.expandedTextColor = colorStateList2;
            collapsingTextHelper.recalculate(false);
        }
        if (obtainStyledAttributes.hasValue(5)) {
            collapsingTextHelper.setCollapsedTextColor(OperationKt.getColorStateList(context2, obtainStyledAttributes, 5));
        }
        this.scrimVisibleHeightTrigger = obtainStyledAttributes.getDimensionPixelSize(22, -1);
        if (obtainStyledAttributes.hasValue(29)) {
            collapsingTextHelper.setExpandedMaxLines(obtainStyledAttributes.getInt(29, 1));
        } else if (obtainStyledAttributes.hasValue(20)) {
            collapsingTextHelper.setExpandedMaxLines(obtainStyledAttributes.getInt(20, 1));
        }
        if (obtainStyledAttributes.hasValue(30)) {
            collapsingTextHelper.positionInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context2, obtainStyledAttributes.getResourceId(30, 0));
            collapsingTextHelper.recalculate(false);
        }
        CollapsingTextHelper collapsingTextHelper2 = new CollapsingTextHelper(this);
        this.collapsingSubtitleHelper = collapsingTextHelper2;
        collapsingTextHelper2.textSizeInterpolator = decelerateInterpolator;
        collapsingTextHelper2.recalculate(false);
        collapsingTextHelper2.isRtlTextDirectionHeuristicsEnabled = false;
        if (obtainStyledAttributes.hasValue(24)) {
            setSubtitle(obtainStyledAttributes.getText(24));
        }
        collapsingTextHelper2.setExpandedTextGravity(i);
        collapsingTextHelper2.setCollapsedTextGravity(i2);
        collapsingTextHelper2.setExpandedTextAppearance(R.style.TextAppearance_AppCompat_Headline);
        collapsingTextHelper2.setCollapsedTextAppearance(R.style.TextAppearance_AppCompat_Widget_ActionBar_Subtitle);
        if (obtainStyledAttributes.hasValue(7)) {
            collapsingTextHelper2.setExpandedTextAppearance(obtainStyledAttributes.getResourceId(7, 0));
        }
        if (obtainStyledAttributes.hasValue(0)) {
            collapsingTextHelper2.setCollapsedTextAppearance(obtainStyledAttributes.getResourceId(0, 0));
        }
        if (obtainStyledAttributes.hasValue(8) && collapsingTextHelper2.expandedTextColor != (colorStateList = OperationKt.getColorStateList(context2, obtainStyledAttributes, 8))) {
            collapsingTextHelper2.expandedTextColor = colorStateList;
            collapsingTextHelper2.recalculate(false);
        }
        if (obtainStyledAttributes.hasValue(1)) {
            collapsingTextHelper2.setCollapsedTextColor(OperationKt.getColorStateList(context2, obtainStyledAttributes, 1));
        }
        if (obtainStyledAttributes.hasValue(25)) {
            collapsingTextHelper2.setExpandedMaxLines(obtainStyledAttributes.getInt(25, 1));
        }
        if (obtainStyledAttributes.hasValue(30)) {
            collapsingTextHelper2.positionInterpolator = android.view.animation.AnimationUtils.loadInterpolator(context2, obtainStyledAttributes.getResourceId(30, 0));
            collapsingTextHelper2.recalculate(false);
        }
        this.scrimAnimationDuration = obtainStyledAttributes.getInt(21, 600);
        this.scrimAnimationFadeInInterpolator = DpKt.resolveThemeInterpolator(context2, R.attr.motionEasingStandardInterpolator, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        this.scrimAnimationFadeOutInterpolator = DpKt.resolveThemeInterpolator(context2, R.attr.motionEasingStandardInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        setContentScrim(obtainStyledAttributes.getDrawable(6));
        setStatusBarScrim(obtainStyledAttributes.getDrawable(23));
        setTitleCollapseMode(obtainStyledAttributes.getInt(27, 0));
        this.toolbarId = obtainStyledAttributes.getResourceId(32, -1);
        this.forceApplySystemWindowInsetTop = obtainStyledAttributes.getBoolean(19, false);
        this.extraMultilineHeightEnabled = obtainStyledAttributes.getBoolean(18, false);
        obtainStyledAttributes.recycle();
        setWillNotDraw(false);
        MemoryCacheService memoryCacheService = new MemoryCacheService(18, this);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(this, memoryCacheService);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int getDefaultContentScrimColorForTitleCollapseFadeMode() {
        /*
            r3 = this;
            android.content.Context r0 = r3.getContext()
            android.content.res.Resources$Theme r1 = r0.getTheme()
            r2 = 2130968913(0x7f040151, float:1.7546493E38)
            android.util.TypedValue r1 = androidx.work.Operation$State.resolve(r1, r2)
            if (r1 != 0) goto L12
            goto L24
        L12:
            int r2 = r1.resourceId
            if (r2 == 0) goto L1b
            android.content.res.ColorStateList r0 = org.wikipedia.util.FileUtil.getColorStateList(r0, r2)
            goto L25
        L1b:
            int r0 = r1.data
            if (r0 == 0) goto L24
            android.content.res.ColorStateList r0 = android.content.res.ColorStateList.valueOf(r0)
            goto L25
        L24:
            r0 = 0
        L25:
            if (r0 == 0) goto L2c
            int r3 = r0.getDefaultColor()
            return r3
        L2c:
            android.content.res.Resources r0 = r3.getResources()
            r1 = 2131165292(0x7f07006c, float:1.7944797E38)
            float r0 = r0.getDimension(r1)
            com.google.android.material.elevation.ElevationOverlayProvider r3 = r3.elevationOverlayProvider
            int r1 = r3.colorSurface
            int r3 = r3.compositeOverlayIfNeeded(r1, r0)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.getDefaultContentScrimColorForTitleCollapseFadeMode():int");
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
            CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
            CollapsingTextHelper collapsingTextHelper2 = this.collapsingTitleHelper;
            if (viewGroup == null || this.contentScrim == null || this.scrimAlpha <= 0 || this.titleCollapseMode != 1 || collapsingTextHelper2.expandedFraction >= collapsingTextHelper2.fadeModeThresholdFraction) {
                collapsingTextHelper2.draw(canvas);
                collapsingTextHelper.draw(canvas);
            } else {
                int save = canvas.save();
                canvas.clipRect(this.contentScrim.getBounds(), Region.Op.DIFFERENCE);
                collapsingTextHelper2.draw(canvas);
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
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
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

    public float getCollapsedSubtitleTextSize() {
        return this.collapsingSubtitleHelper.collapsedTextSize;
    }

    public Typeface getCollapsedSubtitleTypeface() {
        Typeface typeface = this.collapsingSubtitleHelper.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getCollapsedTitleGravity() {
        return this.collapsingTitleHelper.collapsedTextGravity;
    }

    public float getCollapsedTitleTextSize() {
        return this.collapsingTitleHelper.collapsedTextSize;
    }

    public Typeface getCollapsedTitleTypeface() {
        Typeface typeface = this.collapsingTitleHelper.collapsedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public Drawable getContentScrim() {
        return this.contentScrim;
    }

    public float getExpandedSubtitleTextSize() {
        return this.collapsingSubtitleHelper.expandedTextSize;
    }

    public Typeface getExpandedSubtitleTypeface() {
        Typeface typeface = this.collapsingSubtitleHelper.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getExpandedTitleGravity() {
        return this.collapsingTitleHelper.expandedTextGravity;
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

    public int getExpandedTitleSpacing() {
        return this.expandedTitleSpacing;
    }

    public float getExpandedTitleTextSize() {
        return this.collapsingTitleHelper.expandedTextSize;
    }

    public Typeface getExpandedTitleTypeface() {
        Typeface typeface = this.collapsingTitleHelper.expandedTypeface;
        return typeface != null ? typeface : Typeface.DEFAULT;
    }

    public int getHyphenationFrequency() {
        return this.collapsingTitleHelper.hyphenationFrequency;
    }

    public int getLineCount() {
        StaticLayout staticLayout = this.collapsingTitleHelper.textLayout;
        if (staticLayout != null) {
            return staticLayout.getLineCount();
        }
        return 0;
    }

    public float getLineSpacingAdd() {
        return this.collapsingTitleHelper.textLayout.getSpacingAdd();
    }

    public float getLineSpacingMultiplier() {
        return this.collapsingTitleHelper.textLayout.getSpacingMultiplier();
    }

    public int getMaxLines() {
        return this.collapsingTitleHelper.expandedMaxLines;
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
            return i + this.topInsetApplied + this.extraMultilineTitleHeight + this.extraMultilineSubtitleHeight + this.extraHeightForTitles;
        }
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        int minimumHeight = getMinimumHeight();
        return minimumHeight > 0 ? Math.min((minimumHeight * 2) + systemWindowInsetTop, getHeight()) : getHeight() / 3;
    }

    public Drawable getStatusBarScrim() {
        return this.statusBarScrim;
    }

    public CharSequence getSubtitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingSubtitleHelper.text;
        }
        return null;
    }

    public CharSequence getTitle() {
        if (this.collapsingTitleEnabled) {
            return this.collapsingTitleHelper.text;
        }
        return null;
    }

    public int getTitleCollapseMode() {
        return this.titleCollapseMode;
    }

    public TimeInterpolator getTitlePositionInterpolator() {
        return this.collapsingTitleHelper.positionInterpolator;
    }

    public TextUtils.TruncateAt getTitleTextEllipsize() {
        return this.collapsingTitleHelper.titleTextEllipsize;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            int i = 1;
            if (this.titleCollapseMode == 1) {
                appBarLayout.setLiftOnScroll(false);
            }
            setFitsSystemWindows(appBarLayout.getFitsSystemWindows());
            ReadingListFragment.AppBarListener appBarListener = this.onOffsetChangedListener;
            if (appBarListener == null) {
                appBarListener = new ReadingListFragment.AppBarListener(i, this);
                this.onOffsetChangedListener = appBarListener;
            }
            appBarLayout.addOnOffsetChangedListener(appBarListener);
            requestApplyInsets();
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        collapsingTextHelper.maybeUpdateFontWeightAdjustment(configuration);
        if (this.screenOrientation != configuration.orientation && this.extraMultilineHeightEnabled && collapsingTextHelper.expandedFraction == 1.0f) {
            ViewParent parent = getParent();
            if (parent instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) parent;
                if (appBarLayout.getPendingAction() == 0) {
                    appBarLayout.setPendingAction(2);
                }
            }
        }
        this.screenOrientation = configuration.orientation;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ViewParent parent = getParent();
        ReadingListFragment.AppBarListener appBarListener = this.onOffsetChangedListener;
        if (appBarListener != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).removeOnOffsetChangedListener(appBarListener);
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
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < systemWindowInsetTop) {
                    WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
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

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        CollapsingToolbarLayout collapsingToolbarLayout;
        int measuredHeight;
        int measuredHeight2;
        ensureToolbar();
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        WindowInsetsCompat windowInsetsCompat = this.lastInsets;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if ((mode == 0 || this.forceApplySystemWindowInsetTop) && systemWindowInsetTop > 0) {
            this.topInsetApplied = systemWindowInsetTop;
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + systemWindowInsetTop, 1073741824));
        }
        updateTitleFromToolbarIfNeeded();
        boolean z = this.collapsingTitleEnabled;
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        if (!z || TextUtils.isEmpty(collapsingTextHelper.text)) {
            collapsingToolbarLayout = this;
        } else {
            int measuredHeight3 = getMeasuredHeight();
            collapsingToolbarLayout = this;
            collapsingToolbarLayout.updateTextBounds(true, 0, 0, getMeasuredWidth(), measuredHeight3);
            float expandedTextFullSingleLineHeight = collapsingTextHelper.getExpandedTextFullSingleLineHeight() + collapsingToolbarLayout.topInsetApplied + collapsingToolbarLayout.expandedMarginTop;
            CollapsingTextHelper collapsingTextHelper2 = collapsingToolbarLayout.collapsingSubtitleHelper;
            int expandedTextFullSingleLineHeight2 = (int) (expandedTextFullSingleLineHeight + (TextUtils.isEmpty(collapsingTextHelper2.text) ? RecyclerView.DECELERATION_RATE : collapsingToolbarLayout.expandedTitleSpacing + collapsingTextHelper2.getExpandedTextFullSingleLineHeight()) + collapsingToolbarLayout.expandedMarginBottom);
            if (expandedTextFullSingleLineHeight2 > measuredHeight3) {
                collapsingToolbarLayout.extraHeightForTitles = expandedTextFullSingleLineHeight2 - measuredHeight3;
            } else {
                collapsingToolbarLayout.extraHeightForTitles = 0;
            }
            if (collapsingToolbarLayout.extraMultilineHeightEnabled) {
                if (collapsingTextHelper.expandedMaxLines > 1) {
                    int i3 = collapsingTextHelper.expandedLineCount;
                    if (i3 > 1) {
                        collapsingToolbarLayout.extraMultilineTitleHeight = (i3 - 1) * Math.round(collapsingTextHelper.getExpandedTextFullSingleLineHeight());
                    } else {
                        collapsingToolbarLayout.extraMultilineTitleHeight = 0;
                    }
                }
                if (collapsingTextHelper2.expandedMaxLines > 1) {
                    int i4 = collapsingTextHelper2.expandedLineCount;
                    if (i4 > 1) {
                        collapsingToolbarLayout.extraMultilineSubtitleHeight = (i4 - 1) * Math.round(collapsingTextHelper2.getExpandedTextFullSingleLineHeight());
                    } else {
                        collapsingToolbarLayout.extraMultilineSubtitleHeight = 0;
                    }
                }
            }
            int i5 = collapsingToolbarLayout.extraHeightForTitles;
            int i6 = collapsingToolbarLayout.extraMultilineTitleHeight;
            int i7 = collapsingToolbarLayout.extraMultilineSubtitleHeight;
            if (i5 + i6 + i7 > 0) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(measuredHeight3 + i5 + i6 + i7, 1073741824));
            }
        }
        ViewGroup viewGroup = collapsingToolbarLayout.toolbar;
        if (viewGroup != null) {
            View view = collapsingToolbarLayout.toolbarDirectChild;
            if (view == null || view == collapsingToolbarLayout) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredHeight = viewGroup.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    measuredHeight = viewGroup.getMeasuredHeight();
                }
                collapsingToolbarLayout.setMinimumHeight(measuredHeight);
            } else {
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                    measuredHeight2 = view.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                } else {
                    measuredHeight2 = view.getMeasuredHeight();
                }
                collapsingToolbarLayout.setMinimumHeight(measuredHeight2);
            }
        }
        if (collapsingToolbarLayout.extraMultilineHeightEnabled && collapsingTextHelper.expandedMaxLines > 1 && collapsingTextHelper.expandedFraction == 1.0f) {
            ViewParent parent = collapsingToolbarLayout.getParent();
            if (parent instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) parent;
                if (appBarLayout.getPendingAction() == 0) {
                    appBarLayout.setPendingAction(2);
                }
            }
        }
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

    public void setCollapsedSubtitleTextAppearance(int i) {
        this.collapsingSubtitleHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedSubtitleTextColor(int i) {
        setCollapsedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedSubtitleTextSize(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
        if (collapsingTextHelper.collapsedTextSize != f) {
            collapsingTextHelper.collapsedTextSize = f;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setCollapsedSubtitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
        if (collapsingTextHelper.setCollapsedTypefaceInternal(typeface)) {
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setCollapsedTitleGravity(int i) {
        this.collapsingTitleHelper.setCollapsedTextGravity(i);
        this.collapsingSubtitleHelper.setCollapsedTextGravity(i);
    }

    public void setCollapsedTitleTextAppearance(int i) {
        this.collapsingTitleHelper.setCollapsedTextAppearance(i);
    }

    public void setCollapsedTitleTextColor(int i) {
        setCollapsedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setCollapsedTitleTextSize(float f) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        if (collapsingTextHelper.collapsedTextSize != f) {
            collapsingTextHelper.collapsedTextSize = f;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setCollapsedTitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
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
            postInvalidateOnAnimation();
        }
    }

    public void setContentScrimColor(int i) {
        setContentScrim(new ColorDrawable(i));
    }

    public void setContentScrimResource(int i) {
        setContentScrim(getContext().getDrawable(i));
    }

    public void setExpandedSubtitleColor(int i) {
        setExpandedSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedSubtitleTextAppearance(int i) {
        this.collapsingSubtitleHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedSubtitleTextColor(ColorStateList colorStateList) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
        if (collapsingTextHelper.expandedTextColor != colorStateList) {
            collapsingTextHelper.expandedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedSubtitleTextSize(float f) {
        this.collapsingSubtitleHelper.setExpandedTextSize(f);
    }

    public void setExpandedSubtitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
        if (collapsingTextHelper.setExpandedTypefaceInternal(typeface)) {
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedTitleColor(int i) {
        setExpandedTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setExpandedTitleGravity(int i) {
        this.collapsingTitleHelper.setExpandedTextGravity(i);
        this.collapsingSubtitleHelper.setExpandedTextGravity(i);
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

    public void setExpandedTitleSpacing(int i) {
        this.expandedTitleSpacing = i;
        requestLayout();
    }

    public void setExpandedTitleTextAppearance(int i) {
        this.collapsingTitleHelper.setExpandedTextAppearance(i);
    }

    public void setExpandedTitleTextColor(ColorStateList colorStateList) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        if (collapsingTextHelper.expandedTextColor != colorStateList) {
            collapsingTextHelper.expandedTextColor = colorStateList;
            collapsingTextHelper.recalculate(false);
        }
    }

    public void setExpandedTitleTextSize(float f) {
        this.collapsingTitleHelper.setExpandedTextSize(f);
    }

    public void setExpandedTitleTypeface(Typeface typeface) {
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
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
        this.collapsingTitleHelper.hyphenationFrequency = i;
    }

    public void setLineSpacingAdd(float f) {
        this.collapsingTitleHelper.lineSpacingAdd = f;
    }

    public void setLineSpacingMultiplier(float f) {
        this.collapsingTitleHelper.lineSpacingMultiplier = f;
    }

    public void setMaxLines(int i) {
        this.collapsingTitleHelper.setExpandedMaxLines(i);
        this.collapsingSubtitleHelper.setExpandedMaxLines(i);
    }

    public void setRtlTextDirectionHeuristicsEnabled(boolean z) {
        this.collapsingTitleHelper.isRtlTextDirectionHeuristicsEnabled = z;
    }

    public void setScrimAlpha(int i) {
        ViewGroup viewGroup;
        if (i != this.scrimAlpha) {
            if (this.contentScrim != null && (viewGroup = this.toolbar) != null) {
                viewGroup.postInvalidateOnAnimation();
            }
            this.scrimAlpha = i;
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
                    this.scrimAnimator.addUpdateListener(new TabLayout.AnonymousClass1(3, this));
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
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
        collapsingTextHelper.getClass();
        if (staticLayoutBuilderConfigurer != null) {
            collapsingTextHelper.recalculate(true);
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
                this.statusBarScrim.setLayoutDirection(getLayoutDirection());
                this.statusBarScrim.setVisible(getVisibility() == 0, false);
                this.statusBarScrim.setCallback(this);
                this.statusBarScrim.setAlpha(this.scrimAlpha);
            }
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarScrimColor(int i) {
        setStatusBarScrim(new ColorDrawable(i));
    }

    public void setStatusBarScrimResource(int i) {
        setStatusBarScrim(getContext().getDrawable(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        this.collapsingSubtitleHelper.setText(charSequence);
    }

    public void setTitle(CharSequence charSequence) {
        this.collapsingTitleHelper.setText(charSequence);
        setContentDescription(getTitle());
    }

    public void setTitleCollapseMode(int i) {
        this.titleCollapseMode = i;
        boolean z = i == 1;
        this.collapsingTitleHelper.fadeModeEnabled = z;
        this.collapsingSubtitleHelper.fadeModeEnabled = z;
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
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
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
        CollapsingTextHelper collapsingTextHelper = this.collapsingTitleHelper;
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
        View view2 = this.dummyView;
        if (view2 == null) {
            view2 = new View(getContext());
            this.dummyView = view2;
        }
        if (view2.getParent() == null) {
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
            int i10 = rect.right - (z3 ? i8 : i6);
            int i11 = rect.top + height + i7;
            int i12 = (rect.bottom + height) - i5;
            CollapsingTextHelper collapsingTextHelper = this.collapsingSubtitleHelper;
            TextPaint textPaint = collapsingTextHelper.tmpPaint;
            textPaint.setTextSize(collapsingTextHelper.collapsedTextSize);
            textPaint.setTypeface(collapsingTextHelper.collapsedTypeface);
            textPaint.setLetterSpacing(collapsingTextHelper.collapsedLetterSpacing);
            int descent = (int) (i12 - (textPaint.descent() + (-textPaint.ascent())));
            CollapsingTextHelper collapsingTextHelper2 = this.collapsingTitleHelper;
            TextPaint textPaint2 = collapsingTextHelper2.tmpPaint;
            textPaint2.setTextSize(collapsingTextHelper2.collapsedTextSize);
            textPaint2.setTypeface(collapsingTextHelper2.collapsedTypeface);
            textPaint2.setLetterSpacing(collapsingTextHelper2.collapsedLetterSpacing);
            int descent2 = (int) (textPaint2.descent() + (-textPaint2.ascent()) + i11);
            if (TextUtils.isEmpty(collapsingTextHelper.text)) {
                collapsingTextHelper2.setCollapsedBounds(i9, i11, i10, i12);
            } else {
                collapsingTextHelper2.setCollapsedBounds(i9, i11, i10, descent);
                collapsingTextHelper.setCollapsedBounds(i9, descent2, i10, i12);
            }
            if (this.collapsedTitleGravityMode == 0) {
                DescendantOffsetUtils.getDescendantRect(this, this, rect);
                int i13 = rect.left + (z3 ? i6 : i8);
                int i14 = rect.right;
                if (!z3) {
                    i8 = i6;
                }
                int i15 = i14 - i8;
                if (TextUtils.isEmpty(collapsingTextHelper.text)) {
                    collapsingTextHelper2.setCollapsedBoundsForOffsets(i13, i11, i15, i12);
                } else {
                    collapsingTextHelper2.setCollapsedBoundsForOffsets(i13, i11, i15, descent);
                    collapsingTextHelper.setCollapsedBoundsForOffsets(i13, descent2, i15, i12);
                }
            }
            int i16 = z3 ? this.expandedMarginEnd : this.expandedMarginStart;
            int i17 = rect.top + this.expandedMarginTop;
            int i18 = (i3 - i) - (z3 ? this.expandedMarginStart : this.expandedMarginEnd);
            int i19 = (i4 - i2) - this.expandedMarginBottom;
            boolean isEmpty = TextUtils.isEmpty(collapsingTextHelper.text);
            CollapsingTextHelper collapsingTextHelper3 = this.collapsingTitleHelper;
            if (isEmpty) {
                collapsingTextHelper3.setExpandedBounds(true, i16, i17, i18, i19);
                collapsingTextHelper2.recalculate(z);
            } else {
                collapsingTextHelper3.setExpandedBounds(false, i16, i17, i18, (int) ((i19 - (collapsingTextHelper.getExpandedTextFullSingleLineHeight() + this.extraMultilineSubtitleHeight)) - this.expandedTitleSpacing));
                this.collapsingSubtitleHelper.setExpandedBounds(false, i16, (int) (collapsingTextHelper2.getExpandedTextFullSingleLineHeight() + this.extraMultilineTitleHeight + i17 + this.expandedTitleSpacing), i18, i19);
                collapsingTextHelper2.recalculate(z);
                collapsingTextHelper.recalculate(z);
            }
        }
    }

    public final void updateTitleFromToolbarIfNeeded() {
        ViewGroup viewGroup = this.toolbar;
        if (viewGroup == null || !this.collapsingTitleEnabled) {
            return;
        }
        CharSequence charSequence = null;
        CharSequence title = viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).getTitle() : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null;
        if (TextUtils.isEmpty(this.collapsingTitleHelper.text) && !TextUtils.isEmpty(title)) {
            setTitle(title);
        }
        ViewGroup viewGroup2 = this.toolbar;
        if (viewGroup2 instanceof Toolbar) {
            charSequence = ((Toolbar) viewGroup2).getSubtitle();
        } else if (viewGroup2 instanceof android.widget.Toolbar) {
            charSequence = ((android.widget.Toolbar) viewGroup2).getSubtitle();
        }
        if (!TextUtils.isEmpty(this.collapsingSubtitleHelper.text) || TextUtils.isEmpty(charSequence)) {
            return;
        }
        setSubtitle(charSequence);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.contentScrim || drawable == this.statusBarScrim;
    }

    public void setCollapsedSubtitleTextColor(ColorStateList colorStateList) {
        this.collapsingSubtitleHelper.setCollapsedTextColor(colorStateList);
    }

    public void setCollapsedTitleTextColor(ColorStateList colorStateList) {
        this.collapsingTitleHelper.setCollapsedTextColor(colorStateList);
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
