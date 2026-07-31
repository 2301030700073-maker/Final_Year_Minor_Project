package app.k9mail.legacy.message.controller;

import com.fsck.k9.mail.filter.Base64;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageReference {
    public final String accountUuid;
    public final long folderId;
    public final String uid;

    public MessageReference(long j, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.accountUuid = str;
        this.folderId = j;
        this.uid = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageReference)) {
            return false;
        }
        MessageReference messageReference = (MessageReference) obj;
        return Intrinsics.areEqual(this.accountUuid, messageReference.accountUuid) && this.folderId == messageReference.folderId && Intrinsics.areEqual(this.uid, messageReference.uid);
    }

    public final int hashCode() {
        int hashCode = this.accountUuid.hashCode() * 31;
        long j = this.folderId;
        return this.uid.hashCode() + ((hashCode + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final String toIdentityString() {
        return "#:" + Base64.encode(this.accountUuid) + ":" + Base64.encode(String.valueOf(this.folderId)) + ":" + Base64.encode(this.uid);
    }

    public final String toString() {
        return "MessageReference(accountUuid=" + this.accountUuid + ", folderId=" + this.folderId + ", uid=" + this.uid + ")";
    }

    public final boolean equals(long j, String str, String str2) {
        str.getClass();
        str2.getClass();
        return Intrinsics.areEqual(this.accountUuid, str) && this.folderId == j && Intrinsics.areEqual(this.uid, str2);
    }
}
