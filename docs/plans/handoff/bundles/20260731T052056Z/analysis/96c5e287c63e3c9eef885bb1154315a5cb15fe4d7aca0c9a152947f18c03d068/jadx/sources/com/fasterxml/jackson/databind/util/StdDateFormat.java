package com.fasterxml.jackson.databind.util;

import androidx.compose.ui.Modifier;
import j$.util.DesugarTimeZone;
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StdDateFormat extends DateFormat {
    public static final String[] ALL_FORMATS;
    public static final GregorianCalendar CALENDAR;
    public static final SimpleDateFormat DATE_FORMAT_RFC1123;
    public static final Locale DEFAULT_LOCALE;
    public static final TimeZone DEFAULT_TIMEZONE;
    public static final Pattern PATTERN_ISO8601;
    public static final Pattern PATTERN_PLAIN = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d");
    public static final StdDateFormat instance;
    public transient Calendar _calendar;
    public transient DateFormat _formatRFC1123;
    public Boolean _lenient;
    public final Locale _locale;
    public transient TimeZone _timezone;

    static {
        try {
            PATTERN_ISO8601 = Pattern.compile("\\d\\d\\d\\d[-]\\d\\d[-]\\d\\d[T]\\d\\d[:]\\d\\d(?:[:]\\d\\d)?(\\.\\d+)?(Z|[+-]\\d\\d(?:[:]?\\d\\d)?)?");
            ALL_FORMATS = new String[]{"yyyy-MM-dd'T'HH:mm:ss.SSSX", "yyyy-MM-dd'T'HH:mm:ss.SSS", "EEE, dd MMM yyyy HH:mm:ss zzz", "yyyy-MM-dd"};
            TimeZone timeZone = DesugarTimeZone.getTimeZone("UTC");
            DEFAULT_TIMEZONE = timeZone;
            Locale locale = Locale.US;
            DEFAULT_LOCALE = locale;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", locale);
            DATE_FORMAT_RFC1123 = simpleDateFormat;
            simpleDateFormat.setTimeZone(timeZone);
            instance = new StdDateFormat();
            CALENDAR = new GregorianCalendar(timeZone, locale);
        } catch (Throwable th) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(th);
        }
    }

    public StdDateFormat(TimeZone timeZone, Locale locale, Boolean bool) {
        this._timezone = timeZone;
        this._locale = locale;
        this._lenient = bool;
    }

    public static int _parse2D(int i, String str) {
        return (str.charAt(i + 1) - '0') + ((str.charAt(i) - '0') * 10);
    }

    public static int _parse4D(String str) {
        return (str.charAt(3) - '0') + ((str.charAt(2) - '0') * 10) + ((str.charAt(1) - '0') * 100) + ((str.charAt(0) - '0') * 1000);
    }

    public static void pad2(StringBuffer stringBuffer, int i) {
        int i2 = i / 10;
        if (i2 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i2 + 48));
            i -= i2 * 10;
        }
        stringBuffer.append((char) (i + 48));
    }

    public static void pad4(StringBuffer stringBuffer, int i) {
        int i2 = i / 100;
        if (i2 == 0) {
            stringBuffer.append('0');
            stringBuffer.append('0');
        } else {
            if (i2 > 99) {
                stringBuffer.append(i2);
            } else {
                pad2(stringBuffer, i2);
            }
            i -= i2 * 100;
        }
        pad2(stringBuffer, i);
    }

    public final Calendar _getCalendar(TimeZone timeZone) {
        Calendar calendar = this._calendar;
        if (calendar == null) {
            calendar = (Calendar) CALENDAR.clone();
            this._calendar = calendar;
        }
        if (!calendar.getTimeZone().equals(timeZone)) {
            calendar.setTimeZone(timeZone);
        }
        calendar.setLenient(isLenient());
        return calendar;
    }

    public final Date _parseAsISO8601(String str) {
        String str2;
        int i;
        int i2;
        int i3;
        int length = str.length();
        Calendar _getCalendar = _getCalendar((this._timezone == null || 'Z' == str.charAt(length + (-1))) ? DEFAULT_TIMEZONE : this._timezone);
        _getCalendar.clear();
        int i4 = 0;
        if (length > 10) {
            Matcher matcher = PATTERN_ISO8601.matcher(str);
            if (matcher.matches()) {
                int start = matcher.start(2);
                int end = matcher.end(2);
                int i5 = end - start;
                if (i5 > 1) {
                    int _parse2D = _parse2D(start + 1, str) * 3600;
                    if (i5 >= 5) {
                        _parse2D += _parse2D(end - 2, str) * 60;
                    }
                    _getCalendar.set(15, str.charAt(start) == '-' ? _parse2D * (-1000) : _parse2D * 1000);
                    _getCalendar.set(16, 0);
                }
                int _parse4D = _parse4D(str);
                int _parse2D2 = _parse2D(5, str) - 1;
                int _parse2D3 = _parse2D(8, str);
                int _parse2D4 = _parse2D(11, str);
                int _parse2D5 = _parse2D(14, str);
                if (length <= 16 || str.charAt(16) != ':') {
                    i = _parse2D3;
                    i2 = _parse4D;
                    i3 = 0;
                } else {
                    i = _parse2D3;
                    i2 = _parse4D;
                    i3 = _parse2D(17, str);
                }
                _getCalendar.set(i2, _parse2D2, i, _parse2D4, _parse2D5, i3);
                int start2 = matcher.start(1);
                int i6 = start2 + 1;
                int end2 = matcher.end(1);
                if (i6 >= end2) {
                    _getCalendar.set(14, 0);
                } else {
                    int i7 = end2 - i6;
                    if (i7 != 0) {
                        if (i7 != 1) {
                            if (i7 != 2) {
                                if (i7 != 3 && i7 > 9) {
                                    throw new ParseException(Modifier.CC.m("Cannot parse date \"", str, "\": invalid fractional seconds '", matcher.group(1).substring(1), "'; can use at most 9 digits"), i6);
                                }
                                i4 = str.charAt(start2 + 3) - '0';
                            }
                            i4 += (str.charAt(start2 + 2) - '0') * 10;
                        }
                        i4 += (str.charAt(i6) - '0') * 100;
                    }
                    _getCalendar.set(14, i4);
                }
                return _getCalendar.getTime();
            }
            str2 = "yyyy-MM-dd'T'HH:mm:ss.SSSX";
        } else {
            if (PATTERN_PLAIN.matcher(str).matches()) {
                _getCalendar.set(_parse4D(str), _parse2D(5, str) - 1, _parse2D(8, str), 0, 0, 0);
                _getCalendar.set(14, 0);
                return _getCalendar.getTime();
            }
            str2 = "yyyy-MM-dd";
        }
        Boolean bool = this._lenient;
        StringBuilder m352m = Modifier.CC.m352m("Cannot parse date \"", str, "\": while it seems to fit format '", str2, "', parsing fails (leniency? ");
        m352m.append(bool);
        m352m.append(")");
        throw new ParseException(m352m.toString(), 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if (r2 < 0) goto L64;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Date _parseDate(java.lang.String r6, java.text.ParsePosition r7) {
        /*
            r5 = this;
            int r0 = r6.length()
            r1 = 7
            r2 = 45
            r3 = 0
            if (r0 < r1) goto L4d
            char r0 = r6.charAt(r3)
            boolean r0 = java.lang.Character.isDigit(r0)
            if (r0 == 0) goto L4d
            r0 = 3
            char r0 = r6.charAt(r0)
            boolean r0 = java.lang.Character.isDigit(r0)
            if (r0 == 0) goto L4d
            r0 = 4
            char r0 = r6.charAt(r0)
            if (r0 != r2) goto L4d
            r0 = 5
            char r0 = r6.charAt(r0)
            boolean r0 = java.lang.Character.isDigit(r0)
            if (r0 == 0) goto L4d
            java.util.Date r5 = r5._parseAsISO8601(r6)     // Catch: java.lang.IllegalArgumentException -> L36
            return r5
        L36:
            r5 = move-exception
            java.text.ParseException r0 = new java.text.ParseException
            java.lang.String r5 = r5.getMessage()
            java.lang.String r1 = "Cannot parse date \""
            java.lang.String r2 = "\", problem: "
            java.lang.String r5 = coil3.size.ViewSizeResolver$CC.m(r1, r6, r2, r5)
            int r6 = r7.getErrorIndex()
            r0.<init>(r5, r6)
            throw r0
        L4d:
            int r0 = r6.length()
        L51:
            int r0 = r0 + (-1)
            if (r0 < 0) goto L65
            char r1 = r6.charAt(r0)
            r4 = 48
            if (r1 < r4) goto L61
            r4 = 57
            if (r1 <= r4) goto L51
        L61:
            if (r0 > 0) goto L65
            if (r1 == r2) goto L51
        L65:
            if (r0 >= 0) goto Lac
            char r0 = r6.charAt(r3)
            if (r0 == r2) goto L90
            java.lang.String r0 = com.fasterxml.jackson.core.io.NumberInput.MAX_LONG_STR
            int r1 = r0.length()
            int r2 = r6.length()
            if (r2 >= r1) goto L7a
            goto L90
        L7a:
            if (r2 <= r1) goto L7d
            goto Lac
        L7d:
            if (r3 >= r1) goto L90
            char r2 = r6.charAt(r3)
            char r4 = r0.charAt(r3)
            int r2 = r2 - r4
            if (r2 == 0) goto L8d
            if (r2 >= 0) goto Lac
            goto L90
        L8d:
            int r3 = r3 + 1
            goto L7d
        L90:
            long r5 = com.fasterxml.jackson.core.io.NumberInput.parseLong(r6)     // Catch: java.lang.NumberFormatException -> L9a
            java.util.Date r7 = new java.util.Date
            r7.<init>(r5)
            return r7
        L9a:
            java.text.ParseException r5 = new java.text.ParseException
            java.lang.String r0 = "Timestamp value "
            java.lang.String r1 = " out of 64-bit value range"
            java.lang.String r6 = androidx.compose.animation.core.Animation.CC.m(r0, r6, r1)
            int r7 = r7.getErrorIndex()
            r5.<init>(r6, r7)
            throw r5
        Lac:
            java.text.DateFormat r0 = r5._formatRFC1123
            if (r0 != 0) goto Le7
            java.util.TimeZone r0 = r5._timezone
            java.lang.Boolean r1 = r5._lenient
            java.util.Locale r2 = com.fasterxml.jackson.databind.util.StdDateFormat.DEFAULT_LOCALE
            java.util.Locale r3 = r5._locale
            boolean r2 = r3.equals(r2)
            if (r2 != 0) goto Lce
            java.text.SimpleDateFormat r2 = new java.text.SimpleDateFormat
            java.lang.String r4 = "EEE, dd MMM yyyy HH:mm:ss zzz"
            r2.<init>(r4, r3)
            if (r0 != 0) goto Lc9
            java.util.TimeZone r0 = com.fasterxml.jackson.databind.util.StdDateFormat.DEFAULT_TIMEZONE
        Lc9:
            r2.setTimeZone(r0)
        Lcc:
            r0 = r2
            goto Ldc
        Lce:
            java.text.SimpleDateFormat r2 = com.fasterxml.jackson.databind.util.StdDateFormat.DATE_FORMAT_RFC1123
            java.lang.Object r2 = r2.clone()
            java.text.DateFormat r2 = (java.text.DateFormat) r2
            if (r0 == 0) goto Lcc
            r2.setTimeZone(r0)
            goto Lcc
        Ldc:
            if (r1 == 0) goto Le5
            boolean r1 = r1.booleanValue()
            r0.setLenient(r1)
        Le5:
            r5._formatRFC1123 = r0
        Le7:
            java.util.Date r5 = r0.parse(r6, r7)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.util.StdDateFormat._parseDate(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    @Override // java.text.DateFormat, java.text.Format
    public final Object clone() {
        return new StdDateFormat(this._timezone, this._locale, this._lenient);
    }

    @Override // java.text.DateFormat
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // java.text.DateFormat
    public final StringBuffer format(Date date, StringBuffer stringBuffer, FieldPosition fieldPosition) {
        TimeZone timeZone = this._timezone;
        if (timeZone == null) {
            timeZone = DEFAULT_TIMEZONE;
        }
        Calendar _getCalendar = _getCalendar(timeZone);
        _getCalendar.setTime(date);
        int i = _getCalendar.get(1);
        if (_getCalendar.get(0) != 0) {
            if (i > 9999) {
                stringBuffer.append('+');
            }
            pad4(stringBuffer, i);
        } else if (i == 1) {
            stringBuffer.append("+0000");
        } else {
            stringBuffer.append('-');
            pad4(stringBuffer, i - 1);
        }
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(2) + 1);
        stringBuffer.append('-');
        pad2(stringBuffer, _getCalendar.get(5));
        stringBuffer.append('T');
        pad2(stringBuffer, _getCalendar.get(11));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(12));
        stringBuffer.append(':');
        pad2(stringBuffer, _getCalendar.get(13));
        stringBuffer.append('.');
        int i2 = _getCalendar.get(14);
        int i3 = i2 / 100;
        if (i3 == 0) {
            stringBuffer.append('0');
        } else {
            stringBuffer.append((char) (i3 + 48));
            i2 -= i3 * 100;
        }
        pad2(stringBuffer, i2);
        int offset = timeZone.getOffset(_getCalendar.getTimeInMillis());
        if (offset == 0) {
            stringBuffer.append("+00:00");
            return stringBuffer;
        }
        int i4 = offset / 60000;
        int abs = Math.abs(i4 / 60);
        int abs2 = Math.abs(i4 % 60);
        stringBuffer.append(offset < 0 ? '-' : '+');
        pad2(stringBuffer, abs);
        stringBuffer.append(':');
        pad2(stringBuffer, abs2);
        return stringBuffer;
    }

    @Override // java.text.DateFormat
    public final TimeZone getTimeZone() {
        return this._timezone;
    }

    @Override // java.text.DateFormat
    public final int hashCode() {
        return System.identityHashCode(this);
    }

    @Override // java.text.DateFormat
    public final boolean isLenient() {
        Boolean bool = this._lenient;
        return bool == null || bool.booleanValue();
    }

    @Override // java.text.DateFormat
    public final Date parse(String str) {
        String trim = str.trim();
        ParsePosition parsePosition = new ParsePosition(0);
        Date _parseDate = _parseDate(trim, parsePosition);
        if (_parseDate != null) {
            return _parseDate;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : ALL_FORMATS) {
            if (sb.length() > 0) {
                sb.append("\", \"");
            } else {
                sb.append('\"');
            }
            sb.append(str2);
        }
        sb.append('\"');
        throw new ParseException(Modifier.CC.m("Cannot parse date \"", trim, "\": not compatible with any of standard forms (", sb.toString(), ")"), parsePosition.getErrorIndex());
    }

    @Override // java.text.DateFormat
    public final void setLenient(boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Boolean bool = this._lenient;
        if (valueOf == bool || valueOf.equals(bool)) {
            return;
        }
        this._lenient = valueOf;
        this._formatRFC1123 = null;
    }

    @Override // java.text.DateFormat
    public final void setTimeZone(TimeZone timeZone) {
        if (timeZone.equals(this._timezone)) {
            return;
        }
        this._formatRFC1123 = null;
        this._timezone = timeZone;
    }

    public final String toString() {
        return String.format("DateFormat %s: (timezone: %s, locale: %s, lenient: %s)", StdDateFormat.class.getName(), this._timezone, this._locale, this._lenient);
    }

    public StdDateFormat() {
        this._locale = DEFAULT_LOCALE;
    }

    @Override // java.text.DateFormat
    public final Date parse(String str, ParsePosition parsePosition) {
        try {
            return _parseDate(str, parsePosition);
        } catch (ParseException unused) {
            return null;
        }
    }
}
