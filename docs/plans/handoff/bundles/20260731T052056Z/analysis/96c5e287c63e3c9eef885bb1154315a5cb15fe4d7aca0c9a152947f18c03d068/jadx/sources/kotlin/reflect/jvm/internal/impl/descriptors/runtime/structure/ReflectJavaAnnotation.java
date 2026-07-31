package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaAnnotation extends ReflectJavaElement {
    public final Annotation annotation;

    public ReflectJavaAnnotation(Annotation annotation) {
        annotation.getClass();
        this.annotation = annotation;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaAnnotation) {
            return this.annotation == ((ReflectJavaAnnotation) obj).annotation;
        }
        return false;
    }

    public final ArrayList getArguments() {
        Annotation annotation = this.annotation;
        Method[] declaredMethods = UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(annotation)).getDeclaredMethods();
        declaredMethods.getClass();
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            Object invoke = method.invoke(annotation, null);
            invoke.getClass();
            Name identifier = Name.identifier(method.getName());
            Class<?> cls = invoke.getClass();
            List list = ReflectClassUtilKt.PRIMITIVE_CLASSES;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new ReflectJavaEnumValueAnnotationArgument(identifier, (Enum) invoke) : invoke instanceof Annotation ? new ReflectJavaAnnotationAsAnnotationArgument(identifier, (Annotation) invoke) : invoke instanceof Object[] ? new ReflectJavaArrayAnnotationArgument(identifier, (Object[]) invoke) : invoke instanceof Class ? new ReflectJavaClassObjectAnnotationArgument(identifier, (Class) invoke) : new ReflectJavaLiteralAnnotationArgument(identifier, invoke));
        }
        return arrayList;
    }

    public final int hashCode() {
        return System.identityHashCode(this.annotation);
    }

    public final String toString() {
        return ReflectJavaAnnotation.class.getName() + ": " + this.annotation;
    }
}
