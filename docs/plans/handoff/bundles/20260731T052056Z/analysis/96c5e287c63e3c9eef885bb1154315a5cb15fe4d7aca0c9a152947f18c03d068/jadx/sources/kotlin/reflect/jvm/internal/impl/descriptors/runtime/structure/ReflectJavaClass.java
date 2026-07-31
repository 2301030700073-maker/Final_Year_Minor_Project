package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import coil3.ImageLoader$Builder;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaClass extends ReflectJavaElement implements JavaAnnotationOwner, JavaClassifier, JavaTypeParameterListOwner {
    public final Class klass;

    public ReflectJavaClass(Class cls) {
        this.klass = cls;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ReflectJavaClass) {
            return this.klass.equals(((ReflectJavaClass) obj).klass);
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        fqName.getClass();
        Annotation[] declaredAnnotations = this.klass.getDeclaredAnnotations();
        if (declaredAnnotations != null) {
            return UuidKt.findAnnotation(declaredAnnotations, fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        Annotation[] declaredAnnotations = this.klass.getDeclaredAnnotations();
        return declaredAnnotations != null ? UuidKt.getAnnotations(declaredAnnotations) : EmptyList.INSTANCE;
    }

    public final List getFields$1() {
        Field[] declaredFields = this.klass.getDeclaredFields();
        declaredFields.getClass();
        return SequencesKt.toList(new TransformingSequence(new FilteringSequence(ArraysKt___ArraysKt.asSequence(declaredFields), false, ReflectJavaClass$fields$1.INSTANCE), ReflectJavaClass$fields$2.INSTANCE));
    }

    public final FqName getFqName() {
        return ReflectClassUtilKt.getClassId(this.klass).asSingleFqName();
    }

    public final List getMethods$1() {
        Method[] declaredMethods = this.klass.getDeclaredMethods();
        declaredMethods.getClass();
        return SequencesKt.toList(new TransformingSequence(new FilteringSequence(ArraysKt___ArraysKt.asSequence(declaredMethods), true, new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(6, this)), ReflectJavaClass$methods$2.INSTANCE));
    }

    public final ArrayList getRecordComponents() {
        ImageLoader$Builder imageLoader$Builder = UStringsKt._cache;
        if (imageLoader$Builder == null) {
            try {
                imageLoader$Builder = new ImageLoader$Builder(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 27);
            } catch (NoSuchMethodException unused) {
                imageLoader$Builder = new ImageLoader$Builder(r2, r2, r2, r2, 27);
            }
            UStringsKt._cache = imageLoader$Builder;
        }
        Method method = (Method) imageLoader$Builder.extras;
        r2 = method != null ? (Object[]) method.invoke(this.klass, null) : null;
        if (r2 == null) {
            r2 = new Object[0];
        }
        ArrayList arrayList = new ArrayList(r2.length);
        for (Object obj : r2) {
            arrayList.add(new ReflectJavaRecordComponent(obj));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaTypeParameterListOwner
    public final ArrayList getTypeParameters() {
        TypeVariable[] typeParameters = this.klass.getTypeParameters();
        typeParameters.getClass();
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new ReflectJavaTypeParameter(typeVariable));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.klass.hashCode();
    }

    public final boolean isRecord() {
        ImageLoader$Builder imageLoader$Builder = UStringsKt._cache;
        Boolean bool = null;
        if (imageLoader$Builder == null) {
            try {
                imageLoader$Builder = new ImageLoader$Builder(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 27);
            } catch (NoSuchMethodException unused) {
                imageLoader$Builder = new ImageLoader$Builder(bool, bool, bool, bool, 27);
            }
            UStringsKt._cache = imageLoader$Builder;
        }
        Method method = (Method) imageLoader$Builder.componentRegistry;
        if (method != null) {
            Object invoke = method.invoke(this.klass, null);
            invoke.getClass();
            bool = (Boolean) invoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isSealed() {
        ImageLoader$Builder imageLoader$Builder = UStringsKt._cache;
        Boolean bool = null;
        if (imageLoader$Builder == null) {
            try {
                imageLoader$Builder = new ImageLoader$Builder(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 27);
            } catch (NoSuchMethodException unused) {
                imageLoader$Builder = new ImageLoader$Builder(bool, bool, bool, bool, 27);
            }
            UStringsKt._cache = imageLoader$Builder;
        }
        Method method = (Method) imageLoader$Builder.application;
        if (method != null) {
            Object invoke = method.invoke(this.klass, null);
            invoke.getClass();
            bool = (Boolean) invoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final String toString() {
        return ReflectJavaClass.class.getName() + ": " + this.klass;
    }
}
