package defpackage;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.view.View;
import android.view.ViewParent;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.AppCall;
import com.facebook.internal.Cfor;
import com.facebook.internal.NativeAppCallAttachmentStore;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import com.joeykrim.rootcheck.R;
import defpackage.C0716as;
import defpackage.QK;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
public class O4 implements InterfaceC3927wb {

    /* renamed from: case, reason: not valid java name */
    public static final C0174Dp f2525case;

    /* renamed from: do, reason: not valid java name */
    public static C0101Ai f2532do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f2535do = false;

    /* renamed from: else, reason: not valid java name */
    public static final C0174Dp f2540else;

    /* renamed from: for, reason: not valid java name */
    public static final C0174Dp f2545for;

    /* renamed from: goto, reason: not valid java name */
    public static final C0174Dp f2549goto;

    /* renamed from: if, reason: not valid java name */
    public static final C0174Dp f2551if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static boolean f2553if = false;

    /* renamed from: new, reason: not valid java name */
    public static final C0174Dp f2560new;

    /* renamed from: try, reason: not valid java name */
    public static final C0174Dp f2578try;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f2536do = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0174Dp f2533do = new C0174Dp("CLOSED", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0361Mf f2534do = new C0361Mf(false);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final C0361Mf f2552if = new C0361Mf(true);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[][] f2539do = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[][] f2556if = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[][] f2548for = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, -1, -1}, new int[]{6, 32, 58, 84, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, FacebookMediationAdapter.ERROR_FACEBOOK_INITIALIZATION, 130, -1}, new int[]{6, 30, 56, 82, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 132, 158}, new int[]{6, 32, 58, 84, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, 136, 162}, new int[]{6, 26, 54, 82, FacebookMediationAdapter.ERROR_FAILED_TO_PRESENT_AD, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[][] f2563new = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* renamed from: this, reason: not valid java name */
    public static final C0174Dp f2573this = new C0174Dp("NULL", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f2537do = {R.attr.anim_scale_factor, R.attr.circle_end_color, R.attr.circle_start_color, R.attr.dots_primary_color, R.attr.dots_secondary_color, R.attr.icon_size, R.attr.icon_type, R.attr.is_enabled, R.attr.like_drawable, R.attr.liked, R.attr.unlike_drawable};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f2554if = {android.R.attr.color, android.R.attr.alpha, android.R.attr.lStar, R.attr.alpha, R.attr.lStar};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[] f2546for = {R.attr.fontProviderAuthority, R.attr.fontProviderCerts, R.attr.fontProviderFetchStrategy, R.attr.fontProviderFetchTimeout, R.attr.fontProviderPackage, R.attr.fontProviderQuery, R.attr.fontProviderSystemFontFamily};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[] f2561new = {android.R.attr.font, android.R.attr.fontWeight, android.R.attr.fontStyle, android.R.attr.ttcIndex, android.R.attr.fontVariationSettings, R.attr.font, R.attr.fontStyle, R.attr.fontVariationSettings, R.attr.fontWeight, R.attr.ttcIndex};

    /* renamed from: try, reason: not valid java name and collision with other field name */
    public static final int[] f2579try = {android.R.attr.startColor, android.R.attr.endColor, android.R.attr.type, android.R.attr.centerX, android.R.attr.centerY, android.R.attr.gradientRadius, android.R.attr.tileMode, android.R.attr.centerColor, android.R.attr.startX, android.R.attr.startY, android.R.attr.endX, android.R.attr.endY};

    /* renamed from: case, reason: not valid java name and collision with other field name */
    public static final int[] f2526case = {android.R.attr.color, android.R.attr.offset};

    /* renamed from: else, reason: not valid java name and collision with other field name */
    public static final int[] f2541else = {R.attr.background, R.attr.backgroundSplit, R.attr.backgroundStacked, R.attr.contentInsetEnd, R.attr.contentInsetEndWithActions, R.attr.contentInsetLeft, R.attr.contentInsetRight, R.attr.contentInsetStart, R.attr.contentInsetStartWithNavigation, R.attr.customNavigationLayout, R.attr.displayOptions, R.attr.divider, R.attr.elevation, R.attr.height, R.attr.hideOnContentScroll, R.attr.homeAsUpIndicator, R.attr.homeLayout, R.attr.icon, R.attr.indeterminateProgressStyle, R.attr.itemPadding, R.attr.logo, R.attr.navigationMode, R.attr.popupTheme, R.attr.progressBarPadding, R.attr.progressBarStyle, R.attr.subtitle, R.attr.subtitleTextStyle, R.attr.title, R.attr.titleTextStyle};

    /* renamed from: goto, reason: not valid java name and collision with other field name */
    public static final int[] f2550goto = {android.R.attr.layout_gravity};

    /* renamed from: this, reason: not valid java name and collision with other field name */
    public static final int[] f2574this = {android.R.attr.minWidth};

    /* renamed from: break, reason: not valid java name */
    public static final int[] f2524break = {R.attr.background, R.attr.backgroundSplit, R.attr.closeItemLayout, R.attr.height, R.attr.subtitleTextStyle, R.attr.titleTextStyle};

    /* renamed from: catch, reason: not valid java name */
    public static final int[] f2527catch = {R.attr.expandActivityOverflowButtonDrawable, R.attr.initialActivityCount};

    /* renamed from: class, reason: not valid java name */
    public static final int[] f2528class = {android.R.attr.layout, R.attr.buttonIconDimen, R.attr.buttonPanelSideLayout, R.attr.listItemLayout, R.attr.listLayout, R.attr.multiChoiceItemLayout, R.attr.showTitle, R.attr.singleChoiceItemLayout};

    /* renamed from: const, reason: not valid java name */
    public static final int[] f2529const = {android.R.attr.src, R.attr.srcCompat, R.attr.tint, R.attr.tintMode};

    /* renamed from: final, reason: not valid java name */
    public static final int[] f2543final = {android.R.attr.thumb, R.attr.tickMark, R.attr.tickMarkTint, R.attr.tickMarkTintMode};

    /* renamed from: super, reason: not valid java name */
    public static final int[] f2571super = {android.R.attr.textAppearance, android.R.attr.drawableTop, android.R.attr.drawableBottom, android.R.attr.drawableLeft, android.R.attr.drawableRight, android.R.attr.drawableStart, android.R.attr.drawableEnd};

    /* renamed from: throw, reason: not valid java name */
    public static final int[] f2575throw = {android.R.attr.textAppearance, R.attr.autoSizeMaxTextSize, R.attr.autoSizeMinTextSize, R.attr.autoSizePresetSizes, R.attr.autoSizeStepGranularity, R.attr.autoSizeTextType, R.attr.drawableBottomCompat, R.attr.drawableEndCompat, R.attr.drawableLeftCompat, R.attr.drawableRightCompat, R.attr.drawableStartCompat, R.attr.drawableTint, R.attr.drawableTintMode, R.attr.drawableTopCompat, R.attr.emojiCompatEnabled, R.attr.firstBaselineToTopHeight, R.attr.fontFamily, R.attr.fontVariationSettings, R.attr.lastBaselineToBottomHeight, R.attr.lineHeight, R.attr.textAllCaps, R.attr.textLocale};

    /* renamed from: while, reason: not valid java name */
    public static final int[] f2581while = {android.R.attr.windowIsFloating, android.R.attr.windowAnimationStyle, R.attr.actionBarDivider, R.attr.actionBarItemBackground, R.attr.actionBarPopupTheme, R.attr.actionBarSize, R.attr.actionBarSplitStyle, R.attr.actionBarStyle, R.attr.actionBarTabBarStyle, R.attr.actionBarTabStyle, R.attr.actionBarTabTextStyle, R.attr.actionBarTheme, R.attr.actionBarWidgetTheme, R.attr.actionButtonStyle, R.attr.actionDropDownStyle, R.attr.actionMenuTextAppearance, R.attr.actionMenuTextColor, R.attr.actionModeBackground, R.attr.actionModeCloseButtonStyle, R.attr.actionModeCloseContentDescription, R.attr.actionModeCloseDrawable, R.attr.actionModeCopyDrawable, R.attr.actionModeCutDrawable, R.attr.actionModeFindDrawable, R.attr.actionModePasteDrawable, R.attr.actionModePopupWindowStyle, R.attr.actionModeSelectAllDrawable, R.attr.actionModeShareDrawable, R.attr.actionModeSplitBackground, R.attr.actionModeStyle, R.attr.actionModeTheme, R.attr.actionModeWebSearchDrawable, R.attr.actionOverflowButtonStyle, R.attr.actionOverflowMenuStyle, R.attr.activityChooserViewStyle, R.attr.alertDialogButtonGroupStyle, R.attr.alertDialogCenterButtons, R.attr.alertDialogStyle, R.attr.alertDialogTheme, R.attr.autoCompleteTextViewStyle, R.attr.borderlessButtonStyle, R.attr.buttonBarButtonStyle, R.attr.buttonBarNegativeButtonStyle, R.attr.buttonBarNeutralButtonStyle, R.attr.buttonBarPositiveButtonStyle, R.attr.buttonBarStyle, R.attr.buttonStyle, R.attr.buttonStyleSmall, R.attr.checkboxStyle, R.attr.checkedTextViewStyle, R.attr.colorAccent, R.attr.colorBackgroundFloating, R.attr.colorButtonNormal, R.attr.colorControlActivated, R.attr.colorControlHighlight, R.attr.colorControlNormal, R.attr.colorError, R.attr.colorPrimary, R.attr.colorPrimaryDark, R.attr.colorSwitchThumbNormal, R.attr.controlBackground, R.attr.dialogCornerRadius, R.attr.dialogPreferredPadding, R.attr.dialogTheme, R.attr.dividerHorizontal, R.attr.dividerVertical, R.attr.dropDownListViewStyle, R.attr.dropdownListPreferredItemHeight, R.attr.editTextBackground, R.attr.editTextColor, R.attr.editTextStyle, R.attr.homeAsUpIndicator, R.attr.imageButtonStyle, R.attr.listChoiceBackgroundIndicator, R.attr.listChoiceIndicatorMultipleAnimated, R.attr.listChoiceIndicatorSingleAnimated, R.attr.listDividerAlertDialog, R.attr.listMenuViewStyle, R.attr.listPopupWindowStyle, R.attr.listPreferredItemHeight, R.attr.listPreferredItemHeightLarge, R.attr.listPreferredItemHeightSmall, R.attr.listPreferredItemPaddingEnd, R.attr.listPreferredItemPaddingLeft, R.attr.listPreferredItemPaddingRight, R.attr.listPreferredItemPaddingStart, R.attr.panelBackground, R.attr.panelMenuListTheme, R.attr.panelMenuListWidth, R.attr.popupMenuStyle, R.attr.popupWindowStyle, R.attr.radioButtonStyle, R.attr.ratingBarStyle, R.attr.ratingBarStyleIndicator, R.attr.ratingBarStyleSmall, R.attr.searchViewStyle, R.attr.seekBarStyle, R.attr.selectableItemBackground, R.attr.selectableItemBackgroundBorderless, R.attr.spinnerDropDownItemStyle, R.attr.spinnerStyle, R.attr.switchStyle, R.attr.textAppearanceLargePopupMenu, R.attr.textAppearanceListItem, R.attr.textAppearanceListItemSecondary, R.attr.textAppearanceListItemSmall, R.attr.textAppearancePopupMenuHeader, R.attr.textAppearanceSearchResultSubtitle, R.attr.textAppearanceSearchResultTitle, R.attr.textAppearanceSmallPopupMenu, R.attr.textColorAlertDialogListItem, R.attr.textColorSearchUrl, R.attr.toolbarNavigationButtonStyle, R.attr.toolbarStyle, R.attr.tooltipForegroundColor, R.attr.tooltipFrameBackground, R.attr.viewInflaterClass, R.attr.windowActionBar, R.attr.windowActionBarOverlay, R.attr.windowActionModeOverlay, R.attr.windowFixedHeightMajor, R.attr.windowFixedHeightMinor, R.attr.windowFixedWidthMajor, R.attr.windowFixedWidthMinor, R.attr.windowMinWidthMajor, R.attr.windowMinWidthMinor, R.attr.windowNoTitle};

    /* renamed from: import, reason: not valid java name */
    public static final int[] f2557import = {R.attr.allowStacking};

    /* renamed from: native, reason: not valid java name */
    public static final int[] f2559native = {android.R.attr.checkMark, R.attr.checkMarkCompat, R.attr.checkMarkTint, R.attr.checkMarkTintMode};

    /* renamed from: public, reason: not valid java name */
    public static final int[] f2567public = {android.R.attr.button, R.attr.buttonCompat, R.attr.buttonTint, R.attr.buttonTintMode};

    /* renamed from: return, reason: not valid java name */
    public static final int[] f2568return = {R.attr.arrowHeadLength, R.attr.arrowShaftLength, R.attr.barLength, R.attr.color, R.attr.drawableSize, R.attr.gapBetweenBars, R.attr.spinBars, R.attr.thickness};

    /* renamed from: static, reason: not valid java name */
    public static final int[] f2569static = {android.R.attr.gravity, android.R.attr.orientation, android.R.attr.baselineAligned, android.R.attr.baselineAlignedChildIndex, android.R.attr.weightSum, R.attr.divider, R.attr.dividerPadding, R.attr.measureWithLargestChild, R.attr.showDividers};

    /* renamed from: switch, reason: not valid java name */
    public static final int[] f2572switch = {android.R.attr.dropDownHorizontalOffset, android.R.attr.dropDownVerticalOffset};

    /* renamed from: throws, reason: not valid java name */
    public static final int[] f2576throws = {android.R.attr.enabled, android.R.attr.id, android.R.attr.visible, android.R.attr.menuCategory, android.R.attr.orderInCategory, android.R.attr.checkableBehavior};

    /* renamed from: default, reason: not valid java name */
    public static final int[] f2531default = {android.R.attr.icon, android.R.attr.enabled, android.R.attr.id, android.R.attr.checked, android.R.attr.visible, android.R.attr.menuCategory, android.R.attr.orderInCategory, android.R.attr.title, android.R.attr.titleCondensed, android.R.attr.alphabeticShortcut, android.R.attr.numericShortcut, android.R.attr.checkable, android.R.attr.onClick, R.attr.actionLayout, R.attr.actionProviderClass, R.attr.actionViewClass, R.attr.alphabeticModifiers, R.attr.contentDescription, R.attr.iconTint, R.attr.iconTintMode, R.attr.numericModifiers, R.attr.showAsAction, R.attr.tooltipText};

    /* renamed from: extends, reason: not valid java name */
    public static final int[] f2542extends = {android.R.attr.windowAnimationStyle, android.R.attr.itemTextAppearance, android.R.attr.horizontalDivider, android.R.attr.verticalDivider, android.R.attr.headerBackground, android.R.attr.itemBackground, android.R.attr.itemIconDisabledAlpha, R.attr.preserveIconSpacing, R.attr.subMenuArrow};

    /* renamed from: finally, reason: not valid java name */
    public static final int[] f2544finally = {android.R.attr.popupBackground, android.R.attr.popupAnimationStyle, R.attr.overlapAnchor};

    /* renamed from: package, reason: not valid java name */
    public static final int[] f2564package = {R.attr.paddingBottomNoButtons, R.attr.paddingTopNoTitle};

    /* renamed from: private, reason: not valid java name */
    public static final int[] f2565private = {android.R.attr.textAppearance, android.R.attr.focusable, android.R.attr.maxWidth, android.R.attr.text, android.R.attr.hint, android.R.attr.inputType, android.R.attr.imeOptions, R.attr.animateMenuItems, R.attr.animateNavigationIcon, R.attr.autoShowKeyboard, R.attr.backHandlingEnabled, R.attr.backgroundTint, R.attr.closeIcon, R.attr.commitIcon, R.attr.defaultQueryHint, R.attr.goIcon, R.attr.headerLayout, R.attr.hideNavigationIcon, R.attr.iconifiedByDefault, R.attr.layout, R.attr.queryBackground, R.attr.queryHint, R.attr.searchHintIcon, R.attr.searchIcon, R.attr.searchPrefixText, R.attr.submitBackground, R.attr.suggestionRowLayout, R.attr.useDrawerArrowDrawable, R.attr.voiceIcon};

    /* renamed from: abstract, reason: not valid java name */
    public static final int[] f2523abstract = {android.R.attr.entries, android.R.attr.popupBackground, android.R.attr.prompt, android.R.attr.dropDownWidth, R.attr.popupTheme};

    /* renamed from: continue, reason: not valid java name */
    public static final int[] f2530continue = {android.R.attr.textOn, android.R.attr.textOff, android.R.attr.thumb, R.attr.showText, R.attr.splitTrack, R.attr.switchMinWidth, R.attr.switchPadding, R.attr.switchTextAppearance, R.attr.thumbTextPadding, R.attr.thumbTint, R.attr.thumbTintMode, R.attr.track, R.attr.trackTint, R.attr.trackTintMode};

    /* renamed from: strictfp, reason: not valid java name */
    public static final int[] f2570strictfp = {android.R.attr.textSize, android.R.attr.typeface, android.R.attr.textStyle, android.R.attr.textColor, android.R.attr.textColorHint, android.R.attr.textColorLink, android.R.attr.shadowColor, android.R.attr.shadowDx, android.R.attr.shadowDy, android.R.attr.shadowRadius, android.R.attr.fontFamily, android.R.attr.textFontWeight, R.attr.fontFamily, R.attr.fontVariationSettings, R.attr.textAllCaps, R.attr.textLocale};

    /* renamed from: volatile, reason: not valid java name */
    public static final int[] f2580volatile = {android.R.attr.gravity, android.R.attr.minHeight, R.attr.buttonGravity, R.attr.collapseContentDescription, R.attr.collapseIcon, R.attr.contentInsetEnd, R.attr.contentInsetEndWithActions, R.attr.contentInsetLeft, R.attr.contentInsetRight, R.attr.contentInsetStart, R.attr.contentInsetStartWithNavigation, R.attr.logo, R.attr.logoDescription, R.attr.maxButtonHeight, R.attr.menu, R.attr.navigationContentDescription, R.attr.navigationIcon, R.attr.popupTheme, R.attr.subtitle, R.attr.subtitleTextAppearance, R.attr.subtitleTextColor, R.attr.title, R.attr.titleMargin, R.attr.titleMarginBottom, R.attr.titleMarginEnd, R.attr.titleMarginStart, R.attr.titleMarginTop, R.attr.titleMargins, R.attr.titleTextAppearance, R.attr.titleTextColor};

    /* renamed from: interface, reason: not valid java name */
    public static final int[] f2558interface = {android.R.attr.theme, android.R.attr.focusable, R.attr.paddingEnd, R.attr.paddingStart, R.attr.theme};

    /* renamed from: protected, reason: not valid java name */
    public static final int[] f2566protected = {android.R.attr.background, R.attr.backgroundTint, R.attr.backgroundTintMode};

    /* renamed from: transient, reason: not valid java name */
    public static final int[] f2577transient = {android.R.attr.id, android.R.attr.layout, android.R.attr.inflatedId};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f2538do = {"ad_activeview", "ad_click", "ad_exposure", "ad_query", "ad_reward", "adunit_exposure", "app_clear_data", "app_exception", "app_remove", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "app_upgrade", "app_update", "ga_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "session_start_with_rollout", "user_engagement", "ad_impression", "screen_view", "ga_extra_parameter", "app_background", "firebase_campaign"};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final String[] f2555if = {"ad_impression"};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final String[] f2547for = {"_aa", "_ac", "_xa", "_aq", "_ar", "_xu", "_cd", "_ae", "_ui", "app_store_refund", "app_store_subscription_cancel", "app_store_subscription_convert", "app_store_subscription_renew", "_ug", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_ssr", "_e", "_ai", "_vs", "_ep", "_ab", "_cmp"};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final String[] f2562new = {"purchase", "refund", "add_payment_info", "add_shipping_info", "add_to_cart", "add_to_wishlist", "begin_checkout", "remove_from_cart", "select_item", "select_promotion", "view_cart", "view_item", "view_item_list", "view_promotion", "ecommerce_purchase", "purchase_refund", "set_checkout_option", "checkout_progress", "select_content", "view_search_results"};

    static {
        int i = 7;
        f2551if = new C0174Dp("REMOVED_TASK", i);
        f2545for = new C0174Dp("CLOSED_EMPTY", i);
        int i2 = 7;
        f2560new = new C0174Dp("COMPLETING_ALREADY", i2);
        f2578try = new C0174Dp("COMPLETING_WAITING_CHILDREN", i2);
        f2525case = new C0174Dp("COMPLETING_RETRY", i2);
        f2540else = new C0174Dp("TOO_LATE_TO_CANCEL", i2);
        f2549goto = new C0174Dp("SEALED", i2);
    }

    public /* synthetic */ O4() {
    }

    /* renamed from: abstract, reason: not valid java name */
    public static void m1596abstract(String str, String str2) {
        InternalAppEventsLogger internalAppEventsLogger = new InternalAppEventsLogger(C3756th.m8299do());
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_SHARE_OUTCOME, str);
        if (str2 != null) {
            bundle.putString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE, str2);
        }
        internalAppEventsLogger.logEventImplicitly(AnalyticsEvents.EVENT_SHARE_RESULT, bundle);
    }

    public static void b(AppCompatActivity appCompatActivity, int i) {
        if (i == 1) {
            C3772tx.m8322abstract(1);
            FK.f1015do.f13230do.clear();
            FK.f1015do.m6753do(R.menu.overflow_recommend_install);
            C0251He.m857case(appCompatActivity);
            C3210kN.m7250for("RecommendMode", Integer.toString(1));
            return;
        }
        if (i == 2) {
            C3772tx.m8322abstract(2);
            FK.f1015do.f13230do.clear();
            FK.f1015do.m6753do(R.menu.overflow_recommend_uninstall);
            C0251He.m857case(appCompatActivity);
            C3210kN.m7250for("RecommendMode", Integer.toString(2));
            return;
        }
        if (i == 3) {
            C3772tx.m8322abstract(3);
            C0251He.m857case(appCompatActivity);
            C3210kN.m7250for("RecommendMode", Integer.toString(3));
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static HQ m1597break(int i) {
        return i != 0 ? i != 1 ? new PA() : new C0139Cc() : new PA();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.io.Serializable m1598case(defpackage.InterfaceC0576Wa r4, defpackage.InterfaceC0628Yi r5, defpackage.InterfaceC0650Zi r6) {
        /*
            boolean r0 = r4 instanceof defpackage.C0767bj
            if (r0 == 0) goto L13
            r0 = r4
            bj r0 = (defpackage.C0767bj) r0
            int r1 = r0.f8443for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f8443for = r1
            goto L18
        L13:
            bj r0 = new bj
            r0.<init>(r4)
        L18:
            java.lang.Object r4 = r0.f8442do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f8443for
            r3 = 1
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            ez r5 = r0.f8441do
            defpackage.C3645ro.m8017synchronized(r4)     // Catch: java.lang.Throwable -> L29
            goto L4c
        L29:
            r4 = move-exception
            r1 = r4
            goto L51
        L2c:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L34:
            defpackage.C3645ro.m8017synchronized(r4)
            ez r4 = new ez
            r4.<init>()
            cj r2 = new cj     // Catch: java.lang.Throwable -> L4e
            r2.<init>(r6, r4)     // Catch: java.lang.Throwable -> L4e
            r0.f8441do = r4     // Catch: java.lang.Throwable -> L4e
            r0.f8443for = r3     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r4 = r5.mo2945do(r2, r0)     // Catch: java.lang.Throwable -> L4e
            if (r4 != r1) goto L4c
            goto L8c
        L4c:
            r1 = 0
            goto L8c
        L4e:
            r5 = move-exception
            r1 = r5
            r5 = r4
        L51:
            T r4 = r5.f12779do
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            r5 = 0
            if (r4 == 0) goto L60
            boolean r6 = defpackage.C0173Do.m394do(r4, r1)
            if (r6 == 0) goto L60
            r6 = 1
            goto L61
        L60:
            r6 = 0
        L61:
            if (r6 != 0) goto L99
            jb r6 = r0.f4745do
            defpackage.C0173Do.m398if(r6)
            Yo$if r0 = defpackage.InterfaceC0634Yo.Cif.f4763do
            jb$if r6 = r6.mo814new(r0)
            Yo r6 = (defpackage.InterfaceC0634Yo) r6
            if (r6 == 0) goto L88
            boolean r0 = r6.isCancelled()
            if (r0 != 0) goto L79
            goto L88
        L79:
            java.util.concurrent.CancellationException r6 = r6.mo2956goto()
            if (r6 == 0) goto L86
            boolean r6 = defpackage.C0173Do.m394do(r6, r1)
            if (r6 == 0) goto L86
            goto L87
        L86:
            r3 = 0
        L87:
            r5 = r3
        L88:
            if (r5 != 0) goto L99
            if (r4 != 0) goto L8d
        L8c:
            return r1
        L8d:
            boolean r5 = r1 instanceof java.util.concurrent.CancellationException
            if (r5 == 0) goto L95
            defpackage.C3850vF.m8451for(r4, r1)
            throw r4
        L95:
            defpackage.C3850vF.m8451for(r1, r4)
            throw r1
        L99:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.O4.m1598case(Wa, Yi, Zi):java.io.Serializable");
    }

    /* renamed from: catch, reason: not valid java name */
    public static void m1599catch(int i, int i2, C2908i6 c2908i6) {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!m1603default(c2908i6.m6874do(i4, i2))) {
                throw new C3387nN();
            }
            c2908i6.m6876if(i4, i2, 0);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static void m1600class(int i, int i2, C2908i6 c2908i6) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = f2539do[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                c2908i6.m6876if(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m1601const(int i, int i2, C2908i6 c2908i6) {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!m1603default(c2908i6.m6874do(i, i4))) {
                throw new C3387nN();
            }
            c2908i6.m6876if(i, i4, 0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:127:0x01ef, code lost:
    
        return 5;
     */
    /* renamed from: continue, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m1602continue(java.lang.String r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.O4.m1602continue(java.lang.String, int, int):int");
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m1603default(int i) {
        return i == -1;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m1604else(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static boolean m1605extends(char c) {
        return c >= 128 && c <= 255;
    }

    /* renamed from: final, reason: not valid java name */
    public static int m1606final(float[] fArr, int[] iArr, byte[] bArr) {
        Arrays.fill(bArr, (byte) 0);
        int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        for (int i2 = 0; i2 < 6; i2++) {
            int ceil = (int) Math.ceil(fArr[i2]);
            iArr[i2] = ceil;
            if (i > ceil) {
                Arrays.fill(bArr, (byte) 0);
                i = ceil;
            }
            if (i == ceil) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m1607finally(char c) {
        return (c == '\r' || c == '*' || c == '>') || c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    /* renamed from: for, reason: not valid java name */
    public static final ArrayList m1608for(Object... objArr) {
        C0173Do.m401try(objArr, "elements");
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new C4073z2(objArr, true));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1609goto(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m1610if() {
        String m91for = f2532do.m91for();
        return (m91for.isEmpty() || m91for.equalsIgnoreCase("not_set")) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : "ab_test_iap_rewarded_adsv2_".concat(f2532do.m91for());
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m1611implements(View view) {
        Drawable background = view.getBackground();
        if (background instanceof C0716as) {
            m1613instanceof(view, (C0716as) background);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: import, reason: not valid java name */
    public static final ArrayList m1612import(SharePhotoContent sharePhotoContent, UUID uuid) {
        Uri uri;
        Bitmap bitmap;
        C0173Do.m401try(uuid, "appCallId");
        List<SharePhoto> list = sharePhotoContent == null ? null : sharePhotoContent.f9471if;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (SharePhoto sharePhoto : list) {
            if (sharePhoto instanceof SharePhoto) {
                bitmap = sharePhoto.f9463do;
                uri = sharePhoto.f9464do;
            } else if (sharePhoto instanceof ShareVideo) {
                uri = ((ShareVideo) sharePhoto).f9477do;
                bitmap = null;
            } else {
                uri = null;
                bitmap = null;
            }
            NativeAppCallAttachmentStore.Attachment createAttachment = bitmap != null ? NativeAppCallAttachmentStore.createAttachment(uuid, bitmap) : uri != null ? NativeAppCallAttachmentStore.createAttachment(uuid, uri) : null;
            if (createAttachment != null) {
                arrayList.add(createAttachment);
            }
        }
        ArrayList arrayList2 = new ArrayList(B8.c(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((NativeAppCallAttachmentStore.Attachment) it.next()).getAttachmentUrl());
        }
        NativeAppCallAttachmentStore.addAttachments(arrayList);
        return arrayList2;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m1613instanceof(View view, C0716as c0716as) {
        C0098Af c0098Af = c0716as.f8253do.f8273do;
        if (c0098Af != null && c0098Af.f117do) {
            float f = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                f += QK.Cnew.m1939this((View) parent);
            }
            C0716as.Cif cif = c0716as.f8253do;
            if (cif.f8286new != f) {
                cif.f8286new = f;
                c0716as.m4779switch();
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static final void m1614interface(AbstractC0119Be abstractC0119Be, InterfaceC0576Wa interfaceC0576Wa, boolean z) {
        Object mo197this = abstractC0119Be.mo197this();
        Throwable mo198try = abstractC0119Be.mo198try(mo197this);
        Object m8004import = mo198try != null ? C3645ro.m8004import(mo198try) : abstractC0119Be.mo193case(mo197this);
        if (!z) {
            interfaceC0576Wa.mo1746while(m8004import);
            return;
        }
        C0173Do.m396for(interfaceC0576Wa, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        C4107ze c4107ze = (C4107ze) interfaceC0576Wa;
        InterfaceC0576Wa<T> interfaceC0576Wa2 = c4107ze.f16932do;
        InterfaceC3161jb mo2221if = interfaceC0576Wa2.mo2221if();
        Object m6541for = C2683eH.m6541for(mo2221if, c4107ze.f16935if);
        C2744fJ<?> m7273if = m6541for != C2683eH.f12658do ? C3220kb.m7273if(interfaceC0576Wa2, mo2221if, m6541for) : null;
        try {
            c4107ze.f16932do.mo1746while(m8004import);
            C3206kJ c3206kJ = C3206kJ.f13965do;
        } finally {
            if (m7273if == null || m7273if.y()) {
                C2683eH.m6540do(mo2221if, m6541for);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m1615native() {
        C0101Ai c0101Ai = f2532do;
        if (c0101Ai != null) {
            c0101Ai.m91for();
            if (f2532do.m91for().equalsIgnoreCase("variation_4")) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0224  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m1616new(defpackage.C3840v5 r25, int r26, defpackage.GK r27, int r28, defpackage.C2908i6 r29) {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.O4.m1616new(v5, int, GK, int, i6):void");
    }

    /* renamed from: package, reason: not valid java name */
    public static final List m1617package(Object obj) {
        List singletonList = Collections.singletonList(obj);
        C0173Do.m399new(singletonList, "singletonList(element)");
        return singletonList;
    }

    /* renamed from: private, reason: not valid java name */
    public static final List m1618private(Object... objArr) {
        return objArr.length > 0 ? J2.d(objArr) : C0471Rf.f3217do;
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m1619protected(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof C0716as) {
            ((C0716as) background).m4770final(f);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static final String m1620public(Uri uri) {
        if (uri == null) {
            return null;
        }
        String uri2 = uri.toString();
        C0173Do.m399new(uri2, "uri.toString()");
        int p = EF.p(uri2);
        if (p == -1) {
            return null;
        }
        String substring = uri2.substring(p);
        C0173Do.m399new(substring, "(this as java.lang.String).substring(startIndex)");
        return substring;
    }

    /* renamed from: return, reason: not valid java name */
    public static final boolean m1621return(int i, Intent intent, JD jd) {
        UUID callIdFromIntent = NativeProtocol.getCallIdFromIntent(intent);
        AppCall finishPendingCall = callIdFromIntent == null ? null : AppCall.Companion.finishPendingCall(callIdFromIntent, i);
        if (finishPendingCall == null) {
            return false;
        }
        NativeAppCallAttachmentStore nativeAppCallAttachmentStore = NativeAppCallAttachmentStore.INSTANCE;
        NativeAppCallAttachmentStore.cleanupAttachmentsForCall(finishPendingCall.getCallId());
        C3344mh exceptionFromErrorData = intent != null ? NativeProtocol.getExceptionFromErrorData(NativeProtocol.getErrorDataFromResultIntent(intent)) : null;
        if (exceptionFromErrorData == null) {
            jd.m1033while(finishPendingCall, intent != null ? NativeProtocol.getSuccessResultsFromIntent(intent) : null);
            return true;
        }
        if (exceptionFromErrorData instanceof C3462oh) {
            m1596abstract(AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED, null);
            return true;
        }
        jd.m1032throw(finishPendingCall, exceptionFromErrorData);
        return true;
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m1622static(Comparator comparator, Iterable iterable) {
        Object comparator2;
        comparator.getClass();
        iterable.getClass();
        if (iterable instanceof SortedSet) {
            comparator2 = ((SortedSet) iterable).comparator();
            if (comparator2 == null) {
                comparator2 = C2601cu.f12393do;
            }
        } else {
            if (!(iterable instanceof JE)) {
                return false;
            }
            comparator2 = ((JE) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static final GraphRequest m1623strictfp(AccessToken accessToken, Uri uri, Cfor cfor) {
        String path = uri.getPath();
        boolean isFileUri = Utility.isFileUri(uri);
        EnumC0171Dm enumC0171Dm = EnumC0171Dm.POST;
        if (isFileUri && path != null) {
            GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType = new GraphRequest.ParcelableResourceWithMimeType(ParcelFileDescriptor.open(new File(path), 268435456));
            Bundle bundle = new Bundle(1);
            bundle.putParcelable("file", parcelableResourceWithMimeType);
            return new GraphRequest(accessToken, "me/staging_resources", bundle, enumC0171Dm, cfor, 32);
        }
        if (!Utility.isContentUri(uri)) {
            throw new C3344mh("The image Uri must be either a file:// or content:// Uri");
        }
        GraphRequest.ParcelableResourceWithMimeType parcelableResourceWithMimeType2 = new GraphRequest.ParcelableResourceWithMimeType(uri);
        Bundle bundle2 = new Bundle(1);
        bundle2.putParcelable("file", parcelableResourceWithMimeType2);
        return new GraphRequest(accessToken, "me/staging_resources", bundle2, enumC0171Dm, cfor, 32);
    }

    /* renamed from: super, reason: not valid java name */
    public static final Object m1624super(WB wb, long j, InterfaceC3641rk interfaceC3641rk) {
        boolean z;
        while (true) {
            if (wb.f4345do >= j && !wb.mo2711for()) {
                return wb;
            }
            Object obj = AbstractC4080z9.f16871do.get(wb);
            C0174Dp c0174Dp = f2533do;
            if (obj == c0174Dp) {
                return c0174Dp;
            }
            WB wb2 = (WB) ((AbstractC4080z9) obj);
            if (wb2 == null) {
                wb2 = (WB) interfaceC3641rk.invoke(Long.valueOf(wb.f4345do + 1), wb);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = AbstractC4080z9.f16871do;
                    if (atomicReferenceFieldUpdater.compareAndSet(wb, null, wb2)) {
                        z = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(wb) != null) {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    if (wb.mo2711for()) {
                        wb.m8789new();
                    }
                }
            }
            wb = wb2;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static final HashSet m1625switch(Object... objArr) {
        HashSet hashSet = new HashSet(C0315Kc.m1180switch(objArr.length));
        J2.h(hashSet, objArr);
        return hashSet;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static final Object m1626synchronized(Object obj) {
        InterfaceC4116zn interfaceC4116zn;
        C0106An c0106An = obj instanceof C0106An ? (C0106An) obj : null;
        return (c0106An == null || (interfaceC4116zn = c0106An.f140do) == null) ? obj : interfaceC4116zn;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m1627this(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r3v0, types: [Dp, T] */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1628throw(defpackage.InterfaceC0628Yi r5, defpackage.InterfaceC0576Wa r6) {
        /*
            boolean r0 = r6 instanceof defpackage.C2766fj
            if (r0 == 0) goto L13
            r0 = r6
            fj r0 = (defpackage.C2766fj) r0
            int r1 = r0.f12982for
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f12982for = r1
            goto L18
        L13:
            fj r0 = new fj
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f12981do
            tb r1 = defpackage.EnumC3750tb.COROUTINE_SUSPENDED
            int r2 = r0.f12982for
            Dp r3 = defpackage.O4.f2573this
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            ej r5 = r0.f12979do
            ez r0 = r0.f12980do
            defpackage.C3645ro.m8017synchronized(r6)     // Catch: defpackage.Cfor -> L2d
            goto L5d
        L2d:
            r6 = move-exception
            goto L59
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            defpackage.C3645ro.m8017synchronized(r6)
            ez r6 = new ez
            r6.<init>()
            r6.f12779do = r3
            ej r2 = new ej
            r2.<init>(r6)
            r0.f12980do = r6     // Catch: defpackage.Cfor -> L55
            r0.f12979do = r2     // Catch: defpackage.Cfor -> L55
            r0.f12982for = r4     // Catch: defpackage.Cfor -> L55
            java.lang.Object r5 = r5.mo2945do(r2, r0)     // Catch: defpackage.Cfor -> L55
            if (r5 != r1) goto L53
            goto L61
        L53:
            r0 = r6
            goto L5d
        L55:
            r5 = move-exception
            r0 = r6
            r6 = r5
            r5 = r2
        L59:
            Zi<?> r1 = r6.f12989do
            if (r1 != r5) goto L6a
        L5d:
            T r1 = r0.f12779do
            if (r1 == r3) goto L62
        L61:
            return r1
        L62:
            java.util.NoSuchElementException r5 = new java.util.NoSuchElementException
            java.lang.String r6 = "Expected at least one element"
            r5.<init>(r6)
            throw r5
        L6a:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.O4.m1628throw(Yi, Wa):java.lang.Object");
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m1629throws(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    /* renamed from: transient, reason: not valid java name */
    public static final Set m1630transient(Object... objArr) {
        int length;
        int length2 = objArr.length;
        C0515Tf c0515Tf = C0515Tf.f3720do;
        if (length2 <= 0 || (length = objArr.length) == 0) {
            return c0515Tf;
        }
        if (length != 1) {
            LinkedHashSet linkedHashSet = new LinkedHashSet(C0315Kc.m1180switch(objArr.length));
            J2.h(linkedHashSet, objArr);
            return linkedHashSet;
        }
        Set singleton = Collections.singleton(objArr[0]);
        C0173Do.m399new(singleton, "singleton(element)");
        return singleton;
    }

    /* renamed from: try, reason: not valid java name */
    public static int m1631try(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int numberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(i2);
        int i3 = i << (numberOfLeadingZeros - 1);
        while (32 - Integer.numberOfLeadingZeros(i3) >= numberOfLeadingZeros) {
            i3 ^= i2 << ((32 - Integer.numberOfLeadingZeros(i3)) - numberOfLeadingZeros);
        }
        return i3;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static final List m1632volatile(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : m1617package(list.get(0)) : C0471Rf.f3217do;
    }

    /* renamed from: while, reason: not valid java name */
    public static final int m1633while(List list) {
        C0173Do.m401try(list, "<this>");
        return list.size() - 1;
    }

    public void a(InterfaceC0672a7 interfaceC0672a7) {
        float f;
        CardView.Cdo cdo = (CardView.Cdo) interfaceC0672a7;
        CardView cardView = CardView.this;
        if (!cardView.f6031do) {
            cdo.m3562do(0, 0, 0, 0);
            return;
        }
        Drawable drawable = cdo.f6034do;
        float f2 = ((NA) drawable).f2334if;
        float f3 = ((NA) drawable).f2326do;
        if (cardView.f6033if) {
            f = (float) (((1.0d - OA.f2587do) * f3) + f2);
        } else {
            int i = OA.f2588do;
            f = f2;
        }
        int ceil = (int) Math.ceil(f);
        int ceil2 = (int) Math.ceil(OA.m1638do(f2, f3, cardView.f6033if));
        cdo.m3562do(ceil, ceil2, ceil, ceil2);
    }

    @Override // defpackage.InterfaceC3927wb
    /* renamed from: do, reason: not valid java name */
    public Object mo1634do(C3868vb c3868vb) {
        throw c3868vb;
    }

    public /* synthetic */ O4(Configuration configuration) {
        C0173Do.m401try(configuration, "newConfig");
    }
}
