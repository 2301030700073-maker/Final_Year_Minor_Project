package org.schabi.newpipe.extractor.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamType {
    public static final /* synthetic */ StreamType[] $VALUES;
    public static final StreamType AUDIO_LIVE_STREAM;
    public static final StreamType AUDIO_STREAM;
    public static final StreamType LIVE_STREAM;
    public static final StreamType NONE;
    public static final StreamType POST_LIVE_AUDIO_STREAM;
    public static final StreamType POST_LIVE_STREAM;
    public static final StreamType VIDEO_STREAM;

    static {
        StreamType streamType = new StreamType("NONE", 0);
        NONE = streamType;
        StreamType streamType2 = new StreamType("VIDEO_STREAM", 1);
        VIDEO_STREAM = streamType2;
        StreamType streamType3 = new StreamType("AUDIO_STREAM", 2);
        AUDIO_STREAM = streamType3;
        StreamType streamType4 = new StreamType("LIVE_STREAM", 3);
        LIVE_STREAM = streamType4;
        StreamType streamType5 = new StreamType("AUDIO_LIVE_STREAM", 4);
        AUDIO_LIVE_STREAM = streamType5;
        StreamType streamType6 = new StreamType("POST_LIVE_STREAM", 5);
        POST_LIVE_STREAM = streamType6;
        StreamType streamType7 = new StreamType("POST_LIVE_AUDIO_STREAM", 6);
        POST_LIVE_AUDIO_STREAM = streamType7;
        $VALUES = new StreamType[]{streamType, streamType2, streamType3, streamType4, streamType5, streamType6, streamType7};
    }

    public static StreamType valueOf(String str) {
        return (StreamType) Enum.valueOf(StreamType.class, str);
    }

    public static StreamType[] values() {
        return (StreamType[]) $VALUES.clone();
    }
}
