package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.size.ViewSizeResolver;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntListNavType extends CollectionNavType {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ IntListNavType(boolean z, int i) {
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return emptyList;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new String[0];
            default:
                return emptyList;
        }
    }

    @Override // androidx.navigation.NavType
    public final Object get(String str, Bundle bundle) {
        switch (this.$r8$classId) {
            case 0:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                int[] intArray = bundle.getIntArray(str);
                if (intArray != null) {
                    return ArraysKt___ArraysKt.toList(intArray);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 1:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                boolean[] booleanArray = bundle.getBooleanArray(str);
                if (booleanArray != null) {
                    return booleanArray;
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 2:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                boolean[] booleanArray2 = bundle.getBooleanArray(str);
                if (booleanArray2 != null) {
                    return ArraysKt___ArraysKt.toList(booleanArray2);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 3:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                float[] floatArray = bundle.getFloatArray(str);
                if (floatArray != null) {
                    return floatArray;
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 4:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                float[] floatArray2 = bundle.getFloatArray(str);
                if (floatArray2 != null) {
                    return ArraysKt___ArraysKt.toList(floatArray2);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 5:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                int[] intArray2 = bundle.getIntArray(str);
                if (intArray2 != null) {
                    return intArray2;
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case 6:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                long[] longArray = bundle.getLongArray(str);
                if (longArray != null) {
                    return longArray;
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                long[] longArray2 = bundle.getLongArray(str);
                if (longArray2 != null) {
                    return ArraysKt___ArraysKt.toList(longArray2);
                }
                OperationKt.keyOrValueNotFoundError(str);
                throw null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                return Operation$State.m832getStringArrayimpl(str, bundle);
            default:
                if (!ViewSizeResolver.CC.m(str, str, bundle) || Operation$State.m833isNullimpl(str, bundle)) {
                    return null;
                }
                return ArraysKt___ArraysKt.toList(Operation$State.m832getStringArrayimpl(str, bundle));
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return "List<Long>";
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return "string[]";
            default:
                return "List<String>";
        }
    }

    @Override // androidx.navigation.NavType
    public final Object parseValue(Object obj, String str) {
        switch (this.$r8$classId) {
            case 0:
                List list = (List) obj;
                IntNavType intNavType = NavType.IntType;
                return list != null ? CollectionsKt.plus((Collection) list, (Iterable) IntOffsetKt.listOf(intNavType.mo804parseValue(str))) : IntOffsetKt.listOf(intNavType.mo804parseValue(str));
            case 1:
                boolean[] zArr = (boolean[]) obj;
                if (zArr == null) {
                    return m803parseValue(str);
                }
                boolean[] m803parseValue = m803parseValue(str);
                int length = zArr.length;
                boolean[] copyOf = Arrays.copyOf(zArr, length + 1);
                System.arraycopy(m803parseValue, 0, copyOf, length, 1);
                return copyOf;
            case 2:
                List list2 = (List) obj;
                IntNavType intNavType2 = NavType.BoolType;
                return list2 != null ? CollectionsKt.plus((Collection) list2, (Iterable) IntOffsetKt.listOf(intNavType2.mo804parseValue(str))) : IntOffsetKt.listOf(intNavType2.mo804parseValue(str));
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
                return list3 != null ? CollectionsKt.plus((Collection) list3, (Iterable) IntOffsetKt.listOf(Float.valueOf(Float.parseFloat(str)))) : IntOffsetKt.listOf(Float.valueOf(Float.parseFloat(str)));
            case 5:
                int[] iArr = (int[]) obj;
                if (iArr == null) {
                    return parseValue(str);
                }
                int[] parseValue = parseValue(str);
                int length3 = iArr.length;
                int[] copyOf3 = Arrays.copyOf(iArr, length3 + 1);
                System.arraycopy(parseValue, 0, copyOf3, length3, 1);
                return copyOf3;
            case 6:
                long[] jArr = (long[]) obj;
                if (jArr == null) {
                    return m802parseValue(str);
                }
                long[] m802parseValue = m802parseValue(str);
                int length4 = jArr.length;
                long[] copyOf4 = Arrays.copyOf(jArr, length4 + 1);
                System.arraycopy(m802parseValue, 0, copyOf4, length4, 1);
                return copyOf4;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                List list4 = (List) obj;
                IntNavType intNavType3 = NavType.LongType;
                return list4 != null ? CollectionsKt.plus((Collection) list4, (Iterable) IntOffsetKt.listOf(intNavType3.mo804parseValue(str))) : IntOffsetKt.listOf(intNavType3.mo804parseValue(str));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                String[] strArr = (String[]) obj;
                if (strArr == null) {
                    return new String[]{str};
                }
                String[] strArr2 = {str};
                int length5 = strArr.length;
                Object[] copyOf5 = Arrays.copyOf(strArr, length5 + 1);
                System.arraycopy(strArr2, 0, copyOf5, length5, 1);
                return (String[]) copyOf5;
            default:
                List list5 = (List) obj;
                return list5 != null ? CollectionsKt.plus((Collection) list5, (Iterable) IntOffsetKt.listOf(str)) : IntOffsetKt.listOf(str);
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                List list4 = (List) obj;
                str.getClass();
                if (list4 == null) {
                    bundle.putString(str, null);
                    break;
                } else {
                    bundle.putLongArray(str, CollectionsKt.toLongArray(list4));
                    break;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
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
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
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
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
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

    @Override // androidx.navigation.NavType
    public final boolean valueEquals(Object obj, Object obj2) {
        Boolean[] boolArr;
        Float[] fArr;
        Long[] lArr;
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                List list = (List) obj;
                List list2 = (List) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(list != null ? (Integer[]) list.toArray(new Integer[0]) : null, list2 != null ? (Integer[]) list2.toArray(new Integer[0]) : null);
            case 1:
                boolean[] zArr = (boolean[]) obj;
                boolean[] zArr2 = (boolean[]) obj2;
                if (zArr != null) {
                    boolArr = new Boolean[zArr.length];
                    int length = zArr.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        boolArr[i2] = Boolean.valueOf(zArr[i2]);
                    }
                } else {
                    boolArr = null;
                }
                if (zArr2 != null) {
                    r1 = new Boolean[zArr2.length];
                    int length2 = zArr2.length;
                    while (i < length2) {
                        r1[i] = Boolean.valueOf(zArr2[i]);
                        i++;
                    }
                }
                return ArraysKt___ArraysKt.contentDeepEquals(boolArr, r1);
            case 2:
                List list3 = (List) obj;
                List list4 = (List) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(list3 != null ? (Boolean[]) list3.toArray(new Boolean[0]) : null, list4 != null ? (Boolean[]) list4.toArray(new Boolean[0]) : null);
            case 3:
                float[] fArr2 = (float[]) obj;
                float[] fArr3 = (float[]) obj2;
                if (fArr2 != null) {
                    fArr = new Float[fArr2.length];
                    int length3 = fArr2.length;
                    for (int i3 = 0; i3 < length3; i3++) {
                        fArr[i3] = Float.valueOf(fArr2[i3]);
                    }
                } else {
                    fArr = null;
                }
                if (fArr3 != null) {
                    r1 = new Float[fArr3.length];
                    int length4 = fArr3.length;
                    while (i < length4) {
                        r1[i] = Float.valueOf(fArr3[i]);
                        i++;
                    }
                }
                return ArraysKt___ArraysKt.contentDeepEquals(fArr, r1);
            case 4:
                List list5 = (List) obj;
                List list6 = (List) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(list5 != null ? (Float[]) list5.toArray(new Float[0]) : null, list6 != null ? (Float[]) list6.toArray(new Float[0]) : null);
            case 5:
                int[] iArr = (int[]) obj;
                int[] iArr2 = (int[]) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(iArr != null ? ArraysKt___ArraysKt.toTypedArray(iArr) : null, iArr2 != null ? ArraysKt___ArraysKt.toTypedArray(iArr2) : null);
            case 6:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                if (jArr != null) {
                    lArr = new Long[jArr.length];
                    int length5 = jArr.length;
                    for (int i4 = 0; i4 < length5; i4++) {
                        lArr[i4] = Long.valueOf(jArr[i4]);
                    }
                } else {
                    lArr = null;
                }
                if (jArr2 != null) {
                    r1 = new Long[jArr2.length];
                    int length6 = jArr2.length;
                    while (i < length6) {
                        r1[i] = Long.valueOf(jArr2[i]);
                        i++;
                    }
                }
                return ArraysKt___ArraysKt.contentDeepEquals(lArr, r1);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                List list7 = (List) obj;
                List list8 = (List) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(list7 != null ? (Long[]) list7.toArray(new Long[0]) : null, list8 != null ? (Long[]) list8.toArray(new Long[0]) : null);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ArraysKt___ArraysKt.contentDeepEquals((String[]) obj, (String[]) obj2);
            default:
                List list9 = (List) obj;
                List list10 = (List) obj2;
                return ArraysKt___ArraysKt.contentDeepEquals(list9 != null ? (String[]) list9.toArray(new String[0]) : null, list10 != null ? (String[]) list10.toArray(new String[0]) : null);
        }
    }

    public static int[] parseValue(String str) {
        str.getClass();
        return new int[]{((Number) NavType.IntType.mo804parseValue(str)).intValue()};
    }

    /* renamed from: parseValue, reason: collision with other method in class */
    public static long[] m802parseValue(String str) {
        str.getClass();
        return new long[]{((Number) NavType.LongType.mo804parseValue(str)).longValue()};
    }

    /* renamed from: parseValue, reason: collision with other method in class */
    public static boolean[] m803parseValue(String str) {
        str.getClass();
        return new boolean[]{((Boolean) NavType.BoolType.mo804parseValue(str)).booleanValue()};
    }

    @Override // androidx.navigation.NavType
    /* renamed from: parseValue, reason: collision with other method in class */
    public final Object mo804parseValue(String str) {
        switch (this.$r8$classId) {
            case 0:
                str.getClass();
                return IntOffsetKt.listOf(NavType.IntType.mo804parseValue(str));
            case 1:
                return m803parseValue(str);
            case 2:
                str.getClass();
                return IntOffsetKt.listOf(NavType.BoolType.mo804parseValue(str));
            case 3:
                str.getClass();
                return new float[]{Float.parseFloat(str)};
            case 4:
                str.getClass();
                return IntOffsetKt.listOf(Float.valueOf(Float.parseFloat(str)));
            case 5:
                return parseValue(str);
            case 6:
                return m802parseValue(str);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                str.getClass();
                return IntOffsetKt.listOf(NavType.LongType.mo804parseValue(str));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                str.getClass();
                return new String[]{str};
            default:
                str.getClass();
                return IntOffsetKt.listOf(str);
        }
    }
}
