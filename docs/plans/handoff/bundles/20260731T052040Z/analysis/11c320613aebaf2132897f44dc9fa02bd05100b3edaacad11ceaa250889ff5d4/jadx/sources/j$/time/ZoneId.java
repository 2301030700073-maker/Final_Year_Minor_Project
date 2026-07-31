package j$.time;

import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import j$.util.TimeZoneRetargetClass;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final Map a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.H("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.H("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.H("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.H("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.H("AST", "America/Anchorage"), j$.com.android.tools.r8.a.H("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.H("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.H("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.H("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.H("CST", "America/Chicago"), j$.com.android.tools.r8.a.H("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.H("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.H("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.H("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.H("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.H("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.H("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.H("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.H("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.H("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.H("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.H("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.H("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.H("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.H("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.H("EST", "-05:00"), j$.com.android.tools.r8.a.H("MST", "-07:00"), j$.com.android.tools.r8.a.H("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        a = Collections.unmodifiableMap(hashMap);
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != v.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId Z(TemporalAccessor temporalAccessor) {
        ZoneId zoneId = (ZoneId) temporalAccessor.F(j$.time.temporal.q.e);
        if (zoneId != null) {
            return zoneId;
        }
        j$.nio.file.m.g("Unable to obtain ZoneId from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static ZoneId b0(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.g0(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? d0(str, 3, z) : str.startsWith("UT") ? d0(str, 2, z) : v.f0(str, z);
    }

    public static ZoneId c0(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            j$.nio.file.m.c("prefix should be GMT, UTC or UT, is: ".concat(str));
            return null;
        }
        if (zoneOffset.b != 0) {
            str = str.concat(zoneOffset.c);
        }
        return new v(str, zoneOffset.a0());
    }

    public static ZoneId d0(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return c0(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return v.f0(str, z);
        }
        try {
            ZoneOffset g0 = ZoneOffset.g0(str.substring(i));
            return g0 == ZoneOffset.UTC ? c0(substring, g0) : c0(substring, g0);
        } catch (DateTimeException e) {
            throw new DateTimeException("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        return TimeZoneRetargetClass.toZoneId(TimeZone.getDefault());
    }

    private Object writeReplace() {
        return new q((byte) 7, this);
    }

    public abstract j$.time.zone.f a0();

    public abstract void e0(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return i().equals(((ZoneId) obj).i());
        }
        return false;
    }

    public int hashCode() {
        return i().hashCode();
    }

    public abstract String i();

    public String toString() {
        return i();
    }
}
