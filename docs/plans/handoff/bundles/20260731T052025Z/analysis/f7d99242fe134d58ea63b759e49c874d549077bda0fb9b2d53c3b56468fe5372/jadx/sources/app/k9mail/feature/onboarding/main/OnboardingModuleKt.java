package app.k9mail.feature.onboarding.main;

import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.onboarding.main.navigation.DefaultOnboardingNavigation;
import app.k9mail.feature.onboarding.permissions.PermissionsModuleKt;
import coil3.size.ViewSizeResolver;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class OnboardingModuleKt {
    public static final Module featureOnboardingModule;

    static {
        Module module = new Module();
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(DefaultOnboardingNavigation.class), null, new QrCodeModuleKt$$ExternalSyntheticLambda1(25), Kind.Singleton), module);
        CollectionsKt.addAll(module.includedModules, new Module[]{PermissionsModuleKt.featureOnboardingPermissionsModule});
        featureOnboardingModule = module;
    }
}
