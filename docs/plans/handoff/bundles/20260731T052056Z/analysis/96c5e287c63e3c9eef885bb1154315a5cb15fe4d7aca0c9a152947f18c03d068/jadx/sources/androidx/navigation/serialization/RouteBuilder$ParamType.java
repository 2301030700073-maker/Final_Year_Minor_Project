package androidx.navigation.serialization;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RouteBuilder$ParamType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RouteBuilder$ParamType[] $VALUES;
    public static final RouteBuilder$ParamType PATH;
    public static final RouteBuilder$ParamType QUERY;

    static {
        RouteBuilder$ParamType routeBuilder$ParamType = new RouteBuilder$ParamType("PATH", 0);
        PATH = routeBuilder$ParamType;
        RouteBuilder$ParamType routeBuilder$ParamType2 = new RouteBuilder$ParamType("QUERY", 1);
        QUERY = routeBuilder$ParamType2;
        RouteBuilder$ParamType[] routeBuilder$ParamTypeArr = {routeBuilder$ParamType, routeBuilder$ParamType2};
        $VALUES = routeBuilder$ParamTypeArr;
        $ENTRIES = new EnumEntriesList(routeBuilder$ParamTypeArr);
    }

    public static RouteBuilder$ParamType valueOf(String str) {
        return (RouteBuilder$ParamType) Enum.valueOf(RouteBuilder$ParamType.class, str);
    }

    public static RouteBuilder$ParamType[] values() {
        return (RouteBuilder$ParamType[]) $VALUES.clone();
    }
}
