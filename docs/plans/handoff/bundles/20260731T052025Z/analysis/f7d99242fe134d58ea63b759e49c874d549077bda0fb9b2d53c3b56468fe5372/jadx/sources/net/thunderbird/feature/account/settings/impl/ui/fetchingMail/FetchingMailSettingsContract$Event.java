package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface FetchingMailSettingsContract$Event {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnAdvanceClick implements FetchingMailSettingsContract$Event {
        public static final OnAdvanceClick INSTANCE = new OnAdvanceClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnAdvanceClick);
        }

        public final int hashCode() {
            return -68371136;
        }

        public final String toString() {
            return "OnAdvanceClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnBackPressed implements FetchingMailSettingsContract$Event {
        public static final OnBackPressed INSTANCE = new OnBackPressed();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnBackPressed);
        }

        public final int hashCode() {
            return 1782670049;
        }

        public final String toString() {
            return "OnBackPressed";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnEraseDeletedMessageOnServerChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption eraseDeletedMessageOnServer;

        public OnEraseDeletedMessageOnServerChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.eraseDeletedMessageOnServer = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnEraseDeletedMessageOnServerChange) && Intrinsics.areEqual(this.eraseDeletedMessageOnServer, ((OnEraseDeletedMessageOnServerChange) obj).eraseDeletedMessageOnServer);
        }

        public final int hashCode() {
            return this.eraseDeletedMessageOnServer.hashCode();
        }

        public final String toString() {
            return "OnEraseDeletedMessageOnServerChange(eraseDeletedMessageOnServer=" + this.eraseDeletedMessageOnServer + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnFetchMessageUpToChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption fetchMessageUpTo;

        public OnFetchMessageUpToChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.fetchMessageUpTo = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnFetchMessageUpToChange) && Intrinsics.areEqual(this.fetchMessageUpTo, ((OnFetchMessageUpToChange) obj).fetchMessageUpTo);
        }

        public final int hashCode() {
            return this.fetchMessageUpTo.hashCode();
        }

        public final String toString() {
            return "OnFetchMessageUpToChange(fetchMessageUpTo=" + this.fetchMessageUpTo + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnFolderPollFrequencyChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption folderPollFrequency;

        public OnFolderPollFrequencyChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.folderPollFrequency = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnFolderPollFrequencyChange) && Intrinsics.areEqual(this.folderPollFrequency, ((OnFolderPollFrequencyChange) obj).folderPollFrequency);
        }

        public final int hashCode() {
            return this.folderPollFrequency.hashCode();
        }

        public final String toString() {
            return "OnFolderPollFrequencyChange(folderPollFrequency=" + this.folderPollFrequency + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnInComingServerClick implements FetchingMailSettingsContract$Event {
        public static final OnInComingServerClick INSTANCE = new OnInComingServerClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof OnInComingServerClick);
        }

        public final int hashCode() {
            return 1904956293;
        }

        public final String toString() {
            return "OnInComingServerClick";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnLocalFolderSizeChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption localFolderSize;

        public OnLocalFolderSizeChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.localFolderSize = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnLocalFolderSizeChange) && Intrinsics.areEqual(this.localFolderSize, ((OnLocalFolderSizeChange) obj).localFolderSize);
        }

        public final int hashCode() {
            return this.localFolderSize.hashCode();
        }

        public final String toString() {
            return "OnLocalFolderSizeChange(localFolderSize=" + this.localFolderSize + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnMarkAsReadWhenDeletedToggle implements FetchingMailSettingsContract$Event {
        public final boolean markAsReadWhenDeleted;

        public OnMarkAsReadWhenDeletedToggle(boolean z) {
            this.markAsReadWhenDeleted = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnMarkAsReadWhenDeletedToggle) && this.markAsReadWhenDeleted == ((OnMarkAsReadWhenDeletedToggle) obj).markAsReadWhenDeleted;
        }

        public final int hashCode() {
            return this.markAsReadWhenDeleted ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("OnMarkAsReadWhenDeletedToggle(markAsReadWhenDeleted=", ")", this.markAsReadWhenDeleted);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnMaxFolderToCheckWithPushChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption maxFolderToCheckWithPushChanges;

        public OnMaxFolderToCheckWithPushChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.maxFolderToCheckWithPushChanges = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnMaxFolderToCheckWithPushChange) && Intrinsics.areEqual(this.maxFolderToCheckWithPushChanges, ((OnMaxFolderToCheckWithPushChange) obj).maxFolderToCheckWithPushChanges);
        }

        public final int hashCode() {
            return this.maxFolderToCheckWithPushChanges.hashCode();
        }

        public final String toString() {
            return "OnMaxFolderToCheckWithPushChange(maxFolderToCheckWithPushChanges=" + this.maxFolderToCheckWithPushChanges + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnRefreshIdleConnectionFrequencyChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption refreshIdleConnectionFrequency;

        public OnRefreshIdleConnectionFrequencyChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.refreshIdleConnectionFrequency = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnRefreshIdleConnectionFrequencyChange) && Intrinsics.areEqual(this.refreshIdleConnectionFrequency, ((OnRefreshIdleConnectionFrequencyChange) obj).refreshIdleConnectionFrequency);
        }

        public final int hashCode() {
            return this.refreshIdleConnectionFrequency.hashCode();
        }

        public final String toString() {
            return "OnRefreshIdleConnectionFrequencyChange(refreshIdleConnectionFrequency=" + this.refreshIdleConnectionFrequency + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSyncMessageFromChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption syncMessageFrom;

        public OnSyncMessageFromChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.syncMessageFrom = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnSyncMessageFromChange) && Intrinsics.areEqual(this.syncMessageFrom, ((OnSyncMessageFromChange) obj).syncMessageFrom);
        }

        public final int hashCode() {
            return this.syncMessageFrom.hashCode();
        }

        public final String toString() {
            return "OnSyncMessageFromChange(syncMessageFrom=" + this.syncMessageFrom + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnSyncServerDeletionsToggle implements FetchingMailSettingsContract$Event {
        public final boolean syncServerDeletions;

        public OnSyncServerDeletionsToggle(boolean z) {
            this.syncServerDeletions = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnSyncServerDeletionsToggle) && this.syncServerDeletions == ((OnSyncServerDeletionsToggle) obj).syncServerDeletions;
        }

        public final int hashCode() {
            return this.syncServerDeletions ? 1231 : 1237;
        }

        public final String toString() {
            return ViewSizeResolver.CC.m("OnSyncServerDeletionsToggle(syncServerDeletions=", ")", this.syncServerDeletions);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class OnWhenIDeleteAMessageChange implements FetchingMailSettingsContract$Event {
        public final SettingValue.Select.SelectOption whenIDeleteAMessage;

        public OnWhenIDeleteAMessageChange(SettingValue.Select.SelectOption selectOption) {
            selectOption.getClass();
            this.whenIDeleteAMessage = selectOption;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof OnWhenIDeleteAMessageChange) && Intrinsics.areEqual(this.whenIDeleteAMessage, ((OnWhenIDeleteAMessageChange) obj).whenIDeleteAMessage);
        }

        public final int hashCode() {
            return this.whenIDeleteAMessage.hashCode();
        }

        public final String toString() {
            return "OnWhenIDeleteAMessageChange(whenIDeleteAMessage=" + this.whenIDeleteAMessage + ")";
        }
    }
}
