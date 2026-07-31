package com.fsck.k9.preferences;

import java.util.Map;
import net.thunderbird.core.preference.GeneralSettingsManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IdentitySettingsUpgrader {
    public final GeneralSettingsManager generalSettingsManager;
    public final Map settingsDescriptions;
    public final Map upgraders;

    public IdentitySettingsUpgrader(GeneralSettingsManager generalSettingsManager) {
        Map map = IdentitySettingsDescriptions.SETTINGS;
        map.getClass();
        Map map2 = IdentitySettingsDescriptions.UPGRADERS;
        map2.getClass();
        this.settingsDescriptions = map;
        this.upgraders = map2;
        this.generalSettingsManager = generalSettingsManager;
    }
}
