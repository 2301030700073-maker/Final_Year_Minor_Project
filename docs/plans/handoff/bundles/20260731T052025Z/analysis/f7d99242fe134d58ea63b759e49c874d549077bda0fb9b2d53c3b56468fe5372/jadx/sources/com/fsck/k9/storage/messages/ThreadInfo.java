package com.fsck.k9.storage.messages;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThreadInfo {
    public final Long messageId;
    public final Long parentId;
    public final long rootId;
    public final Long threadId;

    public ThreadInfo(Long l, Long l2, long j, Long l3) {
        this.threadId = l;
        this.messageId = l2;
        this.rootId = j;
        this.parentId = l3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThreadInfo)) {
            return false;
        }
        ThreadInfo threadInfo = (ThreadInfo) obj;
        return Intrinsics.areEqual(this.threadId, threadInfo.threadId) && Intrinsics.areEqual(this.messageId, threadInfo.messageId) && this.rootId == threadInfo.rootId && Intrinsics.areEqual(this.parentId, threadInfo.parentId);
    }

    public final int hashCode() {
        Long l = this.threadId;
        int hashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.messageId;
        int hashCode2 = l2 == null ? 0 : l2.hashCode();
        long j = this.rootId;
        int i = (((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        Long l3 = this.parentId;
        return i + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        return "ThreadInfo(threadId=" + this.threadId + ", messageId=" + this.messageId + ", rootId=" + this.rootId + ", parentId=" + this.parentId + ")";
    }
}
