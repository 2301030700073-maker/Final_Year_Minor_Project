package j$.time;

import j$.time.temporal.TemporalAccessor;
import j$.time.zone.ZoneRules;
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

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final Map a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.F("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.F("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.F("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.F("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.F("AST", "America/Anchorage"), j$.com.android.tools.r8.a.F("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.F("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.F("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.F("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.F("CST", "America/Chicago"), j$.com.android.tools.r8.a.F("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.F("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.F("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.F("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.F("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.F("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.F("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.F("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.F("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.F("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.F("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.F("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.F("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.F("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.F("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.F("EST", "-05:00"), j$.com.android.tools.r8.a.F("MST", "-07:00"), j$.com.android.tools.r8.a.F("HST", "-10:00")};
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
        if (getClass() != ZoneOffset.class && getClass() != t.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId U(TemporalAccessor temporalAccessor) {
        ZoneId zoneId = (ZoneId) temporalAccessor.L(j$.time.temporal.n.e);
        if (zoneId != null) {
            return zoneId;
        }
        j$.nio.file.j.g("Unable to obtain ZoneId from TemporalAccessor: ", temporalAccessor, " of type ", temporalAccessor.getClass().getName());
        return null;
    }

    public static ZoneId V(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.Z(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? X(str, 3, z) : str.startsWith("UT") ? X(str, 2, z) : t.Z(str, z);
    }

    public static ZoneId W(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            j$.nio.file.j.c("prefix should be GMT, UTC or UT, is: ".concat(str));
            return null;
        }
        if (zoneOffset.getTotalSeconds() != 0) {
            str = str.concat(zoneOffset.c);
        }
        return new t(str, zoneOffset.getRules());
    }

    public static ZoneId X(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return W(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return t.Z(str, z);
        }
        try {
            ZoneOffset Z = ZoneOffset.Z(str.substring(i));
            return Z == ZoneOffset.UTC ? W(substring, Z) : W(substring, Z);
        } catch (DateTimeException e) {
            throw new DateTimeException("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public static ZoneId of(String str) {
        return V(str, true);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        return TimeZoneRetargetClass.toZoneId(TimeZone.getDefault());
    }

    private Object writeReplace() {
        return new p((byte) 7, this);
    }

    public abstract void Y(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return i().equals(((ZoneId) obj).i());
        }
        return false;
    }

    public abstract ZoneRules getRules();

    public int hashCode() {
        return i().hashCode();
    }

    public abstract String i();

    public ZoneId normalized() {
        try {
            ZoneRules rules = getRules();
            return rules.isFixedOffset() ? rules.d(Instant.c) : this;
        } catch (j$.time.zone.f unused) {
            return this;
        }
    }

    public String toString() {
        return i();
    }
}
