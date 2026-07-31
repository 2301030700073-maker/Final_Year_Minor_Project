package net.thunderbird.core.android.logging;

import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.common.CoreCommonModuleKt$$ExternalSyntheticLambda0;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module loggingModule;

    static {
        Module module = new Module();
        CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda0 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(23);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RealProcessExecutor.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Factory;
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, coreCommonModuleKt$$ExternalSyntheticLambda0, kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(LogcatLogFileWriter.class), null, new CoreCommonModuleKt$$ExternalSyntheticLambda0(24), kind)));
        loggingModule = module;
    }
}
