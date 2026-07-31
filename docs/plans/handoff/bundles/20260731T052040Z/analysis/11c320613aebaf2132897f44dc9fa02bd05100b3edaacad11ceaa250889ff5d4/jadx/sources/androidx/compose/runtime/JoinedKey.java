package androidx.compose.runtime;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
