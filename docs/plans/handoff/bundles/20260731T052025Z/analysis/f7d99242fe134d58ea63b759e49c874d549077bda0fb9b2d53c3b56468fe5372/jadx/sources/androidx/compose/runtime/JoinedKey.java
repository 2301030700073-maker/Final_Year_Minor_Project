package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JoinedKey {
    public final Integer left;
    public final Object right;

    public JoinedKey(Integer num, Object obj) {
        this.left = num;
        this.right = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JoinedKey)) {
            return false;
        }
        JoinedKey joinedKey = (JoinedKey) obj;
        return this.left.equals(joinedKey.left) && Intrinsics.areEqual(this.right, joinedKey.right);
    }

    public final int hashCode() {
        int hashCode = this.left.hashCode() * 31;
        Object obj = this.right;
        return (obj instanceof Enum ? ((Enum) obj).ordinal() : obj != null ? obj.hashCode() : 0) + hashCode;
    }

    public final String toString() {
        return "JoinedKey(left=" + this.left + ", right=" + this.right + ')';
    }
}
