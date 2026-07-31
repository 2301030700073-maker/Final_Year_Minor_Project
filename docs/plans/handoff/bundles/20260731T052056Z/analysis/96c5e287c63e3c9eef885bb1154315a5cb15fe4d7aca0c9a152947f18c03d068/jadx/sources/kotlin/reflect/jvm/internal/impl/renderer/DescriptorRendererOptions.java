package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface DescriptorRendererOptions {
    Set getExcludedTypeAnnotationClasses();

    void setClassifierNamePolicy(ClassifierNamePolicy$SHORT classifierNamePolicy$SHORT);

    void setDebugMode();

    void setExcludedTypeAnnotationClasses(LinkedHashSet linkedHashSet);

    void setModifiers(Set set);

    void setParameterNameRenderingPolicy(ParameterNameRenderingPolicy parameterNameRenderingPolicy);

    void setReceiverAfterName();

    void setRenderCompanionObjectName();

    void setStartFromName();

    void setTextFormat(RenderingFormat renderingFormat);

    void setWithDefinedIn();

    void setWithoutSuperTypes();

    void setWithoutTypeParameters();
}
