package net.thunderbird.core.preference.display.coreSettings;

import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class DisplayCoreSettingsKt {
    public static final AppTheme DISPLAY_SETTINGS_DEFAULT_APP_THEME = AppTheme.FOLLOW_SYSTEM;
    public static final SubTheme DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME;
    public static final SubTheme DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME;
    public static final SplitViewMode DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE;

    static {
        SubTheme subTheme = SubTheme.USE_GLOBAL;
        DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME = subTheme;
        DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE = SplitViewMode.NEVER;
        DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME = subTheme;
    }
}
