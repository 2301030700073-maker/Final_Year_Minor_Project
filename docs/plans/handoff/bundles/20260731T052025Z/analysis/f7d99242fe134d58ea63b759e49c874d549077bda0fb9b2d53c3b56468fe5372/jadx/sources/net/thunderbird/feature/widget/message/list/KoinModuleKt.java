package net.thunderbird.feature.widget.message.list;

import kotlin.jvm.internal.Reflection;
import okio.Path;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module featureWidgetMessageListModule;

    static {
        Module module = new Module();
        byte b = 0;
        KoinModuleKt$$ExternalSyntheticLambda0 koinModuleKt$$ExternalSyntheticLambda0 = new KoinModuleKt$$ExternalSyntheticLambda0(b, b);
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(Path.Companion.class), null, koinModuleKt$$ExternalSyntheticLambda0, Kind.Factory)));
        featureWidgetMessageListModule = module;
    }
}
