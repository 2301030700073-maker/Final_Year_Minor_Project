package defpackage;

import android.R;
import android.content.Context;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import com.facebook.internal.Utility;
import com.google.android.gms.common.internal.Preconditions;
import com.joeykrim.rootcheck.WelcomeScreens;
import java.io.BufferedReader;
import java.io.StringWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public class O2 implements InterfaceC3499pH {

    /* renamed from: for, reason: not valid java name */
    public static final C0174Dp f2489for;

    /* renamed from: if, reason: not valid java name */
    public static final C0174Dp f2494if;

    /* renamed from: new, reason: not valid java name */
    public static final C0174Dp f2503new;

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f2479do = new C0174Dp("NO_DECISION", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f2483do = {"BveJ4AkFeR0jWIRBQVkf2A==:r96eup/jNk63bCkX4eWDVDE+9OQwfyLa1BvJj9SNjl4=:D8WXh5AN3WKpadqcHHzPhaaR+kOOM9ZBOeTq/cjnxTxBBi6eSSKieH0k9YhqopjI", "Gryf0u5jDS6aEAHw2BeuEQ==:g15z6wTRazEbGAlAFGP2Lrn4viSji0NSggelyPpwkDM=:+RpZnytm4Ph5UUVTok5phu0XHLSsJakwQyNA/z1fH0LCAwzCXHk4aVYiHgZKAGTW", "KDXqv6Kw3aOD4LtjZTLg5w==:3EgcKae3MCc8ilCI4AzHiYIZ26c9xmtON8GPgDYAHF4=:r/DA4lr6IXYjN4nShTCHIA==", "tYWJq5a4aP+9BL9vtXq8/g==:YvJgvwtE6Wae8igfMVtYI9h3DUkzGFrtvhrvOF1XnDo=:JmkrtA/K7cEAgBfcvyL9jzQVXjii9GkVqGtA6EmnQz0=", "FUF8cPP9z58PRGCNmn/I0g==:5oQ1Al+qkLqamXv9HnqjFsAY/5XgR+N2SP8/kpzyyfY=:o/u84WZionCOAHxSD0p+pCaBS3OSo/9MjWhr5vzP/9E=", "ZIdYtD/Zt9makGMjg9WmRA==:W3D/6h0FNoU+T+BTsvpXzM4AvJqwzw2WUCr4CXSR+HI=:1eEwK4QQQwfn5mdgVl6BRz/MgFwQDxAuxRvuFp8VVpo=", "Ik8eItm2MH8m0A+YT4tGsQ==:uHpjMjk5pC4b4fCPTyDVVxDgTOS46Kh/1AGx0UEFdJE=:DYjsDd6WBk6x17gZ36Eq6QgZ/8hT1FHKNw4yRFSbJIc=", "BbDlajS/w7VqbDaebTsHxQ==:yfkWHJ77l+jnML9izOA/MBAvpdh7XtbY6jt3YzmUbBU=:YYhJpHWSizcb09nCNEXZ7w4HdFkyWDAio+qCy2WKBR4=", "iD9z+OtLGuZgw2vN5y4Xxg==:k4JhVghE+ubaE8yoi7ye9Eeb8Bz+X7JmhSLEsAnyFNU=:WK8IiJrBX66/tMzRgELWbDEGv0b4f4gKHUbJuWlaVK4=", "5t6UaJWUH/GEPHKHyxJPfg==:HKG/EL4lc1qfgHOB5sp5IOPUn7VyVb8zlMWWgZVIg1A=:crAZZzZ35HqEank1ZQseGYHG5mrDrRb+K3BR+axWbcU="};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final String[] f2496if = {"dmkL86/yAMgcCGyKKx26wg==:wWrUmascuVS5fm5TCNHBRakUqx+OzHfjZVDP5jJNUsg=:g5pIJ3j9cYD1L35Vm7QDwdGwCF2SoAIT/CVLjwkDqL4=", "uUii01DisXYxKcWFTmw0uw==:11uuJHca+WPSdIuAK3rwecphmblRKB5FSDC5KUnAvio=:rNPX3EjQkE8wOi9kyYxLPGPPUFgOAMGMtKqUvmvEzAY=", "btL2IYuy+WvJa95VnSow8A==:XFMUyU3WvMNNhEaR5mgWfZwhfv7FKM2W6Lk8gp9esCA=:5rHUnO+FashcXRT48xLvE3jvu4BM6Z9yPB5bPPgBVps=", "E5sH6P23ZJBRfj6LExye+g==:uYklKExcoOhnbe8+y+/cFKR+iIWfCJBtxFztKPISKzM=:LKd9+sp0F7XH1C7yIPANQIck2SY1PGQUAlvcZs1GF/c=", "PJOguorCqd5QxBntmaCwmw==:ONjzwuD0cQ6Gkax4RHbXoVEBYobNBEAjItINLKxek1k=:fpbfRzvBNYGYpFxo/NqHK3oBkMriIGA0ffphjHlerog=", "igEZiLiH+ezbE4RTakWAKw==:3C5c10BRS0Aiu5RI0UGdWJGxy09cv0Lmgo40JSRzCUY=:ox7zc2n5vBZaFYRAdeNwMxxvnPs9w3wKecu0rodEpDU=", "RkE79hPV7nU4UhPf0+svKg==:8JOBmII731NxZ1VQPO/9iz7ZxikKnv9JSktVlZkJVF8=:eJkWeNberQRqHap1VVzXKQLg5LCuBh+R6KTnavLkhBI=", "8/k8jaIPruSGOWFjD+zf6g==:sMQAuaIxyi3bgJt8v4wDlf6juO5+BIIYk4Y1UMcu/nc=:17FQxpCVK70puUewVXFAp17JGPseZINzoSDZMNFA21k=", "ZmCu5uYZ/ah3SxAk4+rzUw==:ADVlOrPXiuiPykKHYCGCHUcrI0xVVViHBcSBwme9SBE=:gnF4KHCcC+VkwCNnmHUWw1TAZQQvsrhFroCQkWPBoDM=", "PQQ7dscJ/WrzP34pOjT9vQ==:RiJ9zWEV1aai2OsoiBXKscDT0KMcNljHn7cKux6qHmc=:cK6pGlbRSJB/HzUdT3gC3WYmxJpJwTg+Lpjo9uFczZw=", "3pCs9I0deRGt8SMZKun/QA==:QpX9j/sinXulZwV7R+Up/0LocFqntNmF1F2Wcw5d0mA=:s5Tj+gUJYL7UqkRi7mm2Kcr1OCjbrOsfdLZTIq4LGAg=", "tMKAtepd5B3xPxnYLbXfDQ==:WgZynwEjgtOTnxrcubYmX3BcSXrNfSofetX0tdVbqXc=:5aPRgIWJocJr5I4ZWsy7dl489JnQduvtOBIEwUxHy5c="};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final float[][] f2484do = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final float[][] f2497if = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final float[] f2481do = {95.047f, 100.0f, 108.883f};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final float[][] f2492for = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final String[] f2491for = {"UDd3/u6COY8OihlMVa1NxQ==:3EDGZDxoOB7D51f+ux3PeO9BLe8dYIVUOijr7ujAEFM=:/vPUyuLRKYrPRGDoMuLakF52TCiC94fIikJH8B7bTKA=", "eIcAtZ47+6QxDrXc7lnCKg==:QDj2NjCUfwWN5bS1MYPguwCQjA+7GelACqXiTrKFF/U=:NXYt3iq6qIfPfA8+mBUKL+4nb99iiqtzFBM+b70zGFk=", "Fv4IdcvlxTucCDCwdZFdPA==:5A4nzF+fttSIUxXMfi+Zot4A1GVB5mqF7DNIqIXiURA=:vLj6g7eM0P7gvU2otmRS3iTWGxktHVATAqxqEAsbHCU=", "lX6AbRNRq37t0VQALSL7ag==:aBp+hXR5KcUOhG2tAf/+X8G9DGXkgyroqV2iSFip17M=:TXNEyCEa1GY+p24KPZH/ecz3rDhTwyzwCHM9OakCRok="};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f2482do = {R.attr.background, R.attr.touchscreenBlocksFocus, R.attr.keyboardNavigationCluster, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.expanded, com.joeykrim.rootcheck.R.attr.liftOnScroll, com.joeykrim.rootcheck.R.attr.liftOnScrollColor, com.joeykrim.rootcheck.R.attr.liftOnScrollTargetViewId, com.joeykrim.rootcheck.R.attr.statusBarForeground};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f2495if = {com.joeykrim.rootcheck.R.attr.layout_scrollEffect, com.joeykrim.rootcheck.R.attr.layout_scrollFlags, com.joeykrim.rootcheck.R.attr.layout_scrollInterpolator};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[] f2490for = {com.joeykrim.rootcheck.R.attr.autoAdjustToWithinGrandparentBounds, com.joeykrim.rootcheck.R.attr.backgroundColor, com.joeykrim.rootcheck.R.attr.badgeGravity, com.joeykrim.rootcheck.R.attr.badgeHeight, com.joeykrim.rootcheck.R.attr.badgeRadius, com.joeykrim.rootcheck.R.attr.badgeShapeAppearance, com.joeykrim.rootcheck.R.attr.badgeShapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.badgeText, com.joeykrim.rootcheck.R.attr.badgeTextAppearance, com.joeykrim.rootcheck.R.attr.badgeTextColor, com.joeykrim.rootcheck.R.attr.badgeVerticalPadding, com.joeykrim.rootcheck.R.attr.badgeWidePadding, com.joeykrim.rootcheck.R.attr.badgeWidth, com.joeykrim.rootcheck.R.attr.badgeWithTextHeight, com.joeykrim.rootcheck.R.attr.badgeWithTextRadius, com.joeykrim.rootcheck.R.attr.badgeWithTextShapeAppearance, com.joeykrim.rootcheck.R.attr.badgeWithTextShapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.badgeWithTextWidth, com.joeykrim.rootcheck.R.attr.horizontalOffset, com.joeykrim.rootcheck.R.attr.horizontalOffsetWithText, com.joeykrim.rootcheck.R.attr.largeFontVerticalOffsetAdjustment, com.joeykrim.rootcheck.R.attr.maxCharacterCount, com.joeykrim.rootcheck.R.attr.maxNumber, com.joeykrim.rootcheck.R.attr.number, com.joeykrim.rootcheck.R.attr.offsetAlignmentMode, com.joeykrim.rootcheck.R.attr.verticalOffset, com.joeykrim.rootcheck.R.attr.verticalOffsetWithText};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[] f2504new = {R.attr.indeterminate, com.joeykrim.rootcheck.R.attr.hideAnimationBehavior, com.joeykrim.rootcheck.R.attr.indicatorColor, com.joeykrim.rootcheck.R.attr.indicatorTrackGapSize, com.joeykrim.rootcheck.R.attr.minHideDelay, com.joeykrim.rootcheck.R.attr.showAnimationBehavior, com.joeykrim.rootcheck.R.attr.showDelay, com.joeykrim.rootcheck.R.attr.trackColor, com.joeykrim.rootcheck.R.attr.trackCornerRadius, com.joeykrim.rootcheck.R.attr.trackThickness};

    /* renamed from: try, reason: not valid java name */
    public static final int[] f2519try = {com.joeykrim.rootcheck.R.attr.addElevationShadow, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.fabAlignmentMode, com.joeykrim.rootcheck.R.attr.fabAlignmentModeEndMargin, com.joeykrim.rootcheck.R.attr.fabAnchorMode, com.joeykrim.rootcheck.R.attr.fabAnimationMode, com.joeykrim.rootcheck.R.attr.fabCradleMargin, com.joeykrim.rootcheck.R.attr.fabCradleRoundedCornerRadius, com.joeykrim.rootcheck.R.attr.fabCradleVerticalOffset, com.joeykrim.rootcheck.R.attr.hideOnScroll, com.joeykrim.rootcheck.R.attr.menuAlignmentMode, com.joeykrim.rootcheck.R.attr.navigationIconTint, com.joeykrim.rootcheck.R.attr.paddingBottomSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingLeftSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingRightSystemWindowInsets, com.joeykrim.rootcheck.R.attr.removeEmbeddedFabElevation};

    /* renamed from: case, reason: not valid java name */
    public static final int[] f2473case = {R.attr.minHeight, com.joeykrim.rootcheck.R.attr.compatShadowEnabled, com.joeykrim.rootcheck.R.attr.itemHorizontalTranslationEnabled, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay};

    /* renamed from: else, reason: not valid java name */
    public static final int[] f2485else = {R.attr.maxWidth, R.attr.maxHeight, R.attr.elevation, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.behavior_draggable, com.joeykrim.rootcheck.R.attr.behavior_expandedOffset, com.joeykrim.rootcheck.R.attr.behavior_fitToContents, com.joeykrim.rootcheck.R.attr.behavior_halfExpandedRatio, com.joeykrim.rootcheck.R.attr.behavior_hideable, com.joeykrim.rootcheck.R.attr.behavior_peekHeight, com.joeykrim.rootcheck.R.attr.behavior_saveFlags, com.joeykrim.rootcheck.R.attr.behavior_significantVelocityThreshold, com.joeykrim.rootcheck.R.attr.behavior_skipCollapsed, com.joeykrim.rootcheck.R.attr.gestureInsetBottomIgnored, com.joeykrim.rootcheck.R.attr.marginLeftSystemWindowInsets, com.joeykrim.rootcheck.R.attr.marginRightSystemWindowInsets, com.joeykrim.rootcheck.R.attr.marginTopSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingBottomSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingLeftSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingRightSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingTopSystemWindowInsets, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.shouldRemoveExpandedCorners};

    /* renamed from: goto, reason: not valid java name */
    public static final int[] f2493goto = {R.attr.minWidth, R.attr.minHeight, com.joeykrim.rootcheck.R.attr.cardBackgroundColor, com.joeykrim.rootcheck.R.attr.cardCornerRadius, com.joeykrim.rootcheck.R.attr.cardElevation, com.joeykrim.rootcheck.R.attr.cardMaxElevation, com.joeykrim.rootcheck.R.attr.cardPreventCornerOverlap, com.joeykrim.rootcheck.R.attr.cardUseCompatPadding, com.joeykrim.rootcheck.R.attr.contentPadding, com.joeykrim.rootcheck.R.attr.contentPaddingBottom, com.joeykrim.rootcheck.R.attr.contentPaddingLeft, com.joeykrim.rootcheck.R.attr.contentPaddingRight, com.joeykrim.rootcheck.R.attr.contentPaddingTop};

    /* renamed from: this, reason: not valid java name */
    public static final int[] f2515this = {com.joeykrim.rootcheck.R.attr.carousel_alignment};

    /* renamed from: break, reason: not valid java name */
    public static final int[] f2472break = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.ellipsize, R.attr.maxWidth, R.attr.text, R.attr.checkable, com.joeykrim.rootcheck.R.attr.checkedIcon, com.joeykrim.rootcheck.R.attr.checkedIconEnabled, com.joeykrim.rootcheck.R.attr.checkedIconTint, com.joeykrim.rootcheck.R.attr.checkedIconVisible, com.joeykrim.rootcheck.R.attr.chipBackgroundColor, com.joeykrim.rootcheck.R.attr.chipCornerRadius, com.joeykrim.rootcheck.R.attr.chipEndPadding, com.joeykrim.rootcheck.R.attr.chipIcon, com.joeykrim.rootcheck.R.attr.chipIconEnabled, com.joeykrim.rootcheck.R.attr.chipIconSize, com.joeykrim.rootcheck.R.attr.chipIconTint, com.joeykrim.rootcheck.R.attr.chipIconVisible, com.joeykrim.rootcheck.R.attr.chipMinHeight, com.joeykrim.rootcheck.R.attr.chipMinTouchTargetSize, com.joeykrim.rootcheck.R.attr.chipStartPadding, com.joeykrim.rootcheck.R.attr.chipStrokeColor, com.joeykrim.rootcheck.R.attr.chipStrokeWidth, com.joeykrim.rootcheck.R.attr.chipSurfaceColor, com.joeykrim.rootcheck.R.attr.closeIcon, com.joeykrim.rootcheck.R.attr.closeIconEnabled, com.joeykrim.rootcheck.R.attr.closeIconEndPadding, com.joeykrim.rootcheck.R.attr.closeIconSize, com.joeykrim.rootcheck.R.attr.closeIconStartPadding, com.joeykrim.rootcheck.R.attr.closeIconTint, com.joeykrim.rootcheck.R.attr.closeIconVisible, com.joeykrim.rootcheck.R.attr.ensureMinTouchTargetSize, com.joeykrim.rootcheck.R.attr.hideMotionSpec, com.joeykrim.rootcheck.R.attr.iconEndPadding, com.joeykrim.rootcheck.R.attr.iconStartPadding, com.joeykrim.rootcheck.R.attr.rippleColor, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.showMotionSpec, com.joeykrim.rootcheck.R.attr.textEndPadding, com.joeykrim.rootcheck.R.attr.textStartPadding};

    /* renamed from: catch, reason: not valid java name */
    public static final int[] f2474catch = {com.joeykrim.rootcheck.R.attr.checkedChip, com.joeykrim.rootcheck.R.attr.chipSpacing, com.joeykrim.rootcheck.R.attr.chipSpacingHorizontal, com.joeykrim.rootcheck.R.attr.chipSpacingVertical, com.joeykrim.rootcheck.R.attr.selectionRequired, com.joeykrim.rootcheck.R.attr.singleLine, com.joeykrim.rootcheck.R.attr.singleSelection};

    /* renamed from: class, reason: not valid java name */
    public static final int[] f2475class = {com.joeykrim.rootcheck.R.attr.indicatorDirectionCircular, com.joeykrim.rootcheck.R.attr.indicatorInset, com.joeykrim.rootcheck.R.attr.indicatorSize};

    /* renamed from: const, reason: not valid java name */
    public static final int[] f2476const = {com.joeykrim.rootcheck.R.attr.clockFaceBackgroundColor, com.joeykrim.rootcheck.R.attr.clockNumberTextColor};

    /* renamed from: final, reason: not valid java name */
    public static final int[] f2487final = {com.joeykrim.rootcheck.R.attr.clockHandColor, com.joeykrim.rootcheck.R.attr.materialCircleRadius, com.joeykrim.rootcheck.R.attr.selectorSize};

    /* renamed from: super, reason: not valid java name */
    public static final int[] f2512super = {com.joeykrim.rootcheck.R.attr.collapsedTitleGravity, com.joeykrim.rootcheck.R.attr.collapsedTitleTextAppearance, com.joeykrim.rootcheck.R.attr.collapsedTitleTextColor, com.joeykrim.rootcheck.R.attr.contentScrim, com.joeykrim.rootcheck.R.attr.expandedTitleGravity, com.joeykrim.rootcheck.R.attr.expandedTitleMargin, com.joeykrim.rootcheck.R.attr.expandedTitleMarginBottom, com.joeykrim.rootcheck.R.attr.expandedTitleMarginEnd, com.joeykrim.rootcheck.R.attr.expandedTitleMarginStart, com.joeykrim.rootcheck.R.attr.expandedTitleMarginTop, com.joeykrim.rootcheck.R.attr.expandedTitleTextAppearance, com.joeykrim.rootcheck.R.attr.expandedTitleTextColor, com.joeykrim.rootcheck.R.attr.extraMultilineHeightEnabled, com.joeykrim.rootcheck.R.attr.forceApplySystemWindowInsetTop, com.joeykrim.rootcheck.R.attr.maxLines, com.joeykrim.rootcheck.R.attr.scrimAnimationDuration, com.joeykrim.rootcheck.R.attr.scrimVisibleHeightTrigger, com.joeykrim.rootcheck.R.attr.statusBarScrim, com.joeykrim.rootcheck.R.attr.title, com.joeykrim.rootcheck.R.attr.titleCollapseMode, com.joeykrim.rootcheck.R.attr.titleEnabled, com.joeykrim.rootcheck.R.attr.titlePositionInterpolator, com.joeykrim.rootcheck.R.attr.titleTextEllipsize, com.joeykrim.rootcheck.R.attr.toolbarId};

    /* renamed from: throw, reason: not valid java name */
    public static final int[] f2516throw = {com.joeykrim.rootcheck.R.attr.layout_collapseMode, com.joeykrim.rootcheck.R.attr.layout_collapseParallaxMultiplier};

    /* renamed from: while, reason: not valid java name */
    public static final int[] f2521while = {com.joeykrim.rootcheck.R.attr.collapsedSize, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.extendMotionSpec, com.joeykrim.rootcheck.R.attr.extendStrategy, com.joeykrim.rootcheck.R.attr.hideMotionSpec, com.joeykrim.rootcheck.R.attr.showMotionSpec, com.joeykrim.rootcheck.R.attr.shrinkMotionSpec};

    /* renamed from: import, reason: not valid java name */
    public static final int[] f2499import = {com.joeykrim.rootcheck.R.attr.behavior_autoHide, com.joeykrim.rootcheck.R.attr.behavior_autoShrink};

    /* renamed from: native, reason: not valid java name */
    public static final int[] f2502native = {R.attr.enabled, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.backgroundTintMode, com.joeykrim.rootcheck.R.attr.borderWidth, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.ensureMinTouchTargetSize, com.joeykrim.rootcheck.R.attr.fabCustomSize, com.joeykrim.rootcheck.R.attr.fabSize, com.joeykrim.rootcheck.R.attr.hideMotionSpec, com.joeykrim.rootcheck.R.attr.hoveredFocusedTranslationZ, com.joeykrim.rootcheck.R.attr.maxImageSize, com.joeykrim.rootcheck.R.attr.pressedTranslationZ, com.joeykrim.rootcheck.R.attr.rippleColor, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.showMotionSpec, com.joeykrim.rootcheck.R.attr.useCompatPadding};

    /* renamed from: public, reason: not valid java name */
    public static final int[] f2508public = {com.joeykrim.rootcheck.R.attr.behavior_autoHide};

    /* renamed from: return, reason: not valid java name */
    public static final int[] f2509return = {com.joeykrim.rootcheck.R.attr.itemSpacing, com.joeykrim.rootcheck.R.attr.lineSpacing};

    /* renamed from: static, reason: not valid java name */
    public static final int[] f2510static = {R.attr.foreground, R.attr.foregroundGravity, com.joeykrim.rootcheck.R.attr.foregroundInsidePadding};

    /* renamed from: switch, reason: not valid java name */
    public static final int[] f2513switch = {com.joeykrim.rootcheck.R.attr.marginLeftSystemWindowInsets, com.joeykrim.rootcheck.R.attr.marginRightSystemWindowInsets, com.joeykrim.rootcheck.R.attr.marginTopSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingBottomSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingLeftSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingRightSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingStartSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingTopSystemWindowInsets};

    /* renamed from: throws, reason: not valid java name */
    public static final int[] f2517throws = {com.joeykrim.rootcheck.R.attr.indeterminateAnimationType, com.joeykrim.rootcheck.R.attr.indicatorDirectionLinear, com.joeykrim.rootcheck.R.attr.trackStopIndicatorSize};

    /* renamed from: default, reason: not valid java name */
    public static final int[] f2478default = {R.attr.inputType, R.attr.popupElevation, com.joeykrim.rootcheck.R.attr.dropDownBackgroundTint, com.joeykrim.rootcheck.R.attr.simpleItemLayout, com.joeykrim.rootcheck.R.attr.simpleItemSelectedColor, com.joeykrim.rootcheck.R.attr.simpleItemSelectedRippleColor, com.joeykrim.rootcheck.R.attr.simpleItems};

    /* renamed from: extends, reason: not valid java name */
    public static final int[] f2486extends = {R.attr.background, R.attr.insetLeft, R.attr.insetRight, R.attr.insetTop, R.attr.insetBottom, R.attr.checkable, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.backgroundTintMode, com.joeykrim.rootcheck.R.attr.cornerRadius, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.icon, com.joeykrim.rootcheck.R.attr.iconGravity, com.joeykrim.rootcheck.R.attr.iconPadding, com.joeykrim.rootcheck.R.attr.iconSize, com.joeykrim.rootcheck.R.attr.iconTint, com.joeykrim.rootcheck.R.attr.iconTintMode, com.joeykrim.rootcheck.R.attr.rippleColor, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.strokeColor, com.joeykrim.rootcheck.R.attr.strokeWidth, com.joeykrim.rootcheck.R.attr.toggleCheckedStateOnClick};

    /* renamed from: finally, reason: not valid java name */
    public static final int[] f2488finally = {R.attr.enabled, com.joeykrim.rootcheck.R.attr.checkedButton, com.joeykrim.rootcheck.R.attr.selectionRequired, com.joeykrim.rootcheck.R.attr.singleSelection};

    /* renamed from: package, reason: not valid java name */
    public static final int[] f2505package = {R.attr.windowFullscreen, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.dayInvalidStyle, com.joeykrim.rootcheck.R.attr.daySelectedStyle, com.joeykrim.rootcheck.R.attr.dayStyle, com.joeykrim.rootcheck.R.attr.dayTodayStyle, com.joeykrim.rootcheck.R.attr.nestedScrollable, com.joeykrim.rootcheck.R.attr.rangeFillColor, com.joeykrim.rootcheck.R.attr.yearSelectedStyle, com.joeykrim.rootcheck.R.attr.yearStyle, com.joeykrim.rootcheck.R.attr.yearTodayStyle};

    /* renamed from: private, reason: not valid java name */
    public static final int[] f2506private = {R.attr.insetLeft, R.attr.insetRight, R.attr.insetTop, R.attr.insetBottom, com.joeykrim.rootcheck.R.attr.itemFillColor, com.joeykrim.rootcheck.R.attr.itemShapeAppearance, com.joeykrim.rootcheck.R.attr.itemShapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.itemStrokeColor, com.joeykrim.rootcheck.R.attr.itemStrokeWidth, com.joeykrim.rootcheck.R.attr.itemTextColor};

    /* renamed from: abstract, reason: not valid java name */
    public static final int[] f2471abstract = {R.attr.checkable, com.joeykrim.rootcheck.R.attr.cardForegroundColor, com.joeykrim.rootcheck.R.attr.checkedIcon, com.joeykrim.rootcheck.R.attr.checkedIconGravity, com.joeykrim.rootcheck.R.attr.checkedIconMargin, com.joeykrim.rootcheck.R.attr.checkedIconSize, com.joeykrim.rootcheck.R.attr.checkedIconTint, com.joeykrim.rootcheck.R.attr.rippleColor, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.state_dragged, com.joeykrim.rootcheck.R.attr.strokeColor, com.joeykrim.rootcheck.R.attr.strokeWidth};

    /* renamed from: continue, reason: not valid java name */
    public static final int[] f2477continue = {R.attr.button, com.joeykrim.rootcheck.R.attr.buttonCompat, com.joeykrim.rootcheck.R.attr.buttonIcon, com.joeykrim.rootcheck.R.attr.buttonIconTint, com.joeykrim.rootcheck.R.attr.buttonIconTintMode, com.joeykrim.rootcheck.R.attr.buttonTint, com.joeykrim.rootcheck.R.attr.centerIfNoTextEnabled, com.joeykrim.rootcheck.R.attr.checkedState, com.joeykrim.rootcheck.R.attr.errorAccessibilityLabel, com.joeykrim.rootcheck.R.attr.errorShown, com.joeykrim.rootcheck.R.attr.useMaterialThemeColors};

    /* renamed from: strictfp, reason: not valid java name */
    public static final int[] f2511strictfp = {com.joeykrim.rootcheck.R.attr.dividerColor, com.joeykrim.rootcheck.R.attr.dividerInsetEnd, com.joeykrim.rootcheck.R.attr.dividerInsetStart, com.joeykrim.rootcheck.R.attr.dividerThickness, com.joeykrim.rootcheck.R.attr.lastItemDecorated};

    /* renamed from: volatile, reason: not valid java name */
    public static final int[] f2520volatile = {com.joeykrim.rootcheck.R.attr.buttonTint, com.joeykrim.rootcheck.R.attr.useMaterialThemeColors};

    /* renamed from: interface, reason: not valid java name */
    public static final int[] f2501interface = {com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay};

    /* renamed from: protected, reason: not valid java name */
    public static final int[] f2507protected = {com.joeykrim.rootcheck.R.attr.thumbIcon, com.joeykrim.rootcheck.R.attr.thumbIconSize, com.joeykrim.rootcheck.R.attr.thumbIconTint, com.joeykrim.rootcheck.R.attr.thumbIconTintMode, com.joeykrim.rootcheck.R.attr.trackDecoration, com.joeykrim.rootcheck.R.attr.trackDecorationTint, com.joeykrim.rootcheck.R.attr.trackDecorationTintMode};

    /* renamed from: transient, reason: not valid java name */
    public static final int[] f2518transient = {R.attr.letterSpacing, R.attr.lineHeight, com.joeykrim.rootcheck.R.attr.lineHeight};

    /* renamed from: implements, reason: not valid java name */
    public static final int[] f2498implements = {R.attr.textAppearance, R.attr.lineHeight, com.joeykrim.rootcheck.R.attr.lineHeight};

    /* renamed from: instanceof, reason: not valid java name */
    public static final int[] f2500instanceof = {com.joeykrim.rootcheck.R.attr.logoAdjustViewBounds, com.joeykrim.rootcheck.R.attr.logoScaleType, com.joeykrim.rootcheck.R.attr.navigationIconTint, com.joeykrim.rootcheck.R.attr.subtitleCentered, com.joeykrim.rootcheck.R.attr.titleCentered};

    /* renamed from: synchronized, reason: not valid java name */
    public static final int[] f2514synchronized = {R.attr.height, R.attr.width, R.attr.color, com.joeykrim.rootcheck.R.attr.marginHorizontal, com.joeykrim.rootcheck.R.attr.shapeAppearance};
    public static final int[] a = {com.joeykrim.rootcheck.R.attr.activeIndicatorLabelPadding, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.itemActiveIndicatorStyle, com.joeykrim.rootcheck.R.attr.itemBackground, com.joeykrim.rootcheck.R.attr.itemIconSize, com.joeykrim.rootcheck.R.attr.itemIconTint, com.joeykrim.rootcheck.R.attr.itemPaddingBottom, com.joeykrim.rootcheck.R.attr.itemPaddingTop, com.joeykrim.rootcheck.R.attr.itemRippleColor, com.joeykrim.rootcheck.R.attr.itemTextAppearanceActive, com.joeykrim.rootcheck.R.attr.itemTextAppearanceActiveBoldEnabled, com.joeykrim.rootcheck.R.attr.itemTextAppearanceInactive, com.joeykrim.rootcheck.R.attr.itemTextColor, com.joeykrim.rootcheck.R.attr.labelVisibilityMode, com.joeykrim.rootcheck.R.attr.menu};
    public static final int[] b = {com.joeykrim.rootcheck.R.attr.headerLayout, com.joeykrim.rootcheck.R.attr.itemMinHeight, com.joeykrim.rootcheck.R.attr.menuGravity, com.joeykrim.rootcheck.R.attr.paddingBottomSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingStartSystemWindowInsets, com.joeykrim.rootcheck.R.attr.paddingTopSystemWindowInsets, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay};
    public static final int[] c = {R.attr.layout_gravity, R.attr.background, R.attr.fitsSystemWindows, R.attr.maxWidth, com.joeykrim.rootcheck.R.attr.bottomInsetScrimEnabled, com.joeykrim.rootcheck.R.attr.dividerInsetEnd, com.joeykrim.rootcheck.R.attr.dividerInsetStart, com.joeykrim.rootcheck.R.attr.drawerLayoutCornerSize, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.headerLayout, com.joeykrim.rootcheck.R.attr.itemBackground, com.joeykrim.rootcheck.R.attr.itemHorizontalPadding, com.joeykrim.rootcheck.R.attr.itemIconPadding, com.joeykrim.rootcheck.R.attr.itemIconSize, com.joeykrim.rootcheck.R.attr.itemIconTint, com.joeykrim.rootcheck.R.attr.itemMaxLines, com.joeykrim.rootcheck.R.attr.itemRippleColor, com.joeykrim.rootcheck.R.attr.itemShapeAppearance, com.joeykrim.rootcheck.R.attr.itemShapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.itemShapeFillColor, com.joeykrim.rootcheck.R.attr.itemShapeInsetBottom, com.joeykrim.rootcheck.R.attr.itemShapeInsetEnd, com.joeykrim.rootcheck.R.attr.itemShapeInsetStart, com.joeykrim.rootcheck.R.attr.itemShapeInsetTop, com.joeykrim.rootcheck.R.attr.itemTextAppearance, com.joeykrim.rootcheck.R.attr.itemTextAppearanceActiveBoldEnabled, com.joeykrim.rootcheck.R.attr.itemTextColor, com.joeykrim.rootcheck.R.attr.itemVerticalPadding, com.joeykrim.rootcheck.R.attr.menu, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.subheaderColor, com.joeykrim.rootcheck.R.attr.subheaderInsetEnd, com.joeykrim.rootcheck.R.attr.subheaderInsetStart, com.joeykrim.rootcheck.R.attr.subheaderTextAppearance, com.joeykrim.rootcheck.R.attr.topInsetScrimEnabled};
    public static final int[] d = {com.joeykrim.rootcheck.R.attr.materialCircleRadius};
    public static final int[] e = {com.joeykrim.rootcheck.R.attr.minSeparation, com.joeykrim.rootcheck.R.attr.values};
    public static final int[] f = {com.joeykrim.rootcheck.R.attr.insetForeground};
    public static final int[] g = {com.joeykrim.rootcheck.R.attr.behavior_overlapTop};
    public static final int[] h = {R.attr.textAppearance, R.attr.text, R.attr.hint, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.defaultMarginsEnabled, com.joeykrim.rootcheck.R.attr.defaultScrollFlagsEnabled, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.forceDefaultNavigationOnClickListener, com.joeykrim.rootcheck.R.attr.hideNavigationIcon, com.joeykrim.rootcheck.R.attr.navigationIconTint, com.joeykrim.rootcheck.R.attr.strokeColor, com.joeykrim.rootcheck.R.attr.strokeWidth, com.joeykrim.rootcheck.R.attr.tintNavigationIcon};
    public static final int[] i = {R.attr.textAppearance, R.attr.focusable, R.attr.maxWidth, R.attr.text, R.attr.hint, R.attr.inputType, R.attr.imeOptions, com.joeykrim.rootcheck.R.attr.animateMenuItems, com.joeykrim.rootcheck.R.attr.animateNavigationIcon, com.joeykrim.rootcheck.R.attr.autoShowKeyboard, com.joeykrim.rootcheck.R.attr.backHandlingEnabled, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.closeIcon, com.joeykrim.rootcheck.R.attr.commitIcon, com.joeykrim.rootcheck.R.attr.defaultQueryHint, com.joeykrim.rootcheck.R.attr.goIcon, com.joeykrim.rootcheck.R.attr.headerLayout, com.joeykrim.rootcheck.R.attr.hideNavigationIcon, com.joeykrim.rootcheck.R.attr.iconifiedByDefault, com.joeykrim.rootcheck.R.attr.layout, com.joeykrim.rootcheck.R.attr.queryBackground, com.joeykrim.rootcheck.R.attr.queryHint, com.joeykrim.rootcheck.R.attr.searchHintIcon, com.joeykrim.rootcheck.R.attr.searchIcon, com.joeykrim.rootcheck.R.attr.searchPrefixText, com.joeykrim.rootcheck.R.attr.submitBackground, com.joeykrim.rootcheck.R.attr.suggestionRowLayout, com.joeykrim.rootcheck.R.attr.useDrawerArrowDrawable, com.joeykrim.rootcheck.R.attr.voiceIcon};
    public static final int[] j = {com.joeykrim.rootcheck.R.attr.cornerFamily, com.joeykrim.rootcheck.R.attr.cornerFamilyBottomLeft, com.joeykrim.rootcheck.R.attr.cornerFamilyBottomRight, com.joeykrim.rootcheck.R.attr.cornerFamilyTopLeft, com.joeykrim.rootcheck.R.attr.cornerFamilyTopRight, com.joeykrim.rootcheck.R.attr.cornerSize, com.joeykrim.rootcheck.R.attr.cornerSizeBottomLeft, com.joeykrim.rootcheck.R.attr.cornerSizeBottomRight, com.joeykrim.rootcheck.R.attr.cornerSizeTopLeft, com.joeykrim.rootcheck.R.attr.cornerSizeTopRight};
    public static final int[] k = {com.joeykrim.rootcheck.R.attr.contentPadding, com.joeykrim.rootcheck.R.attr.contentPaddingBottom, com.joeykrim.rootcheck.R.attr.contentPaddingEnd, com.joeykrim.rootcheck.R.attr.contentPaddingLeft, com.joeykrim.rootcheck.R.attr.contentPaddingRight, com.joeykrim.rootcheck.R.attr.contentPaddingStart, com.joeykrim.rootcheck.R.attr.contentPaddingTop, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.strokeColor, com.joeykrim.rootcheck.R.attr.strokeWidth};
    public static final int[] l = {R.attr.maxWidth, R.attr.maxHeight, R.attr.elevation, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.behavior_draggable, com.joeykrim.rootcheck.R.attr.coplanarSiblingViewId, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay};
    public static final int[] m = {R.attr.enabled, R.attr.value, R.attr.stepSize, R.attr.valueFrom, R.attr.valueTo, com.joeykrim.rootcheck.R.attr.haloColor, com.joeykrim.rootcheck.R.attr.haloRadius, com.joeykrim.rootcheck.R.attr.labelBehavior, com.joeykrim.rootcheck.R.attr.labelStyle, com.joeykrim.rootcheck.R.attr.minTouchTargetSize, com.joeykrim.rootcheck.R.attr.thumbColor, com.joeykrim.rootcheck.R.attr.thumbElevation, com.joeykrim.rootcheck.R.attr.thumbHeight, com.joeykrim.rootcheck.R.attr.thumbRadius, com.joeykrim.rootcheck.R.attr.thumbStrokeColor, com.joeykrim.rootcheck.R.attr.thumbStrokeWidth, com.joeykrim.rootcheck.R.attr.thumbTrackGapSize, com.joeykrim.rootcheck.R.attr.thumbWidth, com.joeykrim.rootcheck.R.attr.tickColor, com.joeykrim.rootcheck.R.attr.tickColorActive, com.joeykrim.rootcheck.R.attr.tickColorInactive, com.joeykrim.rootcheck.R.attr.tickRadiusActive, com.joeykrim.rootcheck.R.attr.tickRadiusInactive, com.joeykrim.rootcheck.R.attr.tickVisible, com.joeykrim.rootcheck.R.attr.trackColor, com.joeykrim.rootcheck.R.attr.trackColorActive, com.joeykrim.rootcheck.R.attr.trackColorInactive, com.joeykrim.rootcheck.R.attr.trackHeight, com.joeykrim.rootcheck.R.attr.trackInsideCornerSize, com.joeykrim.rootcheck.R.attr.trackStopIndicatorSize};
    public static final int[] n = {R.attr.maxWidth, com.joeykrim.rootcheck.R.attr.actionTextColorAlpha, com.joeykrim.rootcheck.R.attr.animationMode, com.joeykrim.rootcheck.R.attr.backgroundOverlayColorAlpha, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.backgroundTintMode, com.joeykrim.rootcheck.R.attr.elevation, com.joeykrim.rootcheck.R.attr.maxActionInlineWidth, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay};
    public static final int[] o = {com.joeykrim.rootcheck.R.attr.useMaterialThemeColors};
    public static final int[] p = {R.attr.icon, R.attr.layout, R.attr.text};
    public static final int[] q = {com.joeykrim.rootcheck.R.attr.tabBackground, com.joeykrim.rootcheck.R.attr.tabContentStart, com.joeykrim.rootcheck.R.attr.tabGravity, com.joeykrim.rootcheck.R.attr.tabIconTint, com.joeykrim.rootcheck.R.attr.tabIconTintMode, com.joeykrim.rootcheck.R.attr.tabIndicator, com.joeykrim.rootcheck.R.attr.tabIndicatorAnimationDuration, com.joeykrim.rootcheck.R.attr.tabIndicatorAnimationMode, com.joeykrim.rootcheck.R.attr.tabIndicatorColor, com.joeykrim.rootcheck.R.attr.tabIndicatorFullWidth, com.joeykrim.rootcheck.R.attr.tabIndicatorGravity, com.joeykrim.rootcheck.R.attr.tabIndicatorHeight, com.joeykrim.rootcheck.R.attr.tabInlineLabel, com.joeykrim.rootcheck.R.attr.tabMaxWidth, com.joeykrim.rootcheck.R.attr.tabMinWidth, com.joeykrim.rootcheck.R.attr.tabMode, com.joeykrim.rootcheck.R.attr.tabPadding, com.joeykrim.rootcheck.R.attr.tabPaddingBottom, com.joeykrim.rootcheck.R.attr.tabPaddingEnd, com.joeykrim.rootcheck.R.attr.tabPaddingStart, com.joeykrim.rootcheck.R.attr.tabPaddingTop, com.joeykrim.rootcheck.R.attr.tabRippleColor, com.joeykrim.rootcheck.R.attr.tabSelectedTextAppearance, com.joeykrim.rootcheck.R.attr.tabSelectedTextColor, com.joeykrim.rootcheck.R.attr.tabTextAppearance, com.joeykrim.rootcheck.R.attr.tabTextColor, com.joeykrim.rootcheck.R.attr.tabUnboundedRipple};
    public static final int[] r = {R.attr.textSize, R.attr.typeface, R.attr.textStyle, R.attr.textColor, R.attr.textColorHint, R.attr.textColorLink, R.attr.shadowColor, R.attr.shadowDx, R.attr.shadowDy, R.attr.shadowRadius, R.attr.fontFamily, R.attr.textFontWeight, com.joeykrim.rootcheck.R.attr.fontFamily, com.joeykrim.rootcheck.R.attr.fontVariationSettings, com.joeykrim.rootcheck.R.attr.textAllCaps, com.joeykrim.rootcheck.R.attr.textLocale};
    public static final int[] s = {com.joeykrim.rootcheck.R.attr.textInputLayoutFocusedRectEnabled};
    public static final int[] t = {R.attr.enabled, R.attr.textColorHint, R.attr.maxWidth, R.attr.minWidth, R.attr.hint, R.attr.maxEms, R.attr.minEms, com.joeykrim.rootcheck.R.attr.boxBackgroundColor, com.joeykrim.rootcheck.R.attr.boxBackgroundMode, com.joeykrim.rootcheck.R.attr.boxCollapsedPaddingTop, com.joeykrim.rootcheck.R.attr.boxCornerRadiusBottomEnd, com.joeykrim.rootcheck.R.attr.boxCornerRadiusBottomStart, com.joeykrim.rootcheck.R.attr.boxCornerRadiusTopEnd, com.joeykrim.rootcheck.R.attr.boxCornerRadiusTopStart, com.joeykrim.rootcheck.R.attr.boxStrokeColor, com.joeykrim.rootcheck.R.attr.boxStrokeErrorColor, com.joeykrim.rootcheck.R.attr.boxStrokeWidth, com.joeykrim.rootcheck.R.attr.boxStrokeWidthFocused, com.joeykrim.rootcheck.R.attr.counterEnabled, com.joeykrim.rootcheck.R.attr.counterMaxLength, com.joeykrim.rootcheck.R.attr.counterOverflowTextAppearance, com.joeykrim.rootcheck.R.attr.counterOverflowTextColor, com.joeykrim.rootcheck.R.attr.counterTextAppearance, com.joeykrim.rootcheck.R.attr.counterTextColor, com.joeykrim.rootcheck.R.attr.cursorColor, com.joeykrim.rootcheck.R.attr.cursorErrorColor, com.joeykrim.rootcheck.R.attr.endIconCheckable, com.joeykrim.rootcheck.R.attr.endIconContentDescription, com.joeykrim.rootcheck.R.attr.endIconDrawable, com.joeykrim.rootcheck.R.attr.endIconMinSize, com.joeykrim.rootcheck.R.attr.endIconMode, com.joeykrim.rootcheck.R.attr.endIconScaleType, com.joeykrim.rootcheck.R.attr.endIconTint, com.joeykrim.rootcheck.R.attr.endIconTintMode, com.joeykrim.rootcheck.R.attr.errorAccessibilityLiveRegion, com.joeykrim.rootcheck.R.attr.errorContentDescription, com.joeykrim.rootcheck.R.attr.errorEnabled, com.joeykrim.rootcheck.R.attr.errorIconDrawable, com.joeykrim.rootcheck.R.attr.errorIconTint, com.joeykrim.rootcheck.R.attr.errorIconTintMode, com.joeykrim.rootcheck.R.attr.errorTextAppearance, com.joeykrim.rootcheck.R.attr.errorTextColor, com.joeykrim.rootcheck.R.attr.expandedHintEnabled, com.joeykrim.rootcheck.R.attr.helperText, com.joeykrim.rootcheck.R.attr.helperTextEnabled, com.joeykrim.rootcheck.R.attr.helperTextTextAppearance, com.joeykrim.rootcheck.R.attr.helperTextTextColor, com.joeykrim.rootcheck.R.attr.hintAnimationEnabled, com.joeykrim.rootcheck.R.attr.hintEnabled, com.joeykrim.rootcheck.R.attr.hintTextAppearance, com.joeykrim.rootcheck.R.attr.hintTextColor, com.joeykrim.rootcheck.R.attr.passwordToggleContentDescription, com.joeykrim.rootcheck.R.attr.passwordToggleDrawable, com.joeykrim.rootcheck.R.attr.passwordToggleEnabled, com.joeykrim.rootcheck.R.attr.passwordToggleTint, com.joeykrim.rootcheck.R.attr.passwordToggleTintMode, com.joeykrim.rootcheck.R.attr.placeholderText, com.joeykrim.rootcheck.R.attr.placeholderTextAppearance, com.joeykrim.rootcheck.R.attr.placeholderTextColor, com.joeykrim.rootcheck.R.attr.prefixText, com.joeykrim.rootcheck.R.attr.prefixTextAppearance, com.joeykrim.rootcheck.R.attr.prefixTextColor, com.joeykrim.rootcheck.R.attr.shapeAppearance, com.joeykrim.rootcheck.R.attr.shapeAppearanceOverlay, com.joeykrim.rootcheck.R.attr.startIconCheckable, com.joeykrim.rootcheck.R.attr.startIconContentDescription, com.joeykrim.rootcheck.R.attr.startIconDrawable, com.joeykrim.rootcheck.R.attr.startIconMinSize, com.joeykrim.rootcheck.R.attr.startIconScaleType, com.joeykrim.rootcheck.R.attr.startIconTint, com.joeykrim.rootcheck.R.attr.startIconTintMode, com.joeykrim.rootcheck.R.attr.suffixText, com.joeykrim.rootcheck.R.attr.suffixTextAppearance, com.joeykrim.rootcheck.R.attr.suffixTextColor};
    public static final int[] u = {R.attr.textAppearance, com.joeykrim.rootcheck.R.attr.enforceMaterialTheme, com.joeykrim.rootcheck.R.attr.enforceTextAppearance};
    public static final int[] v = {R.attr.textAppearance, R.attr.textColor, R.attr.padding, R.attr.layout_margin, R.attr.minWidth, R.attr.minHeight, R.attr.text, com.joeykrim.rootcheck.R.attr.backgroundTint, com.joeykrim.rootcheck.R.attr.showMarker};
    public static final int[] w = {R.attr.orientation, R.attr.id, R.attr.visibility, R.attr.layout_width, R.attr.layout_height, R.attr.layout_marginLeft, R.attr.layout_marginTop, R.attr.layout_marginRight, R.attr.layout_marginBottom, R.attr.maxWidth, R.attr.maxHeight, R.attr.minWidth, R.attr.minHeight, R.attr.alpha, R.attr.transformPivotX, R.attr.transformPivotY, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.layout_marginStart, R.attr.layout_marginEnd, R.attr.translationZ, R.attr.elevation, com.joeykrim.rootcheck.R.attr.animate_relativeTo, com.joeykrim.rootcheck.R.attr.barrierAllowsGoneWidgets, com.joeykrim.rootcheck.R.attr.barrierDirection, com.joeykrim.rootcheck.R.attr.barrierMargin, com.joeykrim.rootcheck.R.attr.chainUseRtl, com.joeykrim.rootcheck.R.attr.constraint_referenced_ids, com.joeykrim.rootcheck.R.attr.drawPath, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_firstVerticalBias, com.joeykrim.rootcheck.R.attr.flow_firstVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_horizontalAlign, com.joeykrim.rootcheck.R.attr.flow_horizontalBias, com.joeykrim.rootcheck.R.attr.flow_horizontalGap, com.joeykrim.rootcheck.R.attr.flow_horizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastVerticalBias, com.joeykrim.rootcheck.R.attr.flow_lastVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_maxElementsWrap, com.joeykrim.rootcheck.R.attr.flow_verticalAlign, com.joeykrim.rootcheck.R.attr.flow_verticalBias, com.joeykrim.rootcheck.R.attr.flow_verticalGap, com.joeykrim.rootcheck.R.attr.flow_verticalStyle, com.joeykrim.rootcheck.R.attr.flow_wrapMode, com.joeykrim.rootcheck.R.attr.layout_constrainedHeight, com.joeykrim.rootcheck.R.attr.layout_constrainedWidth, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_toBaselineOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintCircle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleAngle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleRadius, com.joeykrim.rootcheck.R.attr.layout_constraintDimensionRatio, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_begin, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_end, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_default, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_max, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_min, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_bias, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_weight, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_creator, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_creator, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintTag, com.joeykrim.rootcheck.R.attr.layout_constraintTop_creator, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_bias, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_weight, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_default, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_max, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_min, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_percent, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteX, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteY, com.joeykrim.rootcheck.R.attr.layout_goneMarginBottom, com.joeykrim.rootcheck.R.attr.layout_goneMarginEnd, com.joeykrim.rootcheck.R.attr.layout_goneMarginLeft, com.joeykrim.rootcheck.R.attr.layout_goneMarginRight, com.joeykrim.rootcheck.R.attr.layout_goneMarginStart, com.joeykrim.rootcheck.R.attr.layout_goneMarginTop, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.motionStagger, com.joeykrim.rootcheck.R.attr.pathMotionArc, com.joeykrim.rootcheck.R.attr.pivotAnchor, com.joeykrim.rootcheck.R.attr.transitionEasing, com.joeykrim.rootcheck.R.attr.transitionPathRotate, com.joeykrim.rootcheck.R.attr.visibilityMode};
    public static final int[] x = {R.attr.orientation, R.attr.padding, R.attr.paddingLeft, R.attr.paddingTop, R.attr.paddingRight, R.attr.paddingBottom, R.attr.visibility, R.attr.maxWidth, R.attr.maxHeight, R.attr.minWidth, R.attr.minHeight, R.attr.paddingStart, R.attr.paddingEnd, R.attr.elevation, com.joeykrim.rootcheck.R.attr.barrierAllowsGoneWidgets, com.joeykrim.rootcheck.R.attr.barrierDirection, com.joeykrim.rootcheck.R.attr.barrierMargin, com.joeykrim.rootcheck.R.attr.chainUseRtl, com.joeykrim.rootcheck.R.attr.constraintSet, com.joeykrim.rootcheck.R.attr.constraint_referenced_ids, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_firstVerticalBias, com.joeykrim.rootcheck.R.attr.flow_firstVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_horizontalAlign, com.joeykrim.rootcheck.R.attr.flow_horizontalBias, com.joeykrim.rootcheck.R.attr.flow_horizontalGap, com.joeykrim.rootcheck.R.attr.flow_horizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastVerticalBias, com.joeykrim.rootcheck.R.attr.flow_lastVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_maxElementsWrap, com.joeykrim.rootcheck.R.attr.flow_verticalAlign, com.joeykrim.rootcheck.R.attr.flow_verticalBias, com.joeykrim.rootcheck.R.attr.flow_verticalGap, com.joeykrim.rootcheck.R.attr.flow_verticalStyle, com.joeykrim.rootcheck.R.attr.flow_wrapMode, com.joeykrim.rootcheck.R.attr.layoutDescription, com.joeykrim.rootcheck.R.attr.layout_constrainedHeight, com.joeykrim.rootcheck.R.attr.layout_constrainedWidth, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_toBaselineOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintCircle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleAngle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleRadius, com.joeykrim.rootcheck.R.attr.layout_constraintDimensionRatio, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_begin, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_end, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_default, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_max, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_min, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_bias, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_weight, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_creator, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_creator, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintTag, com.joeykrim.rootcheck.R.attr.layout_constraintTop_creator, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_bias, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_weight, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_default, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_max, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_min, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_percent, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteX, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteY, com.joeykrim.rootcheck.R.attr.layout_goneMarginBottom, com.joeykrim.rootcheck.R.attr.layout_goneMarginEnd, com.joeykrim.rootcheck.R.attr.layout_goneMarginLeft, com.joeykrim.rootcheck.R.attr.layout_goneMarginRight, com.joeykrim.rootcheck.R.attr.layout_goneMarginStart, com.joeykrim.rootcheck.R.attr.layout_goneMarginTop, com.joeykrim.rootcheck.R.attr.layout_optimizationLevel};
    public static final int[] y = {com.joeykrim.rootcheck.R.attr.content, com.joeykrim.rootcheck.R.attr.placeholder_emptyVisibility};
    public static final int[] z = {R.attr.orientation, R.attr.id, R.attr.visibility, R.attr.layout_width, R.attr.layout_height, R.attr.layout_marginLeft, R.attr.layout_marginTop, R.attr.layout_marginRight, R.attr.layout_marginBottom, R.attr.maxWidth, R.attr.maxHeight, R.attr.minWidth, R.attr.minHeight, R.attr.pivotX, R.attr.pivotY, R.attr.alpha, R.attr.transformPivotX, R.attr.transformPivotY, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.layout_marginStart, R.attr.layout_marginEnd, R.attr.translationZ, R.attr.elevation, com.joeykrim.rootcheck.R.attr.animate_relativeTo, com.joeykrim.rootcheck.R.attr.barrierAllowsGoneWidgets, com.joeykrim.rootcheck.R.attr.barrierDirection, com.joeykrim.rootcheck.R.attr.barrierMargin, com.joeykrim.rootcheck.R.attr.chainUseRtl, com.joeykrim.rootcheck.R.attr.constraint_referenced_ids, com.joeykrim.rootcheck.R.attr.deriveConstraintsFrom, com.joeykrim.rootcheck.R.attr.drawPath, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_firstHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_firstVerticalBias, com.joeykrim.rootcheck.R.attr.flow_firstVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_horizontalAlign, com.joeykrim.rootcheck.R.attr.flow_horizontalBias, com.joeykrim.rootcheck.R.attr.flow_horizontalGap, com.joeykrim.rootcheck.R.attr.flow_horizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalBias, com.joeykrim.rootcheck.R.attr.flow_lastHorizontalStyle, com.joeykrim.rootcheck.R.attr.flow_lastVerticalBias, com.joeykrim.rootcheck.R.attr.flow_lastVerticalStyle, com.joeykrim.rootcheck.R.attr.flow_maxElementsWrap, com.joeykrim.rootcheck.R.attr.flow_verticalAlign, com.joeykrim.rootcheck.R.attr.flow_verticalBias, com.joeykrim.rootcheck.R.attr.flow_verticalGap, com.joeykrim.rootcheck.R.attr.flow_verticalStyle, com.joeykrim.rootcheck.R.attr.flow_wrapMode, com.joeykrim.rootcheck.R.attr.layout_constrainedHeight, com.joeykrim.rootcheck.R.attr.layout_constrainedWidth, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_toBaselineOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintCircle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleAngle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleRadius, com.joeykrim.rootcheck.R.attr.layout_constraintDimensionRatio, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_begin, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_end, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_default, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_max, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_min, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_bias, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_weight, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_creator, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_creator, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintTag, com.joeykrim.rootcheck.R.attr.layout_constraintTop_creator, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_bias, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_weight, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_default, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_max, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_min, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_percent, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteX, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteY, com.joeykrim.rootcheck.R.attr.layout_goneMarginBottom, com.joeykrim.rootcheck.R.attr.layout_goneMarginEnd, com.joeykrim.rootcheck.R.attr.layout_goneMarginLeft, com.joeykrim.rootcheck.R.attr.layout_goneMarginRight, com.joeykrim.rootcheck.R.attr.layout_goneMarginStart, com.joeykrim.rootcheck.R.attr.layout_goneMarginTop, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.motionStagger, com.joeykrim.rootcheck.R.attr.pathMotionArc, com.joeykrim.rootcheck.R.attr.pivotAnchor, com.joeykrim.rootcheck.R.attr.transitionEasing, com.joeykrim.rootcheck.R.attr.transitionPathRotate};
    public static final int[] A = {com.joeykrim.rootcheck.R.attr.attributeName, com.joeykrim.rootcheck.R.attr.customBoolean, com.joeykrim.rootcheck.R.attr.customColorDrawableValue, com.joeykrim.rootcheck.R.attr.customColorValue, com.joeykrim.rootcheck.R.attr.customDimension, com.joeykrim.rootcheck.R.attr.customFloatValue, com.joeykrim.rootcheck.R.attr.customIntegerValue, com.joeykrim.rootcheck.R.attr.customPixelDimension, com.joeykrim.rootcheck.R.attr.customStringValue};
    public static final int[] B = {com.joeykrim.rootcheck.R.attr.altSrc, com.joeykrim.rootcheck.R.attr.brightness, com.joeykrim.rootcheck.R.attr.contrast, com.joeykrim.rootcheck.R.attr.crossfade, com.joeykrim.rootcheck.R.attr.overlay, com.joeykrim.rootcheck.R.attr.round, com.joeykrim.rootcheck.R.attr.roundPercent, com.joeykrim.rootcheck.R.attr.saturation, com.joeykrim.rootcheck.R.attr.warmth};
    public static final int[] C = {R.attr.alpha, R.attr.transformPivotX, R.attr.transformPivotY, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.translationZ, R.attr.elevation, com.joeykrim.rootcheck.R.attr.curveFit, com.joeykrim.rootcheck.R.attr.framePosition, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.motionTarget, com.joeykrim.rootcheck.R.attr.transitionEasing, com.joeykrim.rootcheck.R.attr.transitionPathRotate};
    public static final int[] D = {R.attr.alpha, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.translationZ, R.attr.elevation, com.joeykrim.rootcheck.R.attr.curveFit, com.joeykrim.rootcheck.R.attr.framePosition, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.motionTarget, com.joeykrim.rootcheck.R.attr.transitionEasing, com.joeykrim.rootcheck.R.attr.transitionPathRotate, com.joeykrim.rootcheck.R.attr.waveOffset, com.joeykrim.rootcheck.R.attr.wavePeriod, com.joeykrim.rootcheck.R.attr.waveShape, com.joeykrim.rootcheck.R.attr.waveVariesBy};
    public static final int[] E = {com.joeykrim.rootcheck.R.attr.curveFit, com.joeykrim.rootcheck.R.attr.drawPath, com.joeykrim.rootcheck.R.attr.framePosition, com.joeykrim.rootcheck.R.attr.keyPositionType, com.joeykrim.rootcheck.R.attr.motionTarget, com.joeykrim.rootcheck.R.attr.pathMotionArc, com.joeykrim.rootcheck.R.attr.percentHeight, com.joeykrim.rootcheck.R.attr.percentWidth, com.joeykrim.rootcheck.R.attr.percentX, com.joeykrim.rootcheck.R.attr.percentY, com.joeykrim.rootcheck.R.attr.sizePercent, com.joeykrim.rootcheck.R.attr.transitionEasing};
    public static final int[] F = {R.attr.alpha, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.translationZ, R.attr.elevation, com.joeykrim.rootcheck.R.attr.curveFit, com.joeykrim.rootcheck.R.attr.framePosition, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.motionTarget, com.joeykrim.rootcheck.R.attr.transitionEasing, com.joeykrim.rootcheck.R.attr.transitionPathRotate, com.joeykrim.rootcheck.R.attr.waveDecay, com.joeykrim.rootcheck.R.attr.waveOffset, com.joeykrim.rootcheck.R.attr.wavePeriod, com.joeykrim.rootcheck.R.attr.waveShape};
    public static final int[] G = {com.joeykrim.rootcheck.R.attr.framePosition, com.joeykrim.rootcheck.R.attr.motionTarget, com.joeykrim.rootcheck.R.attr.motion_postLayoutCollision, com.joeykrim.rootcheck.R.attr.motion_triggerOnCollision, com.joeykrim.rootcheck.R.attr.onCross, com.joeykrim.rootcheck.R.attr.onNegativeCross, com.joeykrim.rootcheck.R.attr.onPositiveCross, com.joeykrim.rootcheck.R.attr.triggerId, com.joeykrim.rootcheck.R.attr.triggerReceiver, com.joeykrim.rootcheck.R.attr.triggerSlack};
    public static final int[] H = {R.attr.orientation, R.attr.layout_width, R.attr.layout_height, R.attr.layout_marginLeft, R.attr.layout_marginTop, R.attr.layout_marginRight, R.attr.layout_marginBottom, R.attr.layout_marginStart, R.attr.layout_marginEnd, com.joeykrim.rootcheck.R.attr.barrierAllowsGoneWidgets, com.joeykrim.rootcheck.R.attr.barrierDirection, com.joeykrim.rootcheck.R.attr.barrierMargin, com.joeykrim.rootcheck.R.attr.chainUseRtl, com.joeykrim.rootcheck.R.attr.constraint_referenced_ids, com.joeykrim.rootcheck.R.attr.layout_constrainedHeight, com.joeykrim.rootcheck.R.attr.layout_constrainedWidth, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBaseline_toBaselineOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_creator, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintBottom_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintCircle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleAngle, com.joeykrim.rootcheck.R.attr.layout_constraintCircleRadius, com.joeykrim.rootcheck.R.attr.layout_constraintDimensionRatio, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintEnd_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_begin, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_end, com.joeykrim.rootcheck.R.attr.layout_constraintGuide_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_default, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_max, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_min, com.joeykrim.rootcheck.R.attr.layout_constraintHeight_percent, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_bias, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintHorizontal_weight, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_creator, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintLeft_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_creator, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toLeftOf, com.joeykrim.rootcheck.R.attr.layout_constraintRight_toRightOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toEndOf, com.joeykrim.rootcheck.R.attr.layout_constraintStart_toStartOf, com.joeykrim.rootcheck.R.attr.layout_constraintTop_creator, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toBottomOf, com.joeykrim.rootcheck.R.attr.layout_constraintTop_toTopOf, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_bias, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_chainStyle, com.joeykrim.rootcheck.R.attr.layout_constraintVertical_weight, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_default, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_max, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_min, com.joeykrim.rootcheck.R.attr.layout_constraintWidth_percent, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteX, com.joeykrim.rootcheck.R.attr.layout_editor_absoluteY, com.joeykrim.rootcheck.R.attr.layout_goneMarginBottom, com.joeykrim.rootcheck.R.attr.layout_goneMarginEnd, com.joeykrim.rootcheck.R.attr.layout_goneMarginLeft, com.joeykrim.rootcheck.R.attr.layout_goneMarginRight, com.joeykrim.rootcheck.R.attr.layout_goneMarginStart, com.joeykrim.rootcheck.R.attr.layout_goneMarginTop, com.joeykrim.rootcheck.R.attr.maxHeight, com.joeykrim.rootcheck.R.attr.maxWidth, com.joeykrim.rootcheck.R.attr.minHeight, com.joeykrim.rootcheck.R.attr.minWidth};
    public static final int[] I = {com.joeykrim.rootcheck.R.attr.mock_diagonalsColor, com.joeykrim.rootcheck.R.attr.mock_label, com.joeykrim.rootcheck.R.attr.mock_labelBackgroundColor, com.joeykrim.rootcheck.R.attr.mock_labelColor, com.joeykrim.rootcheck.R.attr.mock_showDiagonals, com.joeykrim.rootcheck.R.attr.mock_showLabel};
    public static final int[] J = {com.joeykrim.rootcheck.R.attr.animate_relativeTo, com.joeykrim.rootcheck.R.attr.drawPath, com.joeykrim.rootcheck.R.attr.motionPathRotate, com.joeykrim.rootcheck.R.attr.motionStagger, com.joeykrim.rootcheck.R.attr.pathMotionArc, com.joeykrim.rootcheck.R.attr.transitionEasing};
    public static final int[] K = {com.joeykrim.rootcheck.R.attr.onHide, com.joeykrim.rootcheck.R.attr.onShow};
    public static final int[] L = {com.joeykrim.rootcheck.R.attr.applyMotionScene, com.joeykrim.rootcheck.R.attr.currentState, com.joeykrim.rootcheck.R.attr.layoutDescription, com.joeykrim.rootcheck.R.attr.motionDebug, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.showPaths};
    public static final int[] M = {com.joeykrim.rootcheck.R.attr.defaultDuration, com.joeykrim.rootcheck.R.attr.layoutDuringTransition};
    public static final int[] N = {com.joeykrim.rootcheck.R.attr.telltales_tailColor, com.joeykrim.rootcheck.R.attr.telltales_tailScale, com.joeykrim.rootcheck.R.attr.telltales_velocityMode};
    public static final int[] O = {com.joeykrim.rootcheck.R.attr.clickAction, com.joeykrim.rootcheck.R.attr.targetId};
    public static final int[] P = {com.joeykrim.rootcheck.R.attr.dragDirection, com.joeykrim.rootcheck.R.attr.dragScale, com.joeykrim.rootcheck.R.attr.dragThreshold, com.joeykrim.rootcheck.R.attr.limitBoundsTo, com.joeykrim.rootcheck.R.attr.maxAcceleration, com.joeykrim.rootcheck.R.attr.maxVelocity, com.joeykrim.rootcheck.R.attr.moveWhenScrollAtTop, com.joeykrim.rootcheck.R.attr.nestedScrollFlags, com.joeykrim.rootcheck.R.attr.onTouchUp, com.joeykrim.rootcheck.R.attr.touchAnchorId, com.joeykrim.rootcheck.R.attr.touchAnchorSide, com.joeykrim.rootcheck.R.attr.touchRegionId};
    public static final int[] Q = {R.attr.visibility, R.attr.alpha, com.joeykrim.rootcheck.R.attr.layout_constraintTag, com.joeykrim.rootcheck.R.attr.motionProgress, com.joeykrim.rootcheck.R.attr.visibilityMode};
    public static final int[] R = {R.attr.id, com.joeykrim.rootcheck.R.attr.constraints};
    public static final int[] S = {com.joeykrim.rootcheck.R.attr.defaultState};
    public static final int[] T = {R.attr.transformPivotX, R.attr.transformPivotY, R.attr.translationX, R.attr.translationY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.rotationX, R.attr.rotationY, R.attr.translationZ, R.attr.elevation};
    public static final int[] U = {R.attr.id, com.joeykrim.rootcheck.R.attr.autoTransition, com.joeykrim.rootcheck.R.attr.constraintSetEnd, com.joeykrim.rootcheck.R.attr.constraintSetStart, com.joeykrim.rootcheck.R.attr.duration, com.joeykrim.rootcheck.R.attr.layoutDuringTransition, com.joeykrim.rootcheck.R.attr.motionInterpolator, com.joeykrim.rootcheck.R.attr.pathMotionArc, com.joeykrim.rootcheck.R.attr.staggered, com.joeykrim.rootcheck.R.attr.transitionDisable, com.joeykrim.rootcheck.R.attr.transitionFlags};
    public static final int[] V = {com.joeykrim.rootcheck.R.attr.constraints, com.joeykrim.rootcheck.R.attr.region_heightLessThan, com.joeykrim.rootcheck.R.attr.region_heightMoreThan, com.joeykrim.rootcheck.R.attr.region_widthLessThan, com.joeykrim.rootcheck.R.attr.region_widthMoreThan};
    public static final int[] W = {R.attr.orientation, R.attr.clipToPadding, R.attr.descendantFocusability, com.joeykrim.rootcheck.R.attr.fastScrollEnabled, com.joeykrim.rootcheck.R.attr.fastScrollHorizontalThumbDrawable, com.joeykrim.rootcheck.R.attr.fastScrollHorizontalTrackDrawable, com.joeykrim.rootcheck.R.attr.fastScrollVerticalThumbDrawable, com.joeykrim.rootcheck.R.attr.fastScrollVerticalTrackDrawable, com.joeykrim.rootcheck.R.attr.layoutManager, com.joeykrim.rootcheck.R.attr.reverseLayout, com.joeykrim.rootcheck.R.attr.spanCount, com.joeykrim.rootcheck.R.attr.stackFromEnd};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final O2 f2480do = new O2();

    static {
        int i2 = 7;
        f2494if = new C0174Dp("STATE_REG", i2);
        f2489for = new C0174Dp("STATE_COMPLETED", i2);
        f2503new = new C0174Dp("STATE_CANCELLED", i2);
    }

    public /* synthetic */ O2() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m1579break(float f2) {
        if (f2 < 1.0f) {
            return -16777216;
        }
        if (f2 > 99.0f) {
            return -1;
        }
        float f3 = (f2 + 16.0f) / 116.0f;
        float f4 = (f2 > 8.0f ? 1 : (f2 == 8.0f ? 0 : -1)) > 0 ? f3 * f3 * f3 : f2 / 903.2963f;
        float f5 = f3 * f3 * f3;
        boolean z2 = f5 > 0.008856452f;
        float f6 = z2 ? f5 : ((f3 * 116.0f) - 16.0f) / 903.2963f;
        if (!z2) {
            f5 = ((f3 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = f2481do;
        return G8.m708do(f6 * fArr[0], f4 * fArr[1], f5 * fArr[2]);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m1580case() {
        int i2 = AsyncTaskC3619rK.f15259new;
        int i3 = WelcomeScreens.f12289break;
        ("JIuOCya2W7LwTxbPhSKETlrcGlR5Zkvheq0M1KK3oln7MX7gHelICBziuZN7alsbk8D0Gjrzp4WC1Zp97siHBXqYiCDqNUIh9edHk7mIbjFVSIzoBzEnwzvQ5ICpGJSkBRkeE9QikrRnoIUobAkTOirM7J5A1HS1SIU5MDmpNKvXxc8vKEK4lsnAEe3lzjMlTX3mBx6qiBR2JdNORKfpYVqOEURwHKq5hIiiodgsj4GPq7r6NLmW2W1z8kru2+AFF1JvliPpvKdytX+HcNSn3O67QyBKNJkImsxgOTx2UWXaHbtdSWr6goFf4lnoP7ExTJADIkRf/B4Gy9WdRHe72uvDyjUsf+T6NAzCoAM3LTJtMgb2bOfFif1A4dsTUQtH6zWNKzxJYonqKEZQIDAQAB".concat("R2wiKvtLHsE3dnvULpq7o5ONx45AN8JIuOCya2W7LwTxbPhSKETlrcGlR5Zkvheq0M1KK3oln7MX7gHelICBziuZN7alsbk8+AFF1JvliPpvKdytX+HcNSn3O67QyBKNJkImsxgOTx2UWXaHbtdSWr6goFf4lnoP7ExTJADIkRf/B4Gy9WdRHe72uvDyjUsf+T6NAzCoAM3LTJtMgb2bOfFif1A4dsTUQtH6zWNKzxJYonqKEZQIDAQAB") + "+AFF1JvliPpvKdytX+HcNSn3O67QyBKNJkImsxgOTx2UWXaHbtdSWr6goFf4lnoP7ExTJADIkRf/B4Gy9WdRHe72uvDyjUsf+T6NAzCoAM3LTJtMgb2bOfFif1A4dsTUQtH6zWNKzxJYonqKEZQIDAQABNORKfpYVqOEURwHKq5hIiiodgsj4GPq7r6NLmW2W1z8kru2+AFF1JvliPpvKdytX+HcNSn3O67QyBKNJkImsxgOTx2UWXaHbtdSWr6goFf4lnoP7ExTJADIkRf/B4Gy9WdRHe72uvDyjUsf+T6NAzCoAM3LTJtMgb2bOfFif1A4dsTUQtH6zWNKzxJYonqKEZQIDAQAB").substring(3);
        "RmULd9HUzegSr2GaFITlzyn3TjXm0SomQSPIwnRFEAh2yprXzbx3mPRERa1D38xtWar6PC50jgR+Ad/BWu+YwVbuudvKxZBhTmkvLv4b59eZjrLq2Cbf2Vwcnb3sGuYUCym9GCWCphUosQslDMEVG8orKqHGzS37FD785cOdNkQPQ1D38xtWar6PC50jgR+Ad/BWu+RmULd9HUzegSr2GaFITlzyn3TjXm0SomQSPIwnRFEAh2yprXzbx3mPRERafYwVbuudvKxZBhTmkvLv4b59eZjrLq2Cbf2Vwcnb3sGuYUCym9GCWCphUosQslDMEVG8orKqHGzS37FD".substring(13);
        String str = LD.f1935do;
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m1581catch(float f2, int i2, int i3) {
        return G8.m711new(G8.m707case(i3, Math.round(Color.alpha(i3) * f2)), i2);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m1582class(String str, Object... objArr) {
        int indexOf;
        String sb;
        int i2 = 0;
        for (int i3 = 0; i3 < objArr.length; i3++) {
            Object obj = objArr[i3];
            if (obj == null) {
                sb = "null";
            } else {
                try {
                    sb = obj.toString();
                } catch (Exception e2) {
                    String name = obj.getClass().getName();
                    String hexString = Integer.toHexString(System.identityHashCode(obj));
                    StringBuilder sb2 = new StringBuilder(String.valueOf(hexString).length() + name.length() + 1);
                    sb2.append(name);
                    sb2.append('@');
                    sb2.append(hexString);
                    String sb3 = sb2.toString();
                    Logger logger = Logger.getLogger("com.google.common.base.Strings");
                    Level level = Level.WARNING;
                    String valueOf = String.valueOf(sb3);
                    logger.log(level, valueOf.length() != 0 ? "Exception during lenientFormat for ".concat(valueOf) : new String("Exception during lenientFormat for "), (Throwable) e2);
                    String name2 = e2.getClass().getName();
                    StringBuilder sb4 = new StringBuilder(name2.length() + String.valueOf(sb3).length() + 9);
                    sb4.append("<");
                    sb4.append(sb3);
                    sb4.append(" threw ");
                    sb4.append(name2);
                    sb4.append(">");
                    sb = sb4.toString();
                }
            }
            objArr[i3] = sb;
        }
        StringBuilder sb5 = new StringBuilder((objArr.length * 16) + str.length());
        int i4 = 0;
        while (i2 < objArr.length && (indexOf = str.indexOf("%s", i4)) != -1) {
            sb5.append((CharSequence) str, i4, indexOf);
            sb5.append(objArr[i2]);
            i4 = indexOf + 2;
            i2++;
        }
        sb5.append((CharSequence) str, i4, str.length());
        if (i2 < objArr.length) {
            sb5.append(" [");
            sb5.append(objArr[i2]);
            for (int i5 = i2 + 1; i5 < objArr.length; i5++) {
                sb5.append(", ");
                sb5.append(objArr[i5]);
            }
            sb5.append(']');
        }
        return sb5.toString();
    }

    /* renamed from: const, reason: not valid java name */
    public static float m1583const(int i2) {
        float f2 = i2 / 255.0f;
        return (f2 <= 0.04045f ? f2 / 12.92f : (float) Math.pow((f2 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m1584else(Context context, int i2, int i3) {
        Integer num;
        TypedValue m304do = C0154Cr.m304do(context, i2);
        if (m304do != null) {
            int i4 = m304do.resourceId;
            num = Integer.valueOf(i4 != 0 ? C0466Ra.getColor(context, i4) : m304do.data);
        } else {
            num = null;
        }
        return num != null ? num.intValue() : i3;
    }

    /* renamed from: final, reason: not valid java name */
    public static final String m1585final(BufferedReader bufferedReader) {
        StringWriter stringWriter = new StringWriter();
        char[] cArr = new char[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        int read = bufferedReader.read(cArr);
        while (read >= 0) {
            stringWriter.write(cArr, 0, read);
            read = bufferedReader.read(cArr);
        }
        String stringWriter2 = stringWriter.toString();
        C0173Do.m399new(stringWriter2, "buffer.toString()");
        return stringWriter2;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m1586for(float[] fArr, float f2) {
        if (f2 <= 0.5f) {
            fArr[0] = 1.0f - (f2 * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f2 * 2.0f) - 1.0f;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m1587goto(View view, int i2) {
        Context context = view.getContext();
        TypedValue m305for = C0154Cr.m305for(view.getContext(), i2, view.getClass().getCanonicalName());
        int i3 = m305for.resourceId;
        return i3 != 0 ? C0466Ra.getColor(context, i3) : m305for.data;
    }

    /* renamed from: if, reason: not valid java name */
    public static E6 m1588if(C0162Dd c0162Dd) {
        C6 c6 = new C6();
        E6<T> e6 = new E6<>(c6);
        c6.f332do = e6;
        c6.f334do = C2876hb.class;
        try {
            c0162Dd.f(new C2935ib(c6, c0162Dd));
            c6.f334do = "Deferred.asListenableFuture";
        } catch (Exception e2) {
            e6.f734do.mo1470while(e2);
        }
        return e6;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m1589new(int i2, int i3) {
        return G8.m707case(i2, (Color.alpha(i2) * i3) / 255);
    }

    /* renamed from: super, reason: not valid java name */
    public static float m1590super() {
        return ((float) Math.pow((50.0f + 16.0d) / 116.0d, 3.0d)) * 100.0f;
    }

    /* renamed from: this, reason: not valid java name */
    public static int m1591this(Cursor cursor, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        return cursor.getColumnIndexOrThrow("`" + str + "`");
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m1592throw(String str, String[] strArr, String[] strArr2) {
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i2 = 0; i2 < min; i2++) {
            String str2 = strArr[i2];
            if ((str == null && str2 == null) ? true : str == null ? false : str.equals(str2)) {
                return strArr2[i2];
            }
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m1593try(AbstractC3370n6 abstractC3370n6) {
        StringBuilder sb = new StringBuilder(abstractC3370n6.size());
        for (int i2 = 0; i2 < abstractC3370n6.size(); i2++) {
            byte mo7556try = abstractC3370n6.mo7556try(i2);
            if (mo7556try == 34) {
                sb.append("\\\"");
            } else if (mo7556try == 39) {
                sb.append("\\'");
            } else if (mo7556try != 92) {
                switch (mo7556try) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (mo7556try < 32 || mo7556try > 126) {
                            sb.append('\\');
                            sb.append((char) (((mo7556try >>> 6) & 3) + 48));
                            sb.append((char) (((mo7556try >>> 3) & 7) + 48));
                            sb.append((char) ((mo7556try & 7) + 48));
                            break;
                        } else {
                            sb.append((char) mo7556try);
                            break;
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    @Override // defpackage.InterfaceC3499pH
    /* renamed from: do, reason: not valid java name */
    public long mo1594do() {
        return System.currentTimeMillis() * 1000;
    }

    public /* synthetic */ O2(Configuration configuration) {
        C0173Do.m401try(configuration, "newConfig");
    }
}
