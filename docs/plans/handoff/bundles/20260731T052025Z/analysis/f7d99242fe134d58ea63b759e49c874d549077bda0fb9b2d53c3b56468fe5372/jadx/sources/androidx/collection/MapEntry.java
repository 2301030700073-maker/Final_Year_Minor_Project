package androidx.collection;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MapEntry implements Map.Entry, KMappedMarker {
    public final /* synthetic */ int $r8$classId;
    public final Object key;
    public final Object value;

    public /* synthetic */ MapEntry(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.key = obj;
        this.value = obj2;
    }

    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        Map.Entry entry;
        int i = this.$r8$classId;
        Object obj2 = this.key;
        switch (i) {
            case 1:
                entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
                return entry != null && Intrinsics.areEqual(entry.getKey(), obj2) && Intrinsics.areEqual(entry.getValue(), getValue());
            case 2:
                entry = obj instanceof Map.Entry ? (Map.Entry) obj : null;
                return entry != null && Intrinsics.areEqual(entry.getKey(), obj2) && Intrinsics.areEqual(entry.getValue(), getValue());
            default:
                return super.equals(obj);
        }
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        switch (this.$r8$classId) {
        }
        return this.key;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        switch (this.$r8$classId) {
        }
        return this.value;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        int i = this.$r8$classId;
        Object obj = this.key;
        switch (i) {
            case 1:
                int hashCode = obj != null ? obj.hashCode() : 0;
                Object value = getValue();
                return hashCode ^ (value != null ? value.hashCode() : 0);
            case 2:
                int hashCode2 = obj != null ? obj.hashCode() : 0;
                Object value2 = getValue();
                return hashCode2 ^ (value2 != null ? value2.hashCode() : 0);
            default:
                return super.hashCode();
        }
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            case 1:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public String toString() {
        int i = this.$r8$classId;
        Object obj = this.key;
        switch (i) {
            case 1:
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append('=');
                sb.append(getValue());
                return sb.toString();
            case 2:
                StringBuilder sb2 = new StringBuilder();
                sb2.append(obj);
                sb2.append('=');
                sb2.append(getValue());
                return sb2.toString();
            default:
                return super.toString();
        }
    }
}
