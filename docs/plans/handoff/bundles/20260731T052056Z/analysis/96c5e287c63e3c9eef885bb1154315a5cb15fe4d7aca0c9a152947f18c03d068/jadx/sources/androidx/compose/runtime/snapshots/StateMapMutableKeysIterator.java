package androidx.compose.runtime.snapshots;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StateMapMutableKeysIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public Map.Entry current;
    public final Iterator iterator;
    public final SnapshotStateMap map;
    public int modification;
    public Map.Entry next;

    public StateMapMutableKeysIterator(SnapshotStateMap snapshotStateMap, Iterator it, int i) {
        this.$r8$classId = i;
        this.map = snapshotStateMap;
        this.iterator = it;
        this.modification = snapshotStateMap.getReadable$runtime().modification;
        advance();
    }

    public final void advance() {
        this.current = this.next;
        Iterator it = this.iterator;
        this.next = it.hasNext() ? (Map.Entry) it.next() : null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.next != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.$r8$classId) {
            case 0:
                Map.Entry entry = this.next;
                if (entry == null) {
                    Gson$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    advance();
                    break;
                }
            case 1:
                advance();
                if (this.current == null) {
                    Gson$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    break;
                }
            default:
                Map.Entry entry2 = this.next;
                if (entry2 == null) {
                    Gson$$ExternalSyntheticBUOutline0.m();
                    break;
                } else {
                    advance();
                    break;
                }
        }
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        SnapshotStateMap snapshotStateMap = this.map;
        if (snapshotStateMap.getReadable$runtime().modification != this.modification) {
            throw new ConcurrentModificationException();
        }
        Map.Entry entry = this.current;
        if (entry == null) {
            Gson$$ExternalSyntheticBUOutline0.m();
            return;
        }
        snapshotStateMap.remove(entry.getKey());
        this.current = null;
        this.modification = snapshotStateMap.getReadable$runtime().modification;
    }
}
