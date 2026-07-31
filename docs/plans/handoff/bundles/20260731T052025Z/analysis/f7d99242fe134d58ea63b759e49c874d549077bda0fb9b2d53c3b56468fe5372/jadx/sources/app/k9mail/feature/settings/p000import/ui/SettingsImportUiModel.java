package app.k9mail.feature.settings.p000import.ui;

import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SettingsImportUiModel {
    public ButtonState closeButton;
    public CloseButtonLabel closeButtonLabel;
    public ButtonState importButton;
    public boolean isImportProgressVisible;
    public boolean isLoadingProgressVisible;
    public boolean isPickAppButtonEnabled;
    public boolean isPickAppButtonPermanentlyDisabled;
    public boolean isPickAppButtonVisible;
    public boolean isPickDocumentButtonEnabled;
    public boolean isPickDocumentButtonVisible;
    public boolean isScanQrCodeButtonEnabled;
    public boolean isScanQrCodeButtonVisible;
    public boolean isSettingsListEnabled;
    public boolean isSettingsListVisible;
    public List settingsList;
    public StatusText statusText;

    public final void disablePickButtons() {
        this.statusText = StatusText.HIDDEN;
        this.isPickDocumentButtonEnabled = false;
        this.isScanQrCodeButtonEnabled = false;
        this.isPickAppButtonEnabled = false;
    }

    public final void setSettingsListState(int i, ImportStatus importStatus) {
        SettingsListItem settingsListItem = (SettingsListItem) this.settingsList.get(i);
        settingsListItem.getClass();
        settingsListItem.importStatus = importStatus;
        ((SettingsListItem) this.settingsList.get(i)).enabled = importStatus.isActionRequired;
    }

    public final void showActionRequiredText(StatusText statusText) {
        this.importButton = ButtonState.GONE;
        this.closeButton = ButtonState.ENABLED;
        this.closeButtonLabel = CloseButtonLabel.LATER;
        this.isImportProgressVisible = false;
        this.isSettingsListEnabled = true;
        this.statusText = statusText;
    }

    public final void showImportErrorText() {
        this.isLoadingProgressVisible = false;
        this.isImportProgressVisible = false;
        this.isSettingsListVisible = false;
        this.isPickDocumentButtonVisible = true;
        this.isPickDocumentButtonEnabled = true;
        this.isScanQrCodeButtonVisible = false;
        this.isScanQrCodeButtonEnabled = true;
        this.isPickAppButtonVisible = false;
        if (!this.isPickAppButtonPermanentlyDisabled) {
            this.isPickAppButtonEnabled = true;
        }
        this.statusText = StatusText.IMPORT_FAILURE;
        this.importButton = ButtonState.DISABLED;
    }

    public final void showLoadingProgress() {
        this.isLoadingProgressVisible = true;
        this.isPickDocumentButtonVisible = false;
        this.isScanQrCodeButtonVisible = false;
        this.isPickAppButtonVisible = false;
        this.isSettingsListEnabled = false;
        this.statusText = StatusText.HIDDEN;
    }

    public final void updateCloseButtonAndImportStatusText() {
        boolean z;
        boolean z2;
        List list = this.settingsList;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((SettingsListItem) it.next()).importStatus.isSuccess) {
                    List list2 = this.settingsList;
                    if (list2 == null || !list2.isEmpty()) {
                        Iterator it2 = list2.iterator();
                        while (it2.hasNext()) {
                            if (((SettingsListItem) it2.next()).importStatus == ImportStatus.IMPORT_SUCCESS_PASSWORD_REQUIRED) {
                                z = true;
                                break;
                            }
                        }
                    }
                    z = false;
                    List list3 = this.settingsList;
                    if (list3 == null || !list3.isEmpty()) {
                        Iterator it3 = list3.iterator();
                        while (it3.hasNext()) {
                            if (((SettingsListItem) it3.next()).importStatus == ImportStatus.IMPORT_SUCCESS_AUTHORIZATION_REQUIRED) {
                                z2 = true;
                                break;
                            }
                        }
                    }
                    z2 = false;
                    if (z && z2) {
                        showActionRequiredText(StatusText.IMPORT_SUCCESS_PASSWORD_AND_AUTHORIZATION_REQUIRED);
                        return;
                    }
                    if (z) {
                        showActionRequiredText(StatusText.IMPORT_SUCCESS_PASSWORD_REQUIRED);
                        return;
                    }
                    if (z2) {
                        showActionRequiredText(StatusText.IMPORT_SUCCESS_AUTHORIZATION_REQUIRED);
                        return;
                    }
                    List list4 = this.settingsList;
                    CloseButtonLabel closeButtonLabel = CloseButtonLabel.OK;
                    ButtonState buttonState = ButtonState.ENABLED;
                    ButtonState buttonState2 = ButtonState.GONE;
                    if (list4 == null || !list4.isEmpty()) {
                        Iterator it4 = list4.iterator();
                        while (it4.hasNext()) {
                            if (((SettingsListItem) it4.next()).importStatus == ImportStatus.IMPORT_FAILURE) {
                                this.importButton = buttonState2;
                                this.closeButton = buttonState;
                                this.closeButtonLabel = closeButtonLabel;
                                this.isImportProgressVisible = false;
                                this.isSettingsListEnabled = true;
                                this.statusText = StatusText.IMPORT_PARTIAL_FAILURE;
                                return;
                            }
                        }
                    }
                    this.importButton = buttonState2;
                    this.closeButton = buttonState;
                    this.closeButtonLabel = closeButtonLabel;
                    this.isImportProgressVisible = false;
                    this.isSettingsListEnabled = true;
                    this.statusText = StatusText.IMPORT_SUCCESS;
                    return;
                }
            }
        }
        showImportErrorText();
    }

    public final void updateImportButtonFromSelection() {
        if (this.isImportProgressVisible) {
            return;
        }
        List list = this.settingsList;
        if (list == null || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((SettingsListItem) it.next()).selected) {
                    this.importButton = ButtonState.ENABLED;
                    this.isImportProgressVisible = false;
                    this.isSettingsListEnabled = true;
                    return;
                }
            }
        }
        this.importButton = ButtonState.DISABLED;
        this.isImportProgressVisible = false;
    }
}
