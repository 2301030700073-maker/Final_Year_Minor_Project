package org.schabi.newpipe.extractor.subscription;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SubscriptionExtractor$ContentSource {
    public static final /* synthetic */ SubscriptionExtractor$ContentSource[] $VALUES;
    public static final SubscriptionExtractor$ContentSource CHANNEL_URL;
    public static final SubscriptionExtractor$ContentSource INPUT_STREAM;

    static {
        SubscriptionExtractor$ContentSource subscriptionExtractor$ContentSource = new SubscriptionExtractor$ContentSource("CHANNEL_URL", 0);
        CHANNEL_URL = subscriptionExtractor$ContentSource;
        SubscriptionExtractor$ContentSource subscriptionExtractor$ContentSource2 = new SubscriptionExtractor$ContentSource("INPUT_STREAM", 1);
        INPUT_STREAM = subscriptionExtractor$ContentSource2;
        $VALUES = new SubscriptionExtractor$ContentSource[]{subscriptionExtractor$ContentSource, subscriptionExtractor$ContentSource2};
    }

    public static SubscriptionExtractor$ContentSource valueOf(String str) {
        return (SubscriptionExtractor$ContentSource) Enum.valueOf(SubscriptionExtractor$ContentSource.class, str);
    }

    public static SubscriptionExtractor$ContentSource[] values() {
        return (SubscriptionExtractor$ContentSource[]) $VALUES.clone();
    }
}
