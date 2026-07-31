package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.room.Room;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.uuid.UuidKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltInsSignatures {
    public static final LinkedHashSet DROP_LIST_METHOD_SIGNATURES = UuidKt.plus(JvmTypeFactoryImpl.inJavaUtil("Collection", "toArray()[Ljava/lang/Object;", "toArray([Ljava/lang/Object;)[Ljava/lang/Object;"), "java/lang/annotation/Annotation.annotationType()Ljava/lang/Class;");
    public static final LinkedHashSet HIDDEN_CONSTRUCTOR_SIGNATURES;
    public static final LinkedHashSet HIDDEN_METHOD_SIGNATURES;
    public static final LinkedHashSet MUTABLE_METHOD_SIGNATURES;
    public static final LinkedHashSet VISIBLE_CONSTRUCTOR_SIGNATURES;
    public static final LinkedHashSet VISIBLE_METHOD_SIGNATURES;

    static {
        List<JvmPrimitiveType> listOf = Room.listOf((Object[]) new JvmPrimitiveType[]{JvmPrimitiveType.BOOLEAN, JvmPrimitiveType.CHAR});
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (JvmPrimitiveType jvmPrimitiveType : listOf) {
            String asString = jvmPrimitiveType.getWrapperFqName().shortName().asString();
            asString.getClass();
            String[] strArr = {jvmPrimitiveType.getJavaKeywordName() + "Value()" + jvmPrimitiveType.getDesc()};
            String concat = "java/lang/".concat(asString);
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, 1);
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            for (String str : strArr2) {
                linkedHashSet2.add(concat + '.' + str);
            }
            CollectionsKt.addAll(linkedHashSet, linkedHashSet2);
        }
        HIDDEN_METHOD_SIGNATURES = UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) linkedHashSet, (Iterable) JvmTypeFactoryImpl.inJavaUtil("List", "sort(Ljava/util/Comparator;)V")), (Iterable) JvmTypeFactoryImpl.inJavaLang("String", "codePointAt(I)I", "codePointBefore(I)I", "codePointCount(II)I", "compareToIgnoreCase(Ljava/lang/String;)I", "concat(Ljava/lang/String;)Ljava/lang/String;", "contains(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/CharSequence;)Z", "contentEquals(Ljava/lang/StringBuffer;)Z", "endsWith(Ljava/lang/String;)Z", "equalsIgnoreCase(Ljava/lang/String;)Z", "getBytes()[B", "getBytes(II[BI)V", "getBytes(Ljava/lang/String;)[B", "getBytes(Ljava/nio/charset/Charset;)[B", "getChars(II[CI)V", "indexOf(I)I", "indexOf(II)I", "indexOf(Ljava/lang/String;)I", "indexOf(Ljava/lang/String;I)I", "intern()Ljava/lang/String;", "isEmpty()Z", "lastIndexOf(I)I", "lastIndexOf(II)I", "lastIndexOf(Ljava/lang/String;)I", "lastIndexOf(Ljava/lang/String;I)I", "matches(Ljava/lang/String;)Z", "offsetByCodePoints(II)I", "regionMatches(ILjava/lang/String;II)Z", "regionMatches(ZILjava/lang/String;II)Z", "replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(CC)Ljava/lang/String;", "replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;", "split(Ljava/lang/String;I)[Ljava/lang/String;", "split(Ljava/lang/String;)[Ljava/lang/String;", "startsWith(Ljava/lang/String;I)Z", "startsWith(Ljava/lang/String;)Z", "substring(II)Ljava/lang/String;", "substring(I)Ljava/lang/String;", "toCharArray()[C", "toLowerCase()Ljava/lang/String;", "toLowerCase(Ljava/util/Locale;)Ljava/lang/String;", "toUpperCase()Ljava/lang/String;", "toUpperCase(Ljava/util/Locale;)Ljava/lang/String;", "trim()Ljava/lang/String;", "isBlank()Z", "lines()Ljava/util/stream/Stream;", "repeat(I)Ljava/lang/String;")), (Iterable) JvmTypeFactoryImpl.inJavaLang("Double", "isInfinite()Z", "isNaN()Z")), (Iterable) JvmTypeFactoryImpl.inJavaLang("Float", "isInfinite()Z", "isNaN()Z")), (Iterable) JvmTypeFactoryImpl.inJavaLang("Enum", "getDeclaringClass()Ljava/lang/Class;", "finalize()V")), (Iterable) JvmTypeFactoryImpl.inJavaLang("CharSequence", "isEmpty()Z"));
        VISIBLE_METHOD_SIGNATURES = UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) UuidKt.plus((Set) JvmTypeFactoryImpl.inJavaLang("CharSequence", "codePoints()Ljava/util/stream/IntStream;", "chars()Ljava/util/stream/IntStream;"), (Iterable) JvmTypeFactoryImpl.inJavaUtil("Iterator", "forEachRemaining(Ljava/util/function/Consumer;)V")), (Iterable) JvmTypeFactoryImpl.inJavaLang("Iterable", "forEach(Ljava/util/function/Consumer;)V", "spliterator()Ljava/util/Spliterator;")), (Iterable) JvmTypeFactoryImpl.inJavaLang("Throwable", "setStackTrace([Ljava/lang/StackTraceElement;)V", "fillInStackTrace()Ljava/lang/Throwable;", "getLocalizedMessage()Ljava/lang/String;", "printStackTrace()V", "printStackTrace(Ljava/io/PrintStream;)V", "printStackTrace(Ljava/io/PrintWriter;)V", "getStackTrace()[Ljava/lang/StackTraceElement;", "initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "getSuppressed()[Ljava/lang/Throwable;", "addSuppressed(Ljava/lang/Throwable;)V")), (Iterable) JvmTypeFactoryImpl.inJavaUtil("Collection", "spliterator()Ljava/util/Spliterator;", "parallelStream()Ljava/util/stream/Stream;", "stream()Ljava/util/stream/Stream;", "removeIf(Ljava/util/function/Predicate;)Z")), (Iterable) JvmTypeFactoryImpl.inJavaUtil("List", "replaceAll(Ljava/util/function/UnaryOperator;)V")), (Iterable) JvmTypeFactoryImpl.inJavaUtil("Map", "getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "forEach(Ljava/util/function/BiConsumer;)V", "replaceAll(Ljava/util/function/BiFunction;)V", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;"));
        MUTABLE_METHOD_SIGNATURES = UuidKt.plus((Set) UuidKt.plus((Set) JvmTypeFactoryImpl.inJavaUtil("Collection", "removeIf(Ljava/util/function/Predicate;)Z"), (Iterable) JvmTypeFactoryImpl.inJavaUtil("List", "replaceAll(Ljava/util/function/UnaryOperator;)V", "sort(Ljava/util/Comparator;)V")), (Iterable) JvmTypeFactoryImpl.inJavaUtil("Map", "computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;", "computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;", "putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove(Ljava/lang/Object;Ljava/lang/Object;)Z", "replaceAll(Ljava/util/function/BiFunction;)V", "replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z"));
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.BYTE;
        List listOf2 = Room.listOf((Object[]) new JvmPrimitiveType[]{JvmPrimitiveType.BOOLEAN, jvmPrimitiveType2, JvmPrimitiveType.DOUBLE, JvmPrimitiveType.FLOAT, jvmPrimitiveType2, JvmPrimitiveType.INT, JvmPrimitiveType.LONG, JvmPrimitiveType.SHORT});
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        Iterator it = listOf2.iterator();
        while (it.hasNext()) {
            String asString2 = ((JvmPrimitiveType) it.next()).getWrapperFqName().shortName().asString();
            asString2.getClass();
            String[] constructors = JvmTypeFactoryImpl.constructors("Ljava/lang/String;");
            CollectionsKt.addAll(linkedHashSet3, JvmTypeFactoryImpl.inJavaLang(asString2, (String[]) Arrays.copyOf(constructors, constructors.length)));
        }
        String[] constructors2 = JvmTypeFactoryImpl.constructors("D");
        LinkedHashSet plus = UuidKt.plus((Set) linkedHashSet3, (Iterable) JvmTypeFactoryImpl.inJavaLang("Float", (String[]) Arrays.copyOf(constructors2, constructors2.length)));
        String[] constructors3 = JvmTypeFactoryImpl.constructors("[C", "[CII", "[III", "[BIILjava/lang/String;", "[BIILjava/nio/charset/Charset;", "[BLjava/lang/String;", "[BLjava/nio/charset/Charset;", "[BII", "[B", "Ljava/lang/StringBuffer;", "Ljava/lang/StringBuilder;");
        HIDDEN_CONSTRUCTOR_SIGNATURES = UuidKt.plus((Set) plus, (Iterable) JvmTypeFactoryImpl.inJavaLang("String", (String[]) Arrays.copyOf(constructors3, constructors3.length)));
        String[] constructors4 = JvmTypeFactoryImpl.constructors("Ljava/lang/String;Ljava/lang/Throwable;ZZ");
        VISIBLE_CONSTRUCTOR_SIGNATURES = JvmTypeFactoryImpl.inJavaLang("Throwable", (String[]) Arrays.copyOf(constructors4, constructors4.length));
    }
}
