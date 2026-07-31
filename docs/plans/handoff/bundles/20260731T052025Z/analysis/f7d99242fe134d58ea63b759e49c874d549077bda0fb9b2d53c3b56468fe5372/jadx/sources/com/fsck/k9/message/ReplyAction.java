package com.fsck.k9.message;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReplyAction {
    public static final /* synthetic */ ReplyAction[] $VALUES;
    public static final ReplyAction REPLY;
    public static final ReplyAction REPLY_ALL;

    static {
        ReplyAction replyAction = new ReplyAction("REPLY", 0);
        REPLY = replyAction;
        ReplyAction replyAction2 = new ReplyAction("REPLY_ALL", 1);
        REPLY_ALL = replyAction2;
        $VALUES = new ReplyAction[]{replyAction, replyAction2};
    }

    public static ReplyAction valueOf(String str) {
        return (ReplyAction) Enum.valueOf(ReplyAction.class, str);
    }

    public static ReplyAction[] values() {
        return (ReplyAction[]) $VALUES.clone();
    }
}
