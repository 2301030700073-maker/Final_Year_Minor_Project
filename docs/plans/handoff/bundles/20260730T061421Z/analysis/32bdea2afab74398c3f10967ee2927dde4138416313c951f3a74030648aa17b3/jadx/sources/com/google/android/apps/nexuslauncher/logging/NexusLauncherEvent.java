package com.google.android.apps.nexuslauncher.logging;

import com.android.launcher3.logging.StatsLogManager;

/* loaded from: classes.dex */
public enum NexusLauncherEvent implements StatsLogManager.EventEnum {
    LAUNCHER_GOOGLE_SEARCHBOX_TAP(502),
    LAUNCHER_GOOGLE_SMARTSPACE_PREFERENCES_TAP_OR_LONGPRESS(503),
    LAUNCHER_GOOGLE_SMARTSPACE_WEATHER_TAP(554),
    LAUNCHER_GOOGLE_SMARTSPACE_DATE_TAP(555),
    LAUNCHER_GOOGLE_SMARTSPACE_CARD_TAP(556);

    public final int mId;

    NexusLauncherEvent(int i) {
        this.mId = i;
    }

    @Override // com.android.launcher3.logging.StatsLogManager.EventEnum
    public int getId() {
        return this.mId;
    }
}
