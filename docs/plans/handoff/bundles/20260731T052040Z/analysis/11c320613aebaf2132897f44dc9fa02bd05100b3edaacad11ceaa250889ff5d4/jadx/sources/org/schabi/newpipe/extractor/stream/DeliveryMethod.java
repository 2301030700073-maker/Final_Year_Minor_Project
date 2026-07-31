package org.schabi.newpipe.extractor.stream;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DeliveryMethod {
    public static final /* synthetic */ DeliveryMethod[] $VALUES;
    public static final DeliveryMethod DASH;
    public static final DeliveryMethod HLS;
    public static final DeliveryMethod PROGRESSIVE_HTTP;
    public static final DeliveryMethod TORRENT;

    static {
        DeliveryMethod deliveryMethod = new DeliveryMethod("PROGRESSIVE_HTTP", 0);
        PROGRESSIVE_HTTP = deliveryMethod;
        DeliveryMethod deliveryMethod2 = new DeliveryMethod("DASH", 1);
        DASH = deliveryMethod2;
        DeliveryMethod deliveryMethod3 = new DeliveryMethod("HLS", 2);
        HLS = deliveryMethod3;
        DeliveryMethod deliveryMethod4 = new DeliveryMethod("SS", 3);
        DeliveryMethod deliveryMethod5 = new DeliveryMethod("TORRENT", 4);
        TORRENT = deliveryMethod5;
        $VALUES = new DeliveryMethod[]{deliveryMethod, deliveryMethod2, deliveryMethod3, deliveryMethod4, deliveryMethod5};
    }

    public static DeliveryMethod valueOf(String str) {
        return (DeliveryMethod) Enum.valueOf(DeliveryMethod.class, str);
    }

    public static DeliveryMethod[] values() {
        return (DeliveryMethod[]) $VALUES.clone();
    }
}
