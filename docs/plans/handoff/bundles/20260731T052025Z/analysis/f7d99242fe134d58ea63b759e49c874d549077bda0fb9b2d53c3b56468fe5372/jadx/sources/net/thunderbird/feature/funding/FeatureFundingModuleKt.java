package net.thunderbird.feature.funding;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.feature.funding.noop.NoOpFundingManager;
import net.thunderbird.feature.funding.noop.NoOpFundingNavigation;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FeatureFundingModuleKt {
    public static final Module featureFundingModule;

    static {
        Module module = new Module();
        FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda0 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(0);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NoOpFundingManager.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, featureFundingModuleKt$$ExternalSyntheticLambda0, kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(NoOpFundingNavigation.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(7), kind), module);
        featureFundingModule = module;
    }
}
