package kotlin.reflect.jvm.internal.impl.load.java;

import androidx.room.Room;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JvmAnnotationNamesKt {
    public static final FqName ANDROIDX_RECENTLY_NON_NULL_ANNOTATION;
    public static final FqName ANDROIDX_RECENTLY_NULLABLE_ANNOTATION;
    public static final FqName COMPATQUAL_NONNULL_ANNOTATION;
    public static final FqName COMPATQUAL_NULLABLE_ANNOTATION;
    public static final FqName JAVAX_CHECKFORNULL_ANNOTATION;
    public static final FqName JAVAX_NONNULL_ANNOTATION;
    public static final FqName JSPECIFY_NULLABLE;
    public static final FqName JSPECIFY_NULLNESS_UNKNOWN;
    public static final FqName JSPECIFY_NULL_MARKED;
    public static final FqName JSPECIFY_OLD_NULLABLE;
    public static final FqName JSPECIFY_OLD_NULLNESS_UNKNOWN;
    public static final FqName JSPECIFY_OLD_NULL_MARKED;
    public static final Set MUTABLE_ANNOTATIONS;
    public static final List NOT_NULL_ANNOTATIONS;
    public static final List NULLABLE_ANNOTATIONS;
    public static final Set READ_ONLY_ANNOTATIONS;

    static {
        FqName fqName = new FqName("org.jspecify.nullness.Nullable");
        JSPECIFY_OLD_NULLABLE = fqName;
        JSPECIFY_OLD_NULLNESS_UNKNOWN = new FqName("org.jspecify.nullness.NullnessUnspecified");
        FqName fqName2 = new FqName("org.jspecify.nullness.NullMarked");
        JSPECIFY_OLD_NULL_MARKED = fqName2;
        FqName fqName3 = new FqName("org.jspecify.annotations.Nullable");
        JSPECIFY_NULLABLE = fqName3;
        JSPECIFY_NULLNESS_UNKNOWN = new FqName("org.jspecify.annotations.NullnessUnspecified");
        FqName fqName4 = new FqName("org.jspecify.annotations.NullMarked");
        JSPECIFY_NULL_MARKED = fqName4;
        List listOf = Room.listOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_NULLABLE_ANNOTATION, new FqName("androidx.annotation.Nullable"), new FqName("android.support.annotation.Nullable"), new FqName("android.annotation.Nullable"), new FqName("com.android.annotations.Nullable"), new FqName("org.eclipse.jdt.annotation.Nullable"), new FqName("org.checkerframework.checker.nullness.qual.Nullable"), new FqName("javax.annotation.Nullable"), new FqName("javax.annotation.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.CheckForNull"), new FqName("edu.umd.cs.findbugs.annotations.Nullable"), new FqName("edu.umd.cs.findbugs.annotations.PossiblyNull"), new FqName("io.reactivex.annotations.Nullable"), new FqName("io.reactivex.rxjava3.annotations.Nullable")});
        NULLABLE_ANNOTATIONS = listOf;
        FqName fqName5 = new FqName("javax.annotation.Nonnull");
        JAVAX_NONNULL_ANNOTATION = fqName5;
        JAVAX_CHECKFORNULL_ANNOTATION = new FqName("javax.annotation.CheckForNull");
        List listOf2 = Room.listOf((Object[]) new FqName[]{JvmAnnotationNames.JETBRAINS_NOT_NULL_ANNOTATION, new FqName("edu.umd.cs.findbugs.annotations.NonNull"), new FqName("androidx.annotation.NonNull"), new FqName("android.support.annotation.NonNull"), new FqName("android.annotation.NonNull"), new FqName("com.android.annotations.NonNull"), new FqName("org.eclipse.jdt.annotation.NonNull"), new FqName("org.checkerframework.checker.nullness.qual.NonNull"), new FqName("lombok.NonNull"), new FqName("io.reactivex.annotations.NonNull"), new FqName("io.reactivex.rxjava3.annotations.NonNull")});
        NOT_NULL_ANNOTATIONS = listOf2;
        FqName fqName6 = new FqName("org.checkerframework.checker.nullness.compatqual.NullableDecl");
        COMPATQUAL_NULLABLE_ANNOTATION = fqName6;
        FqName fqName7 = new FqName("org.checkerframework.checker.nullness.compatqual.NonNullDecl");
        COMPATQUAL_NONNULL_ANNOTATION = fqName7;
        FqName fqName8 = new FqName("androidx.annotation.RecentlyNullable");
        ANDROIDX_RECENTLY_NULLABLE_ANNOTATION = fqName8;
        FqName fqName9 = new FqName("androidx.annotation.RecentlyNonNull");
        ANDROIDX_RECENTLY_NON_NULL_ANNOTATION = fqName9;
        UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus(UuidKt.plus((Set) UuidKt.plus(UuidKt.plus((Set) new LinkedHashSet(), (Iterable) listOf), fqName5), (Iterable) listOf2), fqName6), fqName7), fqName8), fqName9), fqName), fqName2), fqName3), fqName4);
        READ_ONLY_ANNOTATIONS = ArraysKt___ArraysKt.toSet(new FqName[]{JvmAnnotationNames.JETBRAINS_READONLY_ANNOTATION, JvmAnnotationNames.READONLY_ANNOTATION});
        MUTABLE_ANNOTATIONS = ArraysKt___ArraysKt.toSet(new FqName[]{JvmAnnotationNames.JETBRAINS_MUTABLE_ANNOTATION, JvmAnnotationNames.MUTABLE_ANNOTATION});
        MapsKt__MapsKt.mapOf(new Pair(JvmAnnotationNames.TARGET_ANNOTATION, StandardNames.FqNames.target), new Pair(JvmAnnotationNames.RETENTION_ANNOTATION, StandardNames.FqNames.retention), new Pair(JvmAnnotationNames.DEPRECATED_ANNOTATION, StandardNames.FqNames.deprecated), new Pair(JvmAnnotationNames.DOCUMENTED_ANNOTATION, StandardNames.FqNames.mustBeDocumented));
    }
}
