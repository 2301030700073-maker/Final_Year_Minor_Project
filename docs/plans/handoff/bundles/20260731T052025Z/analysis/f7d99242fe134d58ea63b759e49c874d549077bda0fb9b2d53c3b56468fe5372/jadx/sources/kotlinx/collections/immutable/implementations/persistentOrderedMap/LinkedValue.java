package kotlinx.collections.immutable.implementations.persistentOrderedMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LinkedValue {
    public final Object next;
    public final Object previous;
    public final Object value;

    public LinkedValue(Object obj, Object obj2, Object obj3) {
        this.value = obj;
        this.previous = obj2;
        this.next = obj3;
    }
}
