package defpackage;

import com.facebook.ads.AdError;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: bb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0759bb {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f8413do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8414do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8415do;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final String f8416for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final boolean f8417for;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f8418if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f8419if;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final String f8420new;

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public final boolean f8421new;

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f8409do = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* renamed from: if, reason: not valid java name */
    public static final Pattern f8411if = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* renamed from: for, reason: not valid java name */
    public static final Pattern f8410for = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* renamed from: new, reason: not valid java name */
    public static final Pattern f8412new = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public C0759bb(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f8414do = str;
        this.f8418if = str2;
        this.f8413do = j;
        this.f8416for = str3;
        this.f8420new = str4;
        this.f8415do = z;
        this.f8419if = z2;
        this.f8421new = z3;
        this.f8417for = z4;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m4842do(boolean z, String str, int i, int i2) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: if, reason: not valid java name */
    public static long m4843if(int i, String str) {
        int m4842do = m4842do(false, str, 0, i);
        Pattern pattern = f8412new;
        Matcher matcher = pattern.matcher(str);
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        while (m4842do < i) {
            int m4842do2 = m4842do(true, str, m4842do + 1, i);
            matcher.region(m4842do, m4842do2);
            if (i3 == -1 && matcher.usePattern(pattern).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
                i6 = Integer.parseInt(matcher.group(2));
                i7 = Integer.parseInt(matcher.group(3));
            } else if (i4 == -1 && matcher.usePattern(f8410for).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
            } else {
                if (i5 == -1) {
                    Pattern pattern2 = f8411if;
                    if (matcher.usePattern(pattern2).matches()) {
                        i5 = pattern2.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                    }
                }
                if (i2 == -1 && matcher.usePattern(f8409do).matches()) {
                    i2 = Integer.parseInt(matcher.group(1));
                }
            }
            m4842do = m4842do(false, str, m4842do2 + 1, i);
        }
        if (i2 >= 70 && i2 <= 99) {
            i2 += 1900;
        }
        if (i2 >= 0 && i2 <= 69) {
            i2 += AdError.SERVER_ERROR_CODE;
        }
        if (i2 < 1601) {
            throw new IllegalArgumentException();
        }
        if (i5 == -1) {
            throw new IllegalArgumentException();
        }
        if (i4 < 1 || i4 > 31) {
            throw new IllegalArgumentException();
        }
        if (i3 < 0 || i3 > 23) {
            throw new IllegalArgumentException();
        }
        if (i6 < 0 || i6 > 59) {
            throw new IllegalArgumentException();
        }
        if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(SJ.f3492do);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i2);
        gregorianCalendar.set(2, i5 - 1);
        gregorianCalendar.set(5, i4);
        gregorianCalendar.set(11, i3);
        gregorianCalendar.set(12, i6);
        gregorianCalendar.set(13, i7);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0759bb)) {
            return false;
        }
        C0759bb c0759bb = (C0759bb) obj;
        return c0759bb.f8414do.equals(this.f8414do) && c0759bb.f8418if.equals(this.f8418if) && c0759bb.f8416for.equals(this.f8416for) && c0759bb.f8420new.equals(this.f8420new) && c0759bb.f8413do == this.f8413do && c0759bb.f8415do == this.f8415do && c0759bb.f8419if == this.f8419if && c0759bb.f8417for == this.f8417for && c0759bb.f8421new == this.f8421new;
    }

    public final int hashCode() {
        int m6915for = Cif.m6915for(this.f8420new, Cif.m6915for(this.f8416for, Cif.m6915for(this.f8418if, Cif.m6915for(this.f8414do, 527, 31), 31), 31), 31);
        long j = this.f8413do;
        return ((((((((m6915for + ((int) (j ^ (j >>> 32)))) * 31) + (!this.f8415do ? 1 : 0)) * 31) + (!this.f8419if ? 1 : 0)) * 31) + (!this.f8417for ? 1 : 0)) * 31) + (!this.f8421new ? 1 : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8414do);
        sb.append('=');
        sb.append(this.f8418if);
        if (this.f8417for) {
            long j = this.f8413do;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(C0105Am.f139do.get().format(new Date(j)));
            }
        }
        if (!this.f8421new) {
            sb.append("; domain=");
            sb.append(this.f8416for);
        }
        sb.append("; path=");
        sb.append(this.f8420new);
        if (this.f8415do) {
            sb.append("; secure");
        }
        if (this.f8419if) {
            sb.append("; httponly");
        }
        return sb.toString();
    }
}
