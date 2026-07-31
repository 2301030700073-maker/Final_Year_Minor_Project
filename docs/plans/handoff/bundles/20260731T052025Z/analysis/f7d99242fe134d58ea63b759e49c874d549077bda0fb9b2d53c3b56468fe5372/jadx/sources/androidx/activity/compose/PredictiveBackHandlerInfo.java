package androidx.activity.compose;

import androidx.work.OperationKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PredictiveBackHandlerInfo extends OperationKt {
    public final long compositeKey;
    public final Object owner;

    public PredictiveBackHandlerInfo(long j, Object obj) {
        this.owner = obj;
        this.compositeKey = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PredictiveBackHandlerInfo)) {
            return false;
        }
        PredictiveBackHandlerInfo predictiveBackHandlerInfo = (PredictiveBackHandlerInfo) obj;
        return this.owner.equals(predictiveBackHandlerInfo.owner) && this.compositeKey == predictiveBackHandlerInfo.compositeKey;
    }

    public final int hashCode() {
        int hashCode = this.owner.hashCode() * 31;
        long j = this.compositeKey;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "PredictiveBackHandlerInfo(owner=" + this.owner + ", compositeKey=" + this.compositeKey + ')';
    }
}
