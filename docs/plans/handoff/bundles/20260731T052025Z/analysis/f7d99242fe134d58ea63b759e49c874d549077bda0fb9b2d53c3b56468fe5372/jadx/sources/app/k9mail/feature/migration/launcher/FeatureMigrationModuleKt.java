package app.k9mail.feature.migration.launcher;

import app.k9mail.feature.migration.launcher.k9.K9MigrationManager;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt;
import app.k9mail.feature.migration.qrcode.QrCodeModuleKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FeatureMigrationModuleKt {
    public static final Module featureMigrationModule;

    static {
        Module module = new Module();
        CollectionsKt.addAll(module.includedModules, new Module[]{QrCodeModuleKt.qrCodeModule});
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(K9MigrationManager.class), null, new QrCodeModuleKt$$ExternalSyntheticLambda1(16), Kind.Singleton), module);
        featureMigrationModule = module;
    }
}
