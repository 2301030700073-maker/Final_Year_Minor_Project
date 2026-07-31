package okhttp3;

import com.xwray.groupie.Group;
import com.xwray.groupie.GroupDataObserver;
import com.xwray.groupie.Section;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import kotlin.Pair;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal._UtilCommonKt;
import okio.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Headers implements Iterable, KMappedMarker {
    public static final Headers EMPTY = new Headers(new String[0]);
    public final String[] namesAndValues;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Builder {
        public final ArrayList namesAndValues;

        public Builder(int i) {
            switch (i) {
                case 1:
                    this.namesAndValues = new ArrayList();
                    break;
                case 2:
                    this.namesAndValues = new ArrayList();
                    break;
                case 3:
                    this.namesAndValues = new ArrayList();
                    break;
                default:
                    this.namesAndValues = new ArrayList(20);
                    break;
            }
        }

        public Headers build() {
            return new Headers((String[]) this.namesAndValues.toArray(new String[0]));
        }

        public void onItemMoved(Group group, int i, int i2) {
            ArrayList arrayList = this.namesAndValues;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((GroupDataObserver) arrayList.get(size)).onItemMoved(group, i, i2);
            }
        }

        public void onItemRangeChanged(Group group, int i, int i2, Object obj) {
            ArrayList arrayList = this.namesAndValues;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((GroupDataObserver) arrayList.get(size)).onItemRangeChanged(group, i, i2, obj);
            }
        }

        public void onItemRangeInserted(Section section, int i, int i2) {
            ArrayList arrayList = this.namesAndValues;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((GroupDataObserver) arrayList.get(size)).onItemRangeInserted(section, i, i2);
            }
        }

        public void onItemRangeRemoved(Section section, int i, int i2) {
            ArrayList arrayList = this.namesAndValues;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((GroupDataObserver) arrayList.get(size)).onItemRangeRemoved(section, i, i2);
            }
        }

        public void removeAll(String str) {
            str.getClass();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.namesAndValues;
                if (i >= arrayList.size()) {
                    return;
                }
                if (str.equalsIgnoreCase((String) arrayList.get(i))) {
                    arrayList.remove(i);
                    arrayList.remove(i);
                    i -= 2;
                }
                i += 2;
            }
        }
    }

    public Headers(String[] strArr) {
        strArr.getClass();
        this.namesAndValues = strArr;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Headers) {
            return Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
        }
        return false;
    }

    public final String get(String str) {
        String[] strArr = this.namesAndValues;
        strArr.getClass();
        int length = strArr.length - 2;
        int progressionLastElement = Options.Companion.getProgressionLastElement(length, 0, -2);
        if (progressionLastElement > length) {
            return null;
        }
        while (!str.equalsIgnoreCase(strArr[length])) {
            if (length == progressionLastElement) {
                return null;
            }
            length -= 2;
        }
        return strArr[length + 1];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int size = size();
        Pair[] pairArr = new Pair[size];
        for (int i = 0; i < size; i++) {
            pairArr[i] = new Pair(name(i), value(i));
        }
        return new UIntArray.Iterator(pairArr);
    }

    public final String name(int i) {
        String str = (String) ArraysKt.getOrNull(i * 2, this.namesAndValues);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("name[" + i + ']');
    }

    public final Builder newBuilder() {
        Builder builder = new Builder(0);
        ArrayList arrayList = builder.namesAndValues;
        arrayList.getClass();
        String[] strArr = this.namesAndValues;
        strArr.getClass();
        List asList = Arrays.asList(strArr);
        asList.getClass();
        arrayList.addAll(asList);
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final TreeMap toMultimap() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        comparator.getClass();
        TreeMap treeMap = new TreeMap(comparator);
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = name.toLowerCase(locale);
            lowerCase.getClass();
            List list = (List) treeMap.get(lowerCase);
            if (list == null) {
                list = new ArrayList(2);
                treeMap.put(lowerCase, list);
            }
            list.add(value(i));
        }
        return treeMap;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            String name = name(i);
            String value = value(i);
            sb.append(name);
            sb.append(": ");
            if (_UtilCommonKt.isSensitiveHeader(name)) {
                value = "██";
            }
            sb.append(value);
            sb.append("\n");
        }
        return sb.toString();
    }

    public final String value(int i) {
        String str = (String) ArraysKt.getOrNull((i * 2) + 1, this.namesAndValues);
        if (str != null) {
            return str;
        }
        throw new IndexOutOfBoundsException("value[" + i + ']');
    }
}
