package net.thunderbird.feature.debug.settings.inject;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.feature.debug.settings.navigation.NoOpSecretDebugSettingsNavigation;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FeatureDebugSettingsModuleKt {
    public static final Module featureDebugSettingsModule;

    static {
        Module module = new Module();
        FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda0 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(6);
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(NoOpSecretDebugSettingsNavigation.class), null, featureFundingModuleKt$$ExternalSyntheticLambda0, Kind.Singleton), module);
        featureDebugSettingsModule = module;
    }
}
