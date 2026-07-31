package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaTypeParameter extends ReflectJavaElement implements JavaAnnotationOwner, JavaClassifier {
    public final TypeVariable typeVariable;

    public ReflectJavaTypeParameter(TypeVariable typeVariable) {
        typeVariable.getClass();
        this.typeVariable = typeVariable;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaTypeParameter) {
            return Intrinsics.areEqual(this.typeVariable, ((ReflectJavaTypeParameter) obj).typeVariable);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        Annotation[] declaredAnnotations;
        fqName.getClass();
        TypeVariable typeVariable = this.typeVariable;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        if (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) {
            return null;
        }
        return UuidKt.findAnnotation(declaredAnnotations, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        Annotation[] declaredAnnotations;
        TypeVariable typeVariable = this.typeVariable;
        AnnotatedElement annotatedElement = typeVariable instanceof AnnotatedElement ? (AnnotatedElement) typeVariable : null;
        return (annotatedElement == null || (declaredAnnotations = annotatedElement.getDeclaredAnnotations()) == null) ? EmptyList.INSTANCE : UuidKt.getAnnotations(declaredAnnotations);
    }

    public final int hashCode() {
        return this.typeVariable.hashCode();
    }

    public final String toString() {
        return ReflectJavaTypeParameter.class.getName() + ": " + this.typeVariable;
    }
}
