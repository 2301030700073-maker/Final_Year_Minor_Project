package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import androidx.datastore.core.SimpleActor$1;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.internal.CheckableGroup;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationQualifierApplicabilityType;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import okhttp3.Request;
import okio.PriorityQueue;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaTypeEnhancement {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0208  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.material.expandable.ExpandableWidgetHelper enhanceInflexible(kotlin.reflect.jvm.internal.impl.types.SimpleType r19, androidx.datastore.core.SimpleActor$1 r20, int r21, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition r22, boolean r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement.enhanceInflexible(kotlin.reflect.jvm.internal.impl.types.SimpleType, androidx.datastore.core.SimpleActor$1, int, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition, boolean, boolean):com.google.android.material.expandable.ExpandableWidgetHelper");
    }

    public static PriorityQueue enhancePossiblyFlexible(UnwrappedType unwrappedType, SimpleActor$1 simpleActor$1, int i, boolean z) {
        KotlinType kotlinType;
        Object obj = null;
        if (KotlinTypeKt.isError(unwrappedType)) {
            return new PriorityQueue(1, 11, null);
        }
        if (!(unwrappedType instanceof FlexibleType)) {
            if (!(unwrappedType instanceof SimpleType)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return null;
            }
            ExpandableWidgetHelper enhanceInflexible = enhanceInflexible((SimpleType) unwrappedType, simpleActor$1, i, TypeComponentPosition.INFLEXIBLE, false, z);
            boolean z2 = enhanceInflexible.expanded;
            KotlinType kotlinType2 = (SimpleType) enhanceInflexible.widget;
            if (z2) {
                kotlinType2 = KotlinTypeKt.wrapEnhancement(unwrappedType, kotlinType2);
            }
            return new PriorityQueue(enhanceInflexible.expandedComponentIdHint, 11, kotlinType2);
        }
        boolean z3 = unwrappedType instanceof RawTypeImpl;
        FlexibleType flexibleType = (FlexibleType) unwrappedType;
        SimpleType simpleType = flexibleType.upperBound;
        SimpleType simpleType2 = flexibleType.lowerBound;
        ExpandableWidgetHelper enhanceInflexible2 = enhanceInflexible(simpleType2, simpleActor$1, i, TypeComponentPosition.FLEXIBLE_LOWER, z3, z);
        ExpandableWidgetHelper enhanceInflexible3 = enhanceInflexible(flexibleType.upperBound, simpleActor$1, i, TypeComponentPosition.FLEXIBLE_UPPER, z3, z);
        SimpleType simpleType3 = (SimpleType) enhanceInflexible3.widget;
        SimpleType simpleType4 = (SimpleType) enhanceInflexible2.widget;
        if (simpleType4 != null || simpleType3 != null) {
            if (!enhanceInflexible2.expanded) {
                SimpleType simpleType5 = simpleType4;
                if (!enhanceInflexible3.expanded) {
                    if (z3) {
                        SimpleType simpleType6 = simpleType4;
                        if (simpleType4 == null) {
                            simpleType6 = simpleType2;
                        }
                        if (simpleType3 != null) {
                            simpleType = simpleType3;
                        }
                        obj = new RawTypeImpl(simpleType6, simpleType);
                    } else {
                        if (simpleType4 == null) {
                            simpleType5 = simpleType2;
                        }
                        if (simpleType3 != null) {
                            simpleType = simpleType3;
                        }
                        obj = KotlinTypeKt.flexibleType(simpleType5, simpleType);
                    }
                }
            }
            if (simpleType3 != null) {
                if (simpleType4 == null) {
                    simpleType4 = simpleType3;
                }
                kotlinType = KotlinTypeKt.flexibleType(simpleType4, simpleType3);
            } else {
                simpleType4.getClass();
                kotlinType = simpleType4;
            }
            obj = KotlinTypeKt.wrapEnhancement(unwrappedType, kotlinType);
        }
        return new PriorityQueue(enhanceInflexible2.expandedComponentIdHint, 11, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:253:0x0269, code lost:
    
        if (r13 == false) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x026e, code lost:
    
        if (r13 == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x027c, code lost:
    
        if (r5.compareTo(r8) <= 0) goto L176;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x043a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03d6  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0372  */
    /* JADX WARN: Type inference failed for: r13v10, types: [java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v19 */
    /* JADX WARN: Type inference failed for: r13v20, types: [kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier] */
    /* JADX WARN: Type inference failed for: r13v24 */
    /* JADX WARN: Type inference failed for: r13v26 */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v16, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v32, types: [kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier] */
    /* JADX WARN: Type inference failed for: r14v36 */
    /* JADX WARN: Type inference failed for: r14v37 */
    /* JADX WARN: Type inference failed for: r14v38 */
    /* JADX WARN: Type inference failed for: r14v39 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12, types: [kotlin.reflect.jvm.internal.impl.load.java.JavaDefaultQualifiers] */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13, types: [kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier] */
    /* JADX WARN: Type inference failed for: r5v30 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public kotlin.reflect.jvm.internal.impl.types.KotlinType enhance(com.google.android.material.internal.CheckableGroup r27, kotlin.reflect.jvm.internal.impl.types.KotlinType r28, java.util.List r29, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementInfo r30, boolean r31) {
        /*
            Method dump skipped, instructions count: 1133
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement.enhance(com.google.android.material.internal.CheckableGroup, kotlin.reflect.jvm.internal.impl.types.KotlinType, java.util.List, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeEnhancementInfo, boolean):kotlin.reflect.jvm.internal.impl.types.KotlinType");
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0273, code lost:
    
        if (r10 == null) goto L133;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02a1  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0260  */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r21v0, types: [kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    /* JADX WARN: Type inference failed for: r5v6, types: [kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaCallableMemberDescriptor] */
    /* JADX WARN: Type inference failed for: r6v35, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList enhanceSignatures(okhttp3.Request.Builder r22, java.util.Collection r23) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement.enhanceSignatures(okhttp3.Request$Builder, java.util.Collection):java.util.ArrayList");
    }

    public KotlinType enhance(JavaCallableMemberDescriptor javaCallableMemberDescriptor, CallableDescriptor callableDescriptor, boolean z, Request.Builder builder, AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType, TypeEnhancementInfo typeEnhancementInfo, boolean z2, Function1 function1) {
        CheckableGroup checkableGroup = new CheckableGroup((Annotated) callableDescriptor, z, builder, annotationQualifierApplicabilityType, false);
        KotlinType kotlinType = (KotlinType) function1.invoke(javaCallableMemberDescriptor);
        Collection overriddenDescriptors = javaCallableMemberDescriptor.getOverriddenDescriptors();
        overriddenDescriptors.getClass();
        Collection<CallableMemberDescriptor> collection = overriddenDescriptors;
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
        for (CallableMemberDescriptor callableMemberDescriptor : collection) {
            callableMemberDescriptor.getClass();
            arrayList.add((KotlinType) function1.invoke(callableMemberDescriptor));
        }
        return enhance(checkableGroup, kotlinType, arrayList, typeEnhancementInfo, z2);
    }
}
