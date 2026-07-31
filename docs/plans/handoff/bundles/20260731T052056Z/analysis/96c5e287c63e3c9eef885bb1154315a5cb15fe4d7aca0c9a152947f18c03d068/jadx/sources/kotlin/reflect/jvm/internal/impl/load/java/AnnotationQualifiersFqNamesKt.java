package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.room.Room;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnnotationQualifiersFqNamesKt {
    public static final LinkedHashMap BUILT_IN_TYPE_QUALIFIER_DEFAULT_ANNOTATIONS;
    public static final Set BUILT_IN_TYPE_QUALIFIER_FQ_NAMES;
    public static final Map JSPECIFY_DEFAULT_ANNOTATIONS;
    public static final FqName TYPE_QUALIFIER_NICKNAME_FQNAME = new FqName("javax.annotation.meta.TypeQualifierNickname");
    public static final FqName TYPE_QUALIFIER_FQNAME = new FqName("javax.annotation.meta.TypeQualifier");
    public static final FqName TYPE_QUALIFIER_DEFAULT_FQNAME = new FqName("javax.annotation.meta.TypeQualifierDefault");
    public static final FqName MIGRATION_ANNOTATION_FQNAME = new FqName("kotlin.annotations.jvm.UnderMigration");

    static {
        AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType = AnnotationQualifierApplicabilityType.VALUE_PARAMETER;
        List listOf = Room.listOf((Object[]) new AnnotationQualifierApplicabilityType[]{AnnotationQualifierApplicabilityType.FIELD, AnnotationQualifierApplicabilityType.METHOD_RETURN_TYPE, annotationQualifierApplicabilityType, AnnotationQualifierApplicabilityType.TYPE_PARAMETER_BOUNDS, AnnotationQualifierApplicabilityType.TYPE_USE});
        FqName fqName = JvmAnnotationNamesKt.JSPECIFY_OLD_NULL_MARKED;
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        Map mapOf = MapsKt__MapsKt.mapOf(new Pair(fqName, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false), listOf, false)), new Pair(JvmAnnotationNamesKt.JSPECIFY_NULL_MARKED, new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false), listOf, false)));
        JSPECIFY_DEFAULT_ANNOTATIONS = mapOf;
        BUILT_IN_TYPE_QUALIFIER_DEFAULT_ANNOTATIONS = MapsKt__MapsKt.plus(MapsKt__MapsKt.mapOf(new Pair(new FqName("javax.annotation.ParametersAreNullableByDefault"), new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(NullabilityQualifier.NULLABLE, false), Room.listOf(annotationQualifierApplicabilityType))), new Pair(new FqName("javax.annotation.ParametersAreNonnullByDefault"), new JavaDefaultQualifiers(new NullabilityQualifierWithMigrationStatus(nullabilityQualifier, false), Room.listOf(annotationQualifierApplicabilityType)))), mapOf);
        BUILT_IN_TYPE_QUALIFIER_FQ_NAMES = ArraysKt___ArraysKt.toSet(new FqName[]{JvmAnnotationNamesKt.JAVAX_NONNULL_ANNOTATION, JvmAnnotationNamesKt.JAVAX_CHECKFORNULL_ANNOTATION});
    }
}
