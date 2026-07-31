package org.schabi.newpipe.player;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final class PlayerType {
    public static final /* synthetic */ PlayerType[] $VALUES;
    public static final PlayerType AUDIO;
    public static final PlayerType MAIN;
    public static final PlayerType POPUP;

    static {
        PlayerType playerType = new PlayerType("MAIN", 0);
        MAIN = playerType;
        PlayerType playerType2 = new PlayerType("AUDIO", 1);
        AUDIO = playerType2;
        PlayerType playerType3 = new PlayerType("POPUP", 2);
        POPUP = playerType3;
        $VALUES = new PlayerType[]{playerType, playerType2, playerType3};
    }

    public static PlayerType valueOf(String str) {
        return (PlayerType) Enum.valueOf(PlayerType.class, str);
    }

    public static PlayerType[] values() {
        return (PlayerType[]) $VALUES.clone();
    }
}
