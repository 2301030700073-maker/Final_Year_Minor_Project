package net.thunderbird.feature.account.core;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.app.common.account.data.DefaultAccountProfileLocalDataSource;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountRepository;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.file.AndroidDirectoryProvider;
import net.thunderbird.core.file.AndroidMimeTypeResolver;
import net.thunderbird.core.file.DefaultFileManager;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeableRowState;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.account.avatar.data.DefaultAvatarImageRepository;
import net.thunderbird.feature.account.avatar.data.datasource.LocalAvatarImageDataSource;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;
import net.thunderbird.feature.account.settings.impl.DefaultAccountSettingsNavigation;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountName;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetAccountProfile;
import net.thunderbird.feature.account.settings.impl.domain.usecase.GetLegacyAccount;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateAvatarImage;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateFetchingMailSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateGeneralSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateReadEmailSettings;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateSearchSettings;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsOptionsMapper;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsValidator;
import net.thunderbird.feature.account.settings.impl.ui.general.GeneralSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsBuilder;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingBuilder;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.account.storage.legacy.LegacyAvatarDtoStorageHandler;
import net.thunderbird.feature.account.storage.legacy.LegacyProfileDtoStorageHandler;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAccountProfileDataMapper;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultAvatarDataMapper;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.account.storage.legacy.serializer.ServerSettingsDtoSerializer;
import okio.AsyncTimeout;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AccountCoreModuleKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ AccountCoreModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountProfileRepository((DefaultAccountProfileLocalDataSource) scope.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileLocalDataSource.class), null, null));
            case 1:
                SwipeableRowState swipeableRowState = (SwipeableRowState) obj2;
                ((SaveableHolder) obj).getClass();
                swipeableRowState.getClass();
                return IntOffsetKt.listOf(swipeableRowState.getAnimatedOffset().getValue(), swipeableRowState.getSwipeState$tfa_core_ui_compose_designsystem().name(), Float.valueOf(swipeableRowState.layoutWidth$delegate.getFloatValue()), Float.valueOf(swipeableRowState.pendingOffset$delegate.getFloatValue()));
            case 2:
                Integer num = (Integer) obj;
                num.intValue();
                return num;
            case 3:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LocalAvatarImageDataSource((DefaultFileManager) scope2.resolve(Reflection.getOrCreateKotlinClass(DefaultFileManager.class), null, null), (AndroidDirectoryProvider) scope2.resolve(Reflection.getOrCreateKotlinClass(AndroidDirectoryProvider.class), null, null), (AndroidMimeTypeResolver) scope2.resolve(Reflection.getOrCreateKotlinClass(AndroidMimeTypeResolver.class), null, null), (Clock) scope2.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null));
            case 4:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAvatarImageRepository((LocalAvatarImageDataSource) scope3.resolve(Reflection.getOrCreateKotlinClass(LocalAvatarImageDataSource.class), null, null));
            case 5:
                Scope scope4 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope4.getClass();
                parametersHolder.getClass();
                Object orNull = parametersHolder.getOrNull(Reflection.getOrCreateKotlinClass(AccountId.class));
                if (orNull != null) {
                    return new SearchSettingsViewModel((AccountId) orNull, (GetAccountName) scope4.resolve(Reflection.getOrCreateKotlinClass(GetAccountName.class), null, null), (UpdateSearchSettings) scope4.resolve(Reflection.getOrCreateKotlinClass(UpdateSearchSettings.class), null, null), (GetLegacyAccount) scope4.resolve(Reflection.getOrCreateKotlinClass(GetLegacyAccount.class), null, null), (Logger) scope4.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (StringsResourceManager) scope4.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(AccountId.class)) + '\'');
            case 6:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetAccountName((DefaultAccountProfileRepository) scope5.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UpdateReadEmailSettings((DefaultLegacyAccountRepository) scope6.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountRepository.class), null, null));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UpdateFetchingMailSettings((DefaultLegacyAccountRepository) scope7.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountRepository.class), null, null));
            case 9:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UpdateSearchSettings((DefaultLegacyAccountRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountRepository.class), null, null));
            case 10:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetAccountProfile((DefaultAccountProfileRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, null));
            case 11:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetLegacyAccount((DefaultLegacyAccountRepository) scope10.resolve(Reflection.getOrCreateKotlinClass(DefaultLegacyAccountRepository.class), null, null));
            case BasicTextKt.ShiftMeta /* 12 */:
                Scope scope11 = (Scope) obj;
                scope11.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UpdateAvatarImage((DefaultAvatarImageRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarImageRepository.class), null, null), (AndroidMimeTypeResolver) scope11.resolve(Reflection.getOrCreateKotlinClass(AndroidMimeTypeResolver.class), null, null));
            case 13:
                Scope scope12 = (Scope) obj;
                scope12.getClass();
                ((ParametersHolder) obj2).getClass();
                return new UpdateGeneralSettings((DefaultAccountProfileRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, null));
            case 14:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                new AsyncTimeout.Companion(22);
                return new GeneralSettingsValidator();
            case OffsetKt.Horizontal /* 15 */:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountSettingsNavigation();
            case 16:
                Scope scope13 = (Scope) obj;
                scope13.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GeneralSettingsBuilder((StringsResourceManager) scope13.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null), (ImmutableList) scope13.resolve(Reflection.getOrCreateKotlinClass(ImmutableList.class), null, new StringQualifier("AccountColors")), (DefaultAvatarMonogramCreator) scope13.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarMonogramCreator.class), null, null), (GeneralSettingsValidator) scope13.resolve(Reflection.getOrCreateKotlinClass(GeneralSettingsValidator.class), null, null), (InMemoryFeatureFlagProvider) scope13.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), (DefaultAvatarIconCatalog) scope13.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarIconCatalog.class), null, null));
            case 17:
                Scope scope14 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope14.getClass();
                parametersHolder2.getClass();
                Object orNull2 = parametersHolder2.getOrNull(Reflection.getOrCreateKotlinClass(AccountId.class));
                if (orNull2 != null) {
                    return new GeneralSettingsViewModel((AccountId) orNull2, (GetAccountName) scope14.resolve(Reflection.getOrCreateKotlinClass(GetAccountName.class), null, null), (GetAccountProfile) scope14.resolve(Reflection.getOrCreateKotlinClass(GetAccountProfile.class), null, null), (UpdateGeneralSettings) scope14.resolve(Reflection.getOrCreateKotlinClass(UpdateGeneralSettings.class), null, null), (UpdateAvatarImage) scope14.resolve(Reflection.getOrCreateKotlinClass(UpdateAvatarImage.class), null, null), (Logger) scope14.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(AccountId.class)) + '\'');
            case 18:
                Scope scope15 = (Scope) obj;
                scope15.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ReadingMailSettingsBuilder((StringsResourceManager) scope15.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
            case 19:
                Scope scope16 = (Scope) obj;
                scope16.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FetchingMailSettingsOptionsMapper((StringsResourceManager) scope16.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
            case 20:
                Scope scope17 = (Scope) obj;
                scope17.getClass();
                ((ParametersHolder) obj2).getClass();
                return new FetchingMailSettingsBuilder((StringsResourceManager) scope17.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null), (FetchingMailSettingsOptionsMapper) scope17.resolve(Reflection.getOrCreateKotlinClass(FetchingMailSettingsOptionsMapper.class), null, null));
            case 21:
                Scope scope18 = (Scope) obj;
                scope18.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SearchSettingBuilder((StringsResourceManager) scope18.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
            case 22:
                Scope scope19 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope19.getClass();
                parametersHolder3.getClass();
                Object orNull3 = parametersHolder3.getOrNull(Reflection.getOrCreateKotlinClass(AccountId.class));
                if (orNull3 != null) {
                    return new ReadingMailSettingsViewModel((AccountId) orNull3, (GetAccountName) scope19.resolve(Reflection.getOrCreateKotlinClass(GetAccountName.class), null, null), (GetLegacyAccount) scope19.resolve(Reflection.getOrCreateKotlinClass(GetLegacyAccount.class), null, null), (UpdateReadEmailSettings) scope19.resolve(Reflection.getOrCreateKotlinClass(UpdateReadEmailSettings.class), null, null), (Logger) scope19.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (StringsResourceManager) scope19.resolve(Reflection.getOrCreateKotlinClass(StringsResourceManager.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(AccountId.class)) + '\'');
            case 23:
                Scope scope20 = (Scope) obj;
                ParametersHolder parametersHolder4 = (ParametersHolder) obj2;
                scope20.getClass();
                parametersHolder4.getClass();
                Object orNull4 = parametersHolder4.getOrNull(Reflection.getOrCreateKotlinClass(AccountId.class));
                if (orNull4 != null) {
                    return new FetchingMailSettingsViewModel((AccountId) orNull4, (Logger) scope20.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (GetAccountName) scope20.resolve(Reflection.getOrCreateKotlinClass(GetAccountName.class), null, null), (GetLegacyAccount) scope20.resolve(Reflection.getOrCreateKotlinClass(GetLegacyAccount.class), null, null), (UpdateFetchingMailSettings) scope20.resolve(Reflection.getOrCreateKotlinClass(UpdateFetchingMailSettings.class), null, null), (FetchingMailSettingsOptionsMapper) scope20.resolve(Reflection.getOrCreateKotlinClass(FetchingMailSettingsOptionsMapper.class), null, null));
                }
                throw new InstanceCreationException("No value found for type '" + KClassExtKt.getFullName(Reflection.getOrCreateKotlinClass(AccountId.class)) + '\'');
            case 24:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultLegacyAccountDataMapper();
            case 25:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAvatarDataMapper();
            case 26:
                Scope scope21 = (Scope) obj;
                scope21.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountProfileDataMapper((DefaultAvatarDataMapper) scope21.resolve(Reflection.getOrCreateKotlinClass(DefaultAvatarDataMapper.class), null, null));
            case 27:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new ServerSettingsDtoSerializer();
            case 28:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new LegacyAvatarDtoStorageHandler();
            default:
                Scope scope22 = (Scope) obj;
                scope22.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LegacyProfileDtoStorageHandler();
        }
    }
}
