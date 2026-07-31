package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UIntValue extends IntegerValueConstant {
    public final /* synthetic */ int $r8$classId = 1;

    public UIntValue(byte b) {
        super(Byte.valueOf(b));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType getType(ModuleDescriptor moduleDescriptor) {
        SimpleType defaultType;
        int i = this.$r8$classId;
        moduleDescriptor.getClass();
        switch (i) {
            case 0:
                ModuleAwareClassDescriptor findClassAcrossModuleDependencies = DescriptorUtilKt.findClassAcrossModuleDependencies(moduleDescriptor, StandardNames.FqNames.uInt);
                defaultType = findClassAcrossModuleDependencies != null ? findClassAcrossModuleDependencies.getDefaultType() : null;
                return defaultType == null ? ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_UNSIGNED_TYPE, "UInt") : defaultType;
            case 1:
                ModuleAwareClassDescriptor findClassAcrossModuleDependencies2 = DescriptorUtilKt.findClassAcrossModuleDependencies(moduleDescriptor, StandardNames.FqNames.uByte);
                defaultType = findClassAcrossModuleDependencies2 != null ? findClassAcrossModuleDependencies2.getDefaultType() : null;
                return defaultType == null ? ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_UNSIGNED_TYPE, "UByte") : defaultType;
            case 2:
                ModuleAwareClassDescriptor findClassAcrossModuleDependencies3 = DescriptorUtilKt.findClassAcrossModuleDependencies(moduleDescriptor, StandardNames.FqNames.uLong);
                defaultType = findClassAcrossModuleDependencies3 != null ? findClassAcrossModuleDependencies3.getDefaultType() : null;
                return defaultType == null ? ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_UNSIGNED_TYPE, "ULong") : defaultType;
            default:
                ModuleAwareClassDescriptor findClassAcrossModuleDependencies4 = DescriptorUtilKt.findClassAcrossModuleDependencies(moduleDescriptor, StandardNames.FqNames.uShort);
                defaultType = findClassAcrossModuleDependencies4 != null ? findClassAcrossModuleDependencies4.getDefaultType() : null;
                return defaultType == null ? ErrorUtils.createErrorType(ErrorTypeKind.NOT_FOUND_UNSIGNED_TYPE, "UShort") : defaultType;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final String toString() {
        int i = this.$r8$classId;
        Object obj = this.value;
        switch (i) {
            case 0:
                return ((Number) obj).intValue() + ".toUInt()";
            case 1:
                return ((Number) obj).intValue() + ".toUByte()";
            case 2:
                return ((Number) obj).longValue() + ".toULong()";
            default:
                return ((Number) obj).intValue() + ".toUShort()";
        }
    }

    public UIntValue(short s) {
        super(Short.valueOf(s));
    }

    public UIntValue(int i) {
        super(Integer.valueOf(i));
    }

    public UIntValue(long j) {
        super(Long.valueOf(j));
    }
}
