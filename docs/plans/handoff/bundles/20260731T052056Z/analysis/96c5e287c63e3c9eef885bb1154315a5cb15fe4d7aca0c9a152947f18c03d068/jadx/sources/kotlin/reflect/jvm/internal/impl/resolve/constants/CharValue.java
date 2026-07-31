package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Arrays;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CharValue extends IntegerValueConstant {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType getType(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        KotlinBuiltIns builtIns = moduleDescriptor.getBuiltIns();
        builtIns.getClass();
        return builtIns.getPrimitiveKotlinType(PrimitiveType.CHAR);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final String toString() {
        String valueOf;
        Object obj = this.value;
        Integer valueOf2 = Integer.valueOf(((Character) obj).charValue());
        char charValue = ((Character) obj).charValue();
        if (charValue == '\b') {
            valueOf = "\\b";
        } else if (charValue == '\t') {
            valueOf = "\\t";
        } else if (charValue == '\n') {
            valueOf = "\\n";
        } else if (charValue == '\f') {
            valueOf = "\\f";
        } else if (charValue == '\r') {
            valueOf = "\\r";
        } else {
            byte type = (byte) Character.getType(charValue);
            valueOf = (type == 0 || type == 13 || type == 14 || type == 15 || type == 16 || type == 18 || type == 19) ? "?" : String.valueOf(charValue);
        }
        return String.format("\\u%04X ('%s')", Arrays.copyOf(new Object[]{valueOf2, valueOf}, 2));
    }
}
