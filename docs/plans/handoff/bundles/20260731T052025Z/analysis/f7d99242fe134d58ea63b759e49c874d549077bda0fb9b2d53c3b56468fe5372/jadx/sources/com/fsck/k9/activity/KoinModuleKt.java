package com.fsck.k9.activity;

import coil3.size.ViewSizeResolver;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda9;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module activityModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda9 koinModuleKt$$ExternalSyntheticLambda9 = new KoinModuleKt$$ExternalSyntheticLambda9(14);
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(MessageLoaderHelperFactory.class), null, koinModuleKt$$ExternalSyntheticLambda9, Kind.Singleton), module);
        activityModule = module;
    }
}
