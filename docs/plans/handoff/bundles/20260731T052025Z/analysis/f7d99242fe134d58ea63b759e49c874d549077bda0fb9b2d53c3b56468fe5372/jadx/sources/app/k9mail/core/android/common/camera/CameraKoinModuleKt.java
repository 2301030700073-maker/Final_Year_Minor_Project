package app.k9mail.core.android.common.camera;

import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import app.k9mail.core.android.common.camera.io.CaptureImageFileWriter;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
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
public abstract class CameraKoinModuleKt {
    public static final Module cameraModule;

    static {
        Module module = new Module();
        K9KoinModuleKt$$ExternalSyntheticLambda2 k9KoinModuleKt$$ExternalSyntheticLambda2 = new K9KoinModuleKt$$ExternalSyntheticLambda2(29);
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CaptureImageFileWriter.class);
        StringQualifier stringQualifier = ScopeRegistry.rootScopeQualifier;
        Kind kind = Kind.Singleton;
        module.indexPrimaryType(new SingleInstanceFactory(new BeanDefinition(stringQualifier, orCreateKotlinClass, null, k9KoinModuleKt$$ExternalSyntheticLambda2, kind)));
        ViewSizeResolver.CC.m(new BeanDefinition(stringQualifier, Reflection.getOrCreateKotlinClass(CameraCaptureHandler.class), null, new ReleaseConfigKt$$ExternalSyntheticLambda0(1), kind), module);
        cameraModule = module;
    }
}
