package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchingMailSettingsContract$State {
    public final SettingValue.Select.SelectOption eraseDeletedMessageOnServer;
    public final SettingValue.Select.SelectOption fetchMessageUpTo;
    public final SettingValue.Select.SelectOption folderPollFrequency;
    public final SettingValue.Select.SelectOption localFolderSize;
    public final boolean markAsReadWhenDeleted;
    public final SettingValue.Select.SelectOption maxFolderToCheckWithPush;
    public final SettingValue.Select.SelectOption refreshIdleConnection;
    public final String subtitle;
    public final SettingValue.Select.SelectOption syncMessageFrom;
    public final boolean syncServerDeletions;
    public final SettingValue.Select.SelectOption whenIDeleteAMessage;

    public FetchingMailSettingsContract$State(String str, SettingValue.Select.SelectOption selectOption, SettingValue.Select.SelectOption selectOption2, SettingValue.Select.SelectOption selectOption3, SettingValue.Select.SelectOption selectOption4, boolean z, boolean z2, SettingValue.Select.SelectOption selectOption5, SettingValue.Select.SelectOption selectOption6, SettingValue.Select.SelectOption selectOption7, SettingValue.Select.SelectOption selectOption8) {
        selectOption.getClass();
        selectOption2.getClass();
        selectOption3.getClass();
        selectOption4.getClass();
        selectOption5.getClass();
        selectOption6.getClass();
        selectOption7.getClass();
        selectOption8.getClass();
        this.subtitle = str;
        this.localFolderSize = selectOption;
        this.syncMessageFrom = selectOption2;
        this.fetchMessageUpTo = selectOption3;
        this.folderPollFrequency = selectOption4;
        this.syncServerDeletions = z;
        this.markAsReadWhenDeleted = z2;
        this.whenIDeleteAMessage = selectOption5;
        this.eraseDeletedMessageOnServer = selectOption6;
        this.maxFolderToCheckWithPush = selectOption7;
        this.refreshIdleConnection = selectOption8;
    }

    public static FetchingMailSettingsContract$State copy$default(FetchingMailSettingsContract$State fetchingMailSettingsContract$State, String str, SettingValue.Select.SelectOption selectOption, SettingValue.Select.SelectOption selectOption2, SettingValue.Select.SelectOption selectOption3, SettingValue.Select.SelectOption selectOption4, boolean z, boolean z2, SettingValue.Select.SelectOption selectOption5, SettingValue.Select.SelectOption selectOption6, SettingValue.Select.SelectOption selectOption7, SettingValue.Select.SelectOption selectOption8, int i) {
        if ((i & 1) != 0) {
            str = fetchingMailSettingsContract$State.subtitle;
        }
        String str2 = str;
        if ((i & 2) != 0) {
            selectOption = fetchingMailSettingsContract$State.localFolderSize;
        }
        SettingValue.Select.SelectOption selectOption9 = selectOption;
        if ((i & 4) != 0) {
            selectOption2 = fetchingMailSettingsContract$State.syncMessageFrom;
        }
        SettingValue.Select.SelectOption selectOption10 = selectOption2;
        SettingValue.Select.SelectOption selectOption11 = (i & 8) != 0 ? fetchingMailSettingsContract$State.fetchMessageUpTo : selectOption3;
        SettingValue.Select.SelectOption selectOption12 = (i & 16) != 0 ? fetchingMailSettingsContract$State.folderPollFrequency : selectOption4;
        boolean z3 = (i & 32) != 0 ? fetchingMailSettingsContract$State.syncServerDeletions : z;
        boolean z4 = (i & 64) != 0 ? fetchingMailSettingsContract$State.markAsReadWhenDeleted : z2;
        SettingValue.Select.SelectOption selectOption13 = (i & 128) != 0 ? fetchingMailSettingsContract$State.whenIDeleteAMessage : selectOption5;
        SettingValue.Select.SelectOption selectOption14 = (i & 256) != 0 ? fetchingMailSettingsContract$State.eraseDeletedMessageOnServer : selectOption6;
        SettingValue.Select.SelectOption selectOption15 = (i & 512) != 0 ? fetchingMailSettingsContract$State.maxFolderToCheckWithPush : selectOption7;
        SettingValue.Select.SelectOption selectOption16 = (i & 1024) != 0 ? fetchingMailSettingsContract$State.refreshIdleConnection : selectOption8;
        fetchingMailSettingsContract$State.getClass();
        selectOption9.getClass();
        selectOption10.getClass();
        selectOption11.getClass();
        selectOption12.getClass();
        selectOption13.getClass();
        selectOption14.getClass();
        selectOption15.getClass();
        selectOption16.getClass();
        return new FetchingMailSettingsContract$State(str2, selectOption9, selectOption10, selectOption11, selectOption12, z3, z4, selectOption13, selectOption14, selectOption15, selectOption16);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FetchingMailSettingsContract$State)) {
            return false;
        }
        FetchingMailSettingsContract$State fetchingMailSettingsContract$State = (FetchingMailSettingsContract$State) obj;
        return Intrinsics.areEqual(this.subtitle, fetchingMailSettingsContract$State.subtitle) && Intrinsics.areEqual(this.localFolderSize, fetchingMailSettingsContract$State.localFolderSize) && Intrinsics.areEqual(this.syncMessageFrom, fetchingMailSettingsContract$State.syncMessageFrom) && Intrinsics.areEqual(this.fetchMessageUpTo, fetchingMailSettingsContract$State.fetchMessageUpTo) && Intrinsics.areEqual(this.folderPollFrequency, fetchingMailSettingsContract$State.folderPollFrequency) && this.syncServerDeletions == fetchingMailSettingsContract$State.syncServerDeletions && this.markAsReadWhenDeleted == fetchingMailSettingsContract$State.markAsReadWhenDeleted && Intrinsics.areEqual(this.whenIDeleteAMessage, fetchingMailSettingsContract$State.whenIDeleteAMessage) && Intrinsics.areEqual(this.eraseDeletedMessageOnServer, fetchingMailSettingsContract$State.eraseDeletedMessageOnServer) && Intrinsics.areEqual(this.maxFolderToCheckWithPush, fetchingMailSettingsContract$State.maxFolderToCheckWithPush) && Intrinsics.areEqual(this.refreshIdleConnection, fetchingMailSettingsContract$State.refreshIdleConnection);
    }

    public final int hashCode() {
        String str = this.subtitle;
        return this.refreshIdleConnection.hashCode() + ((this.maxFolderToCheckWithPush.hashCode() + ((this.eraseDeletedMessageOnServer.hashCode() + ((this.whenIDeleteAMessage.hashCode() + ((((((this.folderPollFrequency.hashCode() + ((this.fetchMessageUpTo.hashCode() + ((this.syncMessageFrom.hashCode() + ((this.localFolderSize.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31)) * 31)) * 31)) * 31) + (this.syncServerDeletions ? 1231 : 1237)) * 31) + (this.markAsReadWhenDeleted ? 1231 : 1237)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "State(subtitle=" + this.subtitle + ", localFolderSize=" + this.localFolderSize + ", syncMessageFrom=" + this.syncMessageFrom + ", fetchMessageUpTo=" + this.fetchMessageUpTo + ", folderPollFrequency=" + this.folderPollFrequency + ", syncServerDeletions=" + this.syncServerDeletions + ", markAsReadWhenDeleted=" + this.markAsReadWhenDeleted + ", whenIDeleteAMessage=" + this.whenIDeleteAMessage + ", eraseDeletedMessageOnServer=" + this.eraseDeletedMessageOnServer + ", maxFolderToCheckWithPush=" + this.maxFolderToCheckWithPush + ", refreshIdleConnection=" + this.refreshIdleConnection + ")";
    }
}
