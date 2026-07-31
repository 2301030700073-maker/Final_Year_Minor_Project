package com.fsck.k9.ui.settings.export;

import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsExportUiModel {
    public ButtonState exportButton;
    public boolean isProgressVisible;
    public boolean isSettingsListEnabled;
    public boolean isShareButtonVisible;
    public List settingsList;
    public StatusText statusText;

    public final void updateExportButtonFromSelection() {
        if (this.isProgressVisible || this.isShareButtonVisible) {
            return;
        }
        List list = this.settingsList;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((SettingsListItem) it.next()).selected) {
                    this.exportButton = ButtonState.ENABLED;
                    this.isShareButtonVisible = false;
                    this.isProgressVisible = false;
                    this.isSettingsListEnabled = true;
                    return;
                }
            }
        }
        this.exportButton = ButtonState.DISABLED;
        this.isShareButtonVisible = false;
        this.isProgressVisible = false;
    }
}
