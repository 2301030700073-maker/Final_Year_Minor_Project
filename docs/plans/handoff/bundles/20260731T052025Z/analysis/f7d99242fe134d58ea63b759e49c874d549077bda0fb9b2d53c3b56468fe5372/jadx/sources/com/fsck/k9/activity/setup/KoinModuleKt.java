package com.fsck.k9.activity.setup;

import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda9;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module setUpModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda9 koinModuleKt$$ExternalSyntheticLambda9 = new KoinModuleKt$$ExternalSyntheticLambda9(15);
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(AccountSetupCompositionViewModel.class), null, koinModuleKt$$ExternalSyntheticLambda9, Kind.Factory)));
        setUpModule = module;
    }
}
