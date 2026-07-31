package androidx.navigation.serialization;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RouteBuilder$ParamType {
    public static final /* synthetic */ RouteBuilder$ParamType[] $VALUES;
    public static final RouteBuilder$ParamType PATH;
    public static final RouteBuilder$ParamType QUERY;

    static {
        RouteBuilder$ParamType routeBuilder$ParamType = new RouteBuilder$ParamType("PATH", 0);
        PATH = routeBuilder$ParamType;
        RouteBuilder$ParamType routeBuilder$ParamType2 = new RouteBuilder$ParamType("QUERY", 1);
        QUERY = routeBuilder$ParamType2;
        $VALUES = new RouteBuilder$ParamType[]{routeBuilder$ParamType, routeBuilder$ParamType2};
    }

    public static RouteBuilder$ParamType valueOf(String str) {
        return (RouteBuilder$ParamType) Enum.valueOf(RouteBuilder$ParamType.class, str);
    }

    public static RouteBuilder$ParamType[] values() {
        return (RouteBuilder$ParamType[]) $VALUES.clone();
    }
}
