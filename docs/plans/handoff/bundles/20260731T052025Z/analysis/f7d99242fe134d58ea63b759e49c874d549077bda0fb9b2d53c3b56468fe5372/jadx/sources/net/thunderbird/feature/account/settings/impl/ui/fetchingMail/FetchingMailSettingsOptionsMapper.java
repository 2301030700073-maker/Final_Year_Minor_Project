package net.thunderbird.feature.account.settings.impl.ui.fetchingMail;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import coil3.disk.DiskLruCache;
import com.fsck.k9.R;
import java.util.LinkedHashMap;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import net.thunderbird.core.android.common.resources.AndroidResourceManager;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.ui.setting.SettingValue;
import okio.Okio;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FetchingMailSettingsOptionsMapper {
    public final SettingValue.Select.SelectOption defaultEraseDeletedMessageOnServerOption;
    public final SettingValue.Select.SelectOption defaultFetchMessageUpToOption;
    public final SettingValue.Select.SelectOption defaultFolderPollFrequencyOption;
    public final SettingValue.Select.SelectOption defaultLocalFolderSizeOption;
    public final SettingValue.Select.SelectOption defaultMaxFolderToCheckWithPushOption;
    public final SettingValue.Select.SelectOption defaultRefreshIdleConnectionOption;
    public final SettingValue.Select.SelectOption defaultSyncMessageFromOption;
    public final SettingValue.Select.SelectOption defaultWhenIDeleteAMessageOption;
    public final AbstractPersistentList eraseDeletedMessageOnServerOptions;
    public final LinkedHashMap eraseDeletedMessageOnServerOptionsById;
    public final AbstractPersistentList fetchMessageUpToOptions;
    public final LinkedHashMap fetchMessageUpToOptionsById;
    public final AbstractPersistentList folderPollFrequencyOptions;
    public final LinkedHashMap folderPollFrequencyOptionsById;
    public final AbstractPersistentList localFolderSizeOptions;
    public final LinkedHashMap localFolderSizeOptionsById;
    public final AbstractPersistentList maxFolderToCheckWithPushOptions;
    public final LinkedHashMap maxFolderToCheckWithPushOptionsById;
    public final AbstractPersistentList refreshIdleConnectionOptions;
    public final LinkedHashMap refreshIdleConnectionOptionsById;
    public final StringsResourceManager resources;
    public final AbstractPersistentList syncMessageFromOptions;
    public final LinkedHashMap syncMessageFromOptionsById;
    public final AbstractPersistentList whenIDeleteAMessageOptions;
    public final LinkedHashMap whenIDeleteAMessageOptionsById;

    public FetchingMailSettingsOptionsMapper(StringsResourceManager stringsResourceManager) {
        this.resources = stringsResourceManager;
        final int i = 0;
        final int i2 = 2;
        final int i3 = 14;
        final int i4 = 26;
        final int i5 = 8;
        final int i6 = 20;
        final int i7 = 3;
        final int i8 = 4;
        final int i9 = 5;
        final int i10 = 11;
        final int i11 = 9;
        final int i12 = 10;
        AbstractPersistentList persistentListOf = Okio.persistentListOf(new SettingValue.Select.SelectOption("10", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("25", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i2;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("50", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i3;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("100", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i4;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("250", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i5;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("500", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i6;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("1000", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i2;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("2500", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i7;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("5000", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i8;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("10000", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i9;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("0", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i13 = i10;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i13) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }));
        this.localFolderSizeOptions = persistentListOf;
        final int i13 = 22;
        final int i14 = 14;
        final int i15 = 25;
        final int i16 = 0;
        final int i17 = 6;
        final int i18 = 7;
        final int i19 = 1;
        final int i20 = 6;
        this.syncMessageFromOptions = Okio.persistentListOf(new SettingValue.Select.SelectOption("-1", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i13;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("0", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption(DiskLruCache.VERSION, new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i14;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("2", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i15;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("7", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i16;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("14", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i17;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("21", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i18;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("28", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i5;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }), new SettingValue.Select.SelectOption("56", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i19;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("84", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i7;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("168", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i8;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("365", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i9;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }));
        final int i21 = 7;
        final int i22 = 8;
        final int i23 = 12;
        final int i24 = 13;
        final int i25 = 15;
        final int i26 = 16;
        final int i27 = 17;
        final int i28 = 18;
        final int i29 = 19;
        final int i30 = 20;
        final int i31 = 21;
        final int i32 = 23;
        this.fetchMessageUpToOptions = Okio.persistentListOf(new SettingValue.Select.SelectOption("1024", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i20;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("2048", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i21;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("4096", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i22;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("8192", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i11;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("16384", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i12;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("32768", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i23;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("65536", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i24;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("131072", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i25;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("262144", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i26;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("524288", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i27;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("1048576", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i28;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("2097152", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i29;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("5242880", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i30;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("10485760", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i31;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }), new SettingValue.Select.SelectOption("0", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i32;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        }));
        final int i33 = 24;
        SettingValue.Select.SelectOption selectOption = new SettingValue.Select.SelectOption("-1", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i33;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        });
        final int i34 = 25;
        SettingValue.Select.SelectOption selectOption2 = new SettingValue.Select.SelectOption("15", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i34;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        });
        final int i35 = 27;
        SettingValue.Select.SelectOption selectOption3 = new SettingValue.Select.SelectOption("30", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i35;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        });
        final int i36 = 28;
        SettingValue.Select.SelectOption selectOption4 = new SettingValue.Select.SelectOption("60", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i36;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        });
        final int i37 = 29;
        SettingValue.Select.SelectOption selectOption5 = new SettingValue.Select.SelectOption("120", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda0
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i37;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2_months);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_25);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_3_months);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_6_months);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_year);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_4);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_8);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_16);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_all);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_32);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_64);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_50);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_128);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_256);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_512);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_1024);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_2048);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_5120);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_10240);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_any);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_autodownload_message_size_any);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_never);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_15min);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_100);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_30min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_1hour);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_2hour);
                }
            }
        });
        final int i38 = 1;
        SettingValue.Select.SelectOption selectOption6 = new SettingValue.Select.SelectOption("180", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i38;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        SettingValue.Select.SelectOption selectOption7 = new SettingValue.Select.SelectOption("360", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i2;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i39 = 3;
        SettingValue.Select.SelectOption selectOption8 = new SettingValue.Select.SelectOption("720", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i39;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i40 = 4;
        SettingValue.Select.SelectOption selectOption9 = new SettingValue.Select.SelectOption("1440", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i40;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i41 = 5;
        this.folderPollFrequencyOptions = Okio.persistentListOf(selectOption, selectOption2, selectOption3, selectOption4, selectOption5, selectOption6, selectOption7, selectOption8, selectOption9);
        SettingValue.Select.SelectOption selectOption10 = new SettingValue.Select.SelectOption("EXPUNGE_IMMEDIATELY", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i41;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i42 = 6;
        final int i43 = 7;
        this.eraseDeletedMessageOnServerOptions = Okio.persistentListOf(selectOption10, new SettingValue.Select.SelectOption("EXPUNGE_ON_POLL", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i42;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("EXPUNGE_MANUALLY", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i43;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }));
        final int i44 = 9;
        final int i45 = 10;
        this.whenIDeleteAMessageOptions = Okio.persistentListOf(new SettingValue.Select.SelectOption("NEVER", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i44;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("ON_DELETE", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i45;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("MARK_AS_READ", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i10;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }));
        final int i46 = 12;
        SettingValue.Select.SelectOption selectOption11 = new SettingValue.Select.SelectOption("5", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i46;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        SettingValue.Select.SelectOption selectOption12 = new SettingValue.Select.SelectOption("10", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i24;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i47 = 15;
        SettingValue.Select.SelectOption selectOption13 = new SettingValue.Select.SelectOption("25", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i47;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i48 = 16;
        SettingValue.Select.SelectOption selectOption14 = new SettingValue.Select.SelectOption("50", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i48;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i49 = 17;
        SettingValue.Select.SelectOption selectOption15 = new SettingValue.Select.SelectOption("100", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i49;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i50 = 18;
        SettingValue.Select.SelectOption selectOption16 = new SettingValue.Select.SelectOption("250", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i50;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i51 = 19;
        SettingValue.Select.SelectOption selectOption17 = new SettingValue.Select.SelectOption("500", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i51;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i52 = 21;
        this.maxFolderToCheckWithPushOptions = Okio.persistentListOf(selectOption11, selectOption12, selectOption13, selectOption14, selectOption15, selectOption16, selectOption17, new SettingValue.Select.SelectOption("1000", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i52;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }));
        final int i53 = 22;
        SettingValue.Select.SelectOption selectOption18 = new SettingValue.Select.SelectOption("2", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i53;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        });
        final int i54 = 23;
        final int i55 = 24;
        final int i56 = 26;
        final int i57 = 27;
        final int i58 = 28;
        final int i59 = 29;
        final int i60 = 1;
        this.refreshIdleConnectionOptions = Okio.persistentListOf(selectOption18, new SettingValue.Select.SelectOption("3", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i54;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("6", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i55;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("12", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i56;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("24", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i57;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("36", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i58;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("48", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda3
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i59;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_0);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_3hour);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_6hour);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_12hour);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_check_frequency_24hour);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_immediately);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_on_poll);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_expunge_policy_manual);
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_250);
                    case 9:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_never_label);
                    case 10:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_delete_label);
                    case 11:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_incoming_delete_policy_markread_label);
                    case BasicTextKt.ShiftMeta /* 12 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_5);
                    case 13:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_10);
                    case 14:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1);
                    case OffsetKt.Horizontal /* 15 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_25);
                    case 16:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_50);
                    case 17:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_100);
                    case 18:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_250);
                    case 19:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_500);
                    case 20:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_500);
                    case 21:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_push_limit_1000);
                    case 22:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_2min);
                    case 23:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_3min);
                    case 24:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_6min);
                    case 25:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_2);
                    case 26:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_12min);
                    case 27:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_24min);
                    case 28:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_36min);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_48min);
                }
            }
        }), new SettingValue.Select.SelectOption("60", new Function0(this) { // from class: net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper$$ExternalSyntheticLambda6
            public final /* synthetic */ FetchingMailSettingsOptionsMapper f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i132 = i60;
                FetchingMailSettingsOptionsMapper fetchingMailSettingsOptionsMapper = this.f$0;
                switch (i132) {
                    case 0:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_7);
                    case 1:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_idle_refresh_period_60min);
                    case 2:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_1000);
                    case 3:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_2500);
                    case 4:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_5000);
                    case 5:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_options_mail_display_count_10000);
                    case 6:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_14);
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_21);
                    default:
                        return ((AndroidResourceManager) fetchingMailSettingsOptionsMapper.resources).stringResource(R.string.account_settings_message_age_1_month);
                }
            }
        }));
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(persistentListOf, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity < 16 ? 16 : mapCapacity);
        ListIterator listIterator = persistentListOf.listIterator(0);
        while (listIterator.hasNext()) {
            Object next = listIterator.next();
            linkedHashMap.put(((SettingValue.Select.SelectOption) next).id, next);
        }
        this.localFolderSizeOptionsById = linkedHashMap;
        AbstractPersistentList abstractPersistentList = this.syncMessageFromOptions;
        int mapCapacity2 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList, 10));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity2 < 16 ? 16 : mapCapacity2);
        ListIterator listIterator2 = abstractPersistentList.listIterator(0);
        while (listIterator2.hasNext()) {
            Object next2 = listIterator2.next();
            linkedHashMap2.put(((SettingValue.Select.SelectOption) next2).id, next2);
        }
        this.syncMessageFromOptionsById = linkedHashMap2;
        AbstractPersistentList abstractPersistentList2 = this.fetchMessageUpToOptions;
        int mapCapacity3 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList2, 10));
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(mapCapacity3 < 16 ? 16 : mapCapacity3);
        ListIterator listIterator3 = abstractPersistentList2.listIterator(0);
        while (listIterator3.hasNext()) {
            Object next3 = listIterator3.next();
            linkedHashMap3.put(((SettingValue.Select.SelectOption) next3).id, next3);
        }
        this.fetchMessageUpToOptionsById = linkedHashMap3;
        AbstractPersistentList abstractPersistentList3 = this.folderPollFrequencyOptions;
        int mapCapacity4 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList3, 10));
        LinkedHashMap linkedHashMap4 = new LinkedHashMap(mapCapacity4 < 16 ? 16 : mapCapacity4);
        ListIterator listIterator4 = abstractPersistentList3.listIterator(0);
        while (listIterator4.hasNext()) {
            Object next4 = listIterator4.next();
            linkedHashMap4.put(((SettingValue.Select.SelectOption) next4).id, next4);
        }
        this.folderPollFrequencyOptionsById = linkedHashMap4;
        AbstractPersistentList abstractPersistentList4 = this.eraseDeletedMessageOnServerOptions;
        int mapCapacity5 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList4, 10));
        LinkedHashMap linkedHashMap5 = new LinkedHashMap(mapCapacity5 < 16 ? 16 : mapCapacity5);
        ListIterator listIterator5 = abstractPersistentList4.listIterator(0);
        while (listIterator5.hasNext()) {
            Object next5 = listIterator5.next();
            linkedHashMap5.put(((SettingValue.Select.SelectOption) next5).id, next5);
        }
        this.eraseDeletedMessageOnServerOptionsById = linkedHashMap5;
        AbstractPersistentList abstractPersistentList5 = this.whenIDeleteAMessageOptions;
        int mapCapacity6 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList5, 10));
        LinkedHashMap linkedHashMap6 = new LinkedHashMap(mapCapacity6 < 16 ? 16 : mapCapacity6);
        ListIterator listIterator6 = abstractPersistentList5.listIterator(0);
        while (listIterator6.hasNext()) {
            Object next6 = listIterator6.next();
            linkedHashMap6.put(((SettingValue.Select.SelectOption) next6).id, next6);
        }
        this.whenIDeleteAMessageOptionsById = linkedHashMap6;
        AbstractPersistentList abstractPersistentList6 = this.maxFolderToCheckWithPushOptions;
        int mapCapacity7 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList6, 10));
        LinkedHashMap linkedHashMap7 = new LinkedHashMap(mapCapacity7 < 16 ? 16 : mapCapacity7);
        ListIterator listIterator7 = abstractPersistentList6.listIterator(0);
        while (listIterator7.hasNext()) {
            Object next7 = listIterator7.next();
            linkedHashMap7.put(((SettingValue.Select.SelectOption) next7).id, next7);
        }
        this.maxFolderToCheckWithPushOptionsById = linkedHashMap7;
        AbstractPersistentList abstractPersistentList7 = this.refreshIdleConnectionOptions;
        int mapCapacity8 = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(abstractPersistentList7, 10));
        LinkedHashMap linkedHashMap8 = new LinkedHashMap(mapCapacity8 < 16 ? 16 : mapCapacity8);
        ListIterator listIterator8 = abstractPersistentList7.listIterator(0);
        while (listIterator8.hasNext()) {
            Object next8 = listIterator8.next();
            linkedHashMap8.put(((SettingValue.Select.SelectOption) next8).id, next8);
        }
        this.refreshIdleConnectionOptionsById = linkedHashMap8;
        this.defaultLocalFolderSizeOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.localFolderSizeOptionsById, "10");
        this.defaultSyncMessageFromOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.syncMessageFromOptionsById, "-1");
        this.defaultFetchMessageUpToOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.fetchMessageUpToOptionsById, "0");
        this.defaultFolderPollFrequencyOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.folderPollFrequencyOptionsById, "-1");
        this.defaultEraseDeletedMessageOnServerOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.eraseDeletedMessageOnServerOptionsById, "EXPUNGE_IMMEDIATELY");
        this.defaultWhenIDeleteAMessageOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.whenIDeleteAMessageOptionsById, "ON_DELETE");
        this.defaultMaxFolderToCheckWithPushOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(this.maxFolderToCheckWithPushOptionsById, "5");
        this.defaultRefreshIdleConnectionOption = (SettingValue.Select.SelectOption) MapsKt__MapsKt.getValue(linkedHashMap8, "60");
    }
}
