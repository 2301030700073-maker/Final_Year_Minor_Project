package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Map;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SmallSortedMap$Entry implements Comparable, Map.Entry {
    public final Comparable key;
    public final /* synthetic */ SmallSortedMap$1 this$0;
    public Object value;

    public SmallSortedMap$Entry(SmallSortedMap$1 smallSortedMap$1, Comparable comparable, Object obj) {
        this.this$0 = smallSortedMap$1;
        this.key = comparable;
        this.value = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.key.compareTo(((SmallSortedMap$Entry) obj).key);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.key;
                if (comparable == null ? key == null : comparable.equals(key)) {
                    Object obj2 = this.value;
                    Object value = entry.getValue();
                    if (obj2 == null ? value == null : obj2.equals(value)) {
                    }
                }
            }
            return false;
        }
        return true;
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
    public final int hashCode() {
        Comparable comparable = this.key;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.value;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.this$0.checkMutable();
        Object obj2 = this.value;
        this.value = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.key);
        String valueOf2 = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 1);
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
