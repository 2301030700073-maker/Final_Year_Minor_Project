package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TypeParameterUpperBoundEraser$DataToEraseUpperBound {
    public final JavaTypeAttributes typeAttr;
    public final TypeParameterDescriptor typeParameter;

    public TypeParameterUpperBoundEraser$DataToEraseUpperBound(TypeParameterDescriptor typeParameterDescriptor, JavaTypeAttributes javaTypeAttributes) {
        typeParameterDescriptor.getClass();
        javaTypeAttributes.getClass();
        this.typeParameter = typeParameterDescriptor;
        this.typeAttr = javaTypeAttributes;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TypeParameterUpperBoundEraser$DataToEraseUpperBound)) {
            return false;
        }
        TypeParameterUpperBoundEraser$DataToEraseUpperBound typeParameterUpperBoundEraser$DataToEraseUpperBound = (TypeParameterUpperBoundEraser$DataToEraseUpperBound) obj;
        return Intrinsics.areEqual(typeParameterUpperBoundEraser$DataToEraseUpperBound.typeParameter, this.typeParameter) && Intrinsics.areEqual(typeParameterUpperBoundEraser$DataToEraseUpperBound.typeAttr, this.typeAttr);
    }

    public final int hashCode() {
        int hashCode = this.typeParameter.hashCode();
        return this.typeAttr.hashCode() + (hashCode * 31) + hashCode;
    }

    public final String toString() {
        return "DataToEraseUpperBound(typeParameter=" + this.typeParameter + ", typeAttr=" + this.typeAttr + ')';
    }
}
