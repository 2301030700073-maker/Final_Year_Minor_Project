package net.thunderbird.app.common.core.ui;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.core.common.CoreCommonModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.core.ui.setting.dialog.DialogSettingViewProvider;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.module.Module;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AppCommonCoreUiModuleKt {
    public static final Module appCommonCoreUiModule;

    static {
        Module module = new Module();
        CoreCommonModuleKt$$ExternalSyntheticLambda0 coreCommonModuleKt$$ExternalSyntheticLambda0 = new CoreCommonModuleKt$$ExternalSyntheticLambda0(5);
        ViewSizeResolver.CC.m(new BeanDefinition(ScopeRegistry.rootScopeQualifier, Reflection.getOrCreateKotlinClass(DialogSettingViewProvider.class), null, coreCommonModuleKt$$ExternalSyntheticLambda0, Kind.Singleton), module);
        appCommonCoreUiModule = module;
    }
}
