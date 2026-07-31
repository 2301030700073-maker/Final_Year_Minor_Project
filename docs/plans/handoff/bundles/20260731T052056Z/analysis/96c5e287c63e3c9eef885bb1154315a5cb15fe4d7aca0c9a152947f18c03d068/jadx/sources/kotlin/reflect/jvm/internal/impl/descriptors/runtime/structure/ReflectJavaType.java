package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Type;
import java.util.Iterator;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReflectJavaType implements JavaAnnotationOwner {
    public final boolean equals(Object obj) {
        return (obj instanceof ReflectJavaType) && Intrinsics.areEqual(getReflectType(), ((ReflectJavaType) obj).getReflectType());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        Object obj;
        fqName.getClass();
        Iterator it = getAnnotations().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(((ReflectJavaAnnotation) obj).annotation))).asSingleFqName().equals(fqName)) {
                break;
            }
        }
        return (ReflectJavaAnnotation) obj;
    }

    public abstract Type getReflectType();

    public final int hashCode() {
        return getReflectType().hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + getReflectType();
    }
}
