package kotlin.reflect.jvm.internal.impl.resolve.constants;

import androidx.room.Room;
import androidx.work.OperationKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KClassValue extends ConstantValue {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Value {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LocalClass extends Value {
            public final KotlinType type;

            public LocalClass(KotlinType kotlinType) {
                this.type = kotlinType;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LocalClass) && this.type.equals(((LocalClass) obj).type);
            }

            public final int hashCode() {
                return this.type.hashCode();
            }

            public final String toString() {
                return "LocalClass(type=" + this.type + ')';
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class NormalClass extends Value {
            public final ClassLiteralValue value;

            public NormalClass(ClassLiteralValue classLiteralValue) {
                this.value = classLiteralValue;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof NormalClass) && this.value.equals(((NormalClass) obj).value);
            }

            public final int hashCode() {
                return this.value.hashCode();
            }

            public final String toString() {
                return "NormalClass(value=" + this.value + ')';
            }
        }
    }

    public KClassValue(ClassId classId, int i) {
        super(new Value.NormalClass(new ClassLiteralValue(classId, i)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType getType(ModuleDescriptor moduleDescriptor) {
        KotlinType kotlinType;
        moduleDescriptor.getClass();
        TypeAttributes.Companion.getClass();
        TypeAttributes typeAttributes = TypeAttributes.Empty;
        KotlinBuiltIns builtIns = moduleDescriptor.getBuiltIns();
        builtIns.getClass();
        ModuleAwareClassDescriptor builtInClassByFqName = builtIns.getBuiltInClassByFqName(StandardNames.FqNames.kClass.toSafe());
        if (builtInClassByFqName == null) {
            KotlinBuiltIns.$$$reportNull$$$0(21);
            throw null;
        }
        Object obj = this.value;
        Value value = (Value) obj;
        if (value instanceof Value.LocalClass) {
            kotlinType = ((Value.LocalClass) obj).type;
        } else {
            if (!(value instanceof Value.NormalClass)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            ClassLiteralValue classLiteralValue = ((Value.NormalClass) obj).value;
            ClassId classId = classLiteralValue.classId;
            int i = classLiteralValue.arrayNestedness;
            ModuleAwareClassDescriptor findClassAcrossModuleDependencies = DescriptorUtilKt.findClassAcrossModuleDependencies(moduleDescriptor, classId);
            if (findClassAcrossModuleDependencies == null) {
                kotlinType = ErrorUtils.createErrorType(ErrorTypeKind.UNRESOLVED_KCLASS_CONSTANT_VALUE, classId.toString(), String.valueOf(i));
            } else {
                SimpleType defaultType = findClassAcrossModuleDependencies.getDefaultType();
                defaultType.getClass();
                UnwrappedType replaceArgumentsWithStarProjections = OperationKt.replaceArgumentsWithStarProjections(defaultType);
                for (int i2 = 0; i2 < i; i2++) {
                    replaceArgumentsWithStarProjections = moduleDescriptor.getBuiltIns().getArrayType(Variance.INVARIANT, replaceArgumentsWithStarProjections);
                }
                kotlinType = replaceArgumentsWithStarProjections;
            }
        }
        return KotlinTypeKt.simpleNotNullType(typeAttributes, builtInClassByFqName, Room.listOf(new StarProjectionImpl(kotlinType)));
    }
}
