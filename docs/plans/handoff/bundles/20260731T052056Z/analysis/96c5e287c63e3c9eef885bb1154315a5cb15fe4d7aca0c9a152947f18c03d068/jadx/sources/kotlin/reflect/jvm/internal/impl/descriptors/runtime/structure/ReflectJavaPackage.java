package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaPackage extends ReflectJavaElement implements JavaAnnotationOwner {
    public final FqName fqName;

    public ReflectJavaPackage(FqName fqName) {
        fqName.getClass();
        this.fqName = fqName;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaPackage) {
            return Intrinsics.areEqual(this.fqName, ((ReflectJavaPackage) obj).fqName);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        fqName.getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return EmptyList.INSTANCE;
    }

    public final int hashCode() {
        return this.fqName.hashCode();
    }

    public final String toString() {
        return ReflectJavaPackage.class.getName() + ": " + this.fqName;
    }
}
