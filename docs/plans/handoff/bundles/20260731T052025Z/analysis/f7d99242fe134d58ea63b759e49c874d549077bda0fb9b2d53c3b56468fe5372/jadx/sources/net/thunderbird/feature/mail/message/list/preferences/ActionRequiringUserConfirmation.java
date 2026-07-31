package net.thunderbird.feature.mail.message.list.preferences;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActionRequiringUserConfirmation {
    public static final /* synthetic */ ActionRequiringUserConfirmation[] $VALUES;
    public static final ActionRequiringUserConfirmation Delete;
    public static final ActionRequiringUserConfirmation DeleteFromNotification;
    public static final ActionRequiringUserConfirmation DeleteStarred;
    public static final ActionRequiringUserConfirmation DiscardMessage;
    public static final ActionRequiringUserConfirmation MarkAllRead;
    public static final ActionRequiringUserConfirmation Spam;

    static {
        ActionRequiringUserConfirmation actionRequiringUserConfirmation = new ActionRequiringUserConfirmation("Delete", 0);
        Delete = actionRequiringUserConfirmation;
        ActionRequiringUserConfirmation actionRequiringUserConfirmation2 = new ActionRequiringUserConfirmation("DeleteStarred", 1);
        DeleteStarred = actionRequiringUserConfirmation2;
        ActionRequiringUserConfirmation actionRequiringUserConfirmation3 = new ActionRequiringUserConfirmation("DeleteFromNotification", 2);
        DeleteFromNotification = actionRequiringUserConfirmation3;
        ActionRequiringUserConfirmation actionRequiringUserConfirmation4 = new ActionRequiringUserConfirmation("DiscardMessage", 3);
        DiscardMessage = actionRequiringUserConfirmation4;
        ActionRequiringUserConfirmation actionRequiringUserConfirmation5 = new ActionRequiringUserConfirmation("Spam", 4);
        Spam = actionRequiringUserConfirmation5;
        ActionRequiringUserConfirmation actionRequiringUserConfirmation6 = new ActionRequiringUserConfirmation("MarkAllRead", 5);
        MarkAllRead = actionRequiringUserConfirmation6;
        $VALUES = new ActionRequiringUserConfirmation[]{actionRequiringUserConfirmation, actionRequiringUserConfirmation2, actionRequiringUserConfirmation3, actionRequiringUserConfirmation4, actionRequiringUserConfirmation5, actionRequiringUserConfirmation6};
    }

    public static ActionRequiringUserConfirmation valueOf(String str) {
        return (ActionRequiringUserConfirmation) Enum.valueOf(ActionRequiringUserConfirmation.class, str);
    }

    public static ActionRequiringUserConfirmation[] values() {
        return (ActionRequiringUserConfirmation[]) $VALUES.clone();
    }
}
