package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaTypeAttributes {
    public final SimpleType defaultType;
    public final JavaTypeFlexibility flexibility;
    public final TypeUsage howThisTypeIsUsed;
    public final boolean isForAnnotationParameter;
    public final boolean isRaw;
    public final Set visitedTypeParameters;

    public /* synthetic */ JavaTypeAttributes(TypeUsage typeUsage, boolean z, boolean z2, Set set, int i) {
        this(typeUsage, JavaTypeFlexibility.INFLEXIBLE, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : set, null);
    }

    public static JavaTypeAttributes copy$default(JavaTypeAttributes javaTypeAttributes, JavaTypeFlexibility javaTypeFlexibility, boolean z, Set set, SimpleType simpleType, int i) {
        TypeUsage typeUsage = javaTypeAttributes.howThisTypeIsUsed;
        if ((i & 2) != 0) {
            javaTypeFlexibility = javaTypeAttributes.flexibility;
        }
        JavaTypeFlexibility javaTypeFlexibility2 = javaTypeFlexibility;
        if ((i & 4) != 0) {
            z = javaTypeAttributes.isRaw;
        }
        boolean z2 = z;
        boolean z3 = javaTypeAttributes.isForAnnotationParameter;
        if ((i & 16) != 0) {
            set = javaTypeAttributes.visitedTypeParameters;
        }
        Set set2 = set;
        if ((i & 32) != 0) {
            simpleType = javaTypeAttributes.defaultType;
        }
        javaTypeAttributes.getClass();
        typeUsage.getClass();
        javaTypeFlexibility2.getClass();
        return new JavaTypeAttributes(typeUsage, javaTypeFlexibility2, z2, z3, set2, simpleType);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof JavaTypeAttributes)) {
            return false;
        }
        JavaTypeAttributes javaTypeAttributes = (JavaTypeAttributes) obj;
        return Intrinsics.areEqual(javaTypeAttributes.defaultType, this.defaultType) && javaTypeAttributes.howThisTypeIsUsed == this.howThisTypeIsUsed && javaTypeAttributes.flexibility == this.flexibility && javaTypeAttributes.isRaw == this.isRaw && javaTypeAttributes.isForAnnotationParameter == this.isForAnnotationParameter;
    }

    public final int hashCode() {
        SimpleType simpleType = this.defaultType;
        int hashCode = simpleType != null ? simpleType.hashCode() : 0;
        int hashCode2 = this.howThisTypeIsUsed.hashCode() + (hashCode * 31) + hashCode;
        int hashCode3 = this.flexibility.hashCode() + (hashCode2 * 31) + hashCode2;
        int i = (hashCode3 * 31) + (this.isRaw ? 1 : 0) + hashCode3;
        return (i * 31) + (this.isForAnnotationParameter ? 1 : 0) + i;
    }

    public final String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + this.howThisTypeIsUsed + ", flexibility=" + this.flexibility + ", isRaw=" + this.isRaw + ", isForAnnotationParameter=" + this.isForAnnotationParameter + ", visitedTypeParameters=" + this.visitedTypeParameters + ", defaultType=" + this.defaultType + ')';
    }

    public final JavaTypeAttributes withFlexibility(JavaTypeFlexibility javaTypeFlexibility) {
        javaTypeFlexibility.getClass();
        return copy$default(this, javaTypeFlexibility, false, null, null, 61);
    }

    public JavaTypeAttributes(TypeUsage typeUsage, JavaTypeFlexibility javaTypeFlexibility, boolean z, boolean z2, Set set, SimpleType simpleType) {
        typeUsage.getClass();
        javaTypeFlexibility.getClass();
        this.howThisTypeIsUsed = typeUsage;
        this.flexibility = javaTypeFlexibility;
        this.isRaw = z;
        this.isForAnnotationParameter = z2;
        this.visitedTypeParameters = set;
        this.defaultType = simpleType;
    }
}
