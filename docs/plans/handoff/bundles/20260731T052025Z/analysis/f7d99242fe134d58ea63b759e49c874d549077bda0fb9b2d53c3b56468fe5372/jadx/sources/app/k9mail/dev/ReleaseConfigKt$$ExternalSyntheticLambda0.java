package app.k9mail.dev;

import android.content.ContentResolver;
import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.core.android.common.camera.CameraCaptureHandler;
import app.k9mail.core.android.common.camera.io.CaptureImageFileWriter;
import app.k9mail.core.android.common.contact.AndroidContactPermissionResolver;
import app.k9mail.core.android.common.contact.CachingContactRepository;
import app.k9mail.core.android.common.contact.ContentResolverContactDataSource;
import app.k9mail.core.android.permissions.AndroidPermissionChecker;
import app.k9mail.feature.account.common.data.InMemoryAccountStateRepository;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.AccountState;
import app.k9mail.feature.account.edit.domain.usecase.GetAccountState;
import app.k9mail.feature.account.edit.domain.usecase.LoadAccountState;
import app.k9mail.feature.account.edit.domain.usecase.SaveServerSettings;
import app.k9mail.feature.account.edit.navigation.DefaultAccountEditNavigation;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyIncomingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyOutgoingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveIncomingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveOutgoingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$State;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsValidator;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsValidator;
import com.bumptech.glide.GlideBuilder$1;
import com.fsck.k9.account.AccountServerSettingsUpdater;
import com.fsck.k9.account.AccountStateLoader;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.Clock;
import kotlinx.atomicfu.AtomicFU;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.common.cache.Cache;
import net.thunderbird.core.common.cache.ExpiringCache;
import net.thunderbird.core.common.cache.InMemoryCache;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.featureflag.NoOpFeatureFlagOverrides;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ReleaseConfigKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ReleaseConfigKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return EmptyMap.INSTANCE;
            case 1:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CameraCaptureHandler((CaptureImageFileWriter) scope.resolve(Reflection.getOrCreateKotlinClass(CaptureImageFileWriter.class), null, null));
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new InMemoryCache(new ExpiringCache((Clock) scope2.resolve(Reflection.getOrCreateKotlinClass(Clock.class), null, null)));
            case 3:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                ContentResolver contentResolver = ((Context) scope3.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null)).getContentResolver();
                contentResolver.getClass();
                return new ContentResolverContactDataSource(contentResolver, (AndroidContactPermissionResolver) scope3.resolve(Reflection.getOrCreateKotlinClass(AndroidContactPermissionResolver.class), null, null));
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CachingContactRepository((Cache) scope4.resolve(Reflection.getOrCreateKotlinClass(Cache.class), null, new StringQualifier("ContactCache")), (ContentResolverContactDataSource) scope4.resolve(Reflection.getOrCreateKotlinClass(ContentResolverContactDataSource.class), null, null));
            case 5:
                Scope scope5 = (Scope) obj;
                scope5.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidContactPermissionResolver((Context) scope5.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case 6:
                Scope scope6 = (Scope) obj;
                scope6.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AndroidPermissionChecker((Context) scope6.resolve(Reflection.getOrCreateKotlinClass(Context.class), null, null));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.ExpandMore, null, null, gapComposer, 0, 14);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 9:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Report, null, null, gapComposer3, 0, 14);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 10:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Info, null, null, gapComposer4, 0, 14);
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 11:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Warning, null, null, gapComposer5, 0, 14);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    AtomicFU.m1009IconxqIIw2o(Icons$Outlined.Report, null, null, gapComposer6, 0, 14);
                } else {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 13:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 14:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case OffsetKt.Horizontal /* 15 */:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (!gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 16:
                Composer composer10 = (Composer) obj;
                int intValue10 = ((Integer) obj2).intValue();
                GapComposer gapComposer10 = (GapComposer) composer10;
                if (!gapComposer10.shouldExecute(intValue10 & 1, (intValue10 & 3) != 2)) {
                    gapComposer10.skipToGroupEnd();
                }
                return unit;
            case 17:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return EmptyList.INSTANCE;
            case 18:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new NoOpFeatureFlagOverrides();
            case 19:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new GlideBuilder$1();
            case 20:
                Scope scope7 = (Scope) obj;
                scope7.getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultCssClassNameProvider((InMemoryFeatureFlagProvider) scope7.resolve(Reflection.getOrCreateKotlinClass(InMemoryFeatureFlagProvider.class), null, null), StringsKt__StringsJVMKt.replace$default("com.fsck.k9", ".", "-"));
            case 21:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                AccountState accountState = new AccountState(null, null, null, null, null, null, 255);
                InMemoryAccountStateRepository inMemoryAccountStateRepository = new InMemoryAccountStateRepository();
                inMemoryAccountStateRepository.state = accountState;
                return inMemoryAccountStateRepository;
            case 22:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultAccountEditNavigation();
            case 23:
                Scope scope8 = (Scope) obj;
                scope8.getClass();
                ((ParametersHolder) obj2).getClass();
                return new LoadAccountState((AccountStateLoader) scope8.resolve(Reflection.getOrCreateKotlinClass(AccountStateLoader.class), null, null), (AccountDomainContract$AccountStateRepository) scope8.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 24:
                Scope scope9 = (Scope) obj;
                scope9.getClass();
                ((ParametersHolder) obj2).getClass();
                return new GetAccountState((AccountDomainContract$AccountStateRepository) scope9.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 25:
                Scope scope10 = (Scope) obj;
                scope10.getClass();
                ((ParametersHolder) obj2).getClass();
                return new SaveServerSettings((GetAccountState) scope10.resolve(Reflection.getOrCreateKotlinClass(GetAccountState.class), null, null), (AccountServerSettingsUpdater) scope10.resolve(Reflection.getOrCreateKotlinClass(AccountServerSettingsUpdater.class), null, null));
            case 26:
                Scope scope11 = (Scope) obj;
                ParametersHolder parametersHolder = (ParametersHolder) obj2;
                scope11.getClass();
                parametersHolder.getClass();
                return new ModifyIncomingServerSettingsViewModel((String) parametersHolder.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)), (LoadAccountState) scope11.resolve(Reflection.getOrCreateKotlinClass(LoadAccountState.class), null, null), (IncomingServerSettingsValidator) scope11.resolve(Reflection.getOrCreateKotlinClass(IncomingServerSettingsValidator.class), null, null), (AccountDomainContract$AccountStateRepository) scope11.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 27:
                Scope scope12 = (Scope) obj;
                ParametersHolder parametersHolder2 = (ParametersHolder) obj2;
                scope12.getClass();
                parametersHolder2.getClass();
                return new ModifyOutgoingServerSettingsViewModel((String) parametersHolder2.elementAt(0, Reflection.getOrCreateKotlinClass(String.class)), (LoadAccountState) scope12.resolve(Reflection.getOrCreateKotlinClass(LoadAccountState.class), null, null), (OutgoingServerSettingsValidator) scope12.resolve(Reflection.getOrCreateKotlinClass(OutgoingServerSettingsValidator.class), null, null), (AccountDomainContract$AccountStateRepository) scope12.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 28:
                Scope scope13 = (Scope) obj;
                ParametersHolder parametersHolder3 = (ParametersHolder) obj2;
                scope13.getClass();
                parametersHolder3.getClass();
                String str = (String) parametersHolder3.elementAt(0, Reflection.getOrCreateKotlinClass(String.class));
                SaveServerSettings saveServerSettings = (SaveServerSettings) scope13.resolve(Reflection.getOrCreateKotlinClass(SaveServerSettings.class), null, null);
                SaveServerSettingsContract$State saveServerSettingsContract$State = new SaveServerSettingsContract$State();
                str.getClass();
                return new SaveIncomingServerSettingsViewModel(str, true, saveServerSettings, saveServerSettingsContract$State);
            default:
                Scope scope14 = (Scope) obj;
                ParametersHolder parametersHolder4 = (ParametersHolder) obj2;
                scope14.getClass();
                parametersHolder4.getClass();
                String str2 = (String) parametersHolder4.elementAt(0, Reflection.getOrCreateKotlinClass(String.class));
                SaveServerSettings saveServerSettings2 = (SaveServerSettings) scope14.resolve(Reflection.getOrCreateKotlinClass(SaveServerSettings.class), null, null);
                SaveServerSettingsContract$State saveServerSettingsContract$State2 = new SaveServerSettingsContract$State();
                str2.getClass();
                return new SaveOutgoingServerSettingsViewModel(str2, false, saveServerSettings2, saveServerSettingsContract$State2);
        }
    }
}
