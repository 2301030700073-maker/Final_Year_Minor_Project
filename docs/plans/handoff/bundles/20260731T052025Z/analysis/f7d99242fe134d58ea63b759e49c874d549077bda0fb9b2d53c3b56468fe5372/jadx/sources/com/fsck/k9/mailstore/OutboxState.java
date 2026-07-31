package com.fsck.k9.mailstore;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutboxState {
    public final int numberOfSendAttempts;
    public final String sendError;
    public final long sendErrorTimestamp;
    public final SendState sendState;

    public OutboxState(SendState sendState, int i, String str, long j) {
        this.sendState = sendState;
        this.numberOfSendAttempts = i;
        this.sendError = str;
        this.sendErrorTimestamp = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OutboxState)) {
            return false;
        }
        OutboxState outboxState = (OutboxState) obj;
        return this.sendState == outboxState.sendState && this.numberOfSendAttempts == outboxState.numberOfSendAttempts && Intrinsics.areEqual(this.sendError, outboxState.sendError) && this.sendErrorTimestamp == outboxState.sendErrorTimestamp;
    }

    public final int hashCode() {
        int hashCode = ((this.sendState.hashCode() * 31) + this.numberOfSendAttempts) * 31;
        String str = this.sendError;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j = this.sendErrorTimestamp;
        return ((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "OutboxState(sendState=" + this.sendState + ", numberOfSendAttempts=" + this.numberOfSendAttempts + ", sendError=" + this.sendError + ", sendErrorTimestamp=" + this.sendErrorTimestamp + ")";
    }
}
