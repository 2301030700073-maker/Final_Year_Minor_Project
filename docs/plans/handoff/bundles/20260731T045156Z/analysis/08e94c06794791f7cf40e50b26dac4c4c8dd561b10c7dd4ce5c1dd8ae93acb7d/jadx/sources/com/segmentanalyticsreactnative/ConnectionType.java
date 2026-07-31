package com.segmentanalyticsreactnative;

import com.facebook.internal.AnalyticsEvents;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: AnalyticsReactNativeModule.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/segmentanalyticsreactnative/ConnectionType;", "", "<init>", "(Ljava/lang/String;I)V", "Cellular", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "Wifi", "segment_analytics-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ConnectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectionType[] $VALUES;
    public static final ConnectionType Cellular = new ConnectionType("Cellular", 0);
    public static final ConnectionType Unknown = new ConnectionType(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, 1);
    public static final ConnectionType Wifi = new ConnectionType("Wifi", 2);

    private static final /* synthetic */ ConnectionType[] $values() {
        return new ConnectionType[]{Cellular, Unknown, Wifi};
    }

    public static EnumEntries<ConnectionType> getEntries() {
        return $ENTRIES;
    }

    private ConnectionType(String str, int i) {
    }

    static {
        ConnectionType[] $values = $values();
        $VALUES = $values;
        $ENTRIES = EnumEntriesKt.enumEntries($values);
    }

    public static ConnectionType valueOf(String str) {
        return (ConnectionType) Enum.valueOf(ConnectionType.class, str);
    }

    public static ConnectionType[] values() {
        return (ConnectionType[]) $VALUES.clone();
    }
}
