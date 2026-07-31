package kotlin.collections;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* loaded from: classes.dex */
public abstract class CollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    public static final int access$reverseElementIndex(int i, List list) {
        if (i >= 0 && i <= list.size() - 1) {
            return (list.size() - 1) - i;
        }
        StringBuilder m30m = CameraDevices$CC.m30m(i, "Element index ", " must be in range [");
        m30m.append(new IntRange(0, list.size() - 1, 1));
        m30m.append("].");
        throw new IndexOutOfBoundsException(m30m.toString());
    }

    public static final int access$reversePositionIndex(int i, List list) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder m30m = CameraDevices$CC.m30m(i, "Position index ", " must be in range [");
        m30m.append(new IntRange(0, list.size(), 1));
        m30m.append("].");
        throw new IndexOutOfBoundsException(m30m.toString());
    }

    public static void addAll(Iterable iterable, java.util.AbstractCollection abstractCollection) {
        abstractCollection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            abstractCollection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static StringsKt__StringsKt$lineSequence$$inlined$Sequence$1 asSequence(Iterable iterable) {
        iterable.getClass();
        return new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, iterable);
    }

    public static boolean contains(Iterable iterable, Object obj) {
        iterable.getClass();
        return iterable instanceof Collection ? ((Collection) iterable).contains(obj) : indexOf(iterable, obj) >= 0;
    }

    public static List drop(int i, List list) {
        list.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return toList(list);
        }
        int size = list.size() - i;
        if (size <= 0) {
            return EmptyList.INSTANCE;
        }
        if (size == 1) {
            return IntOffsetKt.listOf(last(list));
        }
        ArrayList arrayList = new ArrayList(size);
        if (list instanceof RandomAccess) {
            int size2 = list.size();
            while (i < size2) {
                arrayList.add(list.get(i));
                i++;
            }
        } else {
            ListIterator listIterator = list.listIterator(i);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static List dropLast(List list) {
        int size = list.size() - 1;
        if (size < 0) {
            size = 0;
        }
        return take(list, size);
    }

    public static Object elementAt(Iterable iterable, int i) {
        iterable.getClass();
        boolean z = iterable instanceof List;
        if (z) {
            return ((List) iterable).get(i);
        }
        ImageRequests_androidKt$$ExternalSyntheticLambda1 imageRequests_androidKt$$ExternalSyntheticLambda1 = new ImageRequests_androidKt$$ExternalSyntheticLambda1(i, 6);
        if (z) {
            List list = (List) iterable;
            if (i >= 0 && i < list.size()) {
                return list.get(i);
            }
            imageRequests_androidKt$$ExternalSyntheticLambda1.invoke(Integer.valueOf(i));
            throw null;
        }
        if (i < 0) {
            imageRequests_androidKt$$ExternalSyntheticLambda1.invoke(Integer.valueOf(i));
            throw null;
        }
        int i2 = 0;
        for (Object obj : iterable) {
            int i3 = i2 + 1;
            if (i == i2) {
                return obj;
            }
            i2 = i3;
        }
        imageRequests_androidKt$$ExternalSyntheticLambda1.invoke(Integer.valueOf(i));
        throw null;
    }

    public static final boolean filterInPlace$CollectionsKt__MutableCollectionsKt(List list, Function1 function1, boolean z) {
        int i;
        boolean z2 = false;
        if (!(list instanceof RandomAccess)) {
            list.getClass();
            if ((list instanceof KMappedMarker) && !(list instanceof KMutableCollection)) {
                TypeIntrinsics.throwCce(list, "kotlin.collections.MutableIterable");
                throw null;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((Boolean) function1.invoke(it.next())).booleanValue() == z) {
                    it.remove();
                    z2 = true;
                }
            }
            return z2;
        }
        int lastIndex = IntOffsetKt.getLastIndex(list);
        if (lastIndex >= 0) {
            int i2 = 0;
            i = 0;
            while (true) {
                Object obj = list.get(i2);
                if (((Boolean) function1.invoke(obj)).booleanValue() != z) {
                    if (i != i2) {
                        list.set(i, obj);
                    }
                    i++;
                }
                if (i2 == lastIndex) {
                    break;
                }
                i2++;
            }
        } else {
            i = 0;
        }
        if (i >= list.size()) {
            return false;
        }
        int size = list.size() - 1;
        if (i <= size) {
            while (true) {
                list.remove(size);
                if (size == i) {
                    break;
                }
                size--;
            }
        }
        return true;
    }

    public static Object first(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return first((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection is empty.");
        return null;
    }

    public static Object firstOrNull(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static Object getOrNull(int i, List list) {
        list.getClass();
        if (i < 0 || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static int indexOf(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i = 0;
        for (Object obj2 : iterable) {
            if (i < 0) {
                IntOffsetKt.throwIndexOverflow();
                throw null;
            }
            if (Intrinsics.areEqual(obj, obj2)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static LinkedHashSet intersect(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Collection list = iterable2 instanceof Collection ? (Collection) iterable2 : toList(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (list.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static final void joinTo(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1) {
        iterable.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        appendable.append(charSequence2);
        int i2 = 0;
        for (Object obj : iterable) {
            i2++;
            if (i2 > 1) {
                appendable.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            } else {
                StringsKt__IndentKt.appendElement(appendable, obj, function1);
            }
        }
        if (i >= 0 && i2 > i) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
    }

    public static /* synthetic */ void joinTo$default(Iterable iterable, Appendable appendable, String str, CharSequence charSequence, CharSequence charSequence2, Function1 function1, int i) {
        CharSequence charSequence3 = (i & 4) != 0 ? "" : charSequence;
        CharSequence charSequence4 = (i & 8) != 0 ? "" : charSequence2;
        if ((i & 64) != 0) {
            function1 = null;
        }
        joinTo(iterable, appendable, str, charSequence3, charSequence4, -1, "...", function1);
    }

    public static String joinToString$default(Iterable iterable, String str, String str2, String str3, Function1 function1, int i) {
        if ((i & 1) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i & 2) != 0 ? "" : str2;
        String str6 = (i & 4) != 0 ? "" : str3;
        int i2 = (i & 8) != 0 ? -1 : 5;
        if ((i & 32) != 0) {
            function1 = null;
        }
        iterable.getClass();
        str4.getClass();
        str5.getClass();
        StringBuilder sb = new StringBuilder();
        joinTo(iterable, sb, str4, str5, str6, i2, "...", function1);
        return sb.toString();
    }

    public static Object last(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(list.size() - 1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
        return null;
    }

    public static Object lastOrNull(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Comparable maxOrNull(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static List minus(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Collection list = iterable2 instanceof Collection ? (Collection) iterable2 : toList(iterable2);
        if (list.isEmpty()) {
            return toList(iterable);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (!list.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static ArrayList plus(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            addAll(iterable, arrayList);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static void removeAll(List list, Function1 function1) {
        list.getClass();
        function1.getClass();
        filterInPlace$CollectionsKt__MutableCollectionsKt(list, function1, true);
    }

    public static Object removeFirst(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
        return null;
    }

    public static Object removeLast(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(list.size() - 1);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
        return null;
    }

    public static Object removeLastOrNull(java.util.AbstractList abstractList) {
        abstractList.getClass();
        if (abstractList.isEmpty()) {
            return null;
        }
        return abstractList.remove(abstractList.size() - 1);
    }

    public static List reversed(Iterable iterable) {
        iterable.getClass();
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return toList(iterable);
        }
        List mutableList = toMutableList(iterable);
        Collections.reverse(mutableList);
        return mutableList;
    }

    public static Object single(List list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
            return null;
        }
        if (size == 1) {
            return list.get(0);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("List has more than one element.");
        return null;
    }

    public static Object singleOrNull(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return list.get(0);
            }
            return null;
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static List sorted(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List mutableList = toMutableList(iterable);
            CollectionsKt__MutableCollectionsJVMKt.sort(mutableList);
            return mutableList;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return toList(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        comparableArr.getClass();
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return ArraysKt___ArraysKt.asList(array);
    }

    public static List sortedWith(Iterable iterable, Comparator comparator) {
        iterable.getClass();
        comparator.getClass();
        if (!(iterable instanceof Collection)) {
            List mutableList = toMutableList(iterable);
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, comparator);
            return mutableList;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return toList(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        array.getClass();
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        List asList = Arrays.asList(array);
        asList.getClass();
        return asList;
    }

    public static List take(Iterable iterable, int i) {
        iterable.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return EmptyList.INSTANCE;
        }
        if (iterable instanceof Collection) {
            if (i >= ((Collection) iterable).size()) {
                return toList(iterable);
            }
            if (i == 1) {
                return IntOffsetKt.listOf(first(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i);
        Iterator it = iterable.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return IntOffsetKt.optimizeReadOnlyList(arrayList);
    }

    public static boolean[] toBooleanArray(List list) {
        list.getClass();
        boolean[] zArr = new boolean[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            zArr[i] = ((Boolean) it.next()).booleanValue();
            i++;
        }
        return zArr;
    }

    public static final void toCollection(Iterable iterable, java.util.AbstractCollection abstractCollection) {
        iterable.getClass();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            abstractCollection.add(it.next());
        }
    }

    public static float[] toFloatArray(List list) {
        list.getClass();
        float[] fArr = new float[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = ((Number) it.next()).floatValue();
            i++;
        }
        return fArr;
    }

    public static int[] toIntArray(List list) {
        list.getClass();
        int[] iArr = new int[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            iArr[i] = ((Number) it.next()).intValue();
            i++;
        }
        return iArr;
    }

    public static List toList(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            return IntOffsetKt.optimizeReadOnlyList(toMutableList(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return EmptyList.INSTANCE;
        }
        if (size != 1) {
            return new ArrayList(collection);
        }
        return IntOffsetKt.listOf(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static long[] toLongArray(Collection collection) {
        collection.getClass();
        long[] jArr = new long[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            jArr[i] = ((Number) it.next()).longValue();
            i++;
        }
        return jArr;
    }

    public static final List toMutableList(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new ArrayList((Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        toCollection(iterable, arrayList);
        return arrayList;
    }

    public static Set toMutableSet(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        toCollection(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Set toSet(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size == 1) {
                    return Validate.setOf(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(collection.size()));
                toCollection(iterable, linkedHashSet);
                return linkedHashSet;
            }
        } else {
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            toCollection(iterable, linkedHashSet2);
            int size2 = linkedHashSet2.size();
            if (size2 != 0) {
                return size2 != 1 ? linkedHashSet2 : Validate.setOf(linkedHashSet2.iterator().next());
            }
        }
        return EmptySet.INSTANCE;
    }

    public static ArrayList zip(List list, List list2) {
        list2.getClass();
        Iterator it = list.iterator();
        Iterator it2 = list2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10), CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new Pair(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static ArrayList toMutableList(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }

    public static void addAll(Collection collection, Object[] objArr) {
        collection.getClass();
        objArr.getClass();
        List asList = Arrays.asList(objArr);
        asList.getClass();
        collection.addAll(asList);
    }

    public static Object first(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List is empty.");
        return null;
    }

    public static Object firstOrNull(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static ArrayList plus(Collection collection, Object obj) {
        collection.getClass();
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static ArrayList minus(List list, Object obj) {
        list.getClass();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        boolean z = false;
        for (Object obj2 : list) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }
}
