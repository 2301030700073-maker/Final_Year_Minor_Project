package androidx.compose.runtime.snapshots;

import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StateMapMutableEntriesIterator$next$1 implements Map.Entry, KMutableMap.Entry {
    public final Object key;
    public final /* synthetic */ StateMapMutableKeysIterator this$0;
    public Object value;

    public StateMapMutableEntriesIterator$next$1(StateMapMutableKeysIterator stateMapMutableKeysIterator) {
        this.this$0 = stateMapMutableKeysIterator;
        Map.Entry entry = stateMapMutableKeysIterator.current;
        entry.getClass();
        this.key = entry.getKey();
        Map.Entry entry2 = stateMapMutableKeysIterator.current;
        entry2.getClass();
        this.value = entry2.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.key;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.value;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        StateMapMutableKeysIterator stateMapMutableKeysIterator = this.this$0;
        SnapshotStateMap snapshotStateMap = stateMapMutableKeysIterator.map;
        if (snapshotStateMap.getReadable$runtime().modification != stateMapMutableKeysIterator.modification) {
            throw new ConcurrentModificationException();
        }
        Object obj2 = this.value;
        snapshotStateMap.put(this.key, obj);
        this.value = obj;
        return obj2;
    }
}
