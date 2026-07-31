package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap$Builder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.jvm.internal.markers.KMutableSet;
import kotlinx.serialization.json.internal.AbstractJsonLexer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SnapshotMapKeySet implements Set, KMutableSet {
    public final /* synthetic */ int $r8$classId;
    public final SnapshotStateMap map;

    public SnapshotMapKeySet(SnapshotStateMap snapshotStateMap, int i) {
        this.$r8$classId = i;
        this.map = snapshotStateMap;
    }

    private final boolean retainAll$androidx$compose$runtime$snapshots$SnapshotMapEntrySet(Collection collection) {
        PersistentHashMap persistentHashMap;
        int i;
        Snapshot currentSnapshot;
        boolean access$attemptUpdate;
        Collection<Map.Entry> collection2 = collection;
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection2, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : collection2) {
            Pair pair = new Pair(entry.getKey(), entry.getValue());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        SnapshotStateMap snapshotStateMap = this.map;
        boolean z = false;
        do {
            synchronized (SnapshotId_jvmKt.sync$1) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.firstStateRecord;
                stateMapStateRecord.getClass();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current(stateMapStateRecord);
                persistentHashMap = stateMapStateRecord2.map;
                i = stateMapStateRecord2.modification;
            }
            persistentHashMap.getClass();
            PersistentMap$Builder builder = persistentHashMap.builder();
            Object it = snapshotStateMap.entries.iterator();
            while (((AbstractJsonLexer) it).hasNext()) {
                Map.Entry entry2 = (Map.Entry) ((StateMapMutableKeysIterator) it).next();
                if (!linkedHashMap.containsKey(entry2.getKey()) || !Intrinsics.areEqual(linkedHashMap.get(entry2.getKey()), entry2.getValue())) {
                    builder.remove(entry2.getKey());
                    z = true;
                }
            }
            PersistentHashMap build = builder.build();
            if (Intrinsics.areEqual(build, persistentHashMap)) {
                break;
            }
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.firstStateRecord;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.lock) {
                currentSnapshot = SnapshotKt.currentSnapshot();
                access$attemptUpdate = SnapshotStateMap.access$attemptUpdate(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord3, snapshotStateMap, currentSnapshot), i, build);
            }
            SnapshotKt.notifyWrite(currentSnapshot, snapshotStateMap);
        } while (!access$attemptUpdate);
        return z;
    }

    private final boolean retainAll$androidx$compose$runtime$snapshots$SnapshotMapKeySet(Collection collection) {
        PersistentHashMap persistentHashMap;
        int i;
        Snapshot currentSnapshot;
        boolean access$attemptUpdate;
        Set set = CollectionsKt.toSet(collection);
        SnapshotStateMap snapshotStateMap = this.map;
        boolean z = false;
        do {
            synchronized (SnapshotId_jvmKt.sync$1) {
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.firstStateRecord;
                stateMapStateRecord.getClass();
                SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current(stateMapStateRecord);
                persistentHashMap = stateMapStateRecord2.map;
                i = stateMapStateRecord2.modification;
            }
            persistentHashMap.getClass();
            PersistentMap$Builder builder = persistentHashMap.builder();
            Object it = snapshotStateMap.entries.iterator();
            while (((AbstractJsonLexer) it).hasNext()) {
                Map.Entry entry = (Map.Entry) ((StateMapMutableKeysIterator) it).next();
                if (!set.contains(entry.getKey())) {
                    builder.remove(entry.getKey());
                    z = true;
                }
            }
            PersistentHashMap build = builder.build();
            if (Intrinsics.areEqual(build, persistentHashMap)) {
                break;
            }
            SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.firstStateRecord;
            stateMapStateRecord3.getClass();
            synchronized (SnapshotKt.lock) {
                currentSnapshot = SnapshotKt.currentSnapshot();
                access$attemptUpdate = SnapshotStateMap.access$attemptUpdate(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord3, snapshotStateMap, currentSnapshot), i, build);
            }
            SnapshotKt.notifyWrite(currentSnapshot, snapshotStateMap);
        } while (!access$attemptUpdate);
        return z;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                SnapshotId_jvmKt.unsupported();
                throw null;
            case 1:
                SnapshotId_jvmKt.unsupported();
                throw null;
            default:
                SnapshotId_jvmKt.unsupported();
                throw null;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.$r8$classId) {
            case 0:
                SnapshotId_jvmKt.unsupported();
                throw null;
            case 1:
                SnapshotId_jvmKt.unsupported();
                throw null;
            default:
                SnapshotId_jvmKt.unsupported();
                throw null;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.map.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        int i = this.$r8$classId;
        SnapshotStateMap snapshotStateMap = this.map;
        switch (i) {
            case 0:
                return snapshotStateMap.containsKey(obj);
            case 1:
                if (!(obj instanceof Map.Entry) || ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap.Entry))) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                return Intrinsics.areEqual(snapshotStateMap.get(entry.getKey()), entry.getValue());
            default:
                return snapshotStateMap.containsValue(obj);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        int i = this.$r8$classId;
        SnapshotStateMap snapshotStateMap = this.map;
        switch (i) {
            case 0:
                Collection collection2 = collection;
                if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
                    Iterator it = collection2.iterator();
                    while (it.hasNext()) {
                        if (!snapshotStateMap.containsKey(it.next())) {
                            break;
                        }
                    }
                }
                break;
            case 1:
                Collection collection3 = collection;
                if (!(collection3 instanceof Collection) || !collection3.isEmpty()) {
                    Iterator it2 = collection3.iterator();
                    while (it2.hasNext()) {
                        if (!contains((Map.Entry) it2.next())) {
                            break;
                        }
                    }
                }
                break;
            default:
                Collection collection4 = collection;
                if (!(collection4 instanceof Collection) || !collection4.isEmpty()) {
                    Iterator it3 = collection4.iterator();
                    while (it3.hasNext()) {
                        if (!snapshotStateMap.containsValue(it3.next())) {
                            break;
                        }
                    }
                }
                break;
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        SnapshotStateMap snapshotStateMap = this.map;
        switch (i) {
            case 0:
                return new StateMapMutableKeysIterator(snapshotStateMap, ((ImmutableSet) snapshotStateMap.getReadable$runtime().map.entrySet()).iterator(), 0);
            case 1:
                return new StateMapMutableKeysIterator(snapshotStateMap, ((ImmutableSet) snapshotStateMap.getReadable$runtime().map.entrySet()).iterator(), 1);
            default:
                return new StateMapMutableKeysIterator(snapshotStateMap, ((ImmutableSet) snapshotStateMap.getReadable$runtime().map.entrySet()).iterator(), 2);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        Object obj2;
        int i = this.$r8$classId;
        SnapshotStateMap snapshotStateMap = this.map;
        switch (i) {
            case 0:
                if (snapshotStateMap.remove(obj) != null) {
                    break;
                }
                break;
            case 1:
                if (obj instanceof Map.Entry) {
                    if ((!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap.Entry)) && snapshotStateMap.remove(((Map.Entry) obj).getKey()) != null) {
                        break;
                    }
                }
                break;
            default:
                Object it = snapshotStateMap.entries.iterator();
                while (true) {
                    if (((AbstractJsonLexer) it).hasNext()) {
                        obj2 = ((StateMapMutableKeysIterator) it).next();
                        if (Intrinsics.areEqual(((Map.Entry) obj2).getValue(), obj)) {
                        }
                    } else {
                        obj2 = null;
                    }
                }
                Map.Entry entry = (Map.Entry) obj2;
                if (entry != null) {
                    snapshotStateMap.remove(entry.getKey());
                    break;
                }
                break;
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        PersistentHashMap persistentHashMap;
        int i;
        Snapshot currentSnapshot;
        boolean access$attemptUpdate;
        boolean z = false;
        switch (this.$r8$classId) {
            case 0:
                Iterator it = collection.iterator();
                while (true) {
                    boolean z2 = false;
                    while (it.hasNext()) {
                        if (this.map.remove(it.next()) != null || z2) {
                            z2 = true;
                        }
                    }
                    return z2;
                    break;
                }
            case 1:
                Iterator it2 = collection.iterator();
                while (true) {
                    boolean z3 = false;
                    while (it2.hasNext()) {
                        if (this.map.remove(((Map.Entry) it2.next()).getKey()) != null || z3) {
                            z3 = true;
                        }
                    }
                    return z3;
                    break;
                }
            default:
                Set set = CollectionsKt.toSet(collection);
                SnapshotStateMap snapshotStateMap = this.map;
                do {
                    synchronized (SnapshotId_jvmKt.sync$1) {
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.firstStateRecord;
                        stateMapStateRecord.getClass();
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current(stateMapStateRecord);
                        persistentHashMap = stateMapStateRecord2.map;
                        i = stateMapStateRecord2.modification;
                    }
                    persistentHashMap.getClass();
                    PersistentMap$Builder builder = persistentHashMap.builder();
                    Object it3 = snapshotStateMap.entries.iterator();
                    while (((AbstractJsonLexer) it3).hasNext()) {
                        Map.Entry entry = (Map.Entry) ((StateMapMutableKeysIterator) it3).next();
                        if (set.contains(entry.getValue())) {
                            builder.remove(entry.getKey());
                            z = true;
                        }
                    }
                    PersistentHashMap build = builder.build();
                    if (!Intrinsics.areEqual(build, persistentHashMap)) {
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.firstStateRecord;
                        stateMapStateRecord3.getClass();
                        synchronized (SnapshotKt.lock) {
                            currentSnapshot = SnapshotKt.currentSnapshot();
                            access$attemptUpdate = SnapshotStateMap.access$attemptUpdate(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord3, snapshotStateMap, currentSnapshot), i, build);
                        }
                        SnapshotKt.notifyWrite(currentSnapshot, snapshotStateMap);
                    }
                    return z;
                } while (!access$attemptUpdate);
                return z;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        PersistentHashMap persistentHashMap;
        int i;
        Snapshot currentSnapshot;
        boolean access$attemptUpdate;
        switch (this.$r8$classId) {
            case 0:
                return retainAll$androidx$compose$runtime$snapshots$SnapshotMapKeySet(collection);
            case 1:
                return retainAll$androidx$compose$runtime$snapshots$SnapshotMapEntrySet(collection);
            default:
                Set set = CollectionsKt.toSet(collection);
                SnapshotStateMap snapshotStateMap = this.map;
                boolean z = false;
                do {
                    synchronized (SnapshotId_jvmKt.sync$1) {
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord = snapshotStateMap.firstStateRecord;
                        stateMapStateRecord.getClass();
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord2 = (SnapshotStateMap.StateMapStateRecord) SnapshotKt.current(stateMapStateRecord);
                        persistentHashMap = stateMapStateRecord2.map;
                        i = stateMapStateRecord2.modification;
                    }
                    persistentHashMap.getClass();
                    PersistentMap$Builder builder = persistentHashMap.builder();
                    Object it = snapshotStateMap.entries.iterator();
                    while (((AbstractJsonLexer) it).hasNext()) {
                        Map.Entry entry = (Map.Entry) ((StateMapMutableKeysIterator) it).next();
                        if (!set.contains(entry.getValue())) {
                            builder.remove(entry.getKey());
                            z = true;
                        }
                    }
                    PersistentHashMap build = builder.build();
                    if (!Intrinsics.areEqual(build, persistentHashMap)) {
                        SnapshotStateMap.StateMapStateRecord stateMapStateRecord3 = snapshotStateMap.firstStateRecord;
                        stateMapStateRecord3.getClass();
                        synchronized (SnapshotKt.lock) {
                            currentSnapshot = SnapshotKt.currentSnapshot();
                            access$attemptUpdate = SnapshotStateMap.access$attemptUpdate(snapshotStateMap, (SnapshotStateMap.StateMapStateRecord) SnapshotKt.writableRecord(stateMapStateRecord3, snapshotStateMap, currentSnapshot), i, build);
                        }
                        SnapshotKt.notifyWrite(currentSnapshot, snapshotStateMap);
                    }
                    return z;
                } while (!access$attemptUpdate);
                return z;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.map.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return Intrinsics.Kotlin.toArray(this);
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return Intrinsics.Kotlin.toArray(this, objArr);
    }
}
