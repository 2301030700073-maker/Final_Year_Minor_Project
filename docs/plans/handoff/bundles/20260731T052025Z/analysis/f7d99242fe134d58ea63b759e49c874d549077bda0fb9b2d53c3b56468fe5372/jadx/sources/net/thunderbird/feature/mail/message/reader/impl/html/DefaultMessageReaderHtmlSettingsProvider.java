package net.thunderbird.feature.mail.message.reader.impl.html;

import net.thunderbird.core.common.mail.html.HtmlSettings;
import net.thunderbird.core.preference.display.visualSettings.DefaultDisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings;
import net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsPreferenceManager;
import net.thunderbird.core.ui.theme.api.Theme;
import net.thunderbird.core.ui.theme.api.ThemeManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultMessageReaderHtmlSettingsProvider {
    public final ThemeManager themeManager;
    public final DisplayVisualSettingsPreferenceManager visualSettingsPreferenceManager;

    public DefaultMessageReaderHtmlSettingsProvider(ThemeManager themeManager, DisplayVisualSettingsPreferenceManager displayVisualSettingsPreferenceManager) {
        this.themeManager = themeManager;
        this.visualSettingsPreferenceManager = displayVisualSettingsPreferenceManager;
    }

    public final HtmlSettings create() {
        return new HtmlSettings(((net.thunderbird.core.ui.theme.manager.ThemeManager) this.themeManager).getMessageViewTheme() == Theme.DARK, ((DisplayVisualSettings) ((DefaultDisplayVisualSettingsPreferenceManager) this.visualSettingsPreferenceManager).getConfig()).isUseMessageViewFixedWidthFont);
    }
}
