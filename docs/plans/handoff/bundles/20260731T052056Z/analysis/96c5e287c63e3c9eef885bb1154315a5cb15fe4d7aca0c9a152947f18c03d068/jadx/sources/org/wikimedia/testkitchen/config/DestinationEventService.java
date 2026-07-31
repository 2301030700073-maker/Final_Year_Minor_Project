package org.wikimedia.testkitchen.config;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DestinationEventService {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DestinationEventService[] $VALUES;
    public static final DestinationEventService ANALYTICS;
    public static final DestinationEventService LOCAL;
    public static final DestinationEventService LOGGING;
    private final String baseUri;
    private final String id;

    static {
        DestinationEventService destinationEventService = new DestinationEventService(0, "ANALYTICS", "eventgate-analytics-external", "https://intake-analytics.wikimedia.org");
        ANALYTICS = destinationEventService;
        DestinationEventService destinationEventService2 = new DestinationEventService(1, "LOGGING", "eventgate-logging-external", "https://intake-logging.wikimedia.org");
        LOGGING = destinationEventService2;
        DestinationEventService destinationEventService3 = new DestinationEventService(2, "LOCAL", "eventgate-logging-local", "http://localhost:8192");
        LOCAL = destinationEventService3;
        DestinationEventService[] destinationEventServiceArr = {destinationEventService, destinationEventService2, destinationEventService3};
        $VALUES = destinationEventServiceArr;
        $ENTRIES = new EnumEntriesList(destinationEventServiceArr);
    }

    public DestinationEventService(int i, String str, String str2, String str3) {
        this.id = str2;
        this.baseUri = str3;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static DestinationEventService valueOf(String str) {
        return (DestinationEventService) Enum.valueOf(DestinationEventService.class, str);
    }

    public static DestinationEventService[] values() {
        return (DestinationEventService[]) $VALUES.clone();
    }

    public final String getBaseUri() {
        return this.baseUri;
    }

    public final String getId() {
        return this.id;
    }
}
