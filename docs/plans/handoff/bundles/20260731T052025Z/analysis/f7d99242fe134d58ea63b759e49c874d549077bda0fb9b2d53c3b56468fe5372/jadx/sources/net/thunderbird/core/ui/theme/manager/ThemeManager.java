package net.thunderbird.core.ui.theme.manager;

import android.content.Context;
import app.k9mail.provider.K9ThemeProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.SubTheme;
import net.thunderbird.core.ui.theme.api.Theme;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThemeManager implements net.thunderbird.core.ui.theme.api.ThemeManager {
    public final CoroutineScope appCoroutineScope;
    public final Context context;
    public final GeneralSettingsManager generalSettingsManager;

    public ThemeManager(Context context, K9ThemeProvider k9ThemeProvider, GeneralSettingsManager generalSettingsManager, CoroutineScope coroutineScope) {
        this.context = context;
        this.generalSettingsManager = generalSettingsManager;
        this.appCoroutineScope = coroutineScope;
    }

    public final Theme getAppTheme() {
        int ordinal = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().display.coreSettings.appTheme.ordinal();
        Theme theme = Theme.LIGHT;
        if (ordinal == 0) {
            return theme;
        }
        Theme theme2 = Theme.DARK;
        if (ordinal == 1) {
            return theme2;
        }
        if (ordinal == 2) {
            int i = this.context.getResources().getConfiguration().uiMode & 48;
            return i != 16 ? i != 32 ? theme : theme2 : theme;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public final Theme getMessageViewTheme() {
        int ordinal = ((DefaultGeneralSettingsManager) this.generalSettingsManager).getConfig().display.coreSettings.messageViewTheme.ordinal();
        if (ordinal == 0) {
            return Theme.LIGHT;
        }
        if (ordinal == 1) {
            return Theme.DARK;
        }
        if (ordinal == 2) {
            return getAppTheme();
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public final int getSubThemeResourceId(SubTheme subTheme) {
        int ordinal = subTheme.ordinal();
        if (ordinal == 0) {
            return R.style.Theme_K9_Light;
        }
        if (ordinal == 1) {
            return R.style.Theme_K9_Dark;
        }
        if (ordinal == 2) {
            return R.style.Theme_K9_DayNight;
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return 0;
    }
}
