package com.fsck.k9.view;

import com.fsck.k9.K9;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.theme.api.Theme;
import net.thunderbird.core.ui.theme.manager.ThemeManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class WebViewConfigProvider {
    public final GeneralSettingsManager generalSettingsManager;
    public final ThemeManager themeManager;

    public WebViewConfigProvider(ThemeManager themeManager, GeneralSettingsManager generalSettingsManager) {
        this.themeManager = themeManager;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final WebViewConfig createWebViewConfig(Theme theme) {
        return new WebViewConfig(K9.fontSizes.messageViewContentAsPercent, theme == Theme.DARK, ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().display.visualSettings.isAutoFitWidth);
    }
}
