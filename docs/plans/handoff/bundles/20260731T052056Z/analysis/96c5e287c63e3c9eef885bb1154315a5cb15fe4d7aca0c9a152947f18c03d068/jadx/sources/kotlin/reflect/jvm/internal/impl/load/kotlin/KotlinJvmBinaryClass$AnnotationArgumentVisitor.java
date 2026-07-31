package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface KotlinJvmBinaryClass$AnnotationArgumentVisitor {
    void visit(Name name, Object obj);

    KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, Name name);

    KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray(Name name);

    void visitClassLiteral(Name name, ClassLiteralValue classLiteralValue);

    void visitEnd();

    void visitEnum(Name name, ClassId classId, Name name2);
}
