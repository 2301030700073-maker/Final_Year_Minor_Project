package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import androidx.appcompat.view.ActionMode;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Modifier;
import java.util.Collection;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$PackageVisibility;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedAndPackage;
import kotlin.reflect.jvm.internal.impl.descriptors.java.JavaVisibilities$ProtectedStaticVisibility;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaElement;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReflectJavaMember extends ReflectJavaElement implements JavaAnnotationOwner, JavaElement {
    public final boolean equals(Object obj) {
        return (obj instanceof ReflectJavaMember) && Intrinsics.areEqual(getMember(), ((ReflectJavaMember) obj).getMember());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final ReflectJavaAnnotation findAnnotation$1(FqName fqName) {
        fqName.getClass();
        Member member = getMember();
        member.getClass();
        Annotation[] declaredAnnotations = ((AnnotatedElement) member).getDeclaredAnnotations();
        if (declaredAnnotations != null) {
            return UuidKt.findAnnotation(declaredAnnotations, fqName);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner
    public final Collection getAnnotations() {
        Member member = getMember();
        member.getClass();
        Annotation[] declaredAnnotations = ((AnnotatedElement) member).getDeclaredAnnotations();
        return declaredAnnotations != null ? UuidKt.getAnnotations(declaredAnnotations) : EmptyList.INSTANCE;
    }

    public abstract Member getMember();

    public final Name getName() {
        String name = getMember().getName();
        Name identifier = name != null ? Name.identifier(name) : null;
        return identifier == null ? SpecialNames.NO_NAME_PROVIDED : identifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList getValueParameters(java.lang.reflect.Type[] r13, java.lang.annotation.Annotation[][] r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaMember.getValueParameters(java.lang.reflect.Type[], java.lang.annotation.Annotation[][], boolean):java.util.ArrayList");
    }

    public final ActionMode getVisibility() {
        int modifiers = getMember().getModifiers();
        return Modifier.isPublic(modifiers) ? Visibilities.Public.INSTANCE : Modifier.isPrivate(modifiers) ? Visibilities.Private.INSTANCE : Modifier.isProtected(modifiers) ? Modifier.isStatic(modifiers) ? JavaVisibilities$ProtectedStaticVisibility.INSTANCE : JavaVisibilities$ProtectedAndPackage.INSTANCE : JavaVisibilities$PackageVisibility.INSTANCE;
    }

    public final int hashCode() {
        return getMember().hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + getMember();
    }
}
