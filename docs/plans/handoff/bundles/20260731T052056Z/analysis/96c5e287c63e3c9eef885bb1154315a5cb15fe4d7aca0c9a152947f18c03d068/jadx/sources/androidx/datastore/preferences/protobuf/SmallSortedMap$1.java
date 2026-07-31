package androidx.datastore.preferences.protobuf;

import androidx.collection.ArrayMap;
import androidx.datastore.preferences.protobuf.Utf8;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SmallSortedMap$1 extends AbstractMap {
    public static final /* synthetic */ int $r8$clinit = 0;
    public List entryList = Collections.EMPTY_LIST;
    public boolean isImmutable;
    public volatile ArrayMap.EntrySet lazyEntrySet;
    public final int maxArraySize;
    public Map overflowEntries;
    public Map overflowEntriesDescending;

    public SmallSortedMap$1(int i) {
        this.maxArraySize = i;
        Map map = Collections.EMPTY_MAP;
        this.overflowEntries = map;
        this.overflowEntriesDescending = map;
    }

    public final int binarySearchInArray(Comparable comparable) {
        int i;
        int size = this.entryList.size();
        int i2 = size - 1;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((SmallSortedMap$Entry) this.entryList.get(i2)).key);
            if (compareTo > 0) {
                i = size + 1;
                return -i;
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((SmallSortedMap$Entry) this.entryList.get(i4)).key);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        i = i3 + 1;
        return -i;
    }

    public final void checkMutable() {
        if (this.isImmutable) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        checkMutable();
        if (!this.entryList.isEmpty()) {
            this.entryList.clear();
        }
        if (this.overflowEntries.isEmpty()) {
            return;
        }
        this.overflowEntries.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return binarySearchInArray(comparable) >= 0 || this.overflowEntries.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.lazyEntrySet == null) {
            this.lazyEntrySet = new ArrayMap.EntrySet(1, this);
        }
        return this.lazyEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SmallSortedMap$1)) {
            return super.equals(obj);
        }
        SmallSortedMap$1 smallSortedMap$1 = (SmallSortedMap$1) obj;
        int size = size();
        if (size == smallSortedMap$1.size()) {
            int size2 = this.entryList.size();
            if (size2 != smallSortedMap$1.entryList.size()) {
                return ((AbstractSet) entrySet()).equals(smallSortedMap$1.entrySet());
            }
            for (int i = 0; i < size2; i++) {
                if (getArrayEntryAt(i).equals(smallSortedMap$1.getArrayEntryAt(i))) {
                }
            }
            if (size2 != size) {
                return this.overflowEntries.equals(smallSortedMap$1.overflowEntries);
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int binarySearchInArray = binarySearchInArray(comparable);
        return binarySearchInArray >= 0 ? ((SmallSortedMap$Entry) this.entryList.get(binarySearchInArray)).value : this.overflowEntries.get(comparable);
    }

    public final Map.Entry getArrayEntryAt(int i) {
        return (Map.Entry) this.entryList.get(i);
    }

    public final Iterable getOverflowEntries() {
        return this.overflowEntries.isEmpty() ? Utf8.SafeProcessor.ITERABLE : this.overflowEntries.entrySet();
    }

    public final SortedMap getOverflowEntriesMutable() {
        checkMutable();
        if (this.overflowEntries.isEmpty() && !(this.overflowEntries instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.overflowEntries = treeMap;
            this.overflowEntriesDescending = treeMap.descendingMap();
        }
        return (SortedMap) this.overflowEntries;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.entryList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((SmallSortedMap$Entry) this.entryList.get(i2)).hashCode();
        }
        return this.overflowEntries.size() > 0 ? this.overflowEntries.hashCode() + i : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* synthetic */ Object put(Object obj, Object obj2) {
        if (obj == null) {
            return put$androidx$datastore$preferences$protobuf$SmallSortedMap(null, obj2);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m$1();
        return null;
    }

    public final Object put$androidx$datastore$preferences$protobuf$SmallSortedMap(Comparable comparable, Object obj) {
        checkMutable();
        int binarySearchInArray = binarySearchInArray(comparable);
        if (binarySearchInArray >= 0) {
            return ((SmallSortedMap$Entry) this.entryList.get(binarySearchInArray)).setValue(obj);
        }
        checkMutable();
        boolean isEmpty = this.entryList.isEmpty();
        int i = this.maxArraySize;
        if (isEmpty && !(this.entryList instanceof ArrayList)) {
            this.entryList = new ArrayList(i);
        }
        int i2 = -(binarySearchInArray + 1);
        if (i2 >= i) {
            return getOverflowEntriesMutable().put(comparable, obj);
        }
        if (this.entryList.size() == i) {
            SmallSortedMap$Entry smallSortedMap$Entry = (SmallSortedMap$Entry) this.entryList.remove(i - 1);
            getOverflowEntriesMutable().put(smallSortedMap$Entry.key, smallSortedMap$Entry.value);
        }
        this.entryList.add(i2, new SmallSortedMap$Entry(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        checkMutable();
        Comparable comparable = (Comparable) obj;
        int binarySearchInArray = binarySearchInArray(comparable);
        if (binarySearchInArray >= 0) {
            return removeArrayEntryAt(binarySearchInArray);
        }
        if (this.overflowEntries.isEmpty()) {
            return null;
        }
        return this.overflowEntries.remove(comparable);
    }

    public final Object removeArrayEntryAt(int i) {
        checkMutable();
        Object obj = ((SmallSortedMap$Entry) this.entryList.remove(i)).value;
        if (!this.overflowEntries.isEmpty()) {
            Iterator it = getOverflowEntriesMutable().entrySet().iterator();
            List list = this.entryList;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new SmallSortedMap$Entry(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.overflowEntries.size() + this.entryList.size();
    }
}
