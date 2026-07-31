package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaArrayAnnotationArgument extends ReflectJavaAnnotationArgument {
    public final Object[] values;

    public ReflectJavaArrayAnnotationArgument(Name name, Object[] objArr) {
        super(name);
        this.values = objArr;
    }

    public final ArrayList getElements() {
        Object[] objArr = this.values;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            obj.getClass();
            Class<?> cls = obj.getClass();
            List list = ReflectClassUtilKt.PRIMITIVE_CLASSES;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new ReflectJavaEnumValueAnnotationArgument(null, (Enum) obj) : obj instanceof Annotation ? new ReflectJavaAnnotationAsAnnotationArgument(null, (Annotation) obj) : obj instanceof Object[] ? new ReflectJavaArrayAnnotationArgument(null, (Object[]) obj) : obj instanceof Class ? new ReflectJavaClassObjectAnnotationArgument(null, (Class) obj) : new ReflectJavaLiteralAnnotationArgument(null, obj));
        }
        return arrayList;
    }
}
