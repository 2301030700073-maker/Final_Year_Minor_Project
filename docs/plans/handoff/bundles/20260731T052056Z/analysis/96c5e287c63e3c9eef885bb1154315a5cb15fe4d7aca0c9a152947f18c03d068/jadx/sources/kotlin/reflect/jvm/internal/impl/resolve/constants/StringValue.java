package kotlin.reflect.jvm.internal.impl.resolve.constants;

import androidx.compose.ui.Modifier;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringValue extends ConstantValue {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final KotlinType getType(ModuleDescriptor moduleDescriptor) {
        moduleDescriptor.getClass();
        return moduleDescriptor.getBuiltIns().getStringType();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue
    public final String toString() {
        return Modifier.CC.m(new StringBuilder("\""), (String) this.value, '\"');
    }
}
