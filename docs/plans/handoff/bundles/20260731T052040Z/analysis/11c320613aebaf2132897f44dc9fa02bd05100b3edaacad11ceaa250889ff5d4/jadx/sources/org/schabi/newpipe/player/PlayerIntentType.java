package org.schabi.newpipe.player;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlayerIntentType {
    public static final /* synthetic */ PlayerIntentType[] $VALUES;
    public static final PlayerIntentType AllOthers;
    public static final PlayerIntentType Enqueue;
    public static final PlayerIntentType EnqueueNext;
    public static final PlayerIntentType TimestampChange;

    static {
        PlayerIntentType playerIntentType = new PlayerIntentType("Enqueue", 0);
        Enqueue = playerIntentType;
        PlayerIntentType playerIntentType2 = new PlayerIntentType("EnqueueNext", 1);
        EnqueueNext = playerIntentType2;
        PlayerIntentType playerIntentType3 = new PlayerIntentType("TimestampChange", 2);
        TimestampChange = playerIntentType3;
        PlayerIntentType playerIntentType4 = new PlayerIntentType("AllOthers", 3);
        AllOthers = playerIntentType4;
        $VALUES = new PlayerIntentType[]{playerIntentType, playerIntentType2, playerIntentType3, playerIntentType4};
    }

    public static PlayerIntentType valueOf(String str) {
        return (PlayerIntentType) Enum.valueOf(PlayerIntentType.class, str);
    }

    public static PlayerIntentType[] values() {
        return (PlayerIntentType[]) $VALUES.clone();
    }
}
