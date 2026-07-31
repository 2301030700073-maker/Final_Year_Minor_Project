package net.thunderbird.feature.account.core;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AccountCoreModuleKt {
    public static final Module featureAccountCoreModule;

    static {
        Module module = new Module();
        AccountCoreModuleKt$$ExternalSyntheticLambda0 accountCoreModuleKt$$ExternalSyntheticLambda0 = new AccountCoreModuleKt$$ExternalSyntheticLambda0(0);
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(DefaultAccountProfileRepository.class), null, accountCoreModuleKt$$ExternalSyntheticLambda0, Kind.Singleton), module);
        featureAccountCoreModule = module;
    }
}
