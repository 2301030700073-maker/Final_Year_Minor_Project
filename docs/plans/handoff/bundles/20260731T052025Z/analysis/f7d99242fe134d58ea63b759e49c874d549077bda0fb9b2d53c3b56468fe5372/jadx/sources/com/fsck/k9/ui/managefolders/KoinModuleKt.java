package com.fsck.k9.ui.managefolders;

import com.fsck.k9.ui.base.KoinModuleKt$$ExternalSyntheticLambda1;
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
    public static final Module manageFoldersUiModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda1 = new KoinModuleKt$$ExternalSyntheticLambda1(14);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ManageFoldersViewModel.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Factory;
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, koinModuleKt$$ExternalSyntheticLambda1, kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(FolderSettingsViewModel.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(15), kind)));
        manageFoldersUiModule = module;
    }
}
