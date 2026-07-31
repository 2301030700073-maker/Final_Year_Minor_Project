package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class i implements e {
    public static final ConcurrentHashMap c = new ConcurrentHashMap(16, 0.75f, 2);
    public final FormatStyle a;
    public final FormatStyle b;

    public i(FormatStyle formatStyle, FormatStyle formatStyle2) {
        this.a = formatStyle;
        this.b = formatStyle2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DateTimeFormatter a(Locale locale, j$.time.chrono.l lVar) {
        String i = lVar.i();
        String locale2 = locale.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append("|");
        sb.append(locale2);
        sb.append("|");
        FormatStyle formatStyle = this.a;
        sb.append(formatStyle);
        FormatStyle formatStyle2 = this.b;
        sb.append(formatStyle2);
        String sb2 = sb.toString();
        ConcurrentHashMap concurrentHashMap = c;
        DateTimeFormatter dateTimeFormatter = (DateTimeFormatter) concurrentHashMap.get(sb2);
        if (dateTimeFormatter != null) {
            return dateTimeFormatter;
        }
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(lVar, "chrono");
        if (formatStyle == null && formatStyle2 == null) {
            j$.nio.file.m.c("Either dateStyle or timeStyle must be non-null");
            return null;
        }
        DateFormat dateInstance = formatStyle2 == null ? DateFormat.getDateInstance(formatStyle.ordinal(), locale) : formatStyle == null ? DateFormat.getTimeInstance(formatStyle2.ordinal(), locale) : DateFormat.getDateTimeInstance(formatStyle.ordinal(), formatStyle2.ordinal(), locale);
        if (!(dateInstance instanceof SimpleDateFormat)) {
            throw new UnsupportedOperationException("Can't determine pattern from " + dateInstance);
        }
        String pattern = ((SimpleDateFormat) dateInstance).toPattern();
        if (pattern == null) {
            pattern = null;
        } else {
            int i2 = 0;
            boolean z = pattern.indexOf(66) != -1;
            boolean z2 = pattern.indexOf(98) != -1;
            if (z || z2) {
                StringBuilder sb3 = new StringBuilder(pattern.length());
                char c2 = ' ';
                while (i2 < pattern.length()) {
                    char charAt = pattern.charAt(i2);
                    if (charAt != ' ') {
                        if (charAt != 'B' && charAt != 'b') {
                            sb3.append(charAt);
                        }
                    } else if (i2 == 0 || (c2 != 'B' && c2 != 'b')) {
                        sb3.append(charAt);
                    }
                    i2++;
                    c2 = charAt;
                }
                int length = sb3.length() - 1;
                if (length >= 0 && sb3.charAt(length) == ' ') {
                    sb3.deleteCharAt(length);
                }
                pattern = sb3.toString();
            }
        }
        v vVar = new v();
        vVar.i(pattern);
        DateTimeFormatter s = vVar.s(locale, e0.SMART, null);
        DateTimeFormatter dateTimeFormatter2 = (DateTimeFormatter) concurrentHashMap.putIfAbsent(sb2, s);
        return dateTimeFormatter2 != null ? dateTimeFormatter2 : s;
    }

    @Override // j$.time.format.e
    public final boolean k(y yVar, StringBuilder sb) {
        a(yVar.b.b, j$.com.android.tools.r8.a.B(yVar.a)).d().k(yVar, sb);
        return true;
    }

    @Override // j$.time.format.e
    public final int n(w wVar, CharSequence charSequence, int i) {
        return a(wVar.a.b, wVar.d()).d().n(wVar, charSequence, i);
    }

    public final String toString() {
        Object obj = this.a;
        if (obj == null) {
            obj = "";
        }
        Object obj2 = this.b;
        return "Localized(" + obj + "," + (obj2 != null ? obj2 : "") + ")";
    }
}
