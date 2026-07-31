package org.schabi.newpipe.extractor.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class StreamExtractor$Privacy {
    public static final /* synthetic */ StreamExtractor$Privacy[] $VALUES;
    public static final StreamExtractor$Privacy INTERNAL;
    public static final StreamExtractor$Privacy OTHER;
    public static final StreamExtractor$Privacy PRIVATE;
    public static final StreamExtractor$Privacy PUBLIC;
    public static final StreamExtractor$Privacy UNLISTED;

    static {
        StreamExtractor$Privacy streamExtractor$Privacy = new StreamExtractor$Privacy("PUBLIC", 0);
        PUBLIC = streamExtractor$Privacy;
        StreamExtractor$Privacy streamExtractor$Privacy2 = new StreamExtractor$Privacy("UNLISTED", 1);
        UNLISTED = streamExtractor$Privacy2;
        StreamExtractor$Privacy streamExtractor$Privacy3 = new StreamExtractor$Privacy("PRIVATE", 2);
        PRIVATE = streamExtractor$Privacy3;
        StreamExtractor$Privacy streamExtractor$Privacy4 = new StreamExtractor$Privacy("INTERNAL", 3);
        INTERNAL = streamExtractor$Privacy4;
        StreamExtractor$Privacy streamExtractor$Privacy5 = new StreamExtractor$Privacy("OTHER", 4);
        OTHER = streamExtractor$Privacy5;
        $VALUES = new StreamExtractor$Privacy[]{streamExtractor$Privacy, streamExtractor$Privacy2, streamExtractor$Privacy3, streamExtractor$Privacy4, streamExtractor$Privacy5};
    }

    public static StreamExtractor$Privacy valueOf(String str) {
        return (StreamExtractor$Privacy) Enum.valueOf(StreamExtractor$Privacy.class, str);
    }

    public static StreamExtractor$Privacy[] values() {
        return (StreamExtractor$Privacy[]) $VALUES.clone();
    }
}
