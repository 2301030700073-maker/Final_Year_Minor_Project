package net.thunderbird.feature.changelog.internal;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.ui.setting.SettingValue;
import net.thunderbird.feature.account.avatar.Avatar;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$Event;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$Event;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$Event;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayAccount;
import net.thunderbird.feature.navigation.drawer.dropdown.domain.entity.DisplayFolder;
import net.thunderbird.feature.navigation.drawer.dropdown.ui.DrawerContract$Event;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChangelogScreenKt$$ExternalSyntheticLambda7 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ ChangelogScreenKt$$ExternalSyntheticLambda7(int i, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                function1.invoke(bool);
                break;
            case 1:
                SettingValue settingValue = (SettingValue) obj;
                settingValue.getClass();
                if (!(settingValue instanceof SettingValue.Switch)) {
                    if (!(settingValue instanceof SettingValue.Select)) {
                        if ((settingValue instanceof SettingValue.Text) && ((SettingValue.Text) settingValue).id.equals("in_coming_server")) {
                            function1.invoke(FetchingMailSettingsContract$Event.OnInComingServerClick.INSTANCE);
                            break;
                        }
                    } else {
                        SettingValue.Select select = (SettingValue.Select) settingValue;
                        SettingValue.Select.SelectOption selectOption = select.value;
                        String str = select.id;
                        switch (str.hashCode()) {
                            case -1917133619:
                                if (str.equals("folder_poll_frequency")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnFolderPollFrequencyChange(selectOption));
                                    break;
                                }
                                break;
                            case -1416001954:
                                if (str.equals("local_folder_size")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnLocalFolderSizeChange(selectOption));
                                    break;
                                }
                                break;
                            case -551952276:
                                if (str.equals("erase_deleted_message_on_server")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnEraseDeletedMessageOnServerChange(selectOption));
                                    break;
                                }
                                break;
                            case 87973894:
                                if (str.equals("sync_message_from")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnSyncMessageFromChange(selectOption));
                                    break;
                                }
                                break;
                            case 1301269200:
                                if (str.equals("when_i_delete_a_message")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnWhenIDeleteAMessageChange(selectOption));
                                    break;
                                }
                                break;
                            case 1375446946:
                                if (str.equals("fetch_message_up_to")) {
                                    function1.invoke(new FetchingMailSettingsContract$Event.OnFetchMessageUpToChange(selectOption));
                                    break;
                                }
                                break;
                        }
                    }
                } else {
                    SettingValue.Switch r6 = (SettingValue.Switch) settingValue;
                    boolean z = r6.value;
                    String str2 = r6.id;
                    if (!str2.equals("sync_server_deletions")) {
                        if (str2.equals("mark_as_read_when_deleted")) {
                            function1.invoke(new FetchingMailSettingsContract$Event.OnMarkAsReadWhenDeletedToggle(z));
                            break;
                        }
                    } else {
                        function1.invoke(new FetchingMailSettingsContract$Event.OnSyncServerDeletionsToggle(z));
                        break;
                    }
                }
                break;
            case 2:
                FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event = (FetchingMailSettingsContract$Event) obj;
                fetchingMailSettingsContract$Event.getClass();
                function1.invoke(fetchingMailSettingsContract$Event);
                break;
            case 3:
                SettingValue settingValue2 = (SettingValue) obj;
                settingValue2.getClass();
                if (!(settingValue2 instanceof SettingValue.Switch)) {
                    if (settingValue2 instanceof SettingValue.Select) {
                        SettingValue.Select select2 = (SettingValue.Select) settingValue2;
                        SettingValue.Select.SelectOption selectOption2 = select2.value;
                        String str3 = select2.id;
                        if (!str3.equals("max_folder_to_check_with_push")) {
                            if (str3.equals("refresh_idle_connection")) {
                                function1.invoke(new FetchingMailSettingsContract$Event.OnRefreshIdleConnectionFrequencyChange(selectOption2));
                                break;
                            }
                        } else {
                            function1.invoke(new FetchingMailSettingsContract$Event.OnMaxFolderToCheckWithPushChange(selectOption2));
                            break;
                        }
                    }
                } else {
                    SettingValue.Switch r62 = (SettingValue.Switch) settingValue2;
                    boolean z2 = r62.value;
                    String str4 = r62.id;
                    if (!str4.equals("sync_server_deletions")) {
                        if (str4.equals("mark_as_read_when_deleted")) {
                            function1.invoke(new FetchingMailSettingsContract$Event.OnMarkAsReadWhenDeletedToggle(z2));
                            break;
                        }
                    } else {
                        function1.invoke(new FetchingMailSettingsContract$Event.OnSyncServerDeletionsToggle(z2));
                        break;
                    }
                }
                break;
            case 4:
                FetchingMailSettingsContract$Event fetchingMailSettingsContract$Event2 = (FetchingMailSettingsContract$Event) obj;
                fetchingMailSettingsContract$Event2.getClass();
                function1.invoke(fetchingMailSettingsContract$Event2);
                break;
            case 5:
                SettingValue settingValue3 = (SettingValue) obj;
                settingValue3.getClass();
                if (!(settingValue3 instanceof SettingValue.Text)) {
                    if (!(settingValue3 instanceof SettingValue.Color)) {
                        if (!(settingValue3 instanceof SettingValue.SegmentedButton)) {
                            if (settingValue3 instanceof SettingValue.IconList) {
                                SettingValue.IconList iconList = (SettingValue.IconList) settingValue3;
                                if (iconList.id.equals("account_avatar_icon")) {
                                    Iterator<E> it = iconList.icons.iterator();
                                    while (true) {
                                        if (it.hasNext()) {
                                            obj2 = it.next();
                                            if (Intrinsics.areEqual((SettingValue.IconList.IconOption) obj2, iconList.value)) {
                                            }
                                        } else {
                                            obj2 = null;
                                        }
                                    }
                                    SettingValue.IconList.IconOption iconOption = (SettingValue.IconList.IconOption) obj2;
                                    if (iconOption != null) {
                                        function1.invoke(new GeneralSettingsContract$Event.OnAvatarChange(new Avatar.Icon(iconOption.id)));
                                        break;
                                    }
                                }
                            }
                        } else {
                            SettingValue.SegmentedButton segmentedButton = (SettingValue.SegmentedButton) settingValue3;
                            String str5 = segmentedButton.id;
                            SettingValue.SegmentedButton.SegmentedButtonOption segmentedButtonOption = segmentedButton.value;
                            if (!str5.equals("account_avatar_options")) {
                                if (str5.equals("account_avatar_icon")) {
                                    segmentedButtonOption.getClass();
                                    function1.invoke(new GeneralSettingsContract$Event.OnAvatarChange(segmentedButtonOption.value));
                                    break;
                                }
                            } else {
                                segmentedButtonOption.getClass();
                                function1.invoke(new GeneralSettingsContract$Event.OnAvatarChange(segmentedButtonOption.value));
                                break;
                            }
                        }
                    } else {
                        SettingValue.Color color = (SettingValue.Color) settingValue3;
                        if (color.id.equals("account_color")) {
                            function1.invoke(new GeneralSettingsContract$Event.OnColorChange(color.value));
                            break;
                        }
                    }
                } else {
                    SettingValue.Text text = (SettingValue.Text) settingValue3;
                    String str6 = text.id;
                    String str7 = text.value;
                    if (!str6.equals("account_name")) {
                        if (str6.equals("account_avatar_monogram")) {
                            function1.invoke(new GeneralSettingsContract$Event.OnAvatarChange(new Avatar.Monogram(str7)));
                            break;
                        }
                    } else {
                        function1.invoke(new GeneralSettingsContract$Event.OnNameChange(str7));
                        break;
                    }
                }
                break;
            case 6:
                GeneralSettingsContract$Event generalSettingsContract$Event = (GeneralSettingsContract$Event) obj;
                generalSettingsContract$Event.getClass();
                function1.invoke(generalSettingsContract$Event);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                SettingValue settingValue4 = (SettingValue) obj;
                settingValue4.getClass();
                if (!(settingValue4 instanceof SettingValue.Switch)) {
                    if (settingValue4 instanceof SettingValue.Select) {
                        function1.invoke(new ReadingMailSettingsContract$Event.OnShowPicturesChange(((SettingValue.Select) settingValue4).value));
                        break;
                    }
                } else {
                    function1.invoke(new ReadingMailSettingsContract$Event.OnIsMarkMessageAsReadOnViewToggle(((SettingValue.Switch) settingValue4).value));
                    break;
                }
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ReadingMailSettingsContract$Event readingMailSettingsContract$Event = (ReadingMailSettingsContract$Event) obj;
                readingMailSettingsContract$Event.getClass();
                function1.invoke(readingMailSettingsContract$Event);
                break;
            case 9:
                SettingValue settingValue5 = (SettingValue) obj;
                settingValue5.getClass();
                if (settingValue5 instanceof SettingValue.Select) {
                    function1.invoke(new SearchSettingsContract$Event.OnServerSearchLimitChange(Integer.parseInt(((SettingValue.Select) settingValue5).value.id)));
                    break;
                }
                break;
            case 10:
                SearchSettingsContract$Event searchSettingsContract$Event = (SearchSettingsContract$Event) obj;
                searchSettingsContract$Event.getClass();
                function1.invoke(searchSettingsContract$Event);
                break;
            case 11:
                function1.invoke(new SetupArchiveFolderDialogContract$Event.OnDoNotShowDialogAgainChanged(((Boolean) obj).booleanValue()));
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                RemoteFolder remoteFolder = (RemoteFolder) obj;
                remoteFolder.getClass();
                function1.invoke(new SetupArchiveFolderDialogContract$Event.OnFolderSelected(remoteFolder));
                break;
            case 13:
                String str8 = (String) obj;
                str8.getClass();
                function1.invoke(new SetupArchiveFolderDialogContract$Event.OnCreateFolderClicked(str8));
                break;
            case 14:
                DisplayFolder displayFolder = (DisplayFolder) obj;
                displayFolder.getClass();
                function1.invoke(new DrawerContract$Event.OnFolderClick(displayFolder));
                break;
            case OffsetKt.Horizontal /* 15 */:
                DisplayAccount displayAccount = (DisplayAccount) obj;
                displayAccount.getClass();
                function1.invoke(new DrawerContract$Event.OnAccountClick(displayAccount));
                break;
            case 16:
                DrawerContract$Event drawerContract$Event = (DrawerContract$Event) obj;
                drawerContract$Event.getClass();
                function1.invoke(drawerContract$Event);
                break;
            default:
                LazyGridIntervalContent lazyGridIntervalContent = (LazyGridIntervalContent) obj;
                lazyGridIntervalContent.getClass();
                function1.invoke(lazyGridIntervalContent);
                break;
        }
        return unit;
    }
}
