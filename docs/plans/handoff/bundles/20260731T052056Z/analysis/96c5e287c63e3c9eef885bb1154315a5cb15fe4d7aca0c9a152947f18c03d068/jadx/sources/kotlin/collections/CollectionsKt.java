package kotlin.collections;

import androidx.compose.animation.core.Animation;
import androidx.room.Room;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.request.ImageRequests_androidKt$$ExternalSyntheticLambda0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
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
import kotlin.UnsignedKt;
import kotlin.io.LinesSequence;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.random.XorWowRandom;
import kotlin.ranges.IntRange;
import kotlin.uuid.UuidKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* loaded from: classes.dex */
public abstract class CollectionsKt extends CollectionsKt__MutableCollectionsJVMKt {
    public static void addAll(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static LinesSequence asSequence(Iterable iterable) {
        iterable.getClass();
        return new LinesSequence(2, iterable);
    }

    public static double averageOfDouble(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        double d = 0.0d;
        int i = 0;
        while (it.hasNext()) {
            d += ((Number) it.next()).doubleValue();
            i++;
            if (i < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        if (i == 0) {
            return Double.NaN;
        }
        return d / i;
    }

    public static boolean contains(Iterable iterable, Object obj) {
        iterable.getClass();
        return iterable instanceof Collection ? ((Collection) iterable).contains(obj) : indexOf(iterable, obj) >= 0;
    }

    public static Collection convertToListIfNotCollection(Iterable iterable) {
        iterable.getClass();
        return iterable instanceof Collection ? (Collection) iterable : toList(iterable);
    }

    public static List distinct(Iterable iterable) {
        iterable.getClass();
        return toList(toMutableSet(iterable));
    }

    public static List drop(Iterable iterable) {
        ArrayList arrayList;
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - 1;
            if (size <= 0) {
                return EmptyList.INSTANCE;
            }
            if (size == 1) {
                return Room.listOf(last(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    for (int i = 1; i < size2; i++) {
                        arrayList.add(list.get(i));
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(1);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i2 = 0;
        for (Object obj : iterable) {
            if (i2 >= 1) {
                arrayList.add(obj);
            } else {
                i2++;
            }
        }
        return Room.optimizeReadOnlyList(arrayList);
    }

    public static List dropLast(List list) {
        list.getClass();
        int size = list.size() - 1;
        if (size < 0) {
            size = 0;
        }
        return take(list, size);
    }

    public static ArrayList filterNotNull(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
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
        Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
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

    public static Object getOrNull(List list, int i) {
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
                Room.throwIndexOverflow();
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
        Collection convertToListIfNotCollection = convertToListIfNotCollection(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (convertToListIfNotCollection.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static final void joinTo(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, CharSequence charSequence4, Function1 function1) {
        iterable.getClass();
        charSequence2.getClass();
        charSequence3.getClass();
        appendable.append(charSequence2);
        int i = 0;
        for (Object obj : iterable) {
            i++;
            if (i > 1) {
                appendable.append(charSequence);
            }
            Room.appendElement(appendable, obj, function1);
        }
        appendable.append(charSequence3);
    }

    public static /* synthetic */ void joinTo$default(Iterable iterable, Appendable appendable, String str, String str2, String str3, Function1 function1, int i) {
        if ((i & 4) != 0) {
            str2 = "";
        }
        if ((i & 8) != 0) {
            str3 = "";
        }
        if ((i & 64) != 0) {
            function1 = null;
        }
        joinTo(iterable, appendable, str, str2, str3, "...", function1);
    }

    public static String joinToString$default(Iterable iterable, CharSequence charSequence, String str, String str2, Function1 function1, int i) {
        if ((i & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence2 = charSequence;
        String str3 = (i & 2) != 0 ? "" : str;
        String str4 = (i & 4) != 0 ? "" : str2;
        if ((i & 32) != 0) {
            function1 = null;
        }
        iterable.getClass();
        charSequence2.getClass();
        str3.getClass();
        StringBuilder sb = new StringBuilder();
        joinTo(iterable, sb, charSequence2, str3, str4, "...", function1);
        return sb.toString();
    }

    public static Object last(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return last((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object lastOrNull(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    public static Comparable maxOrNull(List list) {
        Iterator it = list.iterator();
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

    public static ArrayList plus(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            addAll(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static Object random(Collection collection, XorWowRandom xorWowRandom) {
        collection.getClass();
        if (collection.isEmpty()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
            return null;
        }
        Collection collection2 = collection;
        int i = 0;
        int nextInt = xorWowRandom.nextInt(0, collection.size());
        boolean z = collection2 instanceof List;
        if (z) {
            return ((List) collection2).get(nextInt);
        }
        ImageRequests_androidKt$$ExternalSyntheticLambda0 imageRequests_androidKt$$ExternalSyntheticLambda0 = new ImageRequests_androidKt$$ExternalSyntheticLambda0(nextInt, 4);
        if (z) {
            List list = (List) collection2;
            if (nextInt >= 0 && nextInt < list.size()) {
                return list.get(nextInt);
            }
            imageRequests_androidKt$$ExternalSyntheticLambda0.invoke(Integer.valueOf(nextInt));
            throw null;
        }
        if (nextInt < 0) {
            imageRequests_androidKt$$ExternalSyntheticLambda0.invoke(Integer.valueOf(nextInt));
            throw null;
        }
        for (Object obj : collection2) {
            int i2 = i + 1;
            if (nextInt == i) {
                return obj;
            }
            i = i2;
        }
        imageRequests_androidKt$$ExternalSyntheticLambda0.invoke(Integer.valueOf(nextInt));
        throw null;
    }

    public static void removeAll(List list, Function1 function1) {
        int size;
        list.getClass();
        function1.getClass();
        if (!(list instanceof RandomAccess)) {
            if ((list instanceof KMappedMarker) && !(list instanceof KMutableCollection)) {
                TypeIntrinsics.throwCce("kotlin.collections.MutableIterable", list);
                throw null;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((Boolean) function1.invoke(it.next())).booleanValue()) {
                    it.remove();
                }
            }
            return;
        }
        int size2 = list.size() - 1;
        int i = 0;
        if (size2 >= 0) {
            int i2 = 0;
            while (true) {
                Object obj = list.get(i);
                if (!((Boolean) function1.invoke(obj)).booleanValue()) {
                    if (i2 != i) {
                        list.set(i2, obj);
                    }
                    i2++;
                }
                if (i == size2) {
                    break;
                } else {
                    i++;
                }
            }
            i = i2;
        }
        if (i >= list.size() || i > (size = list.size() - 1)) {
            return;
        }
        while (true) {
            list.remove(size);
            if (size == i) {
                return;
            } else {
                size--;
            }
        }
    }

    public static Object removeFirst(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            return arrayList.remove(0);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
        return null;
    }

    public static Object removeLast(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(list.size() - 1);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
        return null;
    }

    public static Object removeLastOrNull(java.util.AbstractList abstractList) {
        abstractList.getClass();
        if (abstractList.isEmpty()) {
            return null;
        }
        return abstractList.remove(abstractList.size() - 1);
    }

    public static final int reverseElementIndex$CollectionsKt__ReversedViewsKt(List list, int i) {
        if (i >= 0 && i <= list.size() - 1) {
            return (list.size() - 1) - i;
        }
        StringBuilder m20m = Animation.CC.m20m(i, "Element index ", " must be in range [");
        m20m.append(new IntRange(0, list.size() - 1, 1));
        m20m.append("].");
        throw new IndexOutOfBoundsException(m20m.toString());
    }

    public static final int reversePositionIndex$CollectionsKt__ReversedViewsKt(List list, int i) {
        if (i >= 0 && i <= list.size()) {
            return list.size() - i;
        }
        StringBuilder m20m = Animation.CC.m20m(i, "Position index ", " must be in range [");
        m20m.append(new IntRange(0, list.size(), 1));
        m20m.append("].");
        throw new IndexOutOfBoundsException(m20m.toString());
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

    public static Object single(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return single((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            Gson$$ExternalSyntheticBUOutline0.m$3("Collection is empty.");
            return null;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Collection has more than one element.");
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
        array.getClass();
        List asList = Arrays.asList(array);
        asList.getClass();
        return asList;
    }

    public static List sortedWith(Iterable iterable, Comparator comparator) {
        iterable.getClass();
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

    public static LinkedHashSet subtract(Iterable iterable, Iterable iterable2) {
        Collection convertToListIfNotCollection = convertToListIfNotCollection(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (!convertToListIfNotCollection.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static List take(Iterable iterable, int i) {
        iterable.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Requested element count ", " is less than zero."));
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
                return Room.listOf(first(iterable));
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
        return Room.optimizeReadOnlyList(arrayList);
    }

    public static List takeLast(List list, int i) {
        list.getClass();
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i == 0) {
            return EmptyList.INSTANCE;
        }
        int size = list.size();
        if (i >= size) {
            return toList(list);
        }
        if (i == 1) {
            return Room.listOf(last(list));
        }
        ArrayList arrayList = new ArrayList(i);
        if (list instanceof RandomAccess) {
            for (int i2 = size - i; i2 < size; i2++) {
                arrayList.add(list.get(i2));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static boolean[] toBooleanArray(List list) {
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

    public static float[] toFloatArray(Collection collection) {
        collection.getClass();
        float[] fArr = new float[collection.size()];
        Iterator it = collection.iterator();
        int i = 0;
        while (it.hasNext()) {
            fArr[i] = ((Number) it.next()).floatValue();
            i++;
        }
        return fArr;
    }

    public static int[] toIntArray(List list) {
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
            return Room.optimizeReadOnlyList(toMutableList(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return EmptyList.INSTANCE;
        }
        if (size != 1) {
            return new ArrayList(collection);
        }
        return Room.listOf(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static long[] toLongArray(List list) {
        long[] jArr = new long[list.size()];
        Iterator it = list.iterator();
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
                    return UuidKt.setOf(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
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
                return size2 != 1 ? linkedHashSet2 : UuidKt.setOf(linkedHashSet2.iterator().next());
            }
        }
        return EmptySet.INSTANCE;
    }

    public static Set union(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Set mutableSet = toMutableSet(iterable);
        addAll(mutableSet, iterable2);
        return mutableSet;
    }

    public static final ArrayList windowed(Iterable iterable, int i, int i2) {
        iterable.getClass();
        if (i <= 0 || i2 <= 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) (i != i2 ? "Both size " + i + " and step " + i2 + " must be greater than zero." : Animation.CC.m(i, "size ", " must be greater than zero.")));
            return null;
        }
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            it.getClass();
            Iterator it2 = !it.hasNext() ? EmptyIterator.INSTANCE : UnsignedKt.iterator(new SlidingWindowKt$windowedIterator$1(i, i2, it, null));
            while (it2.hasNext()) {
                arrayList.add((List) it2.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i2) + (size % i2 == 0 ? 0 : 1));
        int i3 = 0;
        while (i3 >= 0 && i3 < size) {
            int i4 = size - i3;
            if (i <= i4) {
                i4 = i;
            }
            ArrayList arrayList3 = new ArrayList(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                arrayList3.add(list.get(i5 + i3));
            }
            arrayList2.add(arrayList3);
            i3 += i2;
        }
        return arrayList2;
    }

    public static IndexingIterable withIndex(List list) {
        list.getClass();
        return new IndexingIterable(0, new Worker$$ExternalSyntheticLambda0(21, list));
    }

    public static ArrayList zip(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable, 10), CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new Pair(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static ArrayList toMutableList(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }

    public static Object first(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
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

    public static ArrayList plus(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return plus((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        addAll(arrayList, iterable);
        addAll(arrayList, iterable2);
        return arrayList;
    }

    public static Object last(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(list.size() - 1);
        }
        Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
        return null;
    }

    public static Object singleOrNull(List list) {
        list.getClass();
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static List minus(List list, Iterable iterable) {
        Collection convertToListIfNotCollection = convertToListIfNotCollection(iterable);
        if (convertToListIfNotCollection.isEmpty()) {
            return toList(list);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!convertToListIfNotCollection.contains(obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Object single(List list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            Gson$$ExternalSyntheticBUOutline0.m$3("List is empty.");
            return null;
        }
        if (size == 1) {
            return list.get(0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("List has more than one element.");
        return null;
    }

    public static ArrayList plus(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            return plus((Collection) iterable, obj);
        }
        ArrayList arrayList = new ArrayList();
        addAll(arrayList, iterable);
        arrayList.add(obj);
        return arrayList;
    }
}
