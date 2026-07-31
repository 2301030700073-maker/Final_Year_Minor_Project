package kotlin.reflect.jvm.internal.impl.types.error;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ErrorUtils {
    public static final ErrorUtils INSTANCE = new ErrorUtils();
    public static final ErrorModuleDescriptor errorModule = ErrorModuleDescriptor.INSTANCE;
    public static final ErrorClassDescriptor errorClass = new ErrorClassDescriptor(Name.special(String.format(ErrorEntity.ERROR_CLASS.getDebugText(), Arrays.copyOf(new Object[]{"unknown class"}, 1))));
    public static final ErrorType errorTypeForLoopInSupertypes = createErrorType(ErrorTypeKind.CYCLIC_SUPERTYPES, new String[0]);
    public static final ErrorType errorPropertyType = createErrorType(ErrorTypeKind.ERROR_PROPERTY_TYPE, new String[0]);
    public static final Set errorPropertyGroup = UuidKt.setOf(new ErrorPropertyDescriptor());

    public static final ErrorScope createErrorScope(ErrorScopeKind errorScopeKind, boolean z, String... strArr) {
        errorScopeKind.getClass();
        if (!z) {
            return new ErrorScope(errorScopeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        return new ThrowingScope(errorScopeKind, (String[]) Arrays.copyOf(strArr2, strArr2.length));
    }

    public static final ErrorType createErrorType(ErrorTypeKind errorTypeKind, String... strArr) {
        errorTypeKind.getClass();
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        return createErrorTypeWithArguments(errorTypeKind, EmptyList.INSTANCE, createErrorTypeConstructor(errorTypeKind, (String[]) Arrays.copyOf(strArr2, strArr2.length)), (String[]) Arrays.copyOf(strArr2, strArr2.length));
    }

    public static ErrorTypeConstructor createErrorTypeConstructor(ErrorTypeKind errorTypeKind, String... strArr) {
        errorTypeKind.getClass();
        return new ErrorTypeConstructor(errorTypeKind, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static ErrorType createErrorTypeWithArguments(ErrorTypeKind errorTypeKind, List list, TypeConstructor typeConstructor, String... strArr) {
        errorTypeKind.getClass();
        return new ErrorType(typeConstructor, createErrorScope(ErrorScopeKind.ERROR_TYPE_SCOPE, typeConstructor.toString()), errorTypeKind, list, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static final boolean isError(DeclarationDescriptor declarationDescriptor) {
        if (declarationDescriptor != null) {
            return (declarationDescriptor instanceof ErrorClassDescriptor) || (declarationDescriptor.getContainingDeclaration() instanceof ErrorClassDescriptor) || declarationDescriptor == errorModule;
        }
        return false;
    }

    public static final ErrorScope createErrorScope(ErrorScopeKind errorScopeKind, String... strArr) {
        errorScopeKind.getClass();
        return createErrorScope(errorScopeKind, false, (String[]) Arrays.copyOf(strArr, strArr.length));
    }
}
