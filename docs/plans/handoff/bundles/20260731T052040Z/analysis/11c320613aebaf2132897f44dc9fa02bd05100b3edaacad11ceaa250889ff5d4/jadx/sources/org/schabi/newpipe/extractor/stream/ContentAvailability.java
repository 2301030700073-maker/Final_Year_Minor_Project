package org.schabi.newpipe.extractor.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ContentAvailability {
    public static final /* synthetic */ ContentAvailability[] $VALUES;
    public static final ContentAvailability AVAILABLE;
    public static final ContentAvailability MEMBERSHIP;
    public static final ContentAvailability PAID;
    public static final ContentAvailability UNKNOWN;
    public static final ContentAvailability UPCOMING;

    static {
        ContentAvailability contentAvailability = new ContentAvailability("UNKNOWN", 0);
        UNKNOWN = contentAvailability;
        ContentAvailability contentAvailability2 = new ContentAvailability("AVAILABLE", 1);
        AVAILABLE = contentAvailability2;
        ContentAvailability contentAvailability3 = new ContentAvailability("MEMBERSHIP", 2);
        MEMBERSHIP = contentAvailability3;
        ContentAvailability contentAvailability4 = new ContentAvailability("PAID", 3);
        PAID = contentAvailability4;
        ContentAvailability contentAvailability5 = new ContentAvailability("UPCOMING", 4);
        UPCOMING = contentAvailability5;
        $VALUES = new ContentAvailability[]{contentAvailability, contentAvailability2, contentAvailability3, contentAvailability4, contentAvailability5};
    }

    public static ContentAvailability valueOf(String str) {
        return (ContentAvailability) Enum.valueOf(ContentAvailability.class, str);
    }

    public static ContentAvailability[] values() {
        return (ContentAvailability[]) $VALUES.clone();
    }
}
