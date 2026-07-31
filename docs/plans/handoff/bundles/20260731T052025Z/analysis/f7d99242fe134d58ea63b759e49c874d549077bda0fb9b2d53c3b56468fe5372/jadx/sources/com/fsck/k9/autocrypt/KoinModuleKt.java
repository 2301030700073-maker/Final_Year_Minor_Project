package com.fsck.k9.autocrypt;

import coil3.size.ViewSizeResolver;
import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda9;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module autocryptModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda9 koinModuleKt$$ExternalSyntheticLambda9 = new KoinModuleKt$$ExternalSyntheticLambda9(16);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AutocryptTransferMessageCreator.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, koinModuleKt$$ExternalSyntheticLambda9, kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(AutocryptDraftStateHeaderParser.class), null, new KoinModuleKt$$ExternalSyntheticLambda9(17), kind), module);
        autocryptModule = module;
    }
}
