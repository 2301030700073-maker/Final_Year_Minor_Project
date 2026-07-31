package app.k9mail.feature.launcher.di;

import app.k9mail.feature.account.edit.AccountEditModuleKt;
import app.k9mail.feature.account.setup.AccountSetupModuleKt;
import app.k9mail.feature.onboarding.main.OnboardingModuleKt;
import app.k9mail.feature.settings.p000import.SettingsImportModuleKt;
import kotlin.collections.CollectionsKt;
import net.thunderbird.feature.debug.settings.inject.FeatureDebugSettingsModuleKt;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FeatureLauncherModuleKt {
    public static final Module featureLauncherModule;

    static {
        Module module = new Module();
        CollectionsKt.addAll(module.includedModules, new Module[]{OnboardingModuleKt.featureOnboardingModule, SettingsImportModuleKt.featureSettingsImportModule, AccountSetupModuleKt.featureAccountSetupModule, AccountEditModuleKt.featureAccountEditModule, FeatureDebugSettingsModuleKt.featureDebugSettingsModule});
        featureLauncherModule = module;
    }
}
