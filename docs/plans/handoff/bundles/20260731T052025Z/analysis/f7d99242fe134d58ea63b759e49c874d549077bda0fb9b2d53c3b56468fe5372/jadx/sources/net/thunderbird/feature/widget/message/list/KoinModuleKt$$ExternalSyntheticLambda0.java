package net.thunderbird.feature.widget.message.list;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Updater;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.oauth.domain.usecase.CheckIsGoogleSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.FinishOAuthSignIn;
import app.k9mail.feature.account.oauth.domain.usecase.GetOAuthRequestIntent;
import app.k9mail.feature.account.oauth.ui.AccountOAuthViewModel;
import app.k9mail.feature.account.setup.domain.usecase.GetAutoDiscovery;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.thundermail.internal.common.domain.CreateAccountStateUseCase;
import net.thunderbird.feature.thundermail.internal.common.navigation.DefaultThundermailNavigation;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthViewModel;
import okio.Path;
import org.jetbrains.compose.resources.AndroidContextProviderKt;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinModuleKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = 6;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                Scope scope = (Scope) obj;
                scope.getClass();
                ((ParametersHolder) obj2).getClass();
                return new Path.Companion();
            case 1:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return ErrorNotificationsDialogFragment.Factory;
            case 2:
                Scope scope2 = (Scope) obj;
                scope2.getClass();
                ((ParametersHolder) obj2).getClass();
                return new AccountOAuthViewModel((GetOAuthRequestIntent) scope2.resolve(Reflection.getOrCreateKotlinClass(GetOAuthRequestIntent.class), null, null), (FinishOAuthSignIn) scope2.resolve(Reflection.getOrCreateKotlinClass(FinishOAuthSignIn.class), null, null), (CheckIsGoogleSignIn) scope2.resolve(Reflection.getOrCreateKotlinClass(CheckIsGoogleSignIn.class), null, null), (Logger) scope2.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null));
            case 3:
                Scope scope3 = (Scope) obj;
                scope3.getClass();
                ((ParametersHolder) obj2).getClass();
                return new ThundermailOAuthViewModel((Logger) scope3.resolve(Reflection.getOrCreateKotlinClass(Logger.class), null, null), (AccountOAuthViewModel) scope3.resolve(Reflection.getOrCreateKotlinClass(AccountOAuthViewModel.class), null, null), (GetAutoDiscovery) scope3.resolve(Reflection.getOrCreateKotlinClass(GetAutoDiscovery.class), null, null), (CreateAccountStateUseCase) scope3.resolve(Reflection.getOrCreateKotlinClass(CreateAccountStateUseCase.class), null, null));
            case 4:
                Scope scope4 = (Scope) obj;
                scope4.getClass();
                ((ParametersHolder) obj2).getClass();
                return new CreateAccountStateUseCase((AccountDomainContract$AccountStateRepository) scope4.resolve(Reflection.getOrCreateKotlinClass(AccountDomainContract$AccountStateRepository.class), null, null));
            case 5:
                ((Scope) obj).getClass();
                ((ParametersHolder) obj2).getClass();
                return new DefaultThundermailNavigation();
            default:
                ((Integer) obj2).getClass();
                AndroidContextProviderKt.PreviewContextConfigurationEffect((Composer) obj, Updater.updateChangedFlags(1));
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ KoinModuleKt$$ExternalSyntheticLambda0(int i, byte b) {
        this.$r8$classId = i;
    }
}
