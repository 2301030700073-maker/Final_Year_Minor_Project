package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FloatValue extends ConstantValue {
    public final /* synthetic */ int $r8$classId = 2;

    public FloatValue(double d) {
        super(Double.valueOf(d));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType getType(ModuleDescriptor moduleDescriptor) {
        switch (this.$r8$classId) {
            case 0:
                moduleDescriptor.getClass();
                KotlinBuiltIns builtIns = moduleDescriptor.getBuiltIns();
                builtIns.getClass();
                return builtIns.getPrimitiveKotlinType(PrimitiveType.FLOAT);
            case 1:
                moduleDescriptor.getClass();
                KotlinBuiltIns builtIns2 = moduleDescriptor.getBuiltIns();
                builtIns2.getClass();
                return builtIns2.getPrimitiveKotlinType(PrimitiveType.BOOLEAN);
            default:
                moduleDescriptor.getClass();
                KotlinBuiltIns builtIns3 = moduleDescriptor.getBuiltIns();
                builtIns3.getClass();
                return builtIns3.getPrimitiveKotlinType(PrimitiveType.DOUBLE);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public String toString() {
        int i = this.$r8$classId;
        Object obj = this.value;
        switch (i) {
            case 0:
                return ((Number) obj).floatValue() + ".toFloat()";
            case 1:
            default:
                return super.toString();
            case 2:
                return ((Number) obj).doubleValue() + ".toDouble()";
        }
    }

    public /* synthetic */ FloatValue(Object obj) {
        super(obj);
    }

    public FloatValue(float f) {
        super(Float.valueOf(f));
    }
}
