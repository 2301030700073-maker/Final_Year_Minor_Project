package kotlin.reflect.jvm.internal.impl.load.java.components;

import coil3.util.UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaAnnotationTargetMapper$mapJavaTargetArguments$1 extends Lambda implements Function1 {
    public static final JavaAnnotationTargetMapper$mapJavaTargetArguments$1 INSTANCE = new JavaAnnotationTargetMapper$mapJavaTargetArguments$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ModuleDescriptor moduleDescriptor = (ModuleDescriptor) obj;
        moduleDescriptor.getClass();
        ValueParameterDescriptorImpl annotationParameterByName = UtilsKt.getAnnotationParameterByName(JavaAnnotationMapper.TARGET_ANNOTATION_ALLOWED_TARGETS, moduleDescriptor.getBuiltIns().getBuiltInClassByFqName(StandardNames.FqNames.target));
        KotlinType type = annotationParameterByName != null ? annotationParameterByName.getType() : null;
        return type == null ? ErrorUtils.createErrorType(ErrorTypeKind.UNMAPPED_ANNOTATION_TARGET_TYPE, new String[0]) : type;
    }
}
