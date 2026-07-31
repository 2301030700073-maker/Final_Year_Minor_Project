package net.thunderbird.feature.mail.message.composer.inject;

import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import net.thunderbird.feature.funding.FeatureFundingModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.mail.message.composer.dialog.SentFolderNotFoundConfirmationDialogFragment;
import net.thunderbird.feature.mail.message.composer.html.MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.definition.Kind;
import org.koin.core.instance.FactoryInstanceFactory;
import org.koin.core.module.Module;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.registry.ScopeRegistry;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FeatureMessageComposerModuleKt {
    public static final Module featureMessageComposerModule;

    static {
        Module module = new Module();
        FeatureFundingModuleKt$$ExternalSyntheticLambda0 featureFundingModuleKt$$ExternalSyntheticLambda0 = new FeatureFundingModuleKt$$ExternalSyntheticLambda0(9);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SentFolderNotFoundConfirmationDialogFragment.Factory.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Factory;
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, featureFundingModuleKt$$ExternalSyntheticLambda0, kind)));
        module.indexPrimaryType(new FactoryInstanceFactory(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(MessageComposerHtmlSettingsProviderKt$MessageComposerHtmlSettingsProvider$1.class), null, new FeatureFundingModuleKt$$ExternalSyntheticLambda0(10), kind)));
        featureMessageComposerModule = module;
    }
}
