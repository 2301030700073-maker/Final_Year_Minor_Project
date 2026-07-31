package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.room.Room;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ArrayValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.EnumValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationTypeQualifierResolver {
    public static final LinkedHashMap JAVA_APPLICABILITY_TYPES;
    public final JavaTypeEnhancementState javaTypeEnhancementState;
    public final ConcurrentHashMap resolvedNicknames;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType : AnnotationQualifierApplicabilityType.values()) {
            String javaTarget = annotationQualifierApplicabilityType.getJavaTarget();
            if (linkedHashMap.get(javaTarget) == null) {
                linkedHashMap.put(javaTarget, annotationQualifierApplicabilityType);
            }
        }
        JAVA_APPLICABILITY_TYPES = linkedHashMap;
    }

    public AnnotationTypeQualifierResolver(JavaTypeEnhancementState javaTypeEnhancementState) {
        javaTypeEnhancementState.getClass();
        this.javaTypeEnhancementState = javaTypeEnhancementState;
        this.resolvedNicknames = new ConcurrentHashMap();
    }

    public static ArrayList enumArguments(Object obj, boolean z) {
        AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) obj;
        annotationDescriptor.getClass();
        Map allValueArguments = annotationDescriptor.getAllValueArguments();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : allValueArguments.entrySet()) {
            CollectionsKt.addAll(arrayList, (!z || Intrinsics.areEqual((Name) entry.getKey(), JvmAnnotationNames.DEFAULT_ANNOTATION_MEMBER_NAME)) ? toEnumNames((ConstantValue) entry.getValue()) : EmptyList.INSTANCE);
        }
        return arrayList;
    }

    public static Object findAnnotation(Object obj, FqName fqName) {
        for (Object obj2 : getMetaAnnotations(obj)) {
            if (Intrinsics.areEqual(getFqName(obj2), fqName)) {
                return obj2;
            }
        }
        return null;
    }

    public static FqName getFqName(Object obj) {
        AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) obj;
        annotationDescriptor.getClass();
        return annotationDescriptor.getFqName();
    }

    public static Iterable getMetaAnnotations(Object obj) {
        Annotations annotations;
        AnnotationDescriptor annotationDescriptor = (AnnotationDescriptor) obj;
        annotationDescriptor.getClass();
        ModuleAwareClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        return (annotationClass == null || (annotations = annotationClass.getAnnotations()) == null) ? EmptyList.INSTANCE : annotations;
    }

    public static boolean hasAnnotation(Object obj, FqName fqName) {
        Iterable metaAnnotations = getMetaAnnotations(obj);
        if ((metaAnnotations instanceof Collection) && ((Collection) metaAnnotations).isEmpty()) {
            return false;
        }
        Iterator it = metaAnnotations.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(getFqName(it.next()), fqName)) {
                return true;
            }
        }
        return false;
    }

    public static List toEnumNames(ConstantValue constantValue) {
        if (!(constantValue instanceof ArrayValue)) {
            return constantValue instanceof EnumValue ? Room.listOf(((EnumValue) constantValue).enumEntryName.getIdentifier()) : EmptyList.INSTANCE;
        }
        Iterable iterable = (Iterable) ((ArrayValue) constantValue).value;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, toEnumNames((ConstantValue) it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0155 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0011 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType extractAndMergeDefaultQualifiers(kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType r13, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations r14) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.extractAndMergeDefaultQualifiers(kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations):kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        if (r5.equals("ALWAYS") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0097, code lost:
    
        if (r5.equals("NEVER") == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a3, code lost:
    
        r5 = kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier.NULLABLE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a0, code lost:
    
        if (r5.equals("MAYBE") == false) goto L67;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus knownNullability(java.lang.Object r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver.knownNullability(java.lang.Object, boolean):kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus");
    }

    public final ReportLevel resolveJsr305CustomState(Object obj) {
        String str;
        Jsr305Settings jsr305Settings = this.javaTypeEnhancementState.jsr305;
        ReportLevel reportLevel = (ReportLevel) jsr305Settings.userDefinedLevelForSpecificAnnotation.get(getFqName(obj));
        if (reportLevel != null) {
            return reportLevel;
        }
        Object findAnnotation = findAnnotation(obj, AnnotationQualifiersFqNamesKt.MIGRATION_ANNOTATION_FQNAME);
        if (findAnnotation == null || (str = (String) CollectionsKt.firstOrNull((Iterable) enumArguments(findAnnotation, false))) == null) {
            return null;
        }
        ReportLevel reportLevel2 = jsr305Settings.migrationLevel;
        if (reportLevel2 != null) {
            return reportLevel2;
        }
        int hashCode = str.hashCode();
        if (hashCode == -2137067054) {
            if (str.equals("IGNORE")) {
                return ReportLevel.IGNORE;
            }
            return null;
        }
        if (hashCode == -1838656823) {
            if (str.equals("STRICT")) {
                return ReportLevel.STRICT;
            }
            return null;
        }
        if (hashCode == 2656902 && str.equals("WARN")) {
            return ReportLevel.WARN;
        }
        return null;
    }

    public final Object resolveTypeQualifierAnnotation(Object obj) {
        Object obj2;
        obj.getClass();
        if (!this.javaTypeEnhancementState.jsr305.isDisabled) {
            if (CollectionsKt.contains(AnnotationQualifiersFqNamesKt.BUILT_IN_TYPE_QUALIFIER_FQ_NAMES, getFqName(obj)) || hasAnnotation(obj, AnnotationQualifiersFqNamesKt.TYPE_QUALIFIER_FQNAME)) {
                return obj;
            }
            if (hasAnnotation(obj, AnnotationQualifiersFqNamesKt.TYPE_QUALIFIER_NICKNAME_FQNAME)) {
                ModuleAwareClassDescriptor annotationClass = DescriptorUtilsKt.getAnnotationClass((AnnotationDescriptor) obj);
                annotationClass.getClass();
                ConcurrentHashMap concurrentHashMap = this.resolvedNicknames;
                Object obj3 = concurrentHashMap.get(annotationClass);
                if (obj3 != null) {
                    return obj3;
                }
                Iterator it = getMetaAnnotations(obj).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj2 = null;
                        break;
                    }
                    obj2 = resolveTypeQualifierAnnotation(it.next());
                    if (obj2 != null) {
                        break;
                    }
                }
                if (obj2 != null) {
                    Object putIfAbsent = concurrentHashMap.putIfAbsent(annotationClass, obj2);
                    return putIfAbsent == null ? obj2 : putIfAbsent;
                }
            }
        }
        return null;
    }
}
