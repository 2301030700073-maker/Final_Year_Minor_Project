package net.thunderbird.core.common;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Clock;
import net.thunderbird.core.common.oauth.InMemoryOAuthConfigurationProvider;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoreCommonModuleKt {
    public static final Module coreCommonModule;

    static {
        Module module = new Module();
        CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda0 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(0);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Clock.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, coreCommonModuleKt$$ExternalSyntheticLambda0, kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(InMemoryOAuthConfigurationProvider.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(27), kind), module);
        coreCommonModule = module;
    }
}
