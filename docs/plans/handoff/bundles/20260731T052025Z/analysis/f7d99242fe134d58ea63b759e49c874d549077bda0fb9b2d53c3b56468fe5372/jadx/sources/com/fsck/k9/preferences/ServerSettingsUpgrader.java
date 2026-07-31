package com.fsck.k9.preferences;

import java.util.Map;
import net.thunderbird.core.preference.GeneralSettingsManager;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ServerSettingsUpgrader {
    public final GeneralSettingsManager generalSettingsManager;
    public final Map settingsDescriptions;
    public final Map upgraders;

    public ServerSettingsUpgrader(GeneralSettingsManager generalSettingsManager) {
        Map map = ServerSettingsDescriptions.SETTINGS;
        Map map2 = ServerSettingsDescriptions.UPGRADERS;
        map.getClass();
        map2.getClass();
        this.settingsDescriptions = map;
        this.upgraders = map2;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final ValidatedSettings$Server upgrade(int i, int i2, ValidatedSettings$Server validatedSettings$Server) {
        if (i2 == i) {
            return validatedSettings$Server;
        }
        return new ValidatedSettings$Server(validatedSettings$Server.type, Util.upgradeToVersion(i, i2, this.upgraders, this.settingsDescriptions, validatedSettings$Server.settings, this.generalSettingsManager), validatedSettings$Server.extras);
    }
}
