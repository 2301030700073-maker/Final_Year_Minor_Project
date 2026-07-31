package j$.util;

import j$.time.ZoneId;
import java.util.TimeZone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public class DesugarTimeZone {
    public static TimeZone getTimeZone(ZoneId zoneId) {
        String id = zoneId.getId();
        char charAt = id.charAt(0);
        if (charAt == '+' || charAt == '-') {
            id = "GMT".concat(id);
        } else if (charAt == 'Z' && id.length() == 1) {
            id = "UTC";
        }
        return TimeZone.getTimeZone(id);
    }

    public static TimeZone getTimeZone(String str) {
        return TimeZone.getTimeZone(str);
    }
}
