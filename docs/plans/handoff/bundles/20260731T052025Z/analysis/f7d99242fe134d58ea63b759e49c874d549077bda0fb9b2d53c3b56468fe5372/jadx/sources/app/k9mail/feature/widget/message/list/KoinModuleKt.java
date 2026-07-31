package app.k9mail.feature.widget.message.list;

import com.fsck.k9.KoinModuleKt$$ExternalSyntheticLambda1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.instance.SingleInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class KoinModuleKt {
    public static final Module messageListWidgetModule;

    static {
        Module module = new Module();
        KoinModuleKt$$ExternalSyntheticLambda1 koinModuleKt$$ExternalSyntheticLambda1 = new KoinModuleKt$$ExternalSyntheticLambda1(5);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MessageListWidgetManager.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, koinModuleKt$$ExternalSyntheticLambda1, Kind.Singleton)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(MessageListLoader.class), null, new KoinModuleKt$$ExternalSyntheticLambda1(6), Kind.Factory)));
        messageListWidgetModule = module;
    }
}
