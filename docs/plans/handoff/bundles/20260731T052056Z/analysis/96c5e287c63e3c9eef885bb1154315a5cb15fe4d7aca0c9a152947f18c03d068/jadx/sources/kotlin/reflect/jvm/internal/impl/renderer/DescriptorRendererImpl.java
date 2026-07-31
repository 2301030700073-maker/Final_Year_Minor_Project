package kotlin.reflect.jvm.internal.impl.renderer;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.ResultKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$MockClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.VariableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUseSiteTarget;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.FieldDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.LazyPackageViewDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.KClassValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.AbbreviatedType;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.ConnectionPool;
import okhttp3.MultipartBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptorRendererImpl implements DescriptorRendererOptions {
    public static final DescriptorRendererImpl DEBUG_TEXT;
    public static final DescriptorRendererImpl FQ_NAMES_IN_TYPES;
    public static final DescriptorRendererImpl SHORT_NAMES_IN_TYPES;
    public final SynchronizedLazyImpl functionTypeAnnotationsRenderer$delegate = new SynchronizedLazyImpl(new AndroidLeakFixes$Companion$onDecorViewReady$1(8, this));
    public final DescriptorRendererOptionsImpl options;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[RenderingFormat.values().length];
            try {
                iArr[RenderingFormat.PLAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RenderingFormat.HTML.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ParameterNameRenderingPolicy.values().length];
            try {
                iArr2[ParameterNameRenderingPolicy.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ParameterNameRenderingPolicy.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    static {
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl.setWithDefinedIn();
        descriptorRendererOptionsImpl.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl2 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl2.setWithDefinedIn();
        EmptySet emptySet = EmptySet.INSTANCE;
        descriptorRendererOptionsImpl2.setModifiers(emptySet);
        descriptorRendererOptionsImpl2.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl2);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl3 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl3.setWithDefinedIn();
        descriptorRendererOptionsImpl3.setModifiers(emptySet);
        descriptorRendererOptionsImpl3.setWithoutSuperTypes();
        descriptorRendererOptionsImpl3.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl3);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl4 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl4.setModifiers(emptySet);
        ClassifierNamePolicy$SHORT classifierNamePolicy$SHORT = ClassifierNamePolicy$SHORT.INSTANCE;
        descriptorRendererOptionsImpl4.setClassifierNamePolicy(classifierNamePolicy$SHORT);
        descriptorRendererOptionsImpl4.setParameterNameRenderingPolicy(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
        descriptorRendererOptionsImpl4.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl4);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl5 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl5.setWithDefinedIn();
        descriptorRendererOptionsImpl5.setModifiers(emptySet);
        descriptorRendererOptionsImpl5.setClassifierNamePolicy(classifierNamePolicy$SHORT);
        descriptorRendererOptionsImpl5.setWithoutTypeParameters();
        descriptorRendererOptionsImpl5.setParameterNameRenderingPolicy(ParameterNameRenderingPolicy.NONE);
        descriptorRendererOptionsImpl5.setReceiverAfterName();
        descriptorRendererOptionsImpl5.setRenderCompanionObjectName();
        descriptorRendererOptionsImpl5.setWithoutSuperTypes();
        descriptorRendererOptionsImpl5.setStartFromName();
        descriptorRendererOptionsImpl5.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl5);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl6 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl6.setModifiers(DescriptorRendererModifier.ALL_EXCEPT_ANNOTATIONS);
        descriptorRendererOptionsImpl6.isLocked = true;
        FQ_NAMES_IN_TYPES = new DescriptorRendererImpl(descriptorRendererOptionsImpl6);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl7 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl7.setModifiers(DescriptorRendererModifier.ALL);
        descriptorRendererOptionsImpl7.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl7);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl8 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl8.setClassifierNamePolicy(classifierNamePolicy$SHORT);
        descriptorRendererOptionsImpl8.setParameterNameRenderingPolicy(ParameterNameRenderingPolicy.ONLY_NON_SYNTHESIZED);
        descriptorRendererOptionsImpl8.isLocked = true;
        SHORT_NAMES_IN_TYPES = new DescriptorRendererImpl(descriptorRendererOptionsImpl8);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl9 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl9.setDebugMode();
        descriptorRendererOptionsImpl9.setClassifierNamePolicy(ClassifierNamePolicy$SHORT.INSTANCE$1);
        descriptorRendererOptionsImpl9.setModifiers(DescriptorRendererModifier.ALL);
        descriptorRendererOptionsImpl9.isLocked = true;
        DEBUG_TEXT = new DescriptorRendererImpl(descriptorRendererOptionsImpl9);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl10 = new DescriptorRendererOptionsImpl();
        descriptorRendererOptionsImpl10.setTextFormat(RenderingFormat.HTML);
        descriptorRendererOptionsImpl10.setModifiers(DescriptorRendererModifier.ALL);
        descriptorRendererOptionsImpl10.isLocked = true;
        new DescriptorRendererImpl(descriptorRendererOptionsImpl10);
    }

    public DescriptorRendererImpl(DescriptorRendererOptionsImpl descriptorRendererOptionsImpl) {
        this.options = descriptorRendererOptionsImpl;
    }

    public static Modality implicitModalityWithoutExtensions(MemberDescriptor memberDescriptor) {
        if (memberDescriptor instanceof ModuleAwareClassDescriptor) {
            return ((ModuleAwareClassDescriptor) memberDescriptor).getKind() == ClassKind.INTERFACE ? Modality.ABSTRACT : Modality.FINAL;
        }
        DeclarationDescriptor containingDeclaration = memberDescriptor.getContainingDeclaration();
        ModuleAwareClassDescriptor moduleAwareClassDescriptor = containingDeclaration instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration : null;
        if (moduleAwareClassDescriptor == null) {
            return Modality.FINAL;
        }
        if (!(memberDescriptor instanceof CallableMemberDescriptor)) {
            return Modality.FINAL;
        }
        CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) memberDescriptor;
        Collection overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
        overriddenDescriptors.getClass();
        if (!overriddenDescriptors.isEmpty() && moduleAwareClassDescriptor.getModality() != Modality.FINAL) {
            return Modality.OPEN;
        }
        if (moduleAwareClassDescriptor.getKind() != ClassKind.INTERFACE || Intrinsics.areEqual(callableMemberDescriptor.getVisibility(), DescriptorVisibilities.PRIVATE)) {
            return Modality.FINAL;
        }
        Modality modality = callableMemberDescriptor.getModality();
        Modality modality2 = Modality.ABSTRACT;
        return modality == modality2 ? modality2 : Modality.OPEN;
    }

    public static void renderSpaceIfNeeded(StringBuilder sb) {
        int length = sb.length();
        if (length == 0 || sb.charAt(length - 1) != ' ') {
            sb.append(' ');
        }
    }

    public static boolean shouldRenderAsPrettyFunctionType(KotlinType kotlinType) {
        if (!ContextsKt.isBuiltinFunctionalType(kotlinType)) {
            return false;
        }
        List arguments = kotlinType.getArguments();
        if (arguments != null && arguments.isEmpty()) {
            return true;
        }
        Iterator it = arguments.iterator();
        while (it.hasNext()) {
            if (((TypeProjectionBase) it.next()).isStarProjection()) {
                return false;
            }
        }
        return true;
    }

    public final String escape(String str) {
        return getTextFormat().escape(str);
    }

    public final ClassifierNamePolicy$SHORT getClassifierNamePolicy() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.classifierNamePolicy$delegate;
        DescriptorRendererOptionsImpl.$$delegatedProperties[0].getClass();
        return (ClassifierNamePolicy$SHORT) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final Set getExcludedTypeAnnotationClasses() {
        return this.options.getExcludedTypeAnnotationClasses();
    }

    public final Set getModifiers() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.modifiers$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[3];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    public final boolean getStartFromName() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.startFromName$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[4];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue();
    }

    public final RenderingFormat getTextFormat() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.textFormat$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[27];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (RenderingFormat) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    public final DescriptorRenderer$ValueParametersHandler$DEFAULT getValueParametersHandler() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.valueParametersHandler$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[26];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (DescriptorRenderer$ValueParametersHandler$DEFAULT) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
    }

    public final boolean getVerbose() {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.verbose$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[8];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue();
    }

    public final String render(DeclarationDescriptor declarationDescriptor) {
        DeclarationDescriptor containingDeclaration;
        String str;
        StringBuilder sb = new StringBuilder();
        declarationDescriptor.accept(new ConnectionPool(8, this), sb);
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.withDefinedIn$delegate;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.$$delegatedProperties;
        kPropertyArr[1].getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() && !(declarationDescriptor instanceof PackageFragmentDescriptor) && !(declarationDescriptor instanceof LazyPackageViewDescriptorImpl) && (containingDeclaration = declarationDescriptor.getContainingDeclaration()) != null && !(containingDeclaration instanceof ModuleDescriptor)) {
            sb.append(" ");
            int i = WhenMappings.$EnumSwitchMapping$0[getTextFormat().ordinal()];
            if (i == 1) {
                str = "defined in";
            } else {
                if (i != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return null;
                }
                str = "<i>defined in</i>";
            }
            sb.append(str);
            sb.append(" ");
            FqNameUnsafe fqName = DescriptorUtils.getFqName(containingDeclaration);
            fqName.getClass();
            sb.append(fqName.fqName.isEmpty() ? "root package" : escape(ExceptionsKt.renderFqName(fqName.pathSegments())));
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.withSourceFileForTopLevel$delegate;
            kPropertyArr[2].getClass();
            if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue() && (containingDeclaration instanceof PackageFragmentDescriptor) && (declarationDescriptor instanceof DeclarationDescriptorNonRoot)) {
                ((DeclarationDescriptorNonRoot) declarationDescriptor).getSource().getClass();
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String renderAnnotation(AnnotationDescriptor annotationDescriptor, AnnotationUseSiteTarget annotationUseSiteTarget) {
        ClassConstructorDescriptorImpl unsubstitutedPrimaryConstructor;
        List valueParameters;
        annotationDescriptor.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append('@');
        if (annotationUseSiteTarget != null) {
            sb.append(annotationUseSiteTarget.getRenderName() + ':');
        }
        KotlinType type = annotationDescriptor.getType();
        sb.append(renderType(type));
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
        if (descriptorRendererOptionsImpl.getAnnotationArgumentsRenderingPolicy().getIncludeAnnotationArguments()) {
            Map allValueArguments = annotationDescriptor.getAllValueArguments();
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.renderDefaultAnnotationArguments$delegate;
            KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[32];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            EmptyList emptyList = null;
            ModuleAwareClassDescriptor annotationClass = ((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() ? DescriptorUtilsKt.getAnnotationClass(annotationDescriptor) : null;
            if (annotationClass != null && (unsubstitutedPrimaryConstructor = annotationClass.getUnsubstitutedPrimaryConstructor()) != null && (valueParameters = unsubstitutedPrimaryConstructor.getValueParameters()) != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : valueParameters) {
                    if (((ValueParameterDescriptorImpl) obj).declaresDefaultValue()) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((ValueParameterDescriptorImpl) it.next()).getName());
                }
                emptyList = arrayList2;
            }
            if (emptyList == null) {
                emptyList = EmptyList.INSTANCE;
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : emptyList) {
                Name name = (Name) obj2;
                name.getClass();
                if (!allValueArguments.containsKey(name)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                arrayList4.add(((Name) it2.next()).asString() + " = ...");
            }
            Set<Map.Entry> entrySet = allValueArguments.entrySet();
            ArrayList arrayList5 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entrySet, 10));
            for (Map.Entry entry : entrySet) {
                Name name2 = (Name) entry.getKey();
                ConstantValue constantValue = (ConstantValue) entry.getValue();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(name2.asString());
                sb2.append(" = ");
                sb2.append(!emptyList.contains(name2) ? renderConstant(constantValue) : "...");
                arrayList5.add(sb2.toString());
            }
            List sorted = CollectionsKt.sorted(CollectionsKt.plus((Collection) arrayList4, (Iterable) arrayList5));
            if (descriptorRendererOptionsImpl.getAnnotationArgumentsRenderingPolicy().getIncludeEmptyAnnotationArguments() || !sorted.isEmpty()) {
                CollectionsKt.joinTo$default(sorted, sb, ", ", "(", ")", null, 112);
            }
        }
        if (getVerbose() && (KotlinTypeKt.isError(type) || (type.getConstructor().getDeclarationDescriptor() instanceof NotFoundClasses$MockClassDescriptor))) {
            sb.append(" /* annotation class not found */");
        }
        return sb.toString();
    }

    public final void renderAnnotations(StringBuilder sb, Annotated annotated, AnnotationUseSiteTarget annotationUseSiteTarget) {
        Set set;
        if (getModifiers().contains(DescriptorRendererModifier.ANNOTATIONS)) {
            boolean z = annotated instanceof KotlinType;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
            if (z) {
                set = descriptorRendererOptionsImpl.getExcludedTypeAnnotationClasses();
            } else {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.excludedAnnotationClasses$delegate;
                KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[34];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                set = (Set) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value;
            }
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.annotationFilter$delegate;
            KProperty kProperty2 = DescriptorRendererOptionsImpl.$$delegatedProperties[36];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
            kProperty2.getClass();
            Function1 function1 = (Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value;
            for (AnnotationDescriptor annotationDescriptor : annotated.getAnnotations()) {
                if (!CollectionsKt.contains(set, annotationDescriptor.getFqName()) && !Intrinsics.areEqual(annotationDescriptor.getFqName(), StandardNames.FqNames.parameterName) && (function1 == null || ((Boolean) function1.invoke(annotationDescriptor)).booleanValue())) {
                    sb.append(renderAnnotation(annotationDescriptor, annotationUseSiteTarget));
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$13 = descriptorRendererOptionsImpl.eachAnnotationOnNewLine$delegate;
                    KProperty kProperty3 = DescriptorRendererOptionsImpl.$$delegatedProperties[33];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$13.getClass();
                    kProperty3.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$13.value).booleanValue()) {
                        sb.append('\n');
                    } else {
                        sb.append(" ");
                    }
                }
            }
        }
    }

    public final void renderCapturedTypeParametersIfRequired(ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters, StringBuilder sb) {
        List declaredTypeParameters = classifierDescriptorWithTypeParameters.getDeclaredTypeParameters();
        declaredTypeParameters.getClass();
        List parameters = classifierDescriptorWithTypeParameters.getTypeConstructor().getParameters();
        parameters.getClass();
        if (getVerbose() && classifierDescriptorWithTypeParameters.isInner() && parameters.size() > declaredTypeParameters.size()) {
            sb.append(" /*captured type parameters: ");
            renderTypeParameterList(sb, parameters.subList(declaredTypeParameters.size(), parameters.size()));
            sb.append("*/");
        }
    }

    public final String renderConstant(ConstantValue constantValue) {
        int i = 0;
        if (constantValue instanceof ArrayValue) {
            return CollectionsKt.joinToString$default((Iterable) ((ArrayValue) constantValue).value, ", ", "{", "}", new DescriptorRendererImpl$renderConstant$1(this, i), 24);
        }
        if (constantValue instanceof AnnotationValue) {
            return StringsKt.removePrefix("@", renderAnnotation((AnnotationDescriptor) ((AnnotationValue) constantValue).value, null));
        }
        if (!(constantValue instanceof KClassValue)) {
            return constantValue.toString();
        }
        KClassValue.Value value = (KClassValue.Value) ((KClassValue) constantValue).value;
        if (value instanceof KClassValue.Value.LocalClass) {
            return ((KClassValue.Value.LocalClass) value).type + "::class";
        }
        if (!(value instanceof KClassValue.Value.NormalClass)) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        ClassLiteralValue classLiteralValue = ((KClassValue.Value.NormalClass) value).value;
        String asString = classLiteralValue.classId.asSingleFqName().asString();
        int i2 = classLiteralValue.arrayNestedness;
        while (i < i2) {
            asString = Animation.CC.m('>', "kotlin.Array<", asString);
            i++;
        }
        return asString.concat("::class");
    }

    public final void renderContextReceivers(StringBuilder sb, List list) {
        if (list.isEmpty()) {
            return;
        }
        sb.append("context(");
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            int i2 = i + 1;
            ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl = (ReceiverParameterDescriptorImpl) it.next();
            renderAnnotations(sb, receiverParameterDescriptorImpl, AnnotationUseSiteTarget.RECEIVER);
            KotlinType type = receiverParameterDescriptorImpl.getType();
            type.getClass();
            sb.append(renderForReceiver(type));
            if (i == list.size() - 1) {
                sb.append(") ");
            } else {
                sb.append(", ");
            }
            i = i2;
        }
    }

    public final void renderDefaultType(StringBuilder sb, SimpleType simpleType) {
        renderAnnotations(sb, simpleType, null);
        if (KotlinTypeKt.isError(simpleType)) {
            boolean z = simpleType instanceof ErrorType;
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
            if (z && ((ErrorType) simpleType).kind.isUnresolved()) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.presentableUnresolvedTypes$delegate;
                KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[45];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
                    ErrorUtils errorUtils = ErrorUtils.INSTANCE;
                    if (z) {
                        ((ErrorType) simpleType).kind.isUnresolved();
                    }
                    TypeConstructor constructor = simpleType.getConstructor();
                    constructor.getClass();
                    sb.append(renderError(((ErrorTypeConstructor) constructor).formatParams[0]));
                }
            }
            if (z) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.informativeErrorType$delegate;
                KProperty kProperty2 = DescriptorRendererOptionsImpl.$$delegatedProperties[47];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
                kProperty2.getClass();
                if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue()) {
                    sb.append(((ErrorType) simpleType).debugMessage);
                    sb.append(renderTypeArguments(simpleType.getArguments()));
                }
            }
            sb.append(simpleType.getConstructor().toString());
            sb.append(renderTypeArguments(simpleType.getArguments()));
        } else {
            TypeConstructor constructor2 = simpleType.getConstructor();
            ClassifierDescriptor declarationDescriptor = simpleType.getConstructor().getDeclarationDescriptor();
            MultipartBody.Builder buildPossiblyInnerType = DescriptorUtilKt.buildPossiblyInnerType(simpleType, declarationDescriptor instanceof ClassifierDescriptorWithTypeParameters ? (ClassifierDescriptorWithTypeParameters) declarationDescriptor : null, 0);
            if (buildPossiblyInnerType == null) {
                sb.append(renderTypeConstructor(constructor2));
                sb.append(renderTypeArguments(simpleType.getArguments()));
            } else {
                renderPossiblyInnerType(sb, buildPossiblyInnerType);
            }
        }
        if (simpleType.isMarkedNullable()) {
            sb.append("?");
        }
        if (simpleType instanceof DefinitelyNotNullType) {
            sb.append(" & Any");
        }
    }

    public final String renderError(String str) {
        int i = WhenMappings.$EnumSwitchMapping$0[getTextFormat().ordinal()];
        if (i == 1) {
            return str;
        }
        if (i == 2) {
            return Animation.CC.m("<font color=red><b>", str, "</b></font>");
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return null;
    }

    public final String renderFlexibleType(String str, String str2, KotlinBuiltIns kotlinBuiltIns) {
        str.getClass();
        str2.getClass();
        if (ExceptionsKt.typeStringsDifferOnlyInNullability(str, str2)) {
            return StringsKt__StringsJVMKt.startsWith(str2, "(", false) ? Animation.CC.m("(", str, ")!") : str.concat("!");
        }
        ClassifierNamePolicy$SHORT classifierNamePolicy = getClassifierNamePolicy();
        ModuleAwareClassDescriptor builtInClassByFqName = kotlinBuiltIns.getBuiltInClassByFqName(StandardNames.FqNames.collection);
        if (builtInClassByFqName == null) {
            KotlinBuiltIns.$$$reportNull$$$0(34);
            throw null;
        }
        String substringBefore$default = StringsKt.substringBefore$default(classifierNamePolicy.renderClassifier(builtInClassByFqName, this), "Collection");
        String replacePrefixesInTypeRepresentations = ExceptionsKt.replacePrefixesInTypeRepresentations(str, substringBefore$default.concat("Mutable"), str2, substringBefore$default, substringBefore$default.concat("(Mutable)"));
        if (replacePrefixesInTypeRepresentations != null) {
            return replacePrefixesInTypeRepresentations;
        }
        String replacePrefixesInTypeRepresentations2 = ExceptionsKt.replacePrefixesInTypeRepresentations(str, substringBefore$default.concat("MutableMap.MutableEntry"), str2, substringBefore$default.concat("Map.Entry"), substringBefore$default.concat("(Mutable)Map.(Mutable)Entry"));
        if (replacePrefixesInTypeRepresentations2 != null) {
            return replacePrefixesInTypeRepresentations2;
        }
        String substringBefore$default2 = StringsKt.substringBefore$default(getClassifierNamePolicy().renderClassifier(kotlinBuiltIns.getBuiltInClassByName("Array"), this), "Array");
        String replacePrefixesInTypeRepresentations3 = ExceptionsKt.replacePrefixesInTypeRepresentations(str, substringBefore$default2.concat(escape("Array<")), str2, substringBefore$default2.concat(escape("Array<out ")), substringBefore$default2.concat(escape("Array<(out) ")));
        if (replacePrefixesInTypeRepresentations3 != null) {
            return replacePrefixesInTypeRepresentations3;
        }
        return "(" + str + ".." + str2 + ')';
    }

    public final String renderForReceiver(KotlinType kotlinType) {
        String renderType = renderType(kotlinType);
        return ((!shouldRenderAsPrettyFunctionType(kotlinType) || TypeUtils.isNullableType(kotlinType)) && !(kotlinType instanceof DefinitelyNotNullType)) ? renderType : Animation.CC.m(')', "(", renderType);
    }

    public final void renderInitializer(VariableDescriptor variableDescriptor, StringBuilder sb) {
        ConstantValue compileTimeInitializer;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.includePropertyConstant$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[19];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() || (compileTimeInitializer = variableDescriptor.getCompileTimeInitializer()) == null) {
            return;
        }
        sb.append(" = ");
        sb.append(escape(renderConstant(compileTimeInitializer)));
    }

    public final String renderKeyword(String str) {
        int i = WhenMappings.$EnumSwitchMapping$0[getTextFormat().ordinal()];
        if (i != 1) {
            if (i != 2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.boldOnlyForNamesInHtml$delegate;
            KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[46];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
                return Animation.CC.m("<b>", str, "</b>");
            }
        }
        return str;
    }

    public final void renderMemberKind(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (getModifiers().contains(DescriptorRendererModifier.MEMBER_KIND) && getVerbose() && callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.DECLARATION) {
            sb.append("/*");
            sb.append(ResultKt.toLowerCaseAsciiOnly(callableMemberDescriptor.getKind().name()));
            sb.append("*/ ");
        }
    }

    public final void renderMemberModifiers(MemberDescriptor memberDescriptor, StringBuilder sb) {
        renderModifier("external", sb, memberDescriptor.isExternal());
        boolean z = false;
        renderModifier("expect", sb, getModifiers().contains(DescriptorRendererModifier.EXPECT) && memberDescriptor.isExpect());
        if (getModifiers().contains(DescriptorRendererModifier.ACTUAL) && memberDescriptor.isActual()) {
            z = true;
        }
        renderModifier("actual", sb, z);
    }

    public final void renderModality(Modality modality, StringBuilder sb, Modality modality2) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.renderDefaultModality$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[14];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() || modality != modality2) {
            renderModifier(ResultKt.toLowerCaseAsciiOnly(modality.name()), sb, getModifiers().contains(DescriptorRendererModifier.MODALITY));
        }
    }

    public final void renderModalityForCallable(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (DescriptorUtils.isTopLevelDeclaration(callableMemberDescriptor) && callableMemberDescriptor.getModality() == Modality.FINAL) {
            return;
        }
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.overrideRenderingPolicy$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[25];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((OverrideRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value) == OverrideRenderingPolicy.RENDER_OVERRIDE && callableMemberDescriptor.getModality() == Modality.OPEN && !callableMemberDescriptor.getOverriddenDescriptors().isEmpty()) {
            return;
        }
        Modality modality = callableMemberDescriptor.getModality();
        modality.getClass();
        renderModality(modality, sb, implicitModalityWithoutExtensions(callableMemberDescriptor));
    }

    public final void renderModifier(String str, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(renderKeyword(str));
            sb.append(" ");
        }
    }

    public final String renderName(Name name, boolean z) {
        String escape = escape(ExceptionsKt.render(name));
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.boldOnlyForNamesInHtml$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[46];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        return (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() && getTextFormat() == RenderingFormat.HTML && z) ? Animation.CC.m("<b>", escape, "</b>") : escape;
    }

    public final void renderNormalizedType(StringBuilder sb, KotlinType kotlinType) {
        UnwrappedType unwrap = kotlinType.unwrap();
        AbbreviatedType abbreviatedType = unwrap instanceof AbbreviatedType ? (AbbreviatedType) unwrap : null;
        if (abbreviatedType == null) {
            renderNormalizedTypeAsIs(sb, kotlinType);
            return;
        }
        SimpleType simpleType = abbreviatedType.delegate;
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.renderTypeExpansions$delegate;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.$$delegatedProperties;
        KProperty kProperty = kPropertyArr[41];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
            renderNormalizedTypeAsIs(sb, simpleType);
            return;
        }
        renderNormalizedTypeAsIs(sb, abbreviatedType.abbreviation);
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.renderUnabbreviatedType$delegate;
        KProperty kProperty2 = kPropertyArr[40];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
        kProperty2.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue()) {
            RenderingFormat textFormat = getTextFormat();
            RenderingFormat renderingFormat = RenderingFormat.HTML;
            if (textFormat == renderingFormat) {
                sb.append("<font color=\"808080\"><i>");
            }
            sb.append(" /* = ");
            renderNormalizedTypeAsIs(sb, simpleType);
            sb.append(" */");
            if (getTextFormat() == renderingFormat) {
                sb.append("</i></font>");
            }
        }
    }

    public final void renderNormalizedTypeAsIs(StringBuilder sb, KotlinType kotlinType) {
        Name name;
        String escape;
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
        if ((kotlinType instanceof LazyWrappedType) && descriptorRendererOptionsImpl.getDebugMode()) {
            LockBasedStorageManager.LockBasedNotNullLazyValue lockBasedNotNullLazyValue = ((LazyWrappedType) kotlinType).lazyValue;
            if (lockBasedNotNullLazyValue.value == LockBasedStorageManager.NotValue.NOT_COMPUTED || lockBasedNotNullLazyValue.value == LockBasedStorageManager.NotValue.COMPUTING) {
                sb.append("<Not computed yet>");
                return;
            }
        }
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof FlexibleType) {
            sb.append(((FlexibleType) unwrap).render(this, this));
            return;
        }
        if (unwrap instanceof SimpleType) {
            SimpleType simpleType = (SimpleType) unwrap;
            if (simpleType.equals(TypeUtils.CANNOT_INFER_FUNCTION_PARAM_TYPE) || simpleType.getConstructor() == TypeUtils.DONT_CARE.constructor) {
                sb.append("???");
                return;
            }
            TypeConstructor constructor = simpleType.getConstructor();
            if ((constructor instanceof ErrorTypeConstructor) && ((ErrorTypeConstructor) constructor).kind == ErrorTypeKind.UNINFERRED_TYPE_VARIABLE) {
                DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.uninferredTypeParameterAsName$delegate;
                KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[18];
                descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
                kProperty.getClass();
                if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
                    sb.append("???");
                    return;
                }
                TypeConstructor constructor2 = simpleType.getConstructor();
                constructor2.getClass();
                sb.append(renderError(((ErrorTypeConstructor) constructor2).formatParams[0]));
                return;
            }
            if (KotlinTypeKt.isError(simpleType)) {
                renderDefaultType(sb, simpleType);
                return;
            }
            if (!shouldRenderAsPrettyFunctionType(simpleType)) {
                renderDefaultType(sb, simpleType);
                return;
            }
            int length = sb.length();
            ((DescriptorRendererImpl) this.functionTypeAnnotationsRenderer$delegate.getValue()).renderAnnotations(sb, simpleType, null);
            int i = 1;
            boolean z = sb.length() != length;
            KotlinType receiverTypeFromFunctionType = ContextsKt.getReceiverTypeFromFunctionType(simpleType);
            List contextReceiverTypesFromFunctionType = ContextsKt.getContextReceiverTypesFromFunctionType(simpleType);
            if (!contextReceiverTypesFromFunctionType.isEmpty()) {
                sb.append("context(");
                Iterator it = contextReceiverTypesFromFunctionType.subList(0, contextReceiverTypesFromFunctionType.size() - 1).iterator();
                while (it.hasNext()) {
                    renderNormalizedType(sb, (KotlinType) it.next());
                    sb.append(", ");
                }
                renderNormalizedType(sb, (KotlinType) CollectionsKt.last(contextReceiverTypesFromFunctionType));
                sb.append(") ");
            }
            boolean isSuspendFunctionType = ContextsKt.isSuspendFunctionType(simpleType);
            boolean isMarkedNullable = simpleType.isMarkedNullable();
            boolean z2 = isMarkedNullable || (z && receiverTypeFromFunctionType != null);
            if (z2) {
                if (isSuspendFunctionType) {
                    sb.insert(length, '(');
                } else {
                    if (z) {
                        UtilsKt.isWhitespace(StringsKt.last(sb));
                        if (sb.charAt(sb.length() - 2) != ')') {
                            sb.insert(sb.length() - 1, "()");
                        }
                    }
                    sb.append("(");
                }
            }
            renderModifier("suspend", sb, isSuspendFunctionType);
            if (receiverTypeFromFunctionType != null) {
                boolean z3 = (shouldRenderAsPrettyFunctionType(receiverTypeFromFunctionType) && !receiverTypeFromFunctionType.isMarkedNullable()) || ContextsKt.isSuspendFunctionType(receiverTypeFromFunctionType) || !receiverTypeFromFunctionType.getAnnotations().isEmpty() || (receiverTypeFromFunctionType instanceof DefinitelyNotNullType);
                if (z3) {
                    sb.append("(");
                }
                renderNormalizedType(sb, receiverTypeFromFunctionType);
                if (z3) {
                    sb.append(")");
                }
                sb.append(".");
            }
            sb.append("(");
            if (!ContextsKt.isBuiltinFunctionalType(simpleType) || simpleType.getAnnotations().findAnnotation(StandardNames.FqNames.extensionFunctionType) == null || simpleType.getArguments().size() > 1) {
                int i2 = 0;
                for (TypeProjectionBase typeProjectionBase : ContextsKt.getValueParameterTypesFromFunctionType(simpleType)) {
                    int i3 = i2 + 1;
                    if (i2 > 0) {
                        sb.append(", ");
                    }
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.parameterNamesInFunctionalTypes$delegate;
                    KProperty kProperty2 = DescriptorRendererOptionsImpl.$$delegatedProperties[43];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
                    kProperty2.getClass();
                    if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue()) {
                        KotlinType type = typeProjectionBase.getType();
                        type.getClass();
                        name = ContextsKt.extractParameterNameFromFunctionTypeArgument(type);
                    } else {
                        name = null;
                    }
                    if (name != null) {
                        sb.append(renderName(name, false));
                        sb.append(": ");
                    }
                    typeProjectionBase.getClass();
                    StringBuilder sb2 = new StringBuilder();
                    CollectionsKt.joinTo$default(Room.listOf(typeProjectionBase), sb2, ", ", null, null, new DescriptorRendererImpl$renderConstant$1(this, i), 60);
                    sb.append(sb2.toString());
                    i2 = i3;
                }
            } else {
                sb.append("???");
            }
            sb.append(") ");
            int i4 = WhenMappings.$EnumSwitchMapping$0[getTextFormat().ordinal()];
            if (i4 == 1) {
                escape = escape("->");
            } else {
                if (i4 != 2) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                escape = "&rarr;";
            }
            sb.append(escape);
            sb.append(" ");
            ContextsKt.isBuiltinFunctionalType(simpleType);
            KotlinType type2 = ((TypeProjectionBase) CollectionsKt.last(simpleType.getArguments())).getType();
            type2.getClass();
            renderNormalizedType(sb, type2);
            if (z2) {
                sb.append(")");
            }
            if (isMarkedNullable) {
                sb.append("?");
            }
        }
    }

    public final void renderOverride(CallableMemberDescriptor callableMemberDescriptor, StringBuilder sb) {
        if (getModifiers().contains(DescriptorRendererModifier.OVERRIDE) && !callableMemberDescriptor.getOverriddenDescriptors().isEmpty()) {
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.overrideRenderingPolicy$delegate;
            KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[25];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (((OverrideRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value) != OverrideRenderingPolicy.RENDER_OPEN) {
                renderModifier("override", sb, true);
                if (getVerbose()) {
                    sb.append("/*");
                    sb.append(callableMemberDescriptor.getOverriddenDescriptors().size());
                    sb.append("*/ ");
                }
            }
        }
    }

    public final void renderPackageHeader(FqName fqName, String str, StringBuilder sb) {
        sb.append(renderKeyword(str));
        FqNameUnsafe unsafe = fqName.toUnsafe();
        unsafe.getClass();
        String escape = escape(ExceptionsKt.renderFqName(unsafe.pathSegments()));
        if (escape.length() > 0) {
            sb.append(" ");
            sb.append(escape);
        }
    }

    public final void renderPossiblyInnerType(StringBuilder sb, MultipartBody.Builder builder) {
        MultipartBody.Builder builder2 = (MultipartBody.Builder) builder.parts;
        ClassifierDescriptorWithTypeParameters classifierDescriptorWithTypeParameters = (ClassifierDescriptorWithTypeParameters) builder.boundary;
        if (builder2 != null) {
            renderPossiblyInnerType(sb, builder2);
            sb.append('.');
            Name name = classifierDescriptorWithTypeParameters.getName();
            name.getClass();
            sb.append(renderName(name, false));
        } else {
            TypeConstructor typeConstructor = classifierDescriptorWithTypeParameters.getTypeConstructor();
            typeConstructor.getClass();
            sb.append(renderTypeConstructor(typeConstructor));
        }
        sb.append(renderTypeArguments((List) builder.type));
    }

    public final void renderProperty(PropertyDescriptor propertyDescriptor, StringBuilder sb) {
        if (!getStartFromName()) {
            DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
            DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.startFromDeclarationKeyword$delegate;
            KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.$$delegatedProperties;
            KProperty kProperty = kPropertyArr[5];
            descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
            kProperty.getClass();
            if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
                if (getModifiers().contains(DescriptorRendererModifier.ANNOTATIONS)) {
                    renderAnnotations(sb, propertyDescriptor, null);
                    FieldDescriptorImpl backingField = propertyDescriptor.getBackingField();
                    if (backingField != null) {
                        renderAnnotations(sb, backingField, AnnotationUseSiteTarget.FIELD);
                    }
                    FieldDescriptorImpl delegateField = propertyDescriptor.getDelegateField();
                    if (delegateField != null) {
                        renderAnnotations(sb, delegateField, AnnotationUseSiteTarget.PROPERTY_DELEGATE_FIELD);
                    }
                    DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.propertyAccessorRenderingPolicy$delegate;
                    KProperty kProperty2 = kPropertyArr[31];
                    descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
                    kProperty2.getClass();
                    if (((PropertyAccessorRenderingPolicy) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value) == PropertyAccessorRenderingPolicy.NONE) {
                        PropertyGetterDescriptorImpl getter = propertyDescriptor.getGetter();
                        if (getter != null) {
                            renderAnnotations(sb, getter, AnnotationUseSiteTarget.PROPERTY_GETTER);
                        }
                        PropertySetterDescriptorImpl setter = propertyDescriptor.getSetter();
                        if (setter != null) {
                            renderAnnotations(sb, setter, AnnotationUseSiteTarget.PROPERTY_SETTER);
                            List valueParameters = setter.getValueParameters();
                            valueParameters.getClass();
                            ValueParameterDescriptorImpl valueParameterDescriptorImpl = (ValueParameterDescriptorImpl) CollectionsKt.single(valueParameters);
                            valueParameterDescriptorImpl.getClass();
                            renderAnnotations(sb, valueParameterDescriptorImpl, AnnotationUseSiteTarget.SETTER_PARAMETER);
                        }
                    }
                }
                List contextReceiverParameters = propertyDescriptor.getContextReceiverParameters();
                contextReceiverParameters.getClass();
                renderContextReceivers(sb, contextReceiverParameters);
                DescriptorVisibilities.AnonymousClass1 visibility = propertyDescriptor.getVisibility();
                visibility.getClass();
                renderVisibility(visibility, sb);
                renderModifier("const", sb, getModifiers().contains(DescriptorRendererModifier.CONST) && propertyDescriptor.isConst());
                renderMemberModifiers(propertyDescriptor, sb);
                renderModalityForCallable(propertyDescriptor, sb);
                renderOverride(propertyDescriptor, sb);
                renderModifier("lateinit", sb, getModifiers().contains(DescriptorRendererModifier.LATEINIT) && propertyDescriptor.isLateInit());
                renderMemberKind(propertyDescriptor, sb);
            }
            renderValVarPrefix(propertyDescriptor, sb, false);
            List typeParameters = propertyDescriptor.getTypeParameters();
            typeParameters.getClass();
            renderTypeParameters(sb, typeParameters, true);
            ReceiverParameterDescriptorImpl extensionReceiverParameter = propertyDescriptor.getExtensionReceiverParameter();
            if (extensionReceiverParameter != null) {
                renderAnnotations(sb, extensionReceiverParameter, AnnotationUseSiteTarget.RECEIVER);
                KotlinType type = extensionReceiverParameter.getType();
                type.getClass();
                sb.append(renderForReceiver(type));
                sb.append(".");
            }
        }
        renderName(propertyDescriptor, sb, true);
        sb.append(": ");
        KotlinType type2 = propertyDescriptor.getType();
        type2.getClass();
        sb.append(renderType(type2));
        renderReceiverAfterName(sb, propertyDescriptor);
        renderInitializer(propertyDescriptor, sb);
        List typeParameters2 = propertyDescriptor.getTypeParameters();
        typeParameters2.getClass();
        renderWhereSuffix(sb, typeParameters2);
    }

    public final void renderReceiverAfterName(StringBuilder sb, CallableDescriptor callableDescriptor) {
        ReceiverParameterDescriptorImpl extensionReceiverParameter;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.receiverAfterName$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[29];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() && (extensionReceiverParameter = callableDescriptor.getExtensionReceiverParameter()) != null) {
            sb.append(" on ");
            KotlinType type = extensionReceiverParameter.getType();
            type.getClass();
            sb.append(renderType(type));
        }
    }

    public final String renderType(KotlinType kotlinType) {
        kotlinType.getClass();
        StringBuilder sb = new StringBuilder();
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.typeNormalizer$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[22];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        renderNormalizedType(sb, (KotlinType) ((Function1) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).invoke(kotlinType));
        return sb.toString();
    }

    public final String renderTypeArguments(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(escape("<"));
        CollectionsKt.joinTo$default(list, sb, ", ", null, null, new DescriptorRendererImpl$renderConstant$1(this, 1), 60);
        sb.append(escape(">"));
        return sb.toString();
    }

    public final String renderTypeConstructor(TypeConstructor typeConstructor) {
        typeConstructor.getClass();
        ClassifierDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor();
        if (declarationDescriptor instanceof TypeParameterDescriptor ? true : declarationDescriptor instanceof ModuleAwareClassDescriptor ? true : declarationDescriptor instanceof DeserializedTypeAliasDescriptor) {
            declarationDescriptor.getClass();
            return ErrorUtils.isError(declarationDescriptor) ? declarationDescriptor.getTypeConstructor().toString() : getClassifierNamePolicy().renderClassifier(declarationDescriptor, this);
        }
        if (declarationDescriptor == null) {
            return typeConstructor instanceof IntersectionTypeConstructor ? ((IntersectionTypeConstructor) typeConstructor).makeDebugNameForIntersectionType(DescriptorRendererImpl$renderConstructor$1.INSTANCE$1) : typeConstructor.toString();
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m("Unexpected classifier: ", declarationDescriptor.getClass());
        return null;
    }

    public final void renderTypeParameter(TypeParameterDescriptor typeParameterDescriptor, StringBuilder sb, boolean z) {
        if (z) {
            sb.append(escape("<"));
        }
        if (getVerbose()) {
            sb.append("/*");
            sb.append(typeParameterDescriptor.getIndex());
            sb.append("*/ ");
        }
        renderModifier("reified", sb, typeParameterDescriptor.isReified());
        String label = typeParameterDescriptor.getVariance().getLabel();
        boolean z2 = true;
        renderModifier(label, sb, label.length() > 0);
        renderAnnotations(sb, typeParameterDescriptor, null);
        renderName(typeParameterDescriptor, sb, z);
        int size = typeParameterDescriptor.getUpperBounds().size();
        if ((size > 1 && !z) || size == 1) {
            KotlinType kotlinType = (KotlinType) typeParameterDescriptor.getUpperBounds().iterator().next();
            if (kotlinType == null) {
                KotlinBuiltIns.$$$reportNull$$$0(141);
                throw null;
            }
            if (!KotlinBuiltIns.isAnyOrNullableAny(kotlinType) || !kotlinType.isMarkedNullable()) {
                sb.append(" : ");
                sb.append(renderType(kotlinType));
            }
        } else if (z) {
            for (KotlinType kotlinType2 : typeParameterDescriptor.getUpperBounds()) {
                if (kotlinType2 == null) {
                    KotlinBuiltIns.$$$reportNull$$$0(141);
                    throw null;
                }
                if (!KotlinBuiltIns.isAnyOrNullableAny(kotlinType2) || !kotlinType2.isMarkedNullable()) {
                    if (z2) {
                        sb.append(" : ");
                    } else {
                        sb.append(" & ");
                    }
                    sb.append(renderType(kotlinType2));
                    z2 = false;
                }
            }
        }
        if (z) {
            sb.append(escape(">"));
        }
    }

    public final void renderTypeParameterList(StringBuilder sb, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            renderTypeParameter((TypeParameterDescriptor) it.next(), sb, false);
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
    }

    public final void renderTypeParameters(StringBuilder sb, List list, boolean z) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.withoutTypeParameters$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[20];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue() || list.isEmpty()) {
            return;
        }
        sb.append(escape("<"));
        renderTypeParameterList(sb, list);
        sb.append(escape(">"));
        if (z) {
            sb.append(" ");
        }
    }

    public final void renderValVarPrefix(VariableDescriptor variableDescriptor, StringBuilder sb, boolean z) {
        if (z || !(variableDescriptor instanceof ValueParameterDescriptorImpl)) {
            sb.append(renderKeyword(variableDescriptor.isVar() ? "var" : "val"));
            sb.append(" ");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void renderValueParameter(kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r9, boolean r10, java.lang.StringBuilder r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.renderValueParameter(kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl, boolean, java.lang.StringBuilder, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x002c, code lost:
    
        if (r10 == false) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void renderValueParameters(java.lang.StringBuilder r8, java.util.List r9, boolean r10) {
        /*
            r7 = this;
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl r0 = r7.options
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 r0 = r0.parameterNameRenderingPolicy$delegate
            kotlin.reflect.KProperty[] r1 = kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptionsImpl.$$delegatedProperties
            r2 = 28
            r1 = r1[r2]
            r0.getClass()
            r1.getClass()
            java.lang.Object r0 = r0.value
            kotlin.reflect.jvm.internal.impl.renderer.ParameterNameRenderingPolicy r0 = (kotlin.reflect.jvm.internal.impl.renderer.ParameterNameRenderingPolicy) r0
            int[] r1 = kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.WhenMappings.$EnumSwitchMapping$1
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 0
            r2 = 1
            if (r0 == r2) goto L2e
            r3 = 2
            if (r0 == r3) goto L2c
            r10 = 3
            if (r0 != r10) goto L28
        L26:
            r10 = r1
            goto L2f
        L28:
            coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m()
            return
        L2c:
            if (r10 != 0) goto L26
        L2e:
            r10 = r2
        L2f:
            int r0 = r9.size()
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$ValueParametersHandler$DEFAULT r3 = r7.getValueParametersHandler()
            r3.getClass()
            java.lang.String r3 = "("
            r8.append(r3)
            java.util.Iterator r9 = r9.iterator()
            r3 = r1
        L44:
            boolean r4 = r9.hasNext()
            if (r4 == 0) goto L71
            int r4 = r3 + 1
            java.lang.Object r5 = r9.next()
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl r5 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl) r5
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$ValueParametersHandler$DEFAULT r6 = r7.getValueParametersHandler()
            r6.getClass()
            r5.getClass()
            r7.renderValueParameter(r5, r10, r8, r1)
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$ValueParametersHandler$DEFAULT r5 = r7.getValueParametersHandler()
            r5.getClass()
            int r5 = r0 + (-1)
            if (r3 == r5) goto L6f
            java.lang.String r3 = ", "
            r8.append(r3)
        L6f:
            r3 = r4
            goto L44
        L71:
            kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer$ValueParametersHandler$DEFAULT r7 = r7.getValueParametersHandler()
            r7.getClass()
            java.lang.String r7 = ")"
            r8.append(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl.renderValueParameters(java.lang.StringBuilder, java.util.List, boolean):void");
    }

    public final boolean renderVisibility(DescriptorVisibilities.AnonymousClass1 anonymousClass1, StringBuilder sb) {
        if (!getModifiers().contains(DescriptorRendererModifier.VISIBILITY)) {
            return false;
        }
        DescriptorRendererOptionsImpl descriptorRendererOptionsImpl = this.options;
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = descriptorRendererOptionsImpl.normalizedVisibilities$delegate;
        KProperty[] kPropertyArr = DescriptorRendererOptionsImpl.$$delegatedProperties;
        KProperty kProperty = kPropertyArr[12];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
            anonymousClass1 = DescriptorVisibilities.toDescriptorVisibility(anonymousClass1.delegate.normalize());
        }
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$12 = descriptorRendererOptionsImpl.renderDefaultVisibility$delegate;
        KProperty kProperty2 = kPropertyArr[13];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$12.getClass();
        kProperty2.getClass();
        if (!((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$12.value).booleanValue() && anonymousClass1.equals(DescriptorVisibilities.DEFAULT_VISIBILITY)) {
            return false;
        }
        sb.append(renderKeyword(anonymousClass1.delegate.getInternalDisplayName()));
        sb.append(" ");
        return true;
    }

    public final void renderWhereSuffix(StringBuilder sb, List list) {
        DescriptorRendererOptionsImpl$property$$inlined$vetoable$1 descriptorRendererOptionsImpl$property$$inlined$vetoable$1 = this.options.withoutTypeParameters$delegate;
        KProperty kProperty = DescriptorRendererOptionsImpl.$$delegatedProperties[20];
        descriptorRendererOptionsImpl$property$$inlined$vetoable$1.getClass();
        kProperty.getClass();
        if (((Boolean) descriptorRendererOptionsImpl$property$$inlined$vetoable$1.value).booleanValue()) {
            return;
        }
        ArrayList arrayList = new ArrayList(0);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) it.next();
            List upperBounds = typeParameterDescriptor.getUpperBounds();
            upperBounds.getClass();
            for (KotlinType kotlinType : CollectionsKt.drop(upperBounds)) {
                Name name = typeParameterDescriptor.getName();
                name.getClass();
                StringBuilder sb2 = new StringBuilder(renderName(name, false));
                sb2.append(" : ");
                kotlinType.getClass();
                sb2.append(renderType(kotlinType));
                arrayList.add(sb2.toString());
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        sb.append(" ");
        sb.append(renderKeyword("where"));
        sb.append(" ");
        CollectionsKt.joinTo$default(arrayList, sb, ", ", null, null, null, 124);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setClassifierNamePolicy(ClassifierNamePolicy$SHORT classifierNamePolicy$SHORT) {
        this.options.setClassifierNamePolicy(classifierNamePolicy$SHORT);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setDebugMode() {
        this.options.setDebugMode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setExcludedTypeAnnotationClasses(LinkedHashSet linkedHashSet) {
        this.options.setExcludedTypeAnnotationClasses(linkedHashSet);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setModifiers(Set set) {
        set.getClass();
        this.options.setModifiers(set);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setParameterNameRenderingPolicy(ParameterNameRenderingPolicy parameterNameRenderingPolicy) {
        parameterNameRenderingPolicy.getClass();
        this.options.setParameterNameRenderingPolicy(parameterNameRenderingPolicy);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setReceiverAfterName() {
        this.options.setReceiverAfterName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setRenderCompanionObjectName() {
        this.options.setRenderCompanionObjectName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setStartFromName() {
        this.options.setStartFromName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setTextFormat(RenderingFormat renderingFormat) {
        renderingFormat.getClass();
        this.options.setTextFormat(renderingFormat);
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithDefinedIn() {
        this.options.setWithDefinedIn();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithoutSuperTypes() {
        this.options.setWithoutSuperTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererOptions
    public final void setWithoutTypeParameters() {
        this.options.setWithoutTypeParameters();
    }

    public final void renderName(DeclarationDescriptor declarationDescriptor, StringBuilder sb, boolean z) {
        Name name = declarationDescriptor.getName();
        name.getClass();
        sb.append(renderName(name, z));
    }
}
