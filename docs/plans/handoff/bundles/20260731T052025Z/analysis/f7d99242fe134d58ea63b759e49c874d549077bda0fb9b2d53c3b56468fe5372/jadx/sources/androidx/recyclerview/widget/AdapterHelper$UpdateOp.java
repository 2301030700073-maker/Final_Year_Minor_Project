package androidx.recyclerview.widget;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AdapterHelper$UpdateOp {
    public int cmd;
    public int itemCount;
    public Object payload;
    public int positionStart;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AdapterHelper$UpdateOp)) {
                return false;
            }
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) obj;
            int i = this.cmd;
            if (i != adapterHelper$UpdateOp.cmd) {
                return false;
            }
            if (i != 8 || Math.abs(this.itemCount - this.positionStart) != 1 || this.itemCount != adapterHelper$UpdateOp.positionStart || this.positionStart != adapterHelper$UpdateOp.itemCount) {
                if (this.itemCount != adapterHelper$UpdateOp.itemCount || this.positionStart != adapterHelper$UpdateOp.positionStart) {
                    return false;
                }
                Object obj2 = this.payload;
                Object obj3 = adapterHelper$UpdateOp.payload;
                if (obj2 != null) {
                    if (!obj2.equals(obj3)) {
                        return false;
                    }
                } else if (obj3 != null) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.cmd * 31) + this.positionStart) * 31) + this.itemCount;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.cmd;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.positionStart);
        sb.append("c:");
        sb.append(this.itemCount);
        sb.append(",p:");
        sb.append(this.payload);
        sb.append("]");
        return sb.toString();
    }
}
