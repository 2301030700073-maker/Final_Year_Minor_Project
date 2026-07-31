package org.wikipedia.feed.announcement;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GeoIPCookieUnmarshaller$Component {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ GeoIPCookieUnmarshaller$Component[] $VALUES;
    public static final GeoIPCookieUnmarshaller$Component CITY;
    public static final GeoIPCookieUnmarshaller$Component COUNTRY;
    public static final GeoIPCookieUnmarshaller$Component LATITUDE;
    public static final GeoIPCookieUnmarshaller$Component LONGITUDE;
    public static final GeoIPCookieUnmarshaller$Component REGION;
    public static final GeoIPCookieUnmarshaller$Component VERSION;

    static {
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component = new GeoIPCookieUnmarshaller$Component("COUNTRY", 0);
        COUNTRY = geoIPCookieUnmarshaller$Component;
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component2 = new GeoIPCookieUnmarshaller$Component("REGION", 1);
        REGION = geoIPCookieUnmarshaller$Component2;
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component3 = new GeoIPCookieUnmarshaller$Component("CITY", 2);
        CITY = geoIPCookieUnmarshaller$Component3;
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component4 = new GeoIPCookieUnmarshaller$Component("LATITUDE", 3);
        LATITUDE = geoIPCookieUnmarshaller$Component4;
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component5 = new GeoIPCookieUnmarshaller$Component("LONGITUDE", 4);
        LONGITUDE = geoIPCookieUnmarshaller$Component5;
        GeoIPCookieUnmarshaller$Component geoIPCookieUnmarshaller$Component6 = new GeoIPCookieUnmarshaller$Component("VERSION", 5);
        VERSION = geoIPCookieUnmarshaller$Component6;
        GeoIPCookieUnmarshaller$Component[] geoIPCookieUnmarshaller$ComponentArr = {geoIPCookieUnmarshaller$Component, geoIPCookieUnmarshaller$Component2, geoIPCookieUnmarshaller$Component3, geoIPCookieUnmarshaller$Component4, geoIPCookieUnmarshaller$Component5, geoIPCookieUnmarshaller$Component6};
        $VALUES = geoIPCookieUnmarshaller$ComponentArr;
        $ENTRIES = new EnumEntriesList(geoIPCookieUnmarshaller$ComponentArr);
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static GeoIPCookieUnmarshaller$Component valueOf(String str) {
        return (GeoIPCookieUnmarshaller$Component) Enum.valueOf(GeoIPCookieUnmarshaller$Component.class, str);
    }

    public static GeoIPCookieUnmarshaller$Component[] values() {
        return (GeoIPCookieUnmarshaller$Component[]) $VALUES.clone();
    }
}
