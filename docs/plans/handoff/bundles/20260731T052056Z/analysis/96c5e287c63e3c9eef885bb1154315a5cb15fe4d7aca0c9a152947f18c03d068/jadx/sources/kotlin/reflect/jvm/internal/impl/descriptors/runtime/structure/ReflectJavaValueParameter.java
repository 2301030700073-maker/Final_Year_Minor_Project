package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaValueParameter extends ReflectJavaElement implements JavaAnnotationOwner {
    public final boolean isVararg;
    public final Annotation[] reflectAnnotations;
    public final String reflectName;
    public final ReflectJavaType type;

    public ReflectJavaValueParameter(ReflectJavaType reflectJavaType, Annotation[] annotationArr, String str, boolean z) {
        annotationArr.getClass();
        this.type = reflectJavaType;
        this.reflectAnnotations = annotationArr;
        this.reflectName = str;
        this.isVararg = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        fqName.getClass();
        return UuidKt.findAnnotation(this.reflectAnnotations, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        return UuidKt.getAnnotations(this.reflectAnnotations);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(ReflectJavaValueParameter.class.getName());
        sb.append(": ");
        sb.append(this.isVararg ? "vararg " : "");
        String str = this.reflectName;
        sb.append(str != null ? Name.guessByFirstCharacter(str) : null);
        sb.append(": ");
        sb.append(this.type);
        return sb.toString();
    }
}
