package androidx.navigation.serialization;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.navigation.CollectionNavType;
import androidx.navigation.IntNavType;
import androidx.navigation.NavType;
import androidx.room.Room;
import androidx.work.Operation$State;
import coil3.ImageLoader$Builder;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InternalNavType {
    public static final UNKNOWN BoolNullableType;
    public static final InternalNavType$DoubleListType$1 DoubleArrayType;
    public static final InternalNavType$DoubleListType$1 DoubleListType;
    public static final UNKNOWN DoubleNullableType;
    public static final UNKNOWN DoubleType;
    public static final UNKNOWN FloatNullableType;
    public static final UNKNOWN IntNullableType;
    public static final UNKNOWN LongNullableType;
    public static final UNKNOWN StringNonNullableType;
    public static final InternalNavType$DoubleListType$1 StringNullableArrayType;
    public static final InternalNavType$DoubleListType$1 StringNullableListType;

    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.navigation.serialization.InternalNavType$DoubleListType$1] */
    /* JADX WARN: Type inference failed for: r0v7, types: [androidx.navigation.serialization.InternalNavType$DoubleListType$1] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.navigation.serialization.InternalNavType$DoubleListType$1] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.navigation.serialization.InternalNavType$DoubleListType$1] */
    static {
        final boolean z = true;
        IntNullableType = new UNKNOWN(5, z);
        BoolNullableType = new UNKNOWN(1, z);
        boolean z2 = false;
        DoubleType = new UNKNOWN(3, z2);
        DoubleNullableType = new UNKNOWN(2, z);
        FloatNullableType = new UNKNOWN(4, z);
        LongNullableType = new UNKNOWN(6, z);
        StringNonNullableType = new UNKNOWN(7, z2);
        final int i = 2;
        StringNullableArrayType = new CollectionNavType(z) { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
            @Override // androidx.navigation.CollectionNavType
            public final Object emptyCollection() {
                int i2 = i;
                EmptyList emptyList = EmptyList.INSTANCE;
                switch (i2) {
                    case 0:
                        return emptyList;
                    case 1:
                        return new double[0];
                    case 2:
                        return new String[0];
                    default:
                        return emptyList;
                }
            }

            @Override // androidx.navigation.NavType
            public final Object get(Bundle bundle, String str) {
                int i2 = i;
                IntNavType intNavType = NavType.StringType;
                ArrayList arrayList = null;
                switch (i2) {
                    case 0:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray = bundle.getDoubleArray(str);
                        if (doubleArray != null) {
                            return ArraysKt___ArraysKt.toList(doubleArray);
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 1:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray2 = bundle.getDoubleArray(str);
                        if (doubleArray2 != null) {
                            return doubleArray2;
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 2:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        String[] stringArray = bundle.getStringArray(str);
                        if (stringArray == null) {
                            Operation$State.keyOrValueNotFoundError(str);
                            throw null;
                        }
                        ArrayList arrayList2 = new ArrayList(stringArray.length);
                        for (String str2 : stringArray) {
                            arrayList2.add((String) intNavType.mo755parseValue(str2));
                        }
                        return (String[]) arrayList2.toArray(new String[0]);
                    default:
                        bundle.getClass();
                        if (bundle.containsKey(str) && !DpKt.m704isNullimpl(bundle, str)) {
                            String[] stringArray2 = bundle.getStringArray(str);
                            if (stringArray2 == null) {
                                Operation$State.keyOrValueNotFoundError(str);
                                throw null;
                            }
                            List list = ArraysKt___ArraysKt.toList(stringArray2);
                            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add((String) intNavType.mo755parseValue((String) it.next()));
                            }
                        }
                        return arrayList;
                }
            }

            @Override // androidx.navigation.NavType
            public final String getName() {
                switch (i) {
                    case 0:
                        return "List<Double>";
                    case 1:
                        return "double[]";
                    case 2:
                        return "string_nullable[]";
                    default:
                        return "List<String?>";
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            public final Object parseValue(String str, Object obj) {
                int i2 = i;
                IntNavType intNavType = NavType.StringType;
                switch (i2) {
                    case 0:
                        List list = (List) obj;
                        return list != null ? CollectionsKt.plus((Collection) list, (Iterable) Room.listOf(Double.valueOf(Double.parseDouble(str)))) : Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr == null) {
                            return new double[]{Double.parseDouble(str)};
                        }
                        double[] dArr2 = {Double.parseDouble(str)};
                        int length = dArr.length;
                        double[] copyOf = Arrays.copyOf(dArr, length + 1);
                        System.arraycopy(dArr2, 0, copyOf, length, 1);
                        return copyOf;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr == null) {
                            return new String[]{intNavType.mo755parseValue(str)};
                        }
                        String[] strArr2 = {intNavType.mo755parseValue(str)};
                        int length2 = strArr.length;
                        Object[] copyOf2 = Arrays.copyOf(strArr, length2 + 1);
                        System.arraycopy(strArr2, 0, copyOf2, length2, 1);
                        return (String[]) copyOf2;
                    default:
                        List list2 = (List) obj;
                        return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) Room.listOf(intNavType.mo755parseValue(str))) : Room.listOf(intNavType.mo755parseValue(str));
                }
            }

            @Override // androidx.navigation.NavType
            public final void put(Bundle bundle, String str, Object obj) {
                int i2 = 0;
                switch (i) {
                    case 0:
                        List list = (List) obj;
                        str.getClass();
                        if (list == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            double[] dArr = new double[list.size()];
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                dArr[i2] = ((Number) it.next()).doubleValue();
                                i2++;
                            }
                            bundle.putDoubleArray(str, dArr);
                            break;
                        }
                    case 1:
                        double[] dArr2 = (double[]) obj;
                        str.getClass();
                        if (dArr2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            bundle.putDoubleArray(str, dArr2);
                            break;
                        }
                    case 2:
                        String[] strArr = (String[]) obj;
                        str.getClass();
                        if (strArr == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList = new ArrayList(strArr.length);
                            for (String str2 : strArr) {
                                if (str2 == null) {
                                    str2 = "null";
                                }
                                arrayList.add(str2);
                            }
                            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
                            strArr2.getClass();
                            bundle.putStringArray(str, strArr2);
                            break;
                        }
                    default:
                        List<String> list2 = (List) obj;
                        str.getClass();
                        if (list2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            for (String str3 : list2) {
                                if (str3 == null) {
                                    str3 = "null";
                                }
                                arrayList2.add(str3);
                            }
                            String[] strArr3 = (String[]) arrayList2.toArray(new String[0]);
                            strArr3.getClass();
                            bundle.putStringArray(str, strArr3);
                            break;
                        }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
            @Override // androidx.navigation.CollectionNavType
            public final List serializeAsValues(Object obj) {
                String str;
                String str2;
                int i2 = i;
                ?? r3 = EmptyList.INSTANCE;
                switch (i2) {
                    case 0:
                        List list = (List) obj;
                        if (list != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                r3.add(String.valueOf(((Number) it.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr != null) {
                            List list2 = ArraysKt___ArraysKt.toList(dArr);
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                r3.add(String.valueOf(((Number) it2.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr != null) {
                            r3 = new ArrayList(strArr.length);
                            for (String str3 : strArr) {
                                if (str3 != null) {
                                    str = Uri.encode(str3, null);
                                    str.getClass();
                                } else {
                                    str = "null";
                                }
                                r3.add(str);
                            }
                            break;
                        }
                        break;
                    default:
                        List<String> list3 = (List) obj;
                        if (list3 != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                            for (String str4 : list3) {
                                if (str4 != null) {
                                    str2 = Uri.encode(str4, null);
                                    str2.getClass();
                                } else {
                                    str2 = "null";
                                }
                                r3.add(str2);
                            }
                            break;
                        }
                        break;
                }
                return r3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            /* renamed from: parseValue */
            public final Object mo755parseValue(String str) {
                int i2 = i;
                IntNavType intNavType = NavType.StringType;
                switch (i2) {
                    case 0:
                        return Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        return new double[]{Double.parseDouble(str)};
                    case 2:
                        return new String[]{intNavType.mo755parseValue(str)};
                    default:
                        return Room.listOf(intNavType.mo755parseValue(str));
                }
            }
        };
        final int i2 = 3;
        StringNullableListType = new CollectionNavType(z) { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
            @Override // androidx.navigation.CollectionNavType
            public final Object emptyCollection() {
                int i22 = i2;
                EmptyList emptyList = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        return emptyList;
                    case 1:
                        return new double[0];
                    case 2:
                        return new String[0];
                    default:
                        return emptyList;
                }
            }

            @Override // androidx.navigation.NavType
            public final Object get(Bundle bundle, String str) {
                int i22 = i2;
                IntNavType intNavType = NavType.StringType;
                ArrayList arrayList = null;
                switch (i22) {
                    case 0:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray = bundle.getDoubleArray(str);
                        if (doubleArray != null) {
                            return ArraysKt___ArraysKt.toList(doubleArray);
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 1:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray2 = bundle.getDoubleArray(str);
                        if (doubleArray2 != null) {
                            return doubleArray2;
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 2:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        String[] stringArray = bundle.getStringArray(str);
                        if (stringArray == null) {
                            Operation$State.keyOrValueNotFoundError(str);
                            throw null;
                        }
                        ArrayList arrayList2 = new ArrayList(stringArray.length);
                        for (String str2 : stringArray) {
                            arrayList2.add((String) intNavType.mo755parseValue(str2));
                        }
                        return (String[]) arrayList2.toArray(new String[0]);
                    default:
                        bundle.getClass();
                        if (bundle.containsKey(str) && !DpKt.m704isNullimpl(bundle, str)) {
                            String[] stringArray2 = bundle.getStringArray(str);
                            if (stringArray2 == null) {
                                Operation$State.keyOrValueNotFoundError(str);
                                throw null;
                            }
                            List list = ArraysKt___ArraysKt.toList(stringArray2);
                            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add((String) intNavType.mo755parseValue((String) it.next()));
                            }
                        }
                        return arrayList;
                }
            }

            @Override // androidx.navigation.NavType
            public final String getName() {
                switch (i2) {
                    case 0:
                        return "List<Double>";
                    case 1:
                        return "double[]";
                    case 2:
                        return "string_nullable[]";
                    default:
                        return "List<String?>";
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            public final Object parseValue(String str, Object obj) {
                int i22 = i2;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        return list != null ? CollectionsKt.plus((Collection) list, (Iterable) Room.listOf(Double.valueOf(Double.parseDouble(str)))) : Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr == null) {
                            return new double[]{Double.parseDouble(str)};
                        }
                        double[] dArr2 = {Double.parseDouble(str)};
                        int length = dArr.length;
                        double[] copyOf = Arrays.copyOf(dArr, length + 1);
                        System.arraycopy(dArr2, 0, copyOf, length, 1);
                        return copyOf;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr == null) {
                            return new String[]{intNavType.mo755parseValue(str)};
                        }
                        String[] strArr2 = {intNavType.mo755parseValue(str)};
                        int length2 = strArr.length;
                        Object[] copyOf2 = Arrays.copyOf(strArr, length2 + 1);
                        System.arraycopy(strArr2, 0, copyOf2, length2, 1);
                        return (String[]) copyOf2;
                    default:
                        List list2 = (List) obj;
                        return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) Room.listOf(intNavType.mo755parseValue(str))) : Room.listOf(intNavType.mo755parseValue(str));
                }
            }

            @Override // androidx.navigation.NavType
            public final void put(Bundle bundle, String str, Object obj) {
                int i22 = 0;
                switch (i2) {
                    case 0:
                        List list = (List) obj;
                        str.getClass();
                        if (list == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            double[] dArr = new double[list.size()];
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                dArr[i22] = ((Number) it.next()).doubleValue();
                                i22++;
                            }
                            bundle.putDoubleArray(str, dArr);
                            break;
                        }
                    case 1:
                        double[] dArr2 = (double[]) obj;
                        str.getClass();
                        if (dArr2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            bundle.putDoubleArray(str, dArr2);
                            break;
                        }
                    case 2:
                        String[] strArr = (String[]) obj;
                        str.getClass();
                        if (strArr == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList = new ArrayList(strArr.length);
                            for (String str2 : strArr) {
                                if (str2 == null) {
                                    str2 = "null";
                                }
                                arrayList.add(str2);
                            }
                            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
                            strArr2.getClass();
                            bundle.putStringArray(str, strArr2);
                            break;
                        }
                    default:
                        List<String> list2 = (List) obj;
                        str.getClass();
                        if (list2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            for (String str3 : list2) {
                                if (str3 == null) {
                                    str3 = "null";
                                }
                                arrayList2.add(str3);
                            }
                            String[] strArr3 = (String[]) arrayList2.toArray(new String[0]);
                            strArr3.getClass();
                            bundle.putStringArray(str, strArr3);
                            break;
                        }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
            @Override // androidx.navigation.CollectionNavType
            public final List serializeAsValues(Object obj) {
                String str;
                String str2;
                int i22 = i2;
                ?? r3 = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        if (list != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                r3.add(String.valueOf(((Number) it.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr != null) {
                            List list2 = ArraysKt___ArraysKt.toList(dArr);
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                r3.add(String.valueOf(((Number) it2.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr != null) {
                            r3 = new ArrayList(strArr.length);
                            for (String str3 : strArr) {
                                if (str3 != null) {
                                    str = Uri.encode(str3, null);
                                    str.getClass();
                                } else {
                                    str = "null";
                                }
                                r3.add(str);
                            }
                            break;
                        }
                        break;
                    default:
                        List<String> list3 = (List) obj;
                        if (list3 != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                            for (String str4 : list3) {
                                if (str4 != null) {
                                    str2 = Uri.encode(str4, null);
                                    str2.getClass();
                                } else {
                                    str2 = "null";
                                }
                                r3.add(str2);
                            }
                            break;
                        }
                        break;
                }
                return r3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            /* renamed from: parseValue */
            public final Object mo755parseValue(String str) {
                int i22 = i2;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        return Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        return new double[]{Double.parseDouble(str)};
                    case 2:
                        return new String[]{intNavType.mo755parseValue(str)};
                    default:
                        return Room.listOf(intNavType.mo755parseValue(str));
                }
            }
        };
        final int i3 = 1;
        DoubleArrayType = new CollectionNavType(z) { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
            @Override // androidx.navigation.CollectionNavType
            public final Object emptyCollection() {
                int i22 = i3;
                EmptyList emptyList = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        return emptyList;
                    case 1:
                        return new double[0];
                    case 2:
                        return new String[0];
                    default:
                        return emptyList;
                }
            }

            @Override // androidx.navigation.NavType
            public final Object get(Bundle bundle, String str) {
                int i22 = i3;
                IntNavType intNavType = NavType.StringType;
                ArrayList arrayList = null;
                switch (i22) {
                    case 0:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray = bundle.getDoubleArray(str);
                        if (doubleArray != null) {
                            return ArraysKt___ArraysKt.toList(doubleArray);
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 1:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray2 = bundle.getDoubleArray(str);
                        if (doubleArray2 != null) {
                            return doubleArray2;
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 2:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        String[] stringArray = bundle.getStringArray(str);
                        if (stringArray == null) {
                            Operation$State.keyOrValueNotFoundError(str);
                            throw null;
                        }
                        ArrayList arrayList2 = new ArrayList(stringArray.length);
                        for (String str2 : stringArray) {
                            arrayList2.add((String) intNavType.mo755parseValue(str2));
                        }
                        return (String[]) arrayList2.toArray(new String[0]);
                    default:
                        bundle.getClass();
                        if (bundle.containsKey(str) && !DpKt.m704isNullimpl(bundle, str)) {
                            String[] stringArray2 = bundle.getStringArray(str);
                            if (stringArray2 == null) {
                                Operation$State.keyOrValueNotFoundError(str);
                                throw null;
                            }
                            List list = ArraysKt___ArraysKt.toList(stringArray2);
                            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add((String) intNavType.mo755parseValue((String) it.next()));
                            }
                        }
                        return arrayList;
                }
            }

            @Override // androidx.navigation.NavType
            public final String getName() {
                switch (i3) {
                    case 0:
                        return "List<Double>";
                    case 1:
                        return "double[]";
                    case 2:
                        return "string_nullable[]";
                    default:
                        return "List<String?>";
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            public final Object parseValue(String str, Object obj) {
                int i22 = i3;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        return list != null ? CollectionsKt.plus((Collection) list, (Iterable) Room.listOf(Double.valueOf(Double.parseDouble(str)))) : Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr == null) {
                            return new double[]{Double.parseDouble(str)};
                        }
                        double[] dArr2 = {Double.parseDouble(str)};
                        int length = dArr.length;
                        double[] copyOf = Arrays.copyOf(dArr, length + 1);
                        System.arraycopy(dArr2, 0, copyOf, length, 1);
                        return copyOf;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr == null) {
                            return new String[]{intNavType.mo755parseValue(str)};
                        }
                        String[] strArr2 = {intNavType.mo755parseValue(str)};
                        int length2 = strArr.length;
                        Object[] copyOf2 = Arrays.copyOf(strArr, length2 + 1);
                        System.arraycopy(strArr2, 0, copyOf2, length2, 1);
                        return (String[]) copyOf2;
                    default:
                        List list2 = (List) obj;
                        return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) Room.listOf(intNavType.mo755parseValue(str))) : Room.listOf(intNavType.mo755parseValue(str));
                }
            }

            @Override // androidx.navigation.NavType
            public final void put(Bundle bundle, String str, Object obj) {
                int i22 = 0;
                switch (i3) {
                    case 0:
                        List list = (List) obj;
                        str.getClass();
                        if (list == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            double[] dArr = new double[list.size()];
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                dArr[i22] = ((Number) it.next()).doubleValue();
                                i22++;
                            }
                            bundle.putDoubleArray(str, dArr);
                            break;
                        }
                    case 1:
                        double[] dArr2 = (double[]) obj;
                        str.getClass();
                        if (dArr2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            bundle.putDoubleArray(str, dArr2);
                            break;
                        }
                    case 2:
                        String[] strArr = (String[]) obj;
                        str.getClass();
                        if (strArr == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList = new ArrayList(strArr.length);
                            for (String str2 : strArr) {
                                if (str2 == null) {
                                    str2 = "null";
                                }
                                arrayList.add(str2);
                            }
                            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
                            strArr2.getClass();
                            bundle.putStringArray(str, strArr2);
                            break;
                        }
                    default:
                        List<String> list2 = (List) obj;
                        str.getClass();
                        if (list2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            for (String str3 : list2) {
                                if (str3 == null) {
                                    str3 = "null";
                                }
                                arrayList2.add(str3);
                            }
                            String[] strArr3 = (String[]) arrayList2.toArray(new String[0]);
                            strArr3.getClass();
                            bundle.putStringArray(str, strArr3);
                            break;
                        }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
            @Override // androidx.navigation.CollectionNavType
            public final List serializeAsValues(Object obj) {
                String str;
                String str2;
                int i22 = i3;
                ?? r3 = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        if (list != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                r3.add(String.valueOf(((Number) it.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr != null) {
                            List list2 = ArraysKt___ArraysKt.toList(dArr);
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                r3.add(String.valueOf(((Number) it2.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr != null) {
                            r3 = new ArrayList(strArr.length);
                            for (String str3 : strArr) {
                                if (str3 != null) {
                                    str = Uri.encode(str3, null);
                                    str.getClass();
                                } else {
                                    str = "null";
                                }
                                r3.add(str);
                            }
                            break;
                        }
                        break;
                    default:
                        List<String> list3 = (List) obj;
                        if (list3 != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                            for (String str4 : list3) {
                                if (str4 != null) {
                                    str2 = Uri.encode(str4, null);
                                    str2.getClass();
                                } else {
                                    str2 = "null";
                                }
                                r3.add(str2);
                            }
                            break;
                        }
                        break;
                }
                return r3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            /* renamed from: parseValue */
            public final Object mo755parseValue(String str) {
                int i22 = i3;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        return Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        return new double[]{Double.parseDouble(str)};
                    case 2:
                        return new String[]{intNavType.mo755parseValue(str)};
                    default:
                        return Room.listOf(intNavType.mo755parseValue(str));
                }
            }
        };
        final int i4 = 0;
        DoubleListType = new CollectionNavType(z) { // from class: androidx.navigation.serialization.InternalNavType$DoubleListType$1
            @Override // androidx.navigation.CollectionNavType
            public final Object emptyCollection() {
                int i22 = i4;
                EmptyList emptyList = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        return emptyList;
                    case 1:
                        return new double[0];
                    case 2:
                        return new String[0];
                    default:
                        return emptyList;
                }
            }

            @Override // androidx.navigation.NavType
            public final Object get(Bundle bundle, String str) {
                int i22 = i4;
                IntNavType intNavType = NavType.StringType;
                ArrayList arrayList = null;
                switch (i22) {
                    case 0:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray = bundle.getDoubleArray(str);
                        if (doubleArray != null) {
                            return ArraysKt___ArraysKt.toList(doubleArray);
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 1:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        double[] doubleArray2 = bundle.getDoubleArray(str);
                        if (doubleArray2 != null) {
                            return doubleArray2;
                        }
                        Operation$State.keyOrValueNotFoundError(str);
                        throw null;
                    case 2:
                        bundle.getClass();
                        if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                            return null;
                        }
                        String[] stringArray = bundle.getStringArray(str);
                        if (stringArray == null) {
                            Operation$State.keyOrValueNotFoundError(str);
                            throw null;
                        }
                        ArrayList arrayList2 = new ArrayList(stringArray.length);
                        for (String str2 : stringArray) {
                            arrayList2.add((String) intNavType.mo755parseValue(str2));
                        }
                        return (String[]) arrayList2.toArray(new String[0]);
                    default:
                        bundle.getClass();
                        if (bundle.containsKey(str) && !DpKt.m704isNullimpl(bundle, str)) {
                            String[] stringArray2 = bundle.getStringArray(str);
                            if (stringArray2 == null) {
                                Operation$State.keyOrValueNotFoundError(str);
                                throw null;
                            }
                            List list = ArraysKt___ArraysKt.toList(stringArray2);
                            arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                arrayList.add((String) intNavType.mo755parseValue((String) it.next()));
                            }
                        }
                        return arrayList;
                }
            }

            @Override // androidx.navigation.NavType
            public final String getName() {
                switch (i4) {
                    case 0:
                        return "List<Double>";
                    case 1:
                        return "double[]";
                    case 2:
                        return "string_nullable[]";
                    default:
                        return "List<String?>";
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            public final Object parseValue(String str, Object obj) {
                int i22 = i4;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        return list != null ? CollectionsKt.plus((Collection) list, (Iterable) Room.listOf(Double.valueOf(Double.parseDouble(str)))) : Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr == null) {
                            return new double[]{Double.parseDouble(str)};
                        }
                        double[] dArr2 = {Double.parseDouble(str)};
                        int length = dArr.length;
                        double[] copyOf = Arrays.copyOf(dArr, length + 1);
                        System.arraycopy(dArr2, 0, copyOf, length, 1);
                        return copyOf;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr == null) {
                            return new String[]{intNavType.mo755parseValue(str)};
                        }
                        String[] strArr2 = {intNavType.mo755parseValue(str)};
                        int length2 = strArr.length;
                        Object[] copyOf2 = Arrays.copyOf(strArr, length2 + 1);
                        System.arraycopy(strArr2, 0, copyOf2, length2, 1);
                        return (String[]) copyOf2;
                    default:
                        List list2 = (List) obj;
                        return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) Room.listOf(intNavType.mo755parseValue(str))) : Room.listOf(intNavType.mo755parseValue(str));
                }
            }

            @Override // androidx.navigation.NavType
            public final void put(Bundle bundle, String str, Object obj) {
                int i22 = 0;
                switch (i4) {
                    case 0:
                        List list = (List) obj;
                        str.getClass();
                        if (list == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            double[] dArr = new double[list.size()];
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                dArr[i22] = ((Number) it.next()).doubleValue();
                                i22++;
                            }
                            bundle.putDoubleArray(str, dArr);
                            break;
                        }
                    case 1:
                        double[] dArr2 = (double[]) obj;
                        str.getClass();
                        if (dArr2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            bundle.putDoubleArray(str, dArr2);
                            break;
                        }
                    case 2:
                        String[] strArr = (String[]) obj;
                        str.getClass();
                        if (strArr == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList = new ArrayList(strArr.length);
                            for (String str2 : strArr) {
                                if (str2 == null) {
                                    str2 = "null";
                                }
                                arrayList.add(str2);
                            }
                            String[] strArr2 = (String[]) arrayList.toArray(new String[0]);
                            strArr2.getClass();
                            bundle.putStringArray(str, strArr2);
                            break;
                        }
                    default:
                        List<String> list2 = (List) obj;
                        str.getClass();
                        if (list2 == null) {
                            bundle.putString(str, null);
                            break;
                        } else {
                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            for (String str3 : list2) {
                                if (str3 == null) {
                                    str3 = "null";
                                }
                                arrayList2.add(str3);
                            }
                            String[] strArr3 = (String[]) arrayList2.toArray(new String[0]);
                            strArr3.getClass();
                            bundle.putStringArray(str, strArr3);
                            break;
                        }
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0, types: [kotlin.collections.EmptyList] */
            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v6, types: [java.util.ArrayList] */
            /* JADX WARN: Type inference failed for: r3v7, types: [java.util.List] */
            /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList] */
            @Override // androidx.navigation.CollectionNavType
            public final List serializeAsValues(Object obj) {
                String str;
                String str2;
                int i22 = i4;
                ?? r3 = EmptyList.INSTANCE;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        if (list != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                r3.add(String.valueOf(((Number) it.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 1:
                        double[] dArr = (double[]) obj;
                        if (dArr != null) {
                            List list2 = ArraysKt___ArraysKt.toList(dArr);
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                            Iterator it2 = list2.iterator();
                            while (it2.hasNext()) {
                                r3.add(String.valueOf(((Number) it2.next()).doubleValue()));
                            }
                            break;
                        }
                        break;
                    case 2:
                        String[] strArr = (String[]) obj;
                        if (strArr != null) {
                            r3 = new ArrayList(strArr.length);
                            for (String str3 : strArr) {
                                if (str3 != null) {
                                    str = Uri.encode(str3, null);
                                    str.getClass();
                                } else {
                                    str = "null";
                                }
                                r3.add(str);
                            }
                            break;
                        }
                        break;
                    default:
                        List<String> list3 = (List) obj;
                        if (list3 != null) {
                            r3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                            for (String str4 : list3) {
                                if (str4 != null) {
                                    str2 = Uri.encode(str4, null);
                                    str2.getClass();
                                } else {
                                    str2 = "null";
                                }
                                r3.add(str2);
                            }
                            break;
                        }
                        break;
                }
                return r3;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // androidx.navigation.NavType
            /* renamed from: parseValue */
            public final Object mo755parseValue(String str) {
                int i22 = i4;
                IntNavType intNavType = NavType.StringType;
                switch (i22) {
                    case 0:
                        return Room.listOf(Double.valueOf(Double.parseDouble(str)));
                    case 1:
                        return new double[]{Double.parseDouble(str)};
                    case 2:
                        return new String[]{intNavType.mo755parseValue(str)};
                    default:
                        return Room.listOf(intNavType.mo755parseValue(str));
                }
            }
        };
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0125, code lost:
    
        if (r8 == null) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.navigation.NavType computeNavType(kotlinx.serialization.descriptors.SerialDescriptor r7, java.util.Map r8) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.serialization.InternalNavType.computeNavType(kotlinx.serialization.descriptors.SerialDescriptor, java.util.Map):androidx.navigation.NavType");
    }

    public static final int generateHashCode(KSerializer kSerializer) {
        int hashCode = kSerializer.getDescriptor().getSerialName().hashCode();
        int elementsCount = kSerializer.getDescriptor().getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            hashCode = (hashCode * 31) + kSerializer.getDescriptor().getElementName(i).hashCode();
        }
        return hashCode;
    }

    public static final String generateRouteWithArgs(Object obj, LinkedHashMap linkedHashMap) {
        obj.getClass();
        KSerializer serializer = TuplesKt.serializer(Reflection.factory.getOrCreateKotlinClass(obj.getClass()));
        RouteEncoder routeEncoder = new RouteEncoder(serializer, linkedHashMap);
        serializer.serialize(routeEncoder, obj);
        Map map = MapsKt__MapsKt.toMap(routeEncoder.map);
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(serializer);
        SubcomposeAsyncImageKt$$ExternalSyntheticLambda2 subcomposeAsyncImageKt$$ExternalSyntheticLambda2 = new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(6, map, imageLoader$Builder);
        int elementsCount = serializer.getDescriptor().getElementsCount();
        for (int i = 0; i < elementsCount; i++) {
            String elementName = serializer.getDescriptor().getElementName(i);
            NavType navType = (NavType) linkedHashMap.get(elementName);
            if (navType == null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(']', "Cannot locate NavType for argument [", elementName));
                return null;
            }
            subcomposeAsyncImageKt$$ExternalSyntheticLambda2.invoke(Integer.valueOf(i), elementName, navType);
        }
        return ((String) imageLoader$Builder.defaults) + ((String) imageLoader$Builder.componentRegistry) + ((String) imageLoader$Builder.extras);
    }

    public static final Class getClass(SerialDescriptor serialDescriptor) {
        String replace$default = StringsKt__StringsJVMKt.replace$default(serialDescriptor.getSerialName(), "?", "");
        try {
            return Class.forName(replace$default);
        } catch (ClassNotFoundException unused) {
            if (StringsKt.contains(replace$default, ".", false)) {
                Pattern compile = Pattern.compile("(\\.+)(?!.*\\.)");
                compile.getClass();
                String replaceAll = compile.matcher(replace$default).replaceAll("\\$");
                replaceAll.getClass();
                return Class.forName(replaceAll);
            }
            String str = "Cannot find class with name \"" + serialDescriptor.getSerialName() + "\". Ensure that the serialName for this argument is the default fully qualified name";
            if (serialDescriptor.getKind() instanceof SerialKind$ENUM) {
                str = str.concat(".\nIf the build is minified, try annotating the Enum class with \"androidx.annotation.Keep\" to ensure the Enum is not removed.");
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(str);
            return null;
        }
    }

    public static final InternalType toInternalType(SerialDescriptor serialDescriptor) {
        String replace$default = StringsKt__StringsJVMKt.replace$default(serialDescriptor.getSerialName(), "?", "");
        return Intrinsics.areEqual(serialDescriptor.getKind(), SerialKind$ENUM.INSTANCE) ? serialDescriptor.isNullable() ? InternalType.ENUM_NULLABLE : InternalType.ENUM : replace$default.equals("kotlin.Int") ? serialDescriptor.isNullable() ? InternalType.INT_NULLABLE : InternalType.INT : replace$default.equals("kotlin.Boolean") ? serialDescriptor.isNullable() ? InternalType.BOOL_NULLABLE : InternalType.BOOL : replace$default.equals("kotlin.Double") ? serialDescriptor.isNullable() ? InternalType.DOUBLE_NULLABLE : InternalType.DOUBLE : replace$default.equals("kotlin.Float") ? serialDescriptor.isNullable() ? InternalType.FLOAT_NULLABLE : InternalType.FLOAT : replace$default.equals("kotlin.Long") ? serialDescriptor.isNullable() ? InternalType.LONG_NULLABLE : InternalType.LONG : replace$default.equals("kotlin.String") ? serialDescriptor.isNullable() ? InternalType.STRING_NULLABLE : InternalType.STRING : replace$default.equals("kotlin.IntArray") ? InternalType.INT_ARRAY : replace$default.equals("kotlin.DoubleArray") ? InternalType.DOUBLE_ARRAY : replace$default.equals("kotlin.BooleanArray") ? InternalType.BOOL_ARRAY : replace$default.equals("kotlin.FloatArray") ? InternalType.FLOAT_ARRAY : replace$default.equals("kotlin.LongArray") ? InternalType.LONG_ARRAY : replace$default.equals("kotlin.Array") ? InternalType.ARRAY : StringsKt__StringsJVMKt.startsWith(replace$default, "kotlin.collections.ArrayList", false) ? InternalType.LIST : InternalType.UNKNOWN;
    }

    public static final String unknownNavTypeErrorMessage(String str, String str2, String str3, String str4) {
        StringBuilder m352m = Modifier.CC.m352m("Route ", str3, " could not find any NavType for argument ", str, " of type ");
        m352m.append(str2);
        m352m.append(" - typeMap received was ");
        m352m.append(str4);
        return m352m.toString();
    }
}
