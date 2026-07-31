package kotlinx.collections.immutable.implementations.persistentOrderedSet;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.collections.immutable.implementations.persistentOrderedMap.LinkedValue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class PersistentOrderedSetIterator implements Iterator, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public int index;
    public final Map map;
    public Object nextElement;

    public PersistentOrderedSetIterator(Object obj, Map map, int i) {
        this.$r8$classId = i;
        switch (i) {
            case 1:
                this.nextElement = obj;
                this.map = map;
                break;
            case 2:
                map.getClass();
                this.nextElement = obj;
                this.map = map;
                break;
            default:
                map.getClass();
                this.nextElement = obj;
                this.map = map;
                break;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.$r8$classId;
        Map map = this.map;
        switch (i) {
            case 0:
                if (this.index < map.size()) {
                    break;
                }
                break;
            case 1:
                if (this.index < map.size()) {
                    break;
                }
                break;
            default:
                if (this.index < map.size()) {
                    break;
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public Object next() {
        int i = this.$r8$classId;
        Object obj = null;
        Map map = this.map;
        switch (i) {
            case 0:
                if (hasNext()) {
                    obj = this.nextElement;
                    this.index++;
                    Object obj2 = map.get(obj);
                    if (obj2 == null) {
                        throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
                    }
                    this.nextElement = ((Links) obj2).next;
                } else {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                }
                return obj;
            case 1:
                if (hasNext()) {
                    obj = this.nextElement;
                    this.index++;
                    Object obj3 = map.get(obj);
                    if (obj3 == null) {
                        throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
                    }
                    this.nextElement = ((androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links) obj3).next;
                } else {
                    Regex$$ExternalSyntheticBUOutline0.m990m();
                }
                return obj;
            default:
                return next();
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Iterator
    public LinkedValue next() {
        if (hasNext()) {
            Object obj = this.map.get(this.nextElement);
            if (obj != null) {
                LinkedValue linkedValue = (LinkedValue) obj;
                this.index++;
                this.nextElement = linkedValue.next;
                return linkedValue;
            }
            throw new ConcurrentModificationException("Hash code of a key (" + this.nextElement + ") has changed after it was added to the persistent map.");
        }
        Regex$$ExternalSyntheticBUOutline0.m990m();
        return null;
    }
}
