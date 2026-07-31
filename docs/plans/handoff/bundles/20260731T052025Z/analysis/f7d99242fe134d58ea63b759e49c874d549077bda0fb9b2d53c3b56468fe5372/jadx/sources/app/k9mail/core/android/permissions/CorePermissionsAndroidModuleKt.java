package app.k9mail.core.android.permissions;

import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CorePermissionsAndroidModuleKt {
    public static final Module corePermissionsAndroidModule;

    static {
        Module module = new Module();
        ReleaseConfigKt$$ExternalSyntheticLambda0 releaseConfigKt$$ExternalSyntheticLambda0 = new ReleaseConfigKt$$ExternalSyntheticLambda0(6);
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(AndroidPermissionChecker.class), null, releaseConfigKt$$ExternalSyntheticLambda0, Kind.Factory)));
        corePermissionsAndroidModule = module;
    }
}
