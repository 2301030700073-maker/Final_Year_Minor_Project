package com.fsck.k9.message;

import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReplyActions {
    public final List additionalActions;
    public final ReplyAction defaultAction;

    public ReplyActions(ReplyAction replyAction, List list) {
        this.defaultAction = replyAction;
        this.additionalActions = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReplyActions)) {
            return false;
        }
        ReplyActions replyActions = (ReplyActions) obj;
        return this.defaultAction == replyActions.defaultAction && Intrinsics.areEqual(this.additionalActions, replyActions.additionalActions);
    }

    public final int hashCode() {
        ReplyAction replyAction = this.defaultAction;
        return this.additionalActions.hashCode() + ((replyAction == null ? 0 : replyAction.hashCode()) * 31);
    }

    public final String toString() {
        return "ReplyActions(defaultAction=" + this.defaultAction + ", additionalActions=" + this.additionalActions + ")";
    }

    public /* synthetic */ ReplyActions(ReplyAction replyAction) {
        this(replyAction, EmptyList.INSTANCE);
    }
}
