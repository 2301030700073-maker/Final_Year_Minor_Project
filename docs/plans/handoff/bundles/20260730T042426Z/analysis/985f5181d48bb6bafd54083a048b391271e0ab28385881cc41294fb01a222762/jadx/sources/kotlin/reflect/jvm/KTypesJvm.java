package kotlin.reflect.jvm;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;

/* compiled from: KTypesJvm.kt */
/* loaded from: classes2.dex */
public abstract class KTypesJvm {
    public static final KClass getJvmErasure(KType kType) {
        KClass jvmErasure;
        Intrinsics.checkNotNullParameter(kType, "<this>");
        KClassifier classifier = kType.getClassifier();
        if (classifier != null && (jvmErasure = getJvmErasure(classifier)) != null) {
            return jvmErasure;
        }
        throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + kType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final KClass getJvmErasure(KClassifier kClassifier) {
        ClassDescriptor classDescriptor;
        KClass jvmErasure;
        Intrinsics.checkNotNullParameter(kClassifier, "<this>");
        if (kClassifier instanceof KClass) {
            return (KClass) kClassifier;
        }
        if (kClassifier instanceof KTypeParameter) {
            List upperBounds = ((KTypeParameter) kClassifier).getUpperBounds();
            Iterator it = upperBounds.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                KType kType = (KType) next;
                Intrinsics.checkNotNull(kType, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
                ClassifierDescriptor mo2789getDeclarationDescriptor = ((KTypeImpl) kType).getType().getConstructor().mo2789getDeclarationDescriptor();
                classDescriptor = mo2789getDeclarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) mo2789getDeclarationDescriptor : null;
                if (classDescriptor != null && classDescriptor.getKind() != ClassKind.INTERFACE && classDescriptor.getKind() != ClassKind.ANNOTATION_CLASS) {
                    classDescriptor = next;
                    break;
                }
            }
            KType kType2 = (KType) classDescriptor;
            if (kType2 == null) {
                kType2 = (KType) CollectionsKt.firstOrNull(upperBounds);
            }
            return (kType2 == null || (jvmErasure = getJvmErasure(kType2)) == null) ? Reflection.getOrCreateKotlinClass(Object.class) : jvmErasure;
        }
        throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + kClassifier);
    }
}
