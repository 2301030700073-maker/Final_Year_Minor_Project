package com.fsck.k9.message.quote;

import com.fsck.k9.mailstore.KoinModuleKt$$ExternalSyntheticLambda2;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module quoteModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda2 koinModuleKt$$ExternalSyntheticLambda2 = new KoinModuleKt$$ExternalSyntheticLambda2(13);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(QuoteDateFormatter.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Factory;
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, koinModuleKt$$ExternalSyntheticLambda2, kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(TextQuoteCreator.class), null, new KoinModuleKt$$ExternalSyntheticLambda2(14), kind)));
        quoteModule = module;
    }
}
