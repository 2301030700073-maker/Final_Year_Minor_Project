package j$.time.format;

import j$.time.ZoneId;
import j$.time.ZoneOffset;
import java.text.ParsePosition;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public class t implements e {
    public static volatile Map.Entry c;
    public static volatile Map.Entry d;
    public final j$.time.f a;
    public final String b;

    public t(j$.time.f fVar, String str) {
        this.a = fVar;
        this.b = str;
    }

    public static int b(w wVar, CharSequence charSequence, int i, int i2, k kVar) {
        String upperCase = charSequence.subSequence(i, i2).toString().toUpperCase();
        if (i2 >= charSequence.length()) {
            wVar.f(ZoneId.of(upperCase));
            return i2;
        }
        if (charSequence.charAt(i2) == '0' || wVar.a(charSequence.charAt(i2), 'Z')) {
            wVar.f(ZoneId.of(upperCase));
            return i2;
        }
        w wVar2 = new w(wVar.a);
        wVar2.b = wVar.b;
        wVar2.c = wVar.c;
        int g = kVar.g(wVar2, charSequence, i2);
        try {
            if (g >= 0) {
                wVar.f(ZoneId.x(upperCase, ZoneOffset.D((int) wVar2.e(j$.time.temporal.a.OFFSET_SECONDS).longValue())));
                return g;
            }
            if (kVar == k.e) {
                return ~i;
            }
            wVar.f(ZoneId.of(upperCase));
            return i2;
        } catch (j$.time.c unused) {
            return ~i;
        }
    }

    public n a(w wVar) {
        Set<String> set = j$.time.zone.i.d;
        int size = set.size();
        Map.Entry entry = wVar.b ? c : d;
        if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
            synchronized (this) {
                try {
                    entry = wVar.b ? c : d;
                    if (entry == null || ((Integer) entry.getKey()).intValue() != size) {
                        Integer valueOf = Integer.valueOf(size);
                        n nVar = wVar.b ? new n("", null, null) : new m("", null, null);
                        for (String str : set) {
                            nVar.a(str, str);
                        }
                        entry = new AbstractMap.SimpleImmutableEntry(valueOf, nVar);
                        if (wVar.b) {
                            c = entry;
                        } else {
                            d = entry;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return (n) entry.getValue();
    }

    @Override // j$.time.format.e
    public boolean f(y yVar, StringBuilder sb) {
        ZoneId zoneId = (ZoneId) yVar.b(this.a);
        if (zoneId == null) {
            return false;
        }
        sb.append(zoneId.getId());
        return true;
    }

    @Override // j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        if (i > length) {
            throw new IndexOutOfBoundsException();
        }
        if (i == length) {
            return ~i;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == '+' || charAt == '-') {
            return b(wVar, charSequence, i, i, k.e);
        }
        int i3 = i + 2;
        if (length >= i3) {
            char charAt2 = charSequence.charAt(i + 1);
            if (wVar.a(charAt, 'U') && wVar.a(charAt2, 'T')) {
                int i4 = i + 3;
                return (length < i4 || !wVar.a(charSequence.charAt(i3), 'C')) ? b(wVar, charSequence, i, i3, k.f) : b(wVar, charSequence, i, i4, k.f);
            }
            if (wVar.a(charAt, 'G') && length >= (i2 = i + 3) && wVar.a(charAt2, 'M') && wVar.a(charSequence.charAt(i3), 'T')) {
                int i5 = i + 4;
                if (length < i5 || !wVar.a(charSequence.charAt(i2), '0')) {
                    return b(wVar, charSequence, i, i2, k.f);
                }
                wVar.f(ZoneId.of("GMT0"));
                return i5;
            }
        }
        n a = a(wVar);
        ParsePosition parsePosition = new ParsePosition(i);
        String c2 = a.c(charSequence, parsePosition);
        if (c2 != null) {
            wVar.f(ZoneId.of(c2));
            return parsePosition.getIndex();
        }
        if (!wVar.a(charAt, 'Z')) {
            return ~i;
        }
        wVar.f(ZoneOffset.UTC);
        return i + 1;
    }

    public final String toString() {
        return this.b;
    }
}
