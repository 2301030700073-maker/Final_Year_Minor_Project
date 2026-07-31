package net.thunderbird.feature.thundermail.internal.common.navigation;

import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.work.Data;
import app.k9mail.feature.launcher.navigation.FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;
import app.k9mail.feature.settings.p000import.ui.SettingsImportAction;
import com.fsck.k9.sasl.OAuthBearer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailOAuthRedirectScreenKt;
import okio.ForwardingFileSystem$$ExternalSyntheticLambda0;
import okio.internal.ResourceFileSystem$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultThundermailNavigation$$ExternalSyntheticLambda3 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NavController$$ExternalSyntheticLambda0 f$0;
    public final /* synthetic */ FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 f$1;

    public /* synthetic */ DefaultThundermailNavigation$$ExternalSyntheticLambda3(FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2, NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0) {
        this.$r8$classId = 1;
        this.f$1 = featureLauncherNavHostKt$$ExternalSyntheticLambda2;
        this.f$0 = navController$$ExternalSyntheticLambda0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2 = this.f$1;
        Unit unit = Unit.INSTANCE;
        AnimatedContentScopeImpl animatedContentScopeImpl = (AnimatedContentScopeImpl) obj;
        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
        switch (i) {
            case 0:
                ((Integer) obj4).getClass();
                animatedContentScopeImpl.getClass();
                navBackStackEntry.getClass();
                ThundermailOAuthRedirectScreenKt.ThundermailOAuthRedirectScreen(this.f$0, this.f$1, null, null, (Composer) obj3, 0);
                break;
            case 1:
                ((Integer) obj4).getClass();
                animatedContentScopeImpl.getClass();
                navBackStackEntry.getClass();
                GapComposer gapComposer = (GapComposer) ((Composer) obj3);
                boolean changed = gapComposer.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new ResourceFileSystem$$ExternalSyntheticLambda0(22, featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Data.Companion.SettingsImportScreen(SettingsImportAction.ScanQrCode, (Function0) rememberedValue, this.f$0, null, gapComposer, 6);
                break;
            default:
                ((Integer) obj4).getClass();
                animatedContentScopeImpl.getClass();
                navBackStackEntry.getClass();
                GapComposer gapComposer2 = (GapComposer) ((Composer) obj3);
                boolean changed2 = gapComposer2.changed(featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new ForwardingFileSystem$$ExternalSyntheticLambda0(15, featureLauncherNavHostKt$$ExternalSyntheticLambda2);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                OAuthBearer.AccountSetupNavHost(this.f$0, (Function1) rememberedValue2, true, gapComposer2, 384, 0);
                break;
        }
        return unit;
    }

    public /* synthetic */ DefaultThundermailNavigation$$ExternalSyntheticLambda3(NavController$$ExternalSyntheticLambda0 navController$$ExternalSyntheticLambda0, FeatureLauncherNavHostKt$$ExternalSyntheticLambda2 featureLauncherNavHostKt$$ExternalSyntheticLambda2, int i) {
        this.$r8$classId = i;
        this.f$0 = navController$$ExternalSyntheticLambda0;
        this.f$1 = featureLauncherNavHostKt$$ExternalSyntheticLambda2;
    }
}
