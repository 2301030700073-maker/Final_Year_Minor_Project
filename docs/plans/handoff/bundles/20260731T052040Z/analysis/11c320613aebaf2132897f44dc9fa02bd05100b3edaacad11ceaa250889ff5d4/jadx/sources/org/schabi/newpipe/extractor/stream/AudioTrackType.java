package org.schabi.newpipe.extractor.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AudioTrackType {
    public static final /* synthetic */ AudioTrackType[] $VALUES;
    public static final AudioTrackType DESCRIPTIVE;
    public static final AudioTrackType DUBBED;
    public static final AudioTrackType ORIGINAL;
    public static final AudioTrackType SECONDARY;

    static {
        AudioTrackType audioTrackType = new AudioTrackType("ORIGINAL", 0);
        ORIGINAL = audioTrackType;
        AudioTrackType audioTrackType2 = new AudioTrackType("DUBBED", 1);
        DUBBED = audioTrackType2;
        AudioTrackType audioTrackType3 = new AudioTrackType("DESCRIPTIVE", 2);
        DESCRIPTIVE = audioTrackType3;
        AudioTrackType audioTrackType4 = new AudioTrackType("SECONDARY", 3);
        SECONDARY = audioTrackType4;
        $VALUES = new AudioTrackType[]{audioTrackType, audioTrackType2, audioTrackType3, audioTrackType4};
    }

    public static AudioTrackType valueOf(String str) {
        return (AudioTrackType) Enum.valueOf(AudioTrackType.class, str);
    }

    public static AudioTrackType[] values() {
        return (AudioTrackType[]) $VALUES.clone();
    }
}
