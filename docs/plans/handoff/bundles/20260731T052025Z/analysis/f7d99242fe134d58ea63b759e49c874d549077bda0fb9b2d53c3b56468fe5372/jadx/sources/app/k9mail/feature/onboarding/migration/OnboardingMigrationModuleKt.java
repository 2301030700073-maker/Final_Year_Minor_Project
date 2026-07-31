package app.k9mail.feature.onboarding.migration;

import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.onboarding.migration.noop.NoOpOnboardingMigrationManager;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OnboardingMigrationModuleKt {
    public static final Module onboardingMigrationModule;

    static {
        Module module = new Module();
        QrCodeModuleKt$$ExternalSyntheticLambda1 qrCodeModuleKt$$ExternalSyntheticLambda1 = new QrCodeModuleKt$$ExternalSyntheticLambda1(26);
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(NoOpOnboardingMigrationManager.class), null, qrCodeModuleKt$$ExternalSyntheticLambda1, Kind.Singleton), module);
        onboardingMigrationModule = module;
    }
}
