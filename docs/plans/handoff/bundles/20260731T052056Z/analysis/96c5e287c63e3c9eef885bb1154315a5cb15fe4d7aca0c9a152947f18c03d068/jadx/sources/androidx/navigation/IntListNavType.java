package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import androidx.work.Operation$State;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IntListNavType extends CollectionNavType {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ IntListNavType(int i, boolean z) {
        super(z);
        this.$r8$classId = i;
    }

    @Override // androidx.navigation.CollectionNavType
    public final Object emptyCollection() {
        int i = this.$r8$classId;
        EmptyList emptyList = EmptyList.INSTANCE;
        switch (i) {
            case 0:
                return emptyList;
            case 1:
                return new boolean[0];
            case 2:
                return emptyList;
            case 3:
                return new float[0];
            case 4:
                return emptyList;
            case 5:
                return new int[0];
            case 6:
                return new long[0];
            case 7:
                return emptyList;
            case 8:
                return new String[0];
            default:
                return emptyList;
        }
    }

    @Override // androidx.navigation.NavType
    public final Object get(Bundle bundle, String str) {
        switch (this.$r8$classId) {
            case 0:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                int[] intArray = bundle.getIntArray(str);
                if (intArray != null) {
                    return ArraysKt___ArraysKt.toList(intArray);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 1:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                boolean[] booleanArray = bundle.getBooleanArray(str);
                if (booleanArray != null) {
                    return booleanArray;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 2:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                boolean[] booleanArray2 = bundle.getBooleanArray(str);
                if (booleanArray2 != null) {
                    return ArraysKt___ArraysKt.toList(booleanArray2);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 3:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                float[] floatArray = bundle.getFloatArray(str);
                if (floatArray != null) {
                    return floatArray;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 4:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                float[] floatArray2 = bundle.getFloatArray(str);
                if (floatArray2 != null) {
                    return ArraysKt___ArraysKt.toList(floatArray2);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 5:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                int[] intArray2 = bundle.getIntArray(str);
                if (intArray2 != null) {
                    return intArray2;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 6:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                long[] longArray = bundle.getLongArray(str);
                if (longArray != null) {
                    return longArray;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 7:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                long[] longArray2 = bundle.getLongArray(str);
                if (longArray2 != null) {
                    return ArraysKt___ArraysKt.toList(longArray2);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            case 8:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                String[] stringArray = bundle.getStringArray(str);
                if (stringArray != null) {
                    return stringArray;
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
            default:
                bundle.getClass();
                if (!bundle.containsKey(str) || DpKt.m704isNullimpl(bundle, str)) {
                    return null;
                }
                String[] stringArray2 = bundle.getStringArray(str);
                if (stringArray2 != null) {
                    return ArraysKt___ArraysKt.toList(stringArray2);
                }
                Operation$State.keyOrValueNotFoundError(str);
                throw null;
        }
    }

    @Override // androidx.navigation.NavType
    public final String getName() {
        switch (this.$r8$classId) {
            case 0:
                return "List<Int>";
            case 1:
                return "boolean[]";
            case 2:
                return "List<Boolean>";
            case 3:
                return "float[]";
            case 4:
                return "List<Float>";
            case 5:
                return "integer[]";
            case 6:
                return "long[]";
            case 7:
                return "List<Long>";
            case 8:
                return "string[]";
            default:
                return "List<String>";
        }
    }

    @Override // androidx.navigation.NavType
    public final Object parseValue(String str, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                List list = (List) obj;
                IntNavType intNavType = NavType.IntType;
                return list != null ? CollectionsKt.plus((Collection) list, (Iterable) Room.listOf(intNavType.mo755parseValue(str))) : Room.listOf(intNavType.mo755parseValue(str));
            case 1:
                boolean[] zArr = (boolean[]) obj;
                if (zArr == null) {
                    return m754parseValue(str);
                }
                boolean[] m754parseValue = m754parseValue(str);
                int length = zArr.length;
                boolean[] copyOf = Arrays.copyOf(zArr, length + 1);
                System.arraycopy(m754parseValue, 0, copyOf, length, 1);
                return copyOf;
            case 2:
                List list2 = (List) obj;
                IntNavType intNavType2 = NavType.BoolType;
                return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) Room.listOf(intNavType2.mo755parseValue(str))) : Room.listOf(intNavType2.mo755parseValue(str));
            case 3:
                float[] fArr = (float[]) obj;
                if (fArr == null) {
                    return new float[]{Float.parseFloat(str)};
                }
                float[] fArr2 = {Float.parseFloat(str)};
                int length2 = fArr.length;
                float[] copyOf2 = Arrays.copyOf(fArr, length2 + 1);
                System.arraycopy(fArr2, 0, copyOf2, length2, 1);
                return copyOf2;
            case 4:
                List list3 = (List) obj;
                return list3 != null ? CollectionsKt.plus((Collection) list3, (Iterable) Room.listOf(Float.valueOf(Float.parseFloat(str)))) : Room.listOf(Float.valueOf(Float.parseFloat(str)));
            case 5:
                int[] iArr = (int[]) obj;
                int[] parseValue = parseValue(str);
                return iArr != null ? ArraysKt___ArraysKt.plus(iArr, parseValue) : parseValue;
            case 6:
                long[] jArr = (long[]) obj;
                if (jArr == null) {
                    return m753parseValue(str);
                }
                long[] m753parseValue = m753parseValue(str);
                int length3 = jArr.length;
                long[] copyOf3 = Arrays.copyOf(jArr, length3 + 1);
                System.arraycopy(m753parseValue, 0, copyOf3, length3, 1);
                return copyOf3;
            case 7:
                List list4 = (List) obj;
                IntNavType intNavType3 = NavType.LongType;
                return list4 != null ? CollectionsKt.plus((Collection) list4, (Iterable) Room.listOf(intNavType3.mo755parseValue(str))) : Room.listOf(intNavType3.mo755parseValue(str));
            case 8:
                String[] strArr = (String[]) obj;
                if (strArr == null) {
                    return new String[]{str};
                }
                String[] strArr2 = {str};
                int length4 = strArr.length;
                Object[] copyOf4 = Arrays.copyOf(strArr, length4 + 1);
                System.arraycopy(strArr2, 0, copyOf4, length4, 1);
                return (String[]) copyOf4;
            default:
                List list5 = (List) obj;
                return list5 != null ? CollectionsKt.plus((Collection) list5, (Iterable) Room.listOf(str)) : Room.listOf(str);
        }
    }

    @Override // androidx.navigation.NavType
    public final void put(Bundle bundle, String str, Object obj) {
        switch (this.$r8$classId) {
            case 0:
                List list = (List) obj;
                str.getClass();
                if (list != null) {
                    bundle.putIntArray(str, CollectionsKt.toIntArray(list));
                    break;
                }
                break;
            case 1:
                boolean[] zArr = (boolean[]) obj;
                str.getClass();
                if (zArr == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putBooleanArray(str, zArr);
                    break;
                }
            case 2:
                List list2 = (List) obj;
                str.getClass();
                if (list2 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putBooleanArray(str, CollectionsKt.toBooleanArray(list2));
                    break;
                }
            case 3:
                float[] fArr = (float[]) obj;
                str.getClass();
                if (fArr == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putFloatArray(str, fArr);
                    break;
                }
            case 4:
                List list3 = (List) obj;
                str.getClass();
                if (list3 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putFloatArray(str, CollectionsKt.toFloatArray(list3));
                    break;
                }
            case 5:
                int[] iArr = (int[]) obj;
                str.getClass();
                if (iArr == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putIntArray(str, iArr);
                    break;
                }
            case 6:
                long[] jArr = (long[]) obj;
                str.getClass();
                if (jArr == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putLongArray(str, jArr);
                    break;
                }
            case 7:
                List list4 = (List) obj;
                str.getClass();
                if (list4 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putLongArray(str, CollectionsKt.toLongArray(list4));
                    break;
                }
            case 8:
                String[] strArr = (String[]) obj;
                str.getClass();
                if (strArr == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putStringArray(str, strArr);
                    break;
                }
            default:
                List list5 = (List) obj;
                str.getClass();
                if (list5 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    String[] strArr2 = (String[]) list5.toArray(new String[0]);
                    strArr2.getClass();
                    bundle.putStringArray(str, strArr2);
                    break;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v13, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v15, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v17, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v20, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.util.List] */
    @Override // androidx.navigation.CollectionNavType
    public final List serializeAsValues(Object obj) {
        int i = this.$r8$classId;
        ?? r2 = EmptyList.INSTANCE;
        switch (i) {
            case 0:
                List list = (List) obj;
                if (list != null) {
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        r2.add(String.valueOf(((Number) it.next()).intValue()));
                    }
                    break;
                }
                break;
            case 1:
                boolean[] zArr = (boolean[]) obj;
                if (zArr != null) {
                    List list2 = ArraysKt___ArraysKt.toList(zArr);
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10));
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        r2.add(String.valueOf(((Boolean) it2.next()).booleanValue()));
                    }
                    break;
                }
                break;
            case 2:
                List list3 = (List) obj;
                if (list3 != null) {
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list3, 10));
                    Iterator it3 = list3.iterator();
                    while (it3.hasNext()) {
                        r2.add(String.valueOf(((Boolean) it3.next()).booleanValue()));
                    }
                    break;
                }
                break;
            case 3:
                float[] fArr = (float[]) obj;
                if (fArr != null) {
                    List list4 = ArraysKt___ArraysKt.toList(fArr);
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list4, 10));
                    Iterator it4 = list4.iterator();
                    while (it4.hasNext()) {
                        r2.add(String.valueOf(((Number) it4.next()).floatValue()));
                    }
                    break;
                }
                break;
            case 4:
                List list5 = (List) obj;
                if (list5 != null) {
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list5, 10));
                    Iterator it5 = list5.iterator();
                    while (it5.hasNext()) {
                        r2.add(String.valueOf(((Number) it5.next()).floatValue()));
                    }
                    break;
                }
                break;
            case 5:
                int[] iArr = (int[]) obj;
                if (iArr != null) {
                    List list6 = ArraysKt___ArraysKt.toList(iArr);
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list6, 10));
                    Iterator it6 = list6.iterator();
                    while (it6.hasNext()) {
                        r2.add(String.valueOf(((Number) it6.next()).intValue()));
                    }
                    break;
                }
                break;
            case 6:
                long[] jArr = (long[]) obj;
                if (jArr != null) {
                    List list7 = ArraysKt___ArraysKt.toList(jArr);
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list7, 10));
                    Iterator it7 = list7.iterator();
                    while (it7.hasNext()) {
                        r2.add(String.valueOf(((Number) it7.next()).longValue()));
                    }
                    break;
                }
                break;
            case 7:
                List list8 = (List) obj;
                if (list8 != null) {
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list8, 10));
                    Iterator it8 = list8.iterator();
                    while (it8.hasNext()) {
                        r2.add(String.valueOf(((Number) it8.next()).longValue()));
                    }
                    break;
                }
                break;
            case 8:
                String[] strArr = (String[]) obj;
                if (strArr != null) {
                    r2 = new ArrayList(strArr.length);
                    for (String str : strArr) {
                        str.getClass();
                        String encode = Uri.encode(str, null);
                        encode.getClass();
                        r2.add(encode);
                    }
                    break;
                }
                break;
            default:
                List<String> list9 = (List) obj;
                if (list9 != null) {
                    r2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list9, 10));
                    for (String str2 : list9) {
                        str2.getClass();
                        String encode2 = Uri.encode(str2, null);
                        encode2.getClass();
                        r2.add(encode2);
                    }
                    break;
                }
                break;
        }
        return r2;
    }

    /* renamed from: parseValue, reason: collision with other method in class */
    public static long[] m753parseValue(String str) {
        return new long[]{((Number) NavType.LongType.mo755parseValue(str)).longValue()};
    }

    /* renamed from: parseValue, reason: collision with other method in class */
    public static boolean[] m754parseValue(String str) {
        return new boolean[]{((Boolean) NavType.BoolType.mo755parseValue(str)).booleanValue()};
    }

    public static int[] parseValue(String str) {
        return new int[]{((Number) NavType.IntType.mo755parseValue(str)).intValue()};
    }

    @Override // androidx.navigation.NavType
    /* renamed from: parseValue, reason: collision with other method in class */
    public final Object mo755parseValue(String str) {
        switch (this.$r8$classId) {
            case 0:
                return Room.listOf(NavType.IntType.mo755parseValue(str));
            case 1:
                return m754parseValue(str);
            case 2:
                return Room.listOf(NavType.BoolType.mo755parseValue(str));
            case 3:
                return new float[]{Float.parseFloat(str)};
            case 4:
                return Room.listOf(Float.valueOf(Float.parseFloat(str)));
            case 5:
                return parseValue(str);
            case 6:
                return m753parseValue(str);
            case 7:
                return Room.listOf(NavType.LongType.mo755parseValue(str));
            case 8:
                return new String[]{str};
            default:
                return Room.listOf(str);
        }
    }
}
