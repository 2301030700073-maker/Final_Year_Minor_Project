package androidx.activity.compose;

import androidx.work.OperationKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BackHandlerInfo extends OperationKt {
    public final long compositeKey;
    public final Object owner;

    public BackHandlerInfo(long j, Object obj) {
        this.owner = obj;
        this.compositeKey = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackHandlerInfo)) {
            return false;
        }
        BackHandlerInfo backHandlerInfo = (BackHandlerInfo) obj;
        return this.owner.equals(backHandlerInfo.owner) && this.compositeKey == backHandlerInfo.compositeKey;
    }

    public final int hashCode() {
        int hashCode = this.owner.hashCode() * 31;
        long j = this.compositeKey;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "BackHandlerInfo(owner=" + this.owner + ", compositeKey=" + this.compositeKey + ')';
    }
}
