package app.k9mail.feature.launcher.navigation;

import androidx.activity.ComponentActivity;
import androidx.navigation.NavHostController;
import app.k9mail.feature.onboarding.main.navigation.OnboardingRoute;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.thunderbird.app.common.feature.MessageListLauncher;
import net.thunderbird.feature.thundermail.navigation.ThundermailRoute;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ MessageListLauncher f$0;
    public final /* synthetic */ ComponentActivity f$1;
    public final /* synthetic */ NavHostController f$2;

    public /* synthetic */ FeatureLauncherNavHostKt$$ExternalSyntheticLambda2(NavHostController navHostController, MessageListLauncher messageListLauncher, ComponentActivity componentActivity) {
        this.f$2 = navHostController;
        this.f$0 = messageListLauncher;
        this.f$1 = componentActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComponentActivity componentActivity = this.f$1;
        MessageListLauncher messageListLauncher = this.f$0;
        NavHostController navHostController = this.f$2;
        switch (i) {
            case 0:
                OnboardingRoute onboardingRoute = (OnboardingRoute) obj;
                onboardingRoute.getClass();
                if (!(onboardingRoute instanceof OnboardingRoute.Onboarding)) {
                    if (!(onboardingRoute instanceof OnboardingRoute.ThundermailScanQrCode)) {
                        if (onboardingRoute instanceof OnboardingRoute.ThundermailSignIn) {
                            NavHostController.navigate$default(navHostController, ThundermailRoute.SignInWithThundermail.INSTANCE);
                            break;
                        }
                    } else {
                        NavHostController.navigate$default(navHostController, ThundermailRoute.ScanQrCode.INSTANCE);
                        break;
                    }
                } else {
                    messageListLauncher.launch(((OnboardingRoute.Onboarding) onboardingRoute).accountId);
                    componentActivity.finish();
                    break;
                }
                break;
            default:
                ThundermailRoute thundermailRoute = (ThundermailRoute) obj;
                thundermailRoute.getClass();
                if (!(thundermailRoute instanceof ThundermailRoute.IncomingSettings)) {
                    if (!(thundermailRoute instanceof ThundermailRoute.AccountSetup)) {
                        if (thundermailRoute instanceof ThundermailRoute.Permissions) {
                            messageListLauncher.launch(((ThundermailRoute.Permissions) thundermailRoute).accountId);
                            componentActivity.finish();
                            break;
                        }
                    } else {
                        messageListLauncher.launch(((ThundermailRoute.AccountSetup) thundermailRoute).accountId);
                        break;
                    }
                } else {
                    NavHostController.navigate$default(navHostController, ThundermailRoute.IncomingSettings.INSTANCE);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ FeatureLauncherNavHostKt$$ExternalSyntheticLambda2(MessageListLauncher messageListLauncher, ComponentActivity componentActivity, NavHostController navHostController) {
        this.f$0 = messageListLauncher;
        this.f$1 = componentActivity;
        this.f$2 = navHostController;
    }
}
