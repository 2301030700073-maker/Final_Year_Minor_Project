package kotlin.reflect.jvm.internal.impl.types.checker;

import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.Collection;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.InlineClassRepresentation;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SimpleTypeWithEnhancement;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.CapturedTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentListMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final Symbol REFINER_CAPABILITY = new Symbol(8, "KotlinTypeRefiner");

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
            case 4:
                objArr[0] = "b";
                break;
            case 2:
            case 7:
                objArr[0] = "typeCheckingProcedure";
                break;
            case 3:
            default:
                objArr[0] = "a";
                break;
            case 5:
            case 10:
                objArr[0] = "subtype";
                break;
            case 6:
            case 11:
                objArr[0] = "supertype";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 9:
                objArr[0] = "typeProjection";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckerProcedureCallbacksImpl";
        switch (i) {
            case 3:
            case 4:
                objArr[2] = "assertEqualTypeConstructors";
                break;
            case 5:
            case 6:
            case 7:
                objArr[2] = "assertSubtype";
                break;
            case 8:
            case 9:
                objArr[2] = "capture";
                break;
            case 10:
            case 11:
                objArr[2] = "noCorrespondingSupertype";
                break;
            default:
                objArr[2] = "assertEqualTypes";
                break;
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static boolean areEqualTypeConstructors(TypeConstructorMarker typeConstructorMarker, TypeConstructorMarker typeConstructorMarker2) {
        typeConstructorMarker.getClass();
        typeConstructorMarker2.getClass();
        if (!(typeConstructorMarker instanceof TypeConstructor)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(typeConstructorMarker);
            sb.append(", ");
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
            return false;
        }
        if (typeConstructorMarker2 instanceof TypeConstructor) {
            return typeConstructorMarker.equals(typeConstructorMarker2);
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(typeConstructorMarker2);
        sb2.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker2.getClass(), sb2));
        return false;
    }

    public static int argumentsCount(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            return ((KotlinType) kotlinTypeMarker).getArguments().size();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return 0;
    }

    public static TypeArgumentListMarker asArgumentList(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return (TypeArgumentListMarker) simpleTypeMarker;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static CapturedTypeMarker asCapturedType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            if (simpleTypeMarker instanceof SimpleTypeWithEnhancement) {
                return classicTypeSystemContext.asCapturedType(((SimpleTypeWithEnhancement) simpleTypeMarker).delegate);
            }
            if (simpleTypeMarker instanceof NewCapturedType) {
                return (NewCapturedType) simpleTypeMarker;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static DefinitelyNotNullType asDefinitelyNotNullType(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            if (simpleTypeMarker instanceof DefinitelyNotNullType) {
                return (DefinitelyNotNullType) simpleTypeMarker;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static FlexibleType asFlexibleType(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            UnwrappedType unwrap = ((KotlinType) kotlinTypeMarker).unwrap();
            if (unwrap instanceof FlexibleType) {
                return (FlexibleType) unwrap;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return null;
    }

    public static SimpleType asSimpleType(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            UnwrappedType unwrap = ((KotlinType) kotlinTypeMarker).unwrap();
            if (unwrap instanceof SimpleType) {
                return (SimpleType) unwrap;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return null;
    }

    public static StarProjectionImpl asTypeArgument(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            return new StarProjectionImpl((KotlinType) kotlinTypeMarker);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x016e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kotlin.reflect.jvm.internal.impl.types.SimpleType captureFromArguments(kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker r16, kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus r17) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt.captureFromArguments(kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker, kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus):kotlin.reflect.jvm.internal.impl.types.SimpleType");
    }

    public static CaptureStatus captureStatus(CapturedTypeMarker capturedTypeMarker) {
        if (capturedTypeMarker instanceof NewCapturedType) {
            return ((NewCapturedType) capturedTypeMarker).captureStatus;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(capturedTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, capturedTypeMarker.getClass(), sb));
        return null;
    }

    public static TypeCheckerState createClassicTypeCheckerState$default(boolean z, KotlinTypePreparator$Default kotlinTypePreparator$Default, int i) {
        KotlinTypePreparator$Default kotlinTypePreparator$Default2 = KotlinTypePreparator$Default.INSTANCE$1;
        if ((i & 8) != 0) {
            kotlinTypePreparator$Default = KotlinTypePreparator$Default.INSTANCE;
        }
        return new TypeCheckerState(z, true, kotlinTypePreparator$Default2, kotlinTypePreparator$Default, KotlinTypeRefiner$Default.INSTANCE);
    }

    public static UnwrappedType createFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        simpleTypeMarker.getClass();
        simpleTypeMarker2.getClass();
        if (!(simpleTypeMarker instanceof SimpleType)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(classicTypeSystemContext);
            sb.append(", ");
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, classicTypeSystemContext.getClass(), sb));
            return null;
        }
        if (simpleTypeMarker2 instanceof SimpleType) {
            return KotlinTypeKt.flexibleType((SimpleType) simpleTypeMarker, (SimpleType) simpleTypeMarker2);
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(classicTypeSystemContext);
        sb2.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, classicTypeSystemContext.getClass(), sb2));
        return null;
    }

    public static final String debugInfo(TypeConstructor typeConstructor) {
        StringBuilder sb = new StringBuilder("type: " + typeConstructor);
        sb.append('\n');
        sb.append("hashCode: " + typeConstructor.hashCode());
        sb.append('\n');
        sb.append("javaClass: " + typeConstructor.getClass().getCanonicalName());
        sb.append('\n');
        for (DeclarationDescriptor declarationDescriptor = typeConstructor.getDeclarationDescriptor(); declarationDescriptor != null; declarationDescriptor = declarationDescriptor.getContainingDeclaration()) {
            sb.append("fqName: ".concat(DescriptorRendererImpl.FQ_NAMES_IN_TYPES.render(declarationDescriptor)));
            sb.append('\n');
            sb.append("javaClass: " + declarationDescriptor.getClass().getCanonicalName());
            sb.append('\n');
        }
        return sb.toString();
    }

    public static TypeProjectionBase getArgument(KotlinTypeMarker kotlinTypeMarker, int i) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            return (TypeProjectionBase) ((KotlinType) kotlinTypeMarker).getArguments().get(i);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return null;
    }

    public static TypeParameterDescriptor getParameter(TypeConstructorMarker typeConstructorMarker, int i) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            Object obj = ((TypeConstructor) typeConstructorMarker).getParameters().get(i);
            obj.getClass();
            return (TypeParameterDescriptor) obj;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return null;
    }

    public static UnwrappedType getType(TypeProjectionBase typeProjectionBase) {
        typeProjectionBase.getClass();
        if (typeProjectionBase instanceof TypeProjectionBase) {
            return typeProjectionBase.getType().unwrap();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeProjectionBase);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeProjectionBase.getClass(), sb));
        return null;
    }

    public static TypeParameterDescriptor getTypeParameterClassifier(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            ClassifierDescriptor declarationDescriptor = ((TypeConstructor) typeConstructorMarker).getDeclarationDescriptor();
            if (declarationDescriptor instanceof TypeParameterDescriptor) {
                return (TypeParameterDescriptor) declarationDescriptor;
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return null;
    }

    public static TypeVariance getVariance(TypeProjectionBase typeProjectionBase) {
        typeProjectionBase.getClass();
        if (typeProjectionBase instanceof TypeProjectionBase) {
            Variance projectionKind = typeProjectionBase.getProjectionKind();
            projectionKind.getClass();
            return Operation$State.convertVariance(projectionKind);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeProjectionBase);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeProjectionBase.getClass(), sb));
        return null;
    }

    public static boolean hasAnnotation(KotlinType kotlinType, FqName fqName) {
        return kotlinType.getAnnotations().hasAnnotation(fqName);
    }

    public static boolean hasRecursiveBounds(TypeParameterDescriptor typeParameterDescriptor, TypeConstructorMarker typeConstructorMarker) {
        if (typeConstructorMarker == null ? true : typeConstructorMarker instanceof TypeConstructor) {
            return OperationKt.hasTypeParameterRecursiveBounds(typeParameterDescriptor, (TypeConstructor) typeConstructorMarker, null);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeParameterDescriptor);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeParameterDescriptor.getClass(), sb));
        return false;
    }

    public static boolean identicalArguments(SimpleTypeMarker simpleTypeMarker, SimpleTypeMarker simpleTypeMarker2) {
        simpleTypeMarker.getClass();
        simpleTypeMarker2.getClass();
        if (!(simpleTypeMarker instanceof SimpleType)) {
            StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
            sb.append(simpleTypeMarker);
            sb.append(", ");
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
            return false;
        }
        if (simpleTypeMarker2 instanceof SimpleType) {
            return ((SimpleType) simpleTypeMarker).getArguments() == ((SimpleType) simpleTypeMarker2).getArguments();
        }
        StringBuilder sb2 = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb2.append(simpleTypeMarker2);
        sb2.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker2.getClass(), sb2));
        return false;
    }

    public static boolean isAnyConstructor(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return KotlinBuiltIns.isTypeConstructorForGivenClass((TypeConstructor) typeConstructorMarker, StandardNames.FqNames.any);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isClassTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return ((TypeConstructor) typeConstructorMarker).getDeclarationDescriptor() instanceof ModuleAwareClassDescriptor;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isCommonFinalClassConstructor(TypeConstructorMarker typeConstructorMarker) {
        if (typeConstructorMarker instanceof TypeConstructor) {
            ClassifierDescriptor declarationDescriptor = ((TypeConstructor) typeConstructorMarker).getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            return (moduleAwareClassDescriptor == null || moduleAwareClassDescriptor.getModality() != Modality.FINAL || moduleAwareClassDescriptor.getKind() == ClassKind.ENUM_CLASS || moduleAwareClassDescriptor.getKind() == ClassKind.ENUM_ENTRY || moduleAwareClassDescriptor.getKind() == ClassKind.ANNOTATION_CLASS) ? false : true;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isDenotable(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return ((TypeConstructor) typeConstructorMarker).isDenotable();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isError(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            return KotlinTypeKt.isError((KotlinType) kotlinTypeMarker);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return false;
    }

    public static boolean isInlineClass(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            ClassifierDescriptor declarationDescriptor = ((TypeConstructor) typeConstructorMarker).getDeclarationDescriptor();
            ModuleAwareClassDescriptor moduleAwareClassDescriptor = declarationDescriptor instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) declarationDescriptor : null;
            return (moduleAwareClassDescriptor != null ? moduleAwareClassDescriptor.getValueClassRepresentation() : null) instanceof InlineClassRepresentation;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isIntegerLiteralTypeConstructor(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return typeConstructorMarker instanceof IntegerLiteralTypeConstructor;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isIntersection(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return typeConstructorMarker instanceof IntersectionTypeConstructor;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isMarkedNullable(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return ((SimpleType) simpleTypeMarker).isMarkedNullable();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return false;
    }

    public static boolean isNothingConstructor(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return KotlinBuiltIns.isTypeConstructorForGivenClass((TypeConstructor) typeConstructorMarker, StandardNames.FqNames.nothing);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return false;
    }

    public static boolean isNullableType(KotlinTypeMarker kotlinTypeMarker) {
        kotlinTypeMarker.getClass();
        if (kotlinTypeMarker instanceof KotlinType) {
            return TypeUtils.isNullableType((KotlinType) kotlinTypeMarker);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isPrimitiveType(SimpleTypeMarker simpleTypeMarker) {
        if (simpleTypeMarker instanceof KotlinType) {
            return KotlinBuiltIns.isPrimitiveType((KotlinType) simpleTypeMarker);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return false;
    }

    public static boolean isProjectionNotNull(CapturedTypeMarker capturedTypeMarker) {
        if (capturedTypeMarker instanceof NewCapturedType) {
            return ((NewCapturedType) capturedTypeMarker).isProjectionNotNull;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(capturedTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, capturedTypeMarker.getClass(), sb));
        return false;
    }

    public static boolean isStarProjection(TypeProjectionBase typeProjectionBase) {
        typeProjectionBase.getClass();
        if (typeProjectionBase instanceof TypeProjectionBase) {
            return typeProjectionBase.isStarProjection();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeProjectionBase);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeProjectionBase.getClass(), sb));
        return false;
    }

    public static void isStubType(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
    }

    public static void isStubTypeForBuilderInference(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
    }

    public static SimpleType lowerBound(FlexibleType flexibleType) {
        if (flexibleType instanceof FlexibleType) {
            return flexibleType.lowerBound;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(flexibleType);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, flexibleType.getClass(), sb));
        return null;
    }

    public static UnwrappedType lowerType(CapturedTypeMarker capturedTypeMarker) {
        if (capturedTypeMarker instanceof NewCapturedType) {
            return ((NewCapturedType) capturedTypeMarker).lowerType;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(capturedTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, capturedTypeMarker.getClass(), sb));
        return null;
    }

    public static UnwrappedType makeDefinitelyNotNullOrNotNull(KotlinTypeMarker kotlinTypeMarker) {
        if (kotlinTypeMarker instanceof UnwrappedType) {
            return KotlinTypeKt.makeDefinitelyNotNullOrNotNull((UnwrappedType) kotlinTypeMarker, false);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(kotlinTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, kotlinTypeMarker.getClass(), sb));
        return null;
    }

    public static int parametersCount(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            return ((TypeConstructor) typeConstructorMarker).getParameters().size();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return 0;
    }

    public static Collection possibleIntegerTypes(ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        TypeConstructor typeConstructor = classicTypeSystemContext.typeConstructor(simpleTypeMarker);
        if (typeConstructor instanceof IntegerLiteralTypeConstructor) {
            return ((IntegerLiteralTypeConstructor) typeConstructor).possibleTypes;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static TypeProjectionBase projection(CapturedTypeConstructor capturedTypeConstructor) {
        capturedTypeConstructor.getClass();
        if (capturedTypeConstructor instanceof NewCapturedTypeConstructor) {
            return ((NewCapturedTypeConstructor) capturedTypeConstructor).projection;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(capturedTypeConstructor);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, capturedTypeConstructor.getClass(), sb));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2] */
    public static ClassicTypeSystemContext$substitutionSupertypePolicy$2 substitutionSupertypePolicy(final ClassicTypeSystemContext classicTypeSystemContext, SimpleTypeMarker simpleTypeMarker) {
        if (simpleTypeMarker instanceof SimpleType) {
            KotlinType kotlinType = (KotlinType) simpleTypeMarker;
            final TypeSubstitutor typeSubstitutor = new TypeSubstitutor(TypeConstructorSubstitution.Companion.create(kotlinType.getConstructor(), kotlinType.getArguments()));
            return new KotlinTypeKt() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext$substitutionSupertypePolicy$2
                @Override // kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt
                public final SimpleTypeMarker transformType(TypeCheckerState typeCheckerState, KotlinTypeMarker kotlinTypeMarker) {
                    typeCheckerState.getClass();
                    kotlinTypeMarker.getClass();
                    ClassicTypeSystemContext classicTypeSystemContext2 = ClassicTypeSystemContext.this;
                    SimpleType asSimpleType = classicTypeSystemContext2.asSimpleType(typeSubstitutor.safeSubstitute(classicTypeSystemContext2.lowerBoundIfFlexible(kotlinTypeMarker), Variance.INVARIANT));
                    asSimpleType.getClass();
                    return asSimpleType;
                }
            };
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static Collection supertypes(TypeConstructorMarker typeConstructorMarker) {
        typeConstructorMarker.getClass();
        if (typeConstructorMarker instanceof TypeConstructor) {
            Collection supertypes = ((TypeConstructor) typeConstructorMarker).getSupertypes();
            supertypes.getClass();
            return supertypes;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(typeConstructorMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, typeConstructorMarker.getClass(), sb));
        return null;
    }

    public static TypeConstructor typeConstructor(SimpleTypeMarker simpleTypeMarker) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return ((SimpleType) simpleTypeMarker).getConstructor();
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }

    public static SimpleType upperBound(FlexibleType flexibleType) {
        if (flexibleType instanceof FlexibleType) {
            return flexibleType.upperBound;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(flexibleType);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, flexibleType.getClass(), sb));
        return null;
    }

    public static KotlinTypeMarker withNullability(ClassicTypeSystemContext classicTypeSystemContext, KotlinTypeMarker kotlinTypeMarker) {
        if (kotlinTypeMarker instanceof SimpleTypeMarker) {
            return classicTypeSystemContext.withNullability((SimpleTypeMarker) kotlinTypeMarker, true);
        }
        if (kotlinTypeMarker instanceof FlexibleType) {
            FlexibleType flexibleType = (FlexibleType) kotlinTypeMarker;
            return classicTypeSystemContext.createFlexibleType(classicTypeSystemContext.withNullability(classicTypeSystemContext.lowerBound(flexibleType), true), classicTypeSystemContext.withNullability(classicTypeSystemContext.upperBound(flexibleType), true));
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("sealed");
        return null;
    }

    public static NewCapturedTypeConstructor typeConstructor(CapturedTypeMarker capturedTypeMarker) {
        if (capturedTypeMarker instanceof NewCapturedType) {
            return ((NewCapturedType) capturedTypeMarker).constructor;
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(capturedTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, capturedTypeMarker.getClass(), sb));
        return null;
    }

    public static SimpleType withNullability(SimpleTypeMarker simpleTypeMarker, boolean z) {
        simpleTypeMarker.getClass();
        if (simpleTypeMarker instanceof SimpleType) {
            return ((SimpleType) simpleTypeMarker).makeNullableAsSpecified(z);
        }
        StringBuilder sb = new StringBuilder("ClassicTypeSystemContext couldn't handle: ");
        sb.append(simpleTypeMarker);
        sb.append(", ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) ViewSizeResolver$CC.m(Reflection.factory, simpleTypeMarker.getClass(), sb));
        return null;
    }
}
