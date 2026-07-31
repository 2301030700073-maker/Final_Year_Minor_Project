package net.thunderbird.feature.notification.api.ui;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$Event;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$Event;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Event;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class InAppNotificationHostKt$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ InAppNotificationHostKt$$ExternalSyntheticLambda4(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        SetupArchiveFolderDialogContract$Event.OnDismissClicked onDismissClicked = SetupArchiveFolderDialogContract$Event.OnDismissClicked.INSTANCE;
        DrawerContract$Event.OnSyncAllAccounts onSyncAllAccounts = DrawerContract$Event.OnSyncAllAccounts.INSTANCE;
        DrawerContract$Event.OnSettingsClick onSettingsClick = DrawerContract$Event.OnSettingsClick.INSTANCE;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(NotificationAction.OpenNotificationCentre.INSTANCE);
                break;
            case 1:
                function1.invoke(GeneralSettingsContract$Event.OnSelectAvatarImageClick.INSTANCE);
                break;
            case 2:
                function1.invoke(GeneralSettingsContract$Event.OnBackPressed.INSTANCE);
                break;
            case 3:
                function1.invoke(ReadingMailSettingsContract$Event.OnBackPressed.INSTANCE);
                break;
            case 4:
                function1.invoke(SearchSettingsContract$Event.OnBackPressed.INSTANCE);
                break;
            case 5:
                function1.invoke(MessageListEvent.OnFooterClick.INSTANCE);
                break;
            case 6:
                function1.invoke(MessageListEvent.Refresh.INSTANCE);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                function1.invoke(SetupArchiveFolderDialogContract$Event.MoveNext.INSTANCE);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                function1.invoke(SetupArchiveFolderDialogContract$Event.OnDoneClicked.INSTANCE);
                break;
            case 9:
                function1.invoke(onDismissClicked);
                break;
            case 10:
                function1.invoke(onDismissClicked);
                break;
            case 11:
                function1.invoke(DrawerContract$Event.OnSyncAccount.INSTANCE);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                function1.invoke(DrawerContract$Event.OnManageFoldersClick.INSTANCE);
                break;
            case 13:
                function1.invoke(onSyncAllAccounts);
                break;
            case 14:
                function1.invoke(onSettingsClick);
                break;
            case OffsetKt.Horizontal /* 15 */:
                function1.invoke(DrawerContract$Event.OnAddAccountClick.INSTANCE);
                break;
            case 16:
                function1.invoke(onSyncAllAccounts);
                break;
            case 17:
                function1.invoke(onSettingsClick);
                break;
            default:
                function1.invoke(DrawerContract$Event.OnAccountSelectorClick.INSTANCE);
                break;
        }
        return unit;
    }
}
