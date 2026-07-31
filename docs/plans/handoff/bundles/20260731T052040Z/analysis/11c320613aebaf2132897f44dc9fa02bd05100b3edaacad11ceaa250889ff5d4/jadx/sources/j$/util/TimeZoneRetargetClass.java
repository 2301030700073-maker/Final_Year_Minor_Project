package j$.util;

import j$.time.ZoneId;
import java.util.TimeZone;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class TimeZoneRetargetClass {
    public static ZoneId toZoneId(TimeZone timeZone) {
        String id = timeZone.getID();
        java.util.Map map = ZoneId.a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        return ZoneId.b0((String) Objects.requireNonNullElse((String) map.get(id), id), true);
    }
}
