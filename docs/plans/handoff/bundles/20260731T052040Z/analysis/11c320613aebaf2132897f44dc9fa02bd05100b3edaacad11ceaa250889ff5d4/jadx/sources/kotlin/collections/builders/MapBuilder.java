package kotlin.collections.builders;

import androidx.emoji2.text.flatbuffer.Table;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.text.CharsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MapBuilder implements Map, Serializable, KMutableMap {
    public static final MapBuilder Empty;
    private MapBuilderEntries entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private Object[] keysArray;
    private MapBuilderKeys keysView;
    private int length;
    private int maxProbeDistance;
    private int modCount;
    private int[] presenceArray;
    private int size;
    private Object[] valuesArray;
    private MapBuilderValues valuesView;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class EntryRef implements Map.Entry, KMutableMap.Entry {
        public final int expectedModCount;
        public final int index;
        public final MapBuilder map;

        public EntryRef(MapBuilder mapBuilder, int i) {
            mapBuilder.getClass();
            this.map = mapBuilder;
            this.index = i;
            this.expectedModCount = mapBuilder.modCount;
        }

        public final void checkForComodification$5() {
            if (this.map.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            checkForComodification$5();
            return this.map.keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            checkForComodification$5();
            Object[] objArr = this.map.valuesArray;
            objArr.getClass();
            return objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            Object key = getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            Object value = getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            checkForComodification$5();
            MapBuilder mapBuilder = this.map;
            mapBuilder.checkIsMutable$kotlin_stdlib();
            Object[] allocateValuesArray = mapBuilder.allocateValuesArray();
            int i = this.index;
            Object obj2 = allocateValuesArray[i];
            allocateValuesArray[i] = obj;
            return obj2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class KeysItr extends Table implements Iterator, KMappedMarker {
        public final /* synthetic */ int $r8$classId;

        public KeysItr(MapBuilder mapBuilder, int i) {
            this.$r8$classId = i;
            mapBuilder.getClass();
            this.bb = mapBuilder;
            this.vtable_start = -1;
            this.vtable_size = mapBuilder.modCount;
            initNext$kotlin_stdlib();
        }

        @Override // java.util.Iterator
        public final Object next() {
            switch (this.$r8$classId) {
                case 0:
                    checkForComodification$kotlin_stdlib();
                    int i = this.bb_pos;
                    MapBuilder mapBuilder = (MapBuilder) this.bb;
                    if (i >= mapBuilder.length) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        break;
                    } else {
                        int i2 = this.bb_pos;
                        this.bb_pos = i2 + 1;
                        this.vtable_start = i2;
                        Object obj = mapBuilder.keysArray[this.vtable_start];
                        initNext$kotlin_stdlib();
                        break;
                    }
                case 1:
                    checkForComodification$kotlin_stdlib();
                    int i3 = this.bb_pos;
                    MapBuilder mapBuilder2 = (MapBuilder) this.bb;
                    if (i3 >= mapBuilder2.length) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        break;
                    } else {
                        int i4 = this.bb_pos;
                        this.bb_pos = i4 + 1;
                        this.vtable_start = i4;
                        EntryRef entryRef = new EntryRef(mapBuilder2, i4);
                        initNext$kotlin_stdlib();
                        break;
                    }
                default:
                    checkForComodification$kotlin_stdlib();
                    int i5 = this.bb_pos;
                    MapBuilder mapBuilder3 = (MapBuilder) this.bb;
                    if (i5 >= mapBuilder3.length) {
                        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                        break;
                    } else {
                        int i6 = this.bb_pos;
                        this.bb_pos = i6 + 1;
                        this.vtable_start = i6;
                        Object[] objArr = mapBuilder3.valuesArray;
                        objArr.getClass();
                        Object obj2 = objArr[this.vtable_start];
                        initNext$kotlin_stdlib();
                        break;
                    }
            }
            return null;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.isReadOnly = true;
        Empty = mapBuilder;
    }

    public MapBuilder(int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("capacity must be non-negative.");
            throw null;
        }
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int highestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.keysArray = objArr;
        this.valuesArray = null;
        this.presenceArray = iArr;
        this.hashArray = new int[highestOneBit];
        this.maxProbeDistance = 2;
        this.length = 0;
        this.hashShift = Integer.numberOfLeadingZeros(highestOneBit) + 1;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final int addKey$kotlin_stdlib(Object obj) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int hash = hash(obj);
            int i = this.maxProbeDistance * 2;
            int length = this.hashArray.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.hashArray;
                int i3 = iArr[hash];
                if (i3 == 0) {
                    int i4 = this.length;
                    Object[] objArr = this.keysArray;
                    if (i4 < objArr.length) {
                        int i5 = i4 + 1;
                        this.length = i5;
                        objArr[i4] = obj;
                        this.presenceArray[i4] = hash;
                        iArr[hash] = i5;
                        this.size++;
                        this.modCount++;
                        if (i2 > this.maxProbeDistance) {
                            this.maxProbeDistance = i2;
                        }
                        return i4;
                    }
                    ensureExtraCapacity$1(1);
                } else {
                    if (Intrinsics.areEqual(this.keysArray[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        rehash(this.hashArray.length * 2);
                        break;
                    }
                    hash = hash == 0 ? this.hashArray.length - 1 : hash - 1;
                }
            }
        }
    }

    public final Object[] allocateValuesArray() {
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            return objArr;
        }
        int length = this.keysArray.length;
        if (length < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("capacity must be non-negative.");
            return null;
        }
        Object[] objArr2 = new Object[length];
        this.valuesArray = objArr2;
        return objArr2;
    }

    public final MapBuilder build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        if (this.size > 0) {
            return this;
        }
        MapBuilder mapBuilder = Empty;
        mapBuilder.getClass();
        return mapBuilder;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        checkIsMutable$kotlin_stdlib();
        int i = this.length - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.hashArray[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        CharsKt.resetRange(this.keysArray, 0, this.length);
        Object[] objArr = this.valuesArray;
        if (objArr != null) {
            CharsKt.resetRange(objArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
        this.modCount++;
    }

    public final void compact(boolean z) {
        int i;
        Object[] objArr = this.valuesArray;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.length;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.presenceArray;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.keysArray;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.hashArray[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        CharsKt.resetRange(this.keysArray, i3, i);
        if (objArr != null) {
            CharsKt.resetRange(objArr, i3, this.length);
        }
        this.length = i3;
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection collection) {
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry entry) {
        entry.getClass();
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        objArr.getClass();
        return Intrinsics.areEqual(objArr[findKey], entry.getValue());
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return findKey(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return findValue(obj) >= 0;
    }

    public final void ensureExtraCapacity$1(int i) {
        Object[] objArr = this.keysArray;
        int length = objArr.length;
        int i2 = this.length;
        int i3 = length - i2;
        int i4 = i2 - this.size;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr.length / 4) {
            compact(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        if (i5 > objArr.length) {
            int length2 = objArr.length;
            int i6 = length2 + (length2 >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? Log.LOG_LEVEL_OFF : 2147483639;
            }
            this.keysArray = Arrays.copyOf(objArr, i6);
            Object[] objArr2 = this.valuesArray;
            this.valuesArray = objArr2 != null ? Arrays.copyOf(objArr2, i6) : null;
            this.presenceArray = Arrays.copyOf(this.presenceArray, i6);
            int highestOneBit = Integer.highestOneBit((i6 >= 1 ? i6 : 1) * 3);
            if (highestOneBit > this.hashArray.length) {
                rehash(highestOneBit);
            }
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        MapBuilderEntries mapBuilderEntries = this.entriesView;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries mapBuilderEntries2 = new MapBuilderEntries(this);
        this.entriesView = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.size == map.size() && containsAllEntries$kotlin_stdlib(map.entrySet());
    }

    public final int findKey(Object obj) {
        int hash = hash(obj);
        int i = this.maxProbeDistance;
        while (true) {
            int i2 = this.hashArray[hash];
            if (i2 == 0) {
                return -1;
            }
            int i3 = i2 - 1;
            if (Intrinsics.areEqual(this.keysArray[i3], obj)) {
                return i3;
            }
            i--;
            if (i < 0) {
                return -1;
            }
            hash = hash == 0 ? this.hashArray.length - 1 : hash - 1;
        }
    }

    public final int findValue(Object obj) {
        int i = this.length;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.presenceArray[i] >= 0) {
                Object[] objArr = this.valuesArray;
                objArr.getClass();
                if (Intrinsics.areEqual(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int findKey = findKey(obj);
        if (findKey < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        objArr.getClass();
        return objArr[findKey];
    }

    public final int hash(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.hashShift;
    }

    @Override // java.util.Map
    public final int hashCode() {
        KeysItr keysItr = new KeysItr(this, 1);
        int i = 0;
        while (keysItr.hasNext()) {
            int i2 = keysItr.bb_pos;
            MapBuilder mapBuilder = (MapBuilder) keysItr.bb;
            if (i2 >= mapBuilder.length) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return 0;
            }
            int i3 = keysItr.bb_pos;
            keysItr.bb_pos = i3 + 1;
            keysItr.vtable_start = i3;
            Object obj = mapBuilder.keysArray[keysItr.vtable_start];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = mapBuilder.valuesArray;
            objArr.getClass();
            Object obj2 = objArr[keysItr.vtable_start];
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            keysItr.initNext$kotlin_stdlib();
            i += hashCode ^ hashCode2;
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.size == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        MapBuilderKeys mapBuilderKeys = this.keysView;
        if (mapBuilderKeys != null) {
            return mapBuilderKeys;
        }
        MapBuilderKeys mapBuilderKeys2 = new MapBuilderKeys(this);
        this.keysView = mapBuilderKeys2;
        return mapBuilderKeys2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        checkIsMutable$kotlin_stdlib();
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(obj);
        Object[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib >= 0) {
            allocateValuesArray[addKey$kotlin_stdlib] = obj2;
            return null;
        }
        int i = (-addKey$kotlin_stdlib) - 1;
        Object obj3 = allocateValuesArray[i];
        allocateValuesArray[i] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        checkIsMutable$kotlin_stdlib();
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return;
        }
        ensureExtraCapacity$1(entrySet.size());
        for (Map.Entry entry : entrySet) {
            int addKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
            Object[] allocateValuesArray = allocateValuesArray();
            if (addKey$kotlin_stdlib >= 0) {
                allocateValuesArray[addKey$kotlin_stdlib] = entry.getValue();
            } else {
                int i = (-addKey$kotlin_stdlib) - 1;
                if (!Intrinsics.areEqual(entry.getValue(), allocateValuesArray[i])) {
                    allocateValuesArray[i] = entry.getValue();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0032, code lost:
    
        r3[r0] = r6;
        r5.presenceArray[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void rehash(int r6) {
        /*
            r5 = this;
            int r0 = r5.modCount
            int r0 = r0 + 1
            r5.modCount = r0
            int r0 = r5.length
            int r1 = r5.size
            r2 = 0
            if (r0 <= r1) goto L10
            r5.compact(r2)
        L10:
            int[] r0 = new int[r6]
            r5.hashArray = r0
            int r6 = java.lang.Integer.numberOfLeadingZeros(r6)
            int r6 = r6 + 1
            r5.hashShift = r6
        L1c:
            int r6 = r5.length
            if (r2 >= r6) goto L4d
            int r6 = r2 + 1
            java.lang.Object[] r0 = r5.keysArray
            r0 = r0[r2]
            int r0 = r5.hash(r0)
            int r1 = r5.maxProbeDistance
        L2c:
            int[] r3 = r5.hashArray
            r4 = r3[r0]
            if (r4 != 0) goto L3a
            r3[r0] = r6
            int[] r1 = r5.presenceArray
            r1[r2] = r0
            r2 = r6
            goto L1c
        L3a:
            int r1 = r1 + (-1)
            if (r1 < 0) goto L48
            int r4 = r0 + (-1)
            if (r0 != 0) goto L46
            int r0 = r3.length
            int r0 = r0 + (-1)
            goto L2c
        L46:
            r0 = r4
            goto L2c
        L48:
            java.lang.String r5 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
        L4d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.MapBuilder.rehash(int):void");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(obj);
        if (findKey < 0) {
            return null;
        }
        Object[] objArr = this.valuesArray;
        objArr.getClass();
        Object obj2 = objArr[findKey];
        removeEntryAt(findKey);
        return obj2;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry entry) {
        entry.getClass();
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        Object[] objArr = this.valuesArray;
        objArr.getClass();
        if (!Intrinsics.areEqual(objArr[findKey], entry.getValue())) {
            return false;
        }
        removeEntryAt(findKey);
        return true;
    }

    public final void removeEntryAt(int i) {
        int i2;
        int i3;
        int hash;
        int[] iArr;
        Object[] objArr = this.keysArray;
        objArr.getClass();
        objArr[i] = null;
        Object[] objArr2 = this.valuesArray;
        if (objArr2 != null) {
            objArr2[i] = null;
        }
        int i4 = this.presenceArray[i];
        loop0: while (true) {
            int i5 = i4;
            int i6 = 0;
            do {
                i4 = i4 == 0 ? this.hashArray.length - 1 : i4 - 1;
                int[] iArr2 = this.hashArray;
                i2 = iArr2[i4];
                i6++;
                if (i6 > this.maxProbeDistance) {
                    iArr2[i5] = 0;
                    break loop0;
                } else if (i2 == 0) {
                    iArr2[i5] = 0;
                    break loop0;
                } else {
                    i3 = i2 - 1;
                    hash = hash(this.keysArray[i3]) - i4;
                    iArr = this.hashArray;
                }
            } while ((hash & (iArr.length - 1)) < i6);
            iArr[i5] = i2;
            this.presenceArray[i3] = i5;
        }
        this.presenceArray[i] = -1;
        this.size--;
        this.modCount++;
    }

    @Override // java.util.Map
    public final int size() {
        return this.size;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.size * 3) + 2);
        sb.append("{");
        KeysItr keysItr = new KeysItr(this, 1);
        int i = 0;
        while (keysItr.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = keysItr.bb_pos;
            MapBuilder mapBuilder = (MapBuilder) keysItr.bb;
            if (i2 >= mapBuilder.length) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                return null;
            }
            int i3 = keysItr.bb_pos;
            keysItr.bb_pos = i3 + 1;
            keysItr.vtable_start = i3;
            Object obj = mapBuilder.keysArray[keysItr.vtable_start];
            if (obj == mapBuilder) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = mapBuilder.valuesArray;
            objArr.getClass();
            Object obj2 = objArr[keysItr.vtable_start];
            if (obj2 == mapBuilder) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            keysItr.initNext$kotlin_stdlib();
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        MapBuilderValues mapBuilderValues = this.valuesView;
        if (mapBuilderValues != null) {
            return mapBuilderValues;
        }
        MapBuilderValues mapBuilderValues2 = new MapBuilderValues(this);
        this.valuesView = mapBuilderValues2;
        return mapBuilderValues2;
    }

    public MapBuilder() {
        this(8);
    }
}
