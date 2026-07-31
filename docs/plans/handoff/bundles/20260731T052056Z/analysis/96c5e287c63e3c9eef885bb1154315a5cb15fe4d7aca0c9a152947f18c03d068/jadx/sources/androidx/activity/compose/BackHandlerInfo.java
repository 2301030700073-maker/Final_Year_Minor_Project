package androidx.activity.compose;

import kotlin.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackHandlerInfo extends TuplesKt {
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
