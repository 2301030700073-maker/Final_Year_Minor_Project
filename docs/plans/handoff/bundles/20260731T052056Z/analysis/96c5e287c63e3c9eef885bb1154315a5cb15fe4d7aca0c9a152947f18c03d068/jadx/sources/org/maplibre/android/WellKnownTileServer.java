package org.maplibre.android;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WellKnownTileServer {
    private static final /* synthetic */ WellKnownTileServer[] $VALUES;
    public static final WellKnownTileServer MapLibre;
    public static final WellKnownTileServer MapTiler;
    public static final WellKnownTileServer Mapbox;

    static {
        WellKnownTileServer wellKnownTileServer = new WellKnownTileServer("Mapbox", 0);
        Mapbox = wellKnownTileServer;
        WellKnownTileServer wellKnownTileServer2 = new WellKnownTileServer("MapTiler", 1);
        MapTiler = wellKnownTileServer2;
        WellKnownTileServer wellKnownTileServer3 = new WellKnownTileServer("MapLibre", 2);
        MapLibre = wellKnownTileServer3;
        $VALUES = new WellKnownTileServer[]{wellKnownTileServer, wellKnownTileServer2, wellKnownTileServer3};
    }

    public static WellKnownTileServer valueOf(String str) {
        return (WellKnownTileServer) Enum.valueOf(WellKnownTileServer.class, str);
    }

    public static WellKnownTileServer[] values() {
        return (WellKnownTileServer[]) $VALUES.clone();
    }
}
