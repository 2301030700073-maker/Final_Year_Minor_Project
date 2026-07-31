package net.thunderbird.core.ui.compose.theme2;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import kotlin.ULong;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeColorScheme {
    public final long error;
    public final long errorContainer;
    public final long info;
    public final long infoContainer;
    public final long inverseOnSurface;
    public final long inversePrimary;
    public final long inverseSurface;
    public final long onError;
    public final long onErrorContainer;
    public final long onInfo;
    public final long onInfoContainer;
    public final long onPrimary;
    public final long onPrimaryContainer;
    public final long onSecondary;
    public final long onSecondaryContainer;
    public final long onSuccess;
    public final long onSuccessContainer;
    public final long onSurface;
    public final long onSurfaceVariant;
    public final long onTertiary;
    public final long onTertiaryContainer;
    public final long onWarning;
    public final long onWarningContainer;
    public final long outline;
    public final long outlineVariant;
    public final long primary;
    public final long primaryContainer;
    public final long scrim;
    public final long secondary;
    public final long secondaryContainer;
    public final long success;
    public final long successContainer;
    public final long surface;
    public final long surfaceBright;
    public final long surfaceContainer;
    public final long surfaceContainerHigh;
    public final long surfaceContainerHighest;
    public final long surfaceContainerLow;
    public final long surfaceContainerLowest;
    public final long surfaceDim;
    public final long tertiary;
    public final long tertiaryContainer;
    public final long warning;
    public final long warningContainer;

    public ThemeColorScheme(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44) {
        this.primary = j;
        this.onPrimary = j2;
        this.primaryContainer = j3;
        this.onPrimaryContainer = j4;
        this.secondary = j5;
        this.onSecondary = j6;
        this.secondaryContainer = j7;
        this.onSecondaryContainer = j8;
        this.tertiary = j9;
        this.onTertiary = j10;
        this.tertiaryContainer = j11;
        this.onTertiaryContainer = j12;
        this.error = j13;
        this.onError = j14;
        this.errorContainer = j15;
        this.onErrorContainer = j16;
        this.surfaceDim = j17;
        this.surface = j18;
        this.surfaceBright = j19;
        this.onSurface = j20;
        this.onSurfaceVariant = j21;
        this.surfaceContainerLowest = j22;
        this.surfaceContainerLow = j23;
        this.surfaceContainer = j24;
        this.surfaceContainerHigh = j25;
        this.surfaceContainerHighest = j26;
        this.inverseSurface = j27;
        this.inverseOnSurface = j28;
        this.inversePrimary = j29;
        this.outline = j30;
        this.outlineVariant = j31;
        this.scrim = j32;
        this.info = j33;
        this.onInfo = j34;
        this.infoContainer = j35;
        this.onInfoContainer = j36;
        this.success = j37;
        this.onSuccess = j38;
        this.successContainer = j39;
        this.onSuccessContainer = j40;
        this.warning = j41;
        this.onWarning = j42;
        this.warningContainer = j43;
        this.onWarningContainer = j44;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThemeColorScheme)) {
            return false;
        }
        ThemeColorScheme themeColorScheme = (ThemeColorScheme) obj;
        return Color.m482equalsimpl0(this.primary, themeColorScheme.primary) && Color.m482equalsimpl0(this.onPrimary, themeColorScheme.onPrimary) && Color.m482equalsimpl0(this.primaryContainer, themeColorScheme.primaryContainer) && Color.m482equalsimpl0(this.onPrimaryContainer, themeColorScheme.onPrimaryContainer) && Color.m482equalsimpl0(this.secondary, themeColorScheme.secondary) && Color.m482equalsimpl0(this.onSecondary, themeColorScheme.onSecondary) && Color.m482equalsimpl0(this.secondaryContainer, themeColorScheme.secondaryContainer) && Color.m482equalsimpl0(this.onSecondaryContainer, themeColorScheme.onSecondaryContainer) && Color.m482equalsimpl0(this.tertiary, themeColorScheme.tertiary) && Color.m482equalsimpl0(this.onTertiary, themeColorScheme.onTertiary) && Color.m482equalsimpl0(this.tertiaryContainer, themeColorScheme.tertiaryContainer) && Color.m482equalsimpl0(this.onTertiaryContainer, themeColorScheme.onTertiaryContainer) && Color.m482equalsimpl0(this.error, themeColorScheme.error) && Color.m482equalsimpl0(this.onError, themeColorScheme.onError) && Color.m482equalsimpl0(this.errorContainer, themeColorScheme.errorContainer) && Color.m482equalsimpl0(this.onErrorContainer, themeColorScheme.onErrorContainer) && Color.m482equalsimpl0(this.surfaceDim, themeColorScheme.surfaceDim) && Color.m482equalsimpl0(this.surface, themeColorScheme.surface) && Color.m482equalsimpl0(this.surfaceBright, themeColorScheme.surfaceBright) && Color.m482equalsimpl0(this.onSurface, themeColorScheme.onSurface) && Color.m482equalsimpl0(this.onSurfaceVariant, themeColorScheme.onSurfaceVariant) && Color.m482equalsimpl0(this.surfaceContainerLowest, themeColorScheme.surfaceContainerLowest) && Color.m482equalsimpl0(this.surfaceContainerLow, themeColorScheme.surfaceContainerLow) && Color.m482equalsimpl0(this.surfaceContainer, themeColorScheme.surfaceContainer) && Color.m482equalsimpl0(this.surfaceContainerHigh, themeColorScheme.surfaceContainerHigh) && Color.m482equalsimpl0(this.surfaceContainerHighest, themeColorScheme.surfaceContainerHighest) && Color.m482equalsimpl0(this.inverseSurface, themeColorScheme.inverseSurface) && Color.m482equalsimpl0(this.inverseOnSurface, themeColorScheme.inverseOnSurface) && Color.m482equalsimpl0(this.inversePrimary, themeColorScheme.inversePrimary) && Color.m482equalsimpl0(this.outline, themeColorScheme.outline) && Color.m482equalsimpl0(this.outlineVariant, themeColorScheme.outlineVariant) && Color.m482equalsimpl0(this.scrim, themeColorScheme.scrim) && Color.m482equalsimpl0(this.info, themeColorScheme.info) && Color.m482equalsimpl0(this.onInfo, themeColorScheme.onInfo) && Color.m482equalsimpl0(this.infoContainer, themeColorScheme.infoContainer) && Color.m482equalsimpl0(this.onInfoContainer, themeColorScheme.onInfoContainer) && Color.m482equalsimpl0(this.success, themeColorScheme.success) && Color.m482equalsimpl0(this.onSuccess, themeColorScheme.onSuccess) && Color.m482equalsimpl0(this.successContainer, themeColorScheme.successContainer) && Color.m482equalsimpl0(this.onSuccessContainer, themeColorScheme.onSuccessContainer) && Color.m482equalsimpl0(this.warning, themeColorScheme.warning) && Color.m482equalsimpl0(this.onWarning, themeColorScheme.onWarning) && Color.m482equalsimpl0(this.warningContainer, themeColorScheme.warningContainer) && Color.m482equalsimpl0(this.onWarningContainer, themeColorScheme.onWarningContainer);
    }

    public final int hashCode() {
        int i = Color.$r8$clinit;
        return ULong.m980hashCodeimpl(this.onWarningContainer) + Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(Config.CC.m(ULong.m980hashCodeimpl(this.primary) * 31, 31, this.onPrimary), 31, this.primaryContainer), 31, this.onPrimaryContainer), 31, this.secondary), 31, this.onSecondary), 31, this.secondaryContainer), 31, this.onSecondaryContainer), 31, this.tertiary), 31, this.onTertiary), 31, this.tertiaryContainer), 31, this.onTertiaryContainer), 31, this.error), 31, this.onError), 31, this.errorContainer), 31, this.onErrorContainer), 31, this.surfaceDim), 31, this.surface), 31, this.surfaceBright), 31, this.onSurface), 31, this.onSurfaceVariant), 31, this.surfaceContainerLowest), 31, this.surfaceContainerLow), 31, this.surfaceContainer), 31, this.surfaceContainerHigh), 31, this.surfaceContainerHighest), 31, this.inverseSurface), 31, this.inverseOnSurface), 31, this.inversePrimary), 31, this.outline), 31, this.outlineVariant), 31, this.scrim), 31, this.info), 31, this.onInfo), 31, this.infoContainer), 31, this.onInfoContainer), 31, this.success), 31, this.onSuccess), 31, this.successContainer), 31, this.onSuccessContainer), 31, this.warning), 31, this.onWarning), 31, this.warningContainer);
    }

    public final String toString() {
        String m488toStringimpl = Color.m488toStringimpl(this.primary);
        String m488toStringimpl2 = Color.m488toStringimpl(this.onPrimary);
        String m488toStringimpl3 = Color.m488toStringimpl(this.primaryContainer);
        String m488toStringimpl4 = Color.m488toStringimpl(this.onPrimaryContainer);
        String m488toStringimpl5 = Color.m488toStringimpl(this.secondary);
        String m488toStringimpl6 = Color.m488toStringimpl(this.onSecondary);
        String m488toStringimpl7 = Color.m488toStringimpl(this.secondaryContainer);
        String m488toStringimpl8 = Color.m488toStringimpl(this.onSecondaryContainer);
        String m488toStringimpl9 = Color.m488toStringimpl(this.tertiary);
        String m488toStringimpl10 = Color.m488toStringimpl(this.onTertiary);
        String m488toStringimpl11 = Color.m488toStringimpl(this.tertiaryContainer);
        String m488toStringimpl12 = Color.m488toStringimpl(this.onTertiaryContainer);
        String m488toStringimpl13 = Color.m488toStringimpl(this.error);
        String m488toStringimpl14 = Color.m488toStringimpl(this.onError);
        String m488toStringimpl15 = Color.m488toStringimpl(this.errorContainer);
        String m488toStringimpl16 = Color.m488toStringimpl(this.onErrorContainer);
        String m488toStringimpl17 = Color.m488toStringimpl(this.surfaceDim);
        String m488toStringimpl18 = Color.m488toStringimpl(this.surface);
        String m488toStringimpl19 = Color.m488toStringimpl(this.surfaceBright);
        String m488toStringimpl20 = Color.m488toStringimpl(this.onSurface);
        String m488toStringimpl21 = Color.m488toStringimpl(this.onSurfaceVariant);
        String m488toStringimpl22 = Color.m488toStringimpl(this.surfaceContainerLowest);
        String m488toStringimpl23 = Color.m488toStringimpl(this.surfaceContainerLow);
        String m488toStringimpl24 = Color.m488toStringimpl(this.surfaceContainer);
        String m488toStringimpl25 = Color.m488toStringimpl(this.surfaceContainerHigh);
        String m488toStringimpl26 = Color.m488toStringimpl(this.surfaceContainerHighest);
        String m488toStringimpl27 = Color.m488toStringimpl(this.inverseSurface);
        String m488toStringimpl28 = Color.m488toStringimpl(this.inverseOnSurface);
        String m488toStringimpl29 = Color.m488toStringimpl(this.inversePrimary);
        String m488toStringimpl30 = Color.m488toStringimpl(this.outline);
        String m488toStringimpl31 = Color.m488toStringimpl(this.outlineVariant);
        String m488toStringimpl32 = Color.m488toStringimpl(this.scrim);
        String m488toStringimpl33 = Color.m488toStringimpl(this.info);
        String m488toStringimpl34 = Color.m488toStringimpl(this.onInfo);
        String m488toStringimpl35 = Color.m488toStringimpl(this.infoContainer);
        String m488toStringimpl36 = Color.m488toStringimpl(this.onInfoContainer);
        String m488toStringimpl37 = Color.m488toStringimpl(this.success);
        String m488toStringimpl38 = Color.m488toStringimpl(this.onSuccess);
        String m488toStringimpl39 = Color.m488toStringimpl(this.successContainer);
        String m488toStringimpl40 = Color.m488toStringimpl(this.onSuccessContainer);
        String m488toStringimpl41 = Color.m488toStringimpl(this.warning);
        String m488toStringimpl42 = Color.m488toStringimpl(this.onWarning);
        String m488toStringimpl43 = Color.m488toStringimpl(this.warningContainer);
        String m488toStringimpl44 = Color.m488toStringimpl(this.onWarningContainer);
        StringBuilder m = Config.CC.m("ThemeColorScheme(primary=", m488toStringimpl, ", onPrimary=", m488toStringimpl2, ", primaryContainer=");
        Modifier.CC.m(m, m488toStringimpl3, ", onPrimaryContainer=", m488toStringimpl4, ", secondary=");
        Modifier.CC.m(m, m488toStringimpl5, ", onSecondary=", m488toStringimpl6, ", secondaryContainer=");
        Modifier.CC.m(m, m488toStringimpl7, ", onSecondaryContainer=", m488toStringimpl8, ", tertiary=");
        Modifier.CC.m(m, m488toStringimpl9, ", onTertiary=", m488toStringimpl10, ", tertiaryContainer=");
        Modifier.CC.m(m, m488toStringimpl11, ", onTertiaryContainer=", m488toStringimpl12, ", error=");
        Modifier.CC.m(m, m488toStringimpl13, ", onError=", m488toStringimpl14, ", errorContainer=");
        Modifier.CC.m(m, m488toStringimpl15, ", onErrorContainer=", m488toStringimpl16, ", surfaceDim=");
        Modifier.CC.m(m, m488toStringimpl17, ", surface=", m488toStringimpl18, ", surfaceBright=");
        Modifier.CC.m(m, m488toStringimpl19, ", onSurface=", m488toStringimpl20, ", onSurfaceVariant=");
        Modifier.CC.m(m, m488toStringimpl21, ", surfaceContainerLowest=", m488toStringimpl22, ", surfaceContainerLow=");
        Modifier.CC.m(m, m488toStringimpl23, ", surfaceContainer=", m488toStringimpl24, ", surfaceContainerHigh=");
        Modifier.CC.m(m, m488toStringimpl25, ", surfaceContainerHighest=", m488toStringimpl26, ", inverseSurface=");
        Modifier.CC.m(m, m488toStringimpl27, ", inverseOnSurface=", m488toStringimpl28, ", inversePrimary=");
        Modifier.CC.m(m, m488toStringimpl29, ", outline=", m488toStringimpl30, ", outlineVariant=");
        Modifier.CC.m(m, m488toStringimpl31, ", scrim=", m488toStringimpl32, ", info=");
        Modifier.CC.m(m, m488toStringimpl33, ", onInfo=", m488toStringimpl34, ", infoContainer=");
        Modifier.CC.m(m, m488toStringimpl35, ", onInfoContainer=", m488toStringimpl36, ", success=");
        Modifier.CC.m(m, m488toStringimpl37, ", onSuccess=", m488toStringimpl38, ", successContainer=");
        Modifier.CC.m(m, m488toStringimpl39, ", onSuccessContainer=", m488toStringimpl40, ", warning=");
        Modifier.CC.m(m, m488toStringimpl41, ", onWarning=", m488toStringimpl42, ", warningContainer=");
        m.append(m488toStringimpl43);
        m.append(", onWarningContainer=");
        m.append(m488toStringimpl44);
        m.append(")");
        return m.toString();
    }
}
