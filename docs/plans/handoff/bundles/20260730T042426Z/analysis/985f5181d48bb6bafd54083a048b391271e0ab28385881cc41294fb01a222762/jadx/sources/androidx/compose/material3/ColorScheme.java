package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ColorScheme.kt */
/* loaded from: classes.dex */
public final class ColorScheme {
    private final long background;
    private ButtonColors defaultButtonColorsCached;
    private CardColors defaultCardColorsCached;
    private CardColors defaultElevatedCardColorsCached;
    private IconButtonColors defaultIconButtonColorsCached;
    private MenuItemColors defaultMenuItemColorsCached;
    private ButtonColors defaultOutlinedButtonColorsCached;
    private TextFieldColors defaultOutlinedTextFieldColorsCached;
    private SwitchColors defaultSwitchColorsCached;
    private TextFieldColors defaultTextFieldColorsCached;
    private TopAppBarColors defaultTopAppBarColorsCached;
    private final long error;
    private final long errorContainer;
    private final long inverseOnSurface;
    private final long inversePrimary;
    private final long inverseSurface;
    private final long onBackground;
    private final long onError;
    private final long onErrorContainer;
    private final long onPrimary;
    private final long onPrimaryContainer;
    private final long onSecondary;
    private final long onSecondaryContainer;
    private final long onSurface;
    private final long onSurfaceVariant;
    private final long onTertiary;
    private final long onTertiaryContainer;
    private final long outline;
    private final long outlineVariant;
    private final long primary;
    private final long primaryContainer;
    private final long scrim;
    private final long secondary;
    private final long secondaryContainer;
    private final long surface;
    private final long surfaceBright;
    private final long surfaceContainer;
    private final long surfaceContainerHigh;
    private final long surfaceContainerHighest;
    private final long surfaceContainerLow;
    private final long surfaceContainerLowest;
    private final long surfaceDim;
    private final long surfaceTint;
    private final long surfaceVariant;
    private final long tertiary;
    private final long tertiaryContainer;

    public /* synthetic */ ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36);
    }

    private ColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        this.primary = j;
        this.onPrimary = j2;
        this.primaryContainer = j3;
        this.onPrimaryContainer = j4;
        this.inversePrimary = j5;
        this.secondary = j6;
        this.onSecondary = j7;
        this.secondaryContainer = j8;
        this.onSecondaryContainer = j9;
        this.tertiary = j10;
        this.onTertiary = j11;
        this.tertiaryContainer = j12;
        this.onTertiaryContainer = j13;
        this.background = j14;
        this.onBackground = j15;
        this.surface = j16;
        this.onSurface = j17;
        this.surfaceVariant = j18;
        this.onSurfaceVariant = j19;
        this.surfaceTint = j20;
        this.inverseSurface = j21;
        this.inverseOnSurface = j22;
        this.error = j23;
        this.onError = j24;
        this.errorContainer = j25;
        this.onErrorContainer = j26;
        this.outline = j27;
        this.outlineVariant = j28;
        this.scrim = j29;
        this.surfaceBright = j30;
        this.surfaceDim = j31;
        this.surfaceContainer = j32;
        this.surfaceContainerHigh = j33;
        this.surfaceContainerHighest = j34;
        this.surfaceContainerLow = j35;
        this.surfaceContainerLowest = j36;
    }

    /* renamed from: getPrimary-0d7_KjU, reason: not valid java name */
    public final long m646getPrimary0d7_KjU() {
        return this.primary;
    }

    /* renamed from: getOnPrimary-0d7_KjU, reason: not valid java name */
    public final long m636getOnPrimary0d7_KjU() {
        return this.onPrimary;
    }

    /* renamed from: getPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m647getPrimaryContainer0d7_KjU() {
        return this.primaryContainer;
    }

    /* renamed from: getOnPrimaryContainer-0d7_KjU, reason: not valid java name */
    public final long m637getOnPrimaryContainer0d7_KjU() {
        return this.onPrimaryContainer;
    }

    /* renamed from: getInversePrimary-0d7_KjU, reason: not valid java name */
    public final long m631getInversePrimary0d7_KjU() {
        return this.inversePrimary;
    }

    /* renamed from: getSecondary-0d7_KjU, reason: not valid java name */
    public final long m649getSecondary0d7_KjU() {
        return this.secondary;
    }

    /* renamed from: getOnSecondary-0d7_KjU, reason: not valid java name */
    public final long m638getOnSecondary0d7_KjU() {
        return this.onSecondary;
    }

    /* renamed from: getSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m650getSecondaryContainer0d7_KjU() {
        return this.secondaryContainer;
    }

    /* renamed from: getOnSecondaryContainer-0d7_KjU, reason: not valid java name */
    public final long m639getOnSecondaryContainer0d7_KjU() {
        return this.onSecondaryContainer;
    }

    /* renamed from: getTertiary-0d7_KjU, reason: not valid java name */
    public final long m661getTertiary0d7_KjU() {
        return this.tertiary;
    }

    /* renamed from: getOnTertiary-0d7_KjU, reason: not valid java name */
    public final long m642getOnTertiary0d7_KjU() {
        return this.onTertiary;
    }

    /* renamed from: getTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m662getTertiaryContainer0d7_KjU() {
        return this.tertiaryContainer;
    }

    /* renamed from: getOnTertiaryContainer-0d7_KjU, reason: not valid java name */
    public final long m643getOnTertiaryContainer0d7_KjU() {
        return this.onTertiaryContainer;
    }

    /* renamed from: getBackground-0d7_KjU, reason: not valid java name */
    public final long m627getBackground0d7_KjU() {
        return this.background;
    }

    /* renamed from: getOnBackground-0d7_KjU, reason: not valid java name */
    public final long m633getOnBackground0d7_KjU() {
        return this.onBackground;
    }

    /* renamed from: getSurface-0d7_KjU, reason: not valid java name */
    public final long m651getSurface0d7_KjU() {
        return this.surface;
    }

    /* renamed from: getOnSurface-0d7_KjU, reason: not valid java name */
    public final long m640getOnSurface0d7_KjU() {
        return this.onSurface;
    }

    /* renamed from: getSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m660getSurfaceVariant0d7_KjU() {
        return this.surfaceVariant;
    }

    /* renamed from: getOnSurfaceVariant-0d7_KjU, reason: not valid java name */
    public final long m641getOnSurfaceVariant0d7_KjU() {
        return this.onSurfaceVariant;
    }

    /* renamed from: getSurfaceTint-0d7_KjU, reason: not valid java name */
    public final long m659getSurfaceTint0d7_KjU() {
        return this.surfaceTint;
    }

    /* renamed from: getInverseSurface-0d7_KjU, reason: not valid java name */
    public final long m632getInverseSurface0d7_KjU() {
        return this.inverseSurface;
    }

    /* renamed from: getInverseOnSurface-0d7_KjU, reason: not valid java name */
    public final long m630getInverseOnSurface0d7_KjU() {
        return this.inverseOnSurface;
    }

    /* renamed from: getError-0d7_KjU, reason: not valid java name */
    public final long m628getError0d7_KjU() {
        return this.error;
    }

    /* renamed from: getOnError-0d7_KjU, reason: not valid java name */
    public final long m634getOnError0d7_KjU() {
        return this.onError;
    }

    /* renamed from: getErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m629getErrorContainer0d7_KjU() {
        return this.errorContainer;
    }

    /* renamed from: getOnErrorContainer-0d7_KjU, reason: not valid java name */
    public final long m635getOnErrorContainer0d7_KjU() {
        return this.onErrorContainer;
    }

    /* renamed from: getOutline-0d7_KjU, reason: not valid java name */
    public final long m644getOutline0d7_KjU() {
        return this.outline;
    }

    /* renamed from: getOutlineVariant-0d7_KjU, reason: not valid java name */
    public final long m645getOutlineVariant0d7_KjU() {
        return this.outlineVariant;
    }

    /* renamed from: getScrim-0d7_KjU, reason: not valid java name */
    public final long m648getScrim0d7_KjU() {
        return this.scrim;
    }

    /* renamed from: getSurfaceBright-0d7_KjU, reason: not valid java name */
    public final long m652getSurfaceBright0d7_KjU() {
        return this.surfaceBright;
    }

    /* renamed from: getSurfaceDim-0d7_KjU, reason: not valid java name */
    public final long m658getSurfaceDim0d7_KjU() {
        return this.surfaceDim;
    }

    /* renamed from: getSurfaceContainer-0d7_KjU, reason: not valid java name */
    public final long m653getSurfaceContainer0d7_KjU() {
        return this.surfaceContainer;
    }

    /* renamed from: getSurfaceContainerHigh-0d7_KjU, reason: not valid java name */
    public final long m654getSurfaceContainerHigh0d7_KjU() {
        return this.surfaceContainerHigh;
    }

    /* renamed from: getSurfaceContainerHighest-0d7_KjU, reason: not valid java name */
    public final long m655getSurfaceContainerHighest0d7_KjU() {
        return this.surfaceContainerHighest;
    }

    /* renamed from: getSurfaceContainerLow-0d7_KjU, reason: not valid java name */
    public final long m656getSurfaceContainerLow0d7_KjU() {
        return this.surfaceContainerLow;
    }

    /* renamed from: getSurfaceContainerLowest-0d7_KjU, reason: not valid java name */
    public final long m657getSurfaceContainerLowest0d7_KjU() {
        return this.surfaceContainerLowest;
    }

    /* renamed from: copy-C-Xl9yA, reason: not valid java name */
    public final ColorScheme m626copyCXl9yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36) {
        return new ColorScheme(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, null);
    }

    public String toString() {
        return "ColorScheme(primary=" + ((Object) Color.m1311toStringimpl(this.primary)) + "onPrimary=" + ((Object) Color.m1311toStringimpl(this.onPrimary)) + "primaryContainer=" + ((Object) Color.m1311toStringimpl(this.primaryContainer)) + "onPrimaryContainer=" + ((Object) Color.m1311toStringimpl(this.onPrimaryContainer)) + "inversePrimary=" + ((Object) Color.m1311toStringimpl(this.inversePrimary)) + "secondary=" + ((Object) Color.m1311toStringimpl(this.secondary)) + "onSecondary=" + ((Object) Color.m1311toStringimpl(this.onSecondary)) + "secondaryContainer=" + ((Object) Color.m1311toStringimpl(this.secondaryContainer)) + "onSecondaryContainer=" + ((Object) Color.m1311toStringimpl(this.onSecondaryContainer)) + "tertiary=" + ((Object) Color.m1311toStringimpl(this.tertiary)) + "onTertiary=" + ((Object) Color.m1311toStringimpl(this.onTertiary)) + "tertiaryContainer=" + ((Object) Color.m1311toStringimpl(this.tertiaryContainer)) + "onTertiaryContainer=" + ((Object) Color.m1311toStringimpl(this.onTertiaryContainer)) + "background=" + ((Object) Color.m1311toStringimpl(this.background)) + "onBackground=" + ((Object) Color.m1311toStringimpl(this.onBackground)) + "surface=" + ((Object) Color.m1311toStringimpl(this.surface)) + "onSurface=" + ((Object) Color.m1311toStringimpl(this.onSurface)) + "surfaceVariant=" + ((Object) Color.m1311toStringimpl(this.surfaceVariant)) + "onSurfaceVariant=" + ((Object) Color.m1311toStringimpl(this.onSurfaceVariant)) + "surfaceTint=" + ((Object) Color.m1311toStringimpl(this.surfaceTint)) + "inverseSurface=" + ((Object) Color.m1311toStringimpl(this.inverseSurface)) + "inverseOnSurface=" + ((Object) Color.m1311toStringimpl(this.inverseOnSurface)) + "error=" + ((Object) Color.m1311toStringimpl(this.error)) + "onError=" + ((Object) Color.m1311toStringimpl(this.onError)) + "errorContainer=" + ((Object) Color.m1311toStringimpl(this.errorContainer)) + "onErrorContainer=" + ((Object) Color.m1311toStringimpl(this.onErrorContainer)) + "outline=" + ((Object) Color.m1311toStringimpl(this.outline)) + "outlineVariant=" + ((Object) Color.m1311toStringimpl(this.outlineVariant)) + "scrim=" + ((Object) Color.m1311toStringimpl(this.scrim)) + "surfaceBright=" + ((Object) Color.m1311toStringimpl(this.surfaceBright)) + "surfaceDim=" + ((Object) Color.m1311toStringimpl(this.surfaceDim)) + "surfaceContainer=" + ((Object) Color.m1311toStringimpl(this.surfaceContainer)) + "surfaceContainerHigh=" + ((Object) Color.m1311toStringimpl(this.surfaceContainerHigh)) + "surfaceContainerHighest=" + ((Object) Color.m1311toStringimpl(this.surfaceContainerHighest)) + "surfaceContainerLow=" + ((Object) Color.m1311toStringimpl(this.surfaceContainerLow)) + "surfaceContainerLowest=" + ((Object) Color.m1311toStringimpl(this.surfaceContainerLowest)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public final ButtonColors getDefaultButtonColorsCached$material3_release() {
        return this.defaultButtonColorsCached;
    }

    public final void setDefaultButtonColorsCached$material3_release(ButtonColors buttonColors) {
        this.defaultButtonColorsCached = buttonColors;
    }

    public final ButtonColors getDefaultOutlinedButtonColorsCached$material3_release() {
        return this.defaultOutlinedButtonColorsCached;
    }

    public final void setDefaultOutlinedButtonColorsCached$material3_release(ButtonColors buttonColors) {
        this.defaultOutlinedButtonColorsCached = buttonColors;
    }

    public final CardColors getDefaultCardColorsCached$material3_release() {
        return this.defaultCardColorsCached;
    }

    public final void setDefaultCardColorsCached$material3_release(CardColors cardColors) {
        this.defaultCardColorsCached = cardColors;
    }

    public final CardColors getDefaultElevatedCardColorsCached$material3_release() {
        return this.defaultElevatedCardColorsCached;
    }

    public final void setDefaultElevatedCardColorsCached$material3_release(CardColors cardColors) {
        this.defaultElevatedCardColorsCached = cardColors;
    }

    public final TopAppBarColors getDefaultTopAppBarColorsCached$material3_release() {
        return this.defaultTopAppBarColorsCached;
    }

    public final void setDefaultTopAppBarColorsCached$material3_release(TopAppBarColors topAppBarColors) {
        this.defaultTopAppBarColorsCached = topAppBarColors;
    }

    public final IconButtonColors getDefaultIconButtonColorsCached$material3_release() {
        return this.defaultIconButtonColorsCached;
    }

    public final void setDefaultIconButtonColorsCached$material3_release(IconButtonColors iconButtonColors) {
        this.defaultIconButtonColorsCached = iconButtonColors;
    }

    public final MenuItemColors getDefaultMenuItemColorsCached$material3_release() {
        return this.defaultMenuItemColorsCached;
    }

    public final void setDefaultMenuItemColorsCached$material3_release(MenuItemColors menuItemColors) {
        this.defaultMenuItemColorsCached = menuItemColors;
    }

    public final SwitchColors getDefaultSwitchColorsCached$material3_release() {
        return this.defaultSwitchColorsCached;
    }

    public final void setDefaultSwitchColorsCached$material3_release(SwitchColors switchColors) {
        this.defaultSwitchColorsCached = switchColors;
    }

    public final TextFieldColors getDefaultOutlinedTextFieldColorsCached$material3_release() {
        return this.defaultOutlinedTextFieldColorsCached;
    }

    public final void setDefaultOutlinedTextFieldColorsCached$material3_release(TextFieldColors textFieldColors) {
        this.defaultOutlinedTextFieldColorsCached = textFieldColors;
    }

    public final TextFieldColors getDefaultTextFieldColorsCached$material3_release() {
        return this.defaultTextFieldColorsCached;
    }

    public final void setDefaultTextFieldColorsCached$material3_release(TextFieldColors textFieldColors) {
        this.defaultTextFieldColorsCached = textFieldColors;
    }
}
