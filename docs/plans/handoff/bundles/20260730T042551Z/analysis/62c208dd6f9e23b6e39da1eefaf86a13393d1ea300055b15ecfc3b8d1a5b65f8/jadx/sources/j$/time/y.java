package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class y implements Serializable {
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {AbstractC2959a.e("ACT", "Australia/Darwin"), AbstractC2959a.e("AET", "Australia/Sydney"), AbstractC2959a.e("AGT", "America/Argentina/Buenos_Aires"), AbstractC2959a.e("ART", "Africa/Cairo"), AbstractC2959a.e("AST", "America/Anchorage"), AbstractC2959a.e("BET", "America/Sao_Paulo"), AbstractC2959a.e("BST", "Asia/Dhaka"), AbstractC2959a.e("CAT", "Africa/Harare"), AbstractC2959a.e("CNT", "America/St_Johns"), AbstractC2959a.e("CST", "America/Chicago"), AbstractC2959a.e("CTT", "Asia/Shanghai"), AbstractC2959a.e("EAT", "Africa/Addis_Ababa"), AbstractC2959a.e("ECT", "Europe/Paris"), AbstractC2959a.e("IET", "America/Indiana/Indianapolis"), AbstractC2959a.e("IST", "Asia/Kolkata"), AbstractC2959a.e("JST", "Asia/Tokyo"), AbstractC2959a.e("MIT", "Pacific/Apia"), AbstractC2959a.e("NET", "Asia/Yerevan"), AbstractC2959a.e("NST", "Pacific/Auckland"), AbstractC2959a.e("PLT", "Asia/Karachi"), AbstractC2959a.e("PNT", "America/Phoenix"), AbstractC2959a.e("PRT", "America/Puerto_Rico"), AbstractC2959a.e("PST", "America/Los_Angeles"), AbstractC2959a.e("SST", "Pacific/Guadalcanal"), AbstractC2959a.e("VST", "Asia/Ho_Chi_Minh"), AbstractC2959a.e("EST", "-05:00"), AbstractC2959a.e("MST", "-07:00"), AbstractC2959a.e("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        Collections.unmodifiableMap(hashMap);
    }

    y() {
        if (getClass() != ZoneOffset.class && getClass() != z.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    static y E(String str) {
        int i;
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return ZoneOffset.K(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            i = 3;
        } else {
            if (!str.startsWith("UT")) {
                return z.I(str);
            }
            i = 2;
        }
        return G(str, i);
    }

    public static y F(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.J() != 0) {
            str = str.concat(zoneOffset.h());
        }
        return new z(str, j$.time.zone.f.i(zoneOffset));
    }

    private static y G(String str, int i) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return F(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return z.I(str);
        }
        try {
            ZoneOffset K = ZoneOffset.K(str.substring(i));
            return K == ZoneOffset.UTC ? F(substring, K) : F(substring, K);
        } catch (d e) {
            throw new d("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new t((byte) 7, this);
    }

    public abstract j$.time.zone.f D();

    abstract void H(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            return h().equals(((y) obj).h());
        }
        return false;
    }

    public abstract String h();

    public int hashCode() {
        return h().hashCode();
    }

    public String toString() {
        return h();
    }
}
