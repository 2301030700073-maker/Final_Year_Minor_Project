package j$.time;

import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final Map a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {a.R("ACT", "Australia/Darwin"), a.R("AET", "Australia/Sydney"), a.R("AGT", "America/Argentina/Buenos_Aires"), a.R("ART", "Africa/Cairo"), a.R("AST", "America/Anchorage"), a.R("BET", "America/Sao_Paulo"), a.R("BST", "Asia/Dhaka"), a.R("CAT", "Africa/Harare"), a.R("CNT", "America/St_Johns"), a.R("CST", "America/Chicago"), a.R("CTT", "Asia/Shanghai"), a.R("EAT", "Africa/Addis_Ababa"), a.R("ECT", "Europe/Paris"), a.R("IET", "America/Indiana/Indianapolis"), a.R("IST", "Asia/Kolkata"), a.R("JST", "Asia/Tokyo"), a.R("MIT", "Pacific/Apia"), a.R("NET", "Asia/Yerevan"), a.R("NST", "Pacific/Auckland"), a.R("PLT", "Asia/Karachi"), a.R("PNT", "America/Phoenix"), a.R("PRT", "America/Puerto_Rico"), a.R("PST", "America/Los_Angeles"), a.R("SST", "Pacific/Guadalcanal"), a.R("VST", "Asia/Ho_Chi_Minh"), a.R("EST", "-05:00"), a.R("MST", "-07:00"), a.R("HST", "-10:00")};
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

    public static ZoneId of(String str) {
        return w(str, true);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        return of((String) Objects.requireNonNullElse((String) map.get(id), id));
    }

    public static ZoneId u(TemporalAccessor temporalAccessor) {
        ZoneId zoneId = (ZoneId) temporalAccessor.i(j$.time.temporal.o.e);
        if (zoneId != null) {
            return zoneId;
        }
        h.g("Unable to obtain ZoneId from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static ZoneId w(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.B(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? y(str, 3, z) : str.startsWith("UT") ? y(str, 2, z) : v.A(str, z);
    }

    private Object writeReplace() {
        return new r((byte) 7, this);
    }

    public static ZoneId x(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            h.c("prefix should be GMT, UTC or UT, is: ".concat(str));
            return null;
        }
        if (zoneOffset.b != 0) {
            str = str.concat(zoneOffset.c);
        }
        return new v(str, zoneOffset.v());
    }

    public static ZoneId y(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return x(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return v.A(str, z);
        }
        try {
            ZoneOffset B = ZoneOffset.B(str.substring(i));
            return B == ZoneOffset.UTC ? x(substring, B) : x(substring, B);
        } catch (c e) {
            throw new c("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return getId().equals(((ZoneId) obj).getId());
        }
        return false;
    }

    public abstract String getId();

    public int hashCode() {
        return getId().hashCode();
    }

    public String toString() {
        return getId();
    }

    public abstract j$.time.zone.f v();

    public abstract void z(DataOutput dataOutput);
}
