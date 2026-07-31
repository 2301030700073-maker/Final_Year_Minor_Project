package net.thunderbird.core.preference.display.coreSettings;

import androidx.compose.ui.Modifier;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayCoreSettings {
    public final String appLanguage;
    public final AppTheme appTheme;
    public final boolean fixedMessageViewTheme;
    public final SubTheme messageComposeTheme;
    public final SubTheme messageViewTheme;
    public final SplitViewMode splitViewMode;

    public DisplayCoreSettings(boolean z, AppTheme appTheme, SubTheme subTheme, SubTheme subTheme2, String str, SplitViewMode splitViewMode) {
        appTheme.getClass();
        subTheme.getClass();
        subTheme2.getClass();
        splitViewMode.getClass();
        this.fixedMessageViewTheme = z;
        this.appTheme = appTheme;
        this.messageViewTheme = subTheme;
        this.messageComposeTheme = subTheme2;
        this.appLanguage = str;
        this.splitViewMode = splitViewMode;
    }

    public static DisplayCoreSettings copy$default(DisplayCoreSettings displayCoreSettings, boolean z, AppTheme appTheme, SubTheme subTheme, SubTheme subTheme2, String str, SplitViewMode splitViewMode, int i) {
        if ((i & 1) != 0) {
            z = displayCoreSettings.fixedMessageViewTheme;
        }
        boolean z2 = z;
        if ((i & 2) != 0) {
            appTheme = displayCoreSettings.appTheme;
        }
        AppTheme appTheme2 = appTheme;
        if ((i & 4) != 0) {
            subTheme = displayCoreSettings.messageViewTheme;
        }
        SubTheme subTheme3 = subTheme;
        if ((i & 8) != 0) {
            subTheme2 = displayCoreSettings.messageComposeTheme;
        }
        SubTheme subTheme4 = subTheme2;
        if ((i & 16) != 0) {
            str = displayCoreSettings.appLanguage;
        }
        String str2 = str;
        if ((i & 32) != 0) {
            splitViewMode = displayCoreSettings.splitViewMode;
        }
        SplitViewMode splitViewMode2 = splitViewMode;
        displayCoreSettings.getClass();
        appTheme2.getClass();
        subTheme3.getClass();
        subTheme4.getClass();
        str2.getClass();
        splitViewMode2.getClass();
        return new DisplayCoreSettings(z2, appTheme2, subTheme3, subTheme4, str2, splitViewMode2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayCoreSettings)) {
            return false;
        }
        DisplayCoreSettings displayCoreSettings = (DisplayCoreSettings) obj;
        return this.fixedMessageViewTheme == displayCoreSettings.fixedMessageViewTheme && this.appTheme == displayCoreSettings.appTheme && this.messageViewTheme == displayCoreSettings.messageViewTheme && this.messageComposeTheme == displayCoreSettings.messageComposeTheme && this.appLanguage.equals(displayCoreSettings.appLanguage) && this.splitViewMode == displayCoreSettings.splitViewMode;
    }

    public final int hashCode() {
        return this.splitViewMode.hashCode() + Modifier.CC.m((this.messageComposeTheme.hashCode() + ((this.messageViewTheme.hashCode() + ((this.appTheme.hashCode() + ((this.fixedMessageViewTheme ? 1231 : 1237) * 31)) * 31)) * 31)) * 31, this.appLanguage, 31);
    }

    public final String toString() {
        return "DisplayCoreSettings(fixedMessageViewTheme=" + this.fixedMessageViewTheme + ", appTheme=" + this.appTheme + ", messageViewTheme=" + this.messageViewTheme + ", messageComposeTheme=" + this.messageComposeTheme + ", appLanguage=" + this.appLanguage + ", splitViewMode=" + this.splitViewMode + ")";
    }
}
