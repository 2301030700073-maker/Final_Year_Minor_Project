package kotlin.reflect.jvm.internal.impl.load.java.components;

import java.util.Map;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JavaAnnotationMapper {
    public static final Name DEPRECATED_ANNOTATION_MESSAGE = Name.identifier("message");
    public static final Name TARGET_ANNOTATION_ALLOWED_TARGETS = Name.identifier("allowedTargets");
    public static final Name RETENTION_ANNOTATION_VALUE = Name.identifier("value");
    public static final Map kotlinToJavaNameMap = MapsKt__MapsKt.mapOf(new Pair(StandardNames.FqNames.target, JvmAnnotationNames.TARGET_ANNOTATION), new Pair(StandardNames.FqNames.retention, JvmAnnotationNames.RETENTION_ANNOTATION), new Pair(StandardNames.FqNames.mustBeDocumented, JvmAnnotationNames.DOCUMENTED_ANNOTATION));

    public static PossiblyExternalAnnotationDescriptor findMappedJavaAnnotation(FqName fqName, JavaAnnotationOwner javaAnnotationOwner, Request.Builder builder) {
        ReflectJavaAnnotation findAnnotation$1;
        fqName.getClass();
        javaAnnotationOwner.getClass();
        builder.getClass();
        if (fqName.equals(StandardNames.FqNames.deprecated)) {
            FqName fqName2 = JvmAnnotationNames.DEPRECATED_ANNOTATION;
            fqName2.getClass();
            ReflectJavaAnnotation findAnnotation$12 = javaAnnotationOwner.findAnnotation$1(fqName2);
            if (findAnnotation$12 != null) {
                return new JavaDeprecatedAnnotationDescriptor(findAnnotation$12, builder);
            }
        }
        FqName fqName3 = (FqName) kotlinToJavaNameMap.get(fqName);
        if (fqName3 == null || (findAnnotation$1 = javaAnnotationOwner.findAnnotation$1(fqName3)) == null) {
            return null;
        }
        return mapOrResolveJavaAnnotation(findAnnotation$1, builder, false);
    }

    public static PossiblyExternalAnnotationDescriptor mapOrResolveJavaAnnotation(ReflectJavaAnnotation reflectJavaAnnotation, Request.Builder builder, boolean z) {
        builder.getClass();
        ClassId classId = ReflectClassUtilKt.getClassId(UnsignedKt.getJavaClass(UnsignedKt.getAnnotationClass(reflectJavaAnnotation.annotation)));
        if (classId.equals(ClassId.topLevel(JvmAnnotationNames.TARGET_ANNOTATION))) {
            return new JavaTargetAnnotationDescriptor(reflectJavaAnnotation, builder);
        }
        if (classId.equals(ClassId.topLevel(JvmAnnotationNames.RETENTION_ANNOTATION))) {
            return new JavaRetentionAnnotationDescriptor(reflectJavaAnnotation, builder);
        }
        if (classId.equals(ClassId.topLevel(JvmAnnotationNames.DOCUMENTED_ANNOTATION))) {
            return new JavaAnnotationDescriptor(builder, reflectJavaAnnotation, StandardNames.FqNames.mustBeDocumented);
        }
        if (classId.equals(ClassId.topLevel(JvmAnnotationNames.DEPRECATED_ANNOTATION))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(reflectJavaAnnotation, builder, z);
    }
}
