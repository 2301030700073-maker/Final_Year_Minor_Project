package net.thunderbird.app.common.startup;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.common.CoreCommonModuleKt$$ExternalSyntheticLambda0;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppCommonStartupModuleKt {
    public static final Module appCommonStartupModule;

    static {
        Module module = new Module();
        CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda0 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(17);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DefaultDatabaseUpgradeInterceptor.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, coreCommonModuleKt$$ExternalSyntheticLambda0, kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(DefaultStartupRouter.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(18), kind), module);
        appCommonStartupModule = module;
    }
}
