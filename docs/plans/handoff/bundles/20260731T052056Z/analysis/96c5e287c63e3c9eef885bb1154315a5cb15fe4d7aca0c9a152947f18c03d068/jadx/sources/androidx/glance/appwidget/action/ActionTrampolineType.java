package androidx.glance.appwidget.action;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActionTrampolineType {
    private static final /* synthetic */ ActionTrampolineType[] $VALUES;
    public static final ActionTrampolineType ACTIVITY;
    public static final ActionTrampolineType BROADCAST;
    public static final ActionTrampolineType CALLBACK;
    public static final ActionTrampolineType FOREGROUND_SERVICE;
    public static final ActionTrampolineType SERVICE;

    static {
        ActionTrampolineType actionTrampolineType = new ActionTrampolineType("ACTIVITY", 0);
        ACTIVITY = actionTrampolineType;
        ActionTrampolineType actionTrampolineType2 = new ActionTrampolineType("BROADCAST", 1);
        BROADCAST = actionTrampolineType2;
        ActionTrampolineType actionTrampolineType3 = new ActionTrampolineType("SERVICE", 2);
        SERVICE = actionTrampolineType3;
        ActionTrampolineType actionTrampolineType4 = new ActionTrampolineType("FOREGROUND_SERVICE", 3);
        FOREGROUND_SERVICE = actionTrampolineType4;
        ActionTrampolineType actionTrampolineType5 = new ActionTrampolineType("CALLBACK", 4);
        CALLBACK = actionTrampolineType5;
        $VALUES = new ActionTrampolineType[]{actionTrampolineType, actionTrampolineType2, actionTrampolineType3, actionTrampolineType4, actionTrampolineType5};
    }

    public static ActionTrampolineType valueOf(String str) {
        return (ActionTrampolineType) Enum.valueOf(ActionTrampolineType.class, str);
    }

    public static ActionTrampolineType[] values() {
        return (ActionTrampolineType[]) $VALUES.clone();
    }
}
