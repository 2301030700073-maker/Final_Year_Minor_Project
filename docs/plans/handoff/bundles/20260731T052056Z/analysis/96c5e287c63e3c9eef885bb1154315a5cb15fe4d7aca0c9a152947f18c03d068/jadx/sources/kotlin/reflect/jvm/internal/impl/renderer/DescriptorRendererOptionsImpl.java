package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorRendererOptionsImpl implements DescriptorRendererOptions {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 actualPropertiesInPrimaryConstructor$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 alwaysRenderModifiers$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 annotationArgumentsRenderingPolicy$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 annotationFilter$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 boldOnlyForNamesInHtml$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 classWithPrimaryConstructor$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 classifierNamePolicy$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ClassifierNamePolicy$SHORT.INSTANCE$2, this);
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 debugMode$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 defaultParameterValueRenderer$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 eachAnnotationOnNewLine$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 enhancedTypes$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 excludedAnnotationClasses$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 excludedTypeAnnotationClasses$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 includeAdditionalModifiers$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 includePropertyConstant$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 informativeErrorType$delegate;
    public boolean isLocked;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 modifiers$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 normalizedVisibilities$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 overrideRenderingPolicy$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 parameterNameRenderingPolicy$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 parameterNamesInFunctionalTypes$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 presentableUnresolvedTypes$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 propertyAccessorRenderingPolicy$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 receiverAfterName$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderCompanionObjectName$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderConstructorDelegation$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderConstructorKeyword$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderDefaultAnnotationArguments$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderDefaultModality$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderDefaultVisibility$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderPrimaryConstructorParametersAsProperties$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderTypeExpansions$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 renderUnabbreviatedType$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 secondaryConstructorsAsPrimary$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 startFromDeclarationKeyword$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 startFromName$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 textFormat$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 typeNormalizer$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 uninferredTypeParameterAsName$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 unitReturnType$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 valueParametersHandler$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 verbose$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 withDefinedIn$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 withSourceFileForTopLevel$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 withoutReturnType$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 withoutSuperTypes$delegate;
    public final DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 withoutTypeParameters$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "classifierNamePolicy", "getClassifierNamePolicy()Lorg/jetbrains/kotlin/renderer/ClassifierNamePolicy;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "withDefinedIn", "getWithDefinedIn()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "withSourceFileForTopLevel", "getWithSourceFileForTopLevel()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "modifiers", "getModifiers()Ljava/util/Set;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "startFromName", "getStartFromName()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "startFromDeclarationKeyword", "getStartFromDeclarationKeyword()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "debugMode", "getDebugMode()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "classWithPrimaryConstructor", "getClassWithPrimaryConstructor()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "verbose", "getVerbose()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "unitReturnType", "getUnitReturnType()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "withoutReturnType", "getWithoutReturnType()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "enhancedTypes", "getEnhancedTypes()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "normalizedVisibilities", "getNormalizedVisibilities()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderDefaultVisibility", "getRenderDefaultVisibility()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderDefaultModality", "getRenderDefaultModality()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderConstructorDelegation", "getRenderConstructorDelegation()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderPrimaryConstructorParametersAsProperties", "getRenderPrimaryConstructorParametersAsProperties()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "actualPropertiesInPrimaryConstructor", "getActualPropertiesInPrimaryConstructor()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "uninferredTypeParameterAsName", "getUninferredTypeParameterAsName()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "includePropertyConstant", "getIncludePropertyConstant()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "withoutTypeParameters", "getWithoutTypeParameters()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "withoutSuperTypes", "getWithoutSuperTypes()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "typeNormalizer", "getTypeNormalizer()Lkotlin/jvm/functions/Function1;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "defaultParameterValueRenderer", "getDefaultParameterValueRenderer()Lkotlin/jvm/functions/Function1;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "secondaryConstructorsAsPrimary", "getSecondaryConstructorsAsPrimary()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "overrideRenderingPolicy", "getOverrideRenderingPolicy()Lorg/jetbrains/kotlin/renderer/OverrideRenderingPolicy;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "valueParametersHandler", "getValueParametersHandler()Lorg/jetbrains/kotlin/renderer/DescriptorRenderer$ValueParametersHandler;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "textFormat", "getTextFormat()Lorg/jetbrains/kotlin/renderer/RenderingFormat;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "parameterNameRenderingPolicy", "getParameterNameRenderingPolicy()Lorg/jetbrains/kotlin/renderer/ParameterNameRenderingPolicy;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "receiverAfterName", "getReceiverAfterName()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderCompanionObjectName", "getRenderCompanionObjectName()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "propertyAccessorRenderingPolicy", "getPropertyAccessorRenderingPolicy()Lorg/jetbrains/kotlin/renderer/PropertyAccessorRenderingPolicy;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderDefaultAnnotationArguments", "getRenderDefaultAnnotationArguments()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "eachAnnotationOnNewLine", "getEachAnnotationOnNewLine()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "excludedAnnotationClasses", "getExcludedAnnotationClasses()Ljava/util/Set;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "excludedTypeAnnotationClasses", "getExcludedTypeAnnotationClasses()Ljava/util/Set;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "annotationFilter", "getAnnotationFilter()Lkotlin/jvm/functions/Function1;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "annotationArgumentsRenderingPolicy", "getAnnotationArgumentsRenderingPolicy()Lorg/jetbrains/kotlin/renderer/AnnotationArgumentsRenderingPolicy;")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "alwaysRenderModifiers", "getAlwaysRenderModifiers()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderConstructorKeyword", "getRenderConstructorKeyword()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderUnabbreviatedType", "getRenderUnabbreviatedType()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderTypeExpansions", "getRenderTypeExpansions()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "includeAdditionalModifiers", "getIncludeAdditionalModifiers()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "parameterNamesInFunctionalTypes", "getParameterNamesInFunctionalTypes()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "renderFunctionContracts", "getRenderFunctionContracts()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "presentableUnresolvedTypes", "getPresentableUnresolvedTypes()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "boldOnlyForNamesInHtml", "getBoldOnlyForNamesInHtml()Z")), reflectionFactory.mutableProperty1(new MutablePropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(DescriptorRendererOptionsImpl.class), "informativeErrorType", "getInformativeErrorType()Z"))};
    }

    public DescriptorRendererOptionsImpl() {
        Boolean bool = Boolean.TRUE;
        this.withDefinedIn$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.withSourceFileForTopLevel$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.modifiers$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS, this);
        Boolean bool2 = Boolean.FALSE;
        this.startFromName$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.startFromDeclarationKeyword$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.debugMode$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.classWithPrimaryConstructor$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.verbose$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.unitReturnType$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.withoutReturnType$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.enhancedTypes$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.normalizedVisibilities$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.renderDefaultVisibility$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.renderDefaultModality$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.renderConstructorDelegation$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.renderPrimaryConstructorParametersAsProperties$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.actualPropertiesInPrimaryConstructor$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.uninferredTypeParameterAsName$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.includePropertyConstant$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.withoutTypeParameters$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.withoutSuperTypes$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.typeNormalizer$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRendererImpl$renderConstructor$1.INSTANCE$3, this);
        this.defaultParameterValueRenderer$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRendererImpl$renderConstructor$1.INSTANCE$2, this);
        this.secondaryConstructorsAsPrimary$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.overrideRenderingPolicy$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(OverrideRenderingPolicy.RENDER_OPEN, this);
        this.valueParametersHandler$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(DescriptorRenderer$ValueParametersHandler$DEFAULT.INSTANCE, this);
        this.textFormat$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(RenderingFormat.PLAIN, this);
        this.parameterNameRenderingPolicy$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ParameterNameRenderingPolicy.ALL, this);
        this.receiverAfterName$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.renderCompanionObjectName$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.propertyAccessorRenderingPolicy$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(PropertyAccessorRenderingPolicy.DEBUG, this);
        this.renderDefaultAnnotationArguments$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.eachAnnotationOnNewLine$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.excludedAnnotationClasses$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(EmptySet.INSTANCE, this);
        this.excludedTypeAnnotationClasses$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(ExcludedTypeAnnotations.internalAnnotationsForResolve, this);
        this.annotationFilter$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(null, this);
        this.annotationArgumentsRenderingPolicy$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(AnnotationArgumentsRenderingPolicy.NO_ARGUMENTS, this);
        this.alwaysRenderModifiers$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.renderConstructorKeyword$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.renderUnabbreviatedType$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.renderTypeExpansions$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.includeAdditionalModifiers$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.parameterNamesInFunctionalTypes$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
        this.presentableUnresolvedTypes$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.boldOnlyForNamesInHtml$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool2, this);
        this.informativeErrorType$delegate = new DescriptorRendererOptionsImpl$property$$inlined$vetoable$1(bool, this);
    }

    public final AnnotationArgumentsRenderingPolicy getAnnotationArgumentsRenderingPolicy() {
        KProperty kProperty = $$delegatedProperties[37];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.annotationArgumentsRenderingPolicy$delegate;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (AnnotationArgumentsRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    public final boolean getDebugMode() {
        KProperty kProperty = $$delegatedProperties[6];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.debugMode$delegate;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final Set getExcludedTypeAnnotationClasses() {
        KProperty kProperty = $$delegatedProperties[35];
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.excludedTypeAnnotationClasses$delegate;
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setClassifierNamePolicy(ClassifierNamePolicy$SHORT classifierNamePolicy$SHORT) {
        this.classifierNamePolicy$delegate.setValue(classifierNamePolicy$SHORT, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setDebugMode() {
        KProperty kProperty = $$delegatedProperties[6];
        this.debugMode$delegate.setValue(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setExcludedTypeAnnotationClasses(LinkedHashSet linkedHashSet) {
        this.excludedTypeAnnotationClasses$delegate.setValue(linkedHashSet, $$delegatedProperties[35]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setModifiers(Set set) {
        set.getClass();
        this.modifiers$delegate.setValue(set, $$delegatedProperties[3]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setParameterNameRenderingPolicy(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        parameterNameRenderingPolicy.getClass();
        this.parameterNameRenderingPolicy$delegate.setValue(parameterNameRenderingPolicy, $$delegatedProperties[28]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setReceiverAfterName() {
        KProperty kProperty = $$delegatedProperties[29];
        this.receiverAfterName$delegate.setValue(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setRenderCompanionObjectName() {
        KProperty kProperty = $$delegatedProperties[30];
        this.renderCompanionObjectName$delegate.setValue(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setStartFromName() {
        KProperty kProperty = $$delegatedProperties[4];
        this.startFromName$delegate.setValue(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setTextFormat(RenderingFormat renderingFormat) {
        renderingFormat.getClass();
        this.textFormat$delegate.setValue(renderingFormat, $$delegatedProperties[27]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithDefinedIn() {
        KProperty kProperty = $$delegatedProperties[1];
        this.withDefinedIn$delegate.setValue(Boolean.FALSE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithoutSuperTypes() {
        KProperty kProperty = $$delegatedProperties[21];
        this.withoutSuperTypes$delegate.setValue(Boolean.TRUE, kProperty);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithoutTypeParameters() {
        KProperty kProperty = $$delegatedProperties[20];
        this.withoutTypeParameters$delegate.setValue(Boolean.TRUE, kProperty);
    }
}
