package j$.time.format;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes2.dex */
public final class i implements e {
    public static final ConcurrentHashMap b = new ConcurrentHashMap(16, 0.75f, 2);
    public final FormatStyle a;

    public i(FormatStyle formatStyle) {
        this.a = formatStyle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DateTimeFormatter a(Locale locale, j$.time.chrono.a aVar) {
        String id = aVar.getId();
        String locale2 = locale.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(id);
        sb.append("|");
        sb.append(locale2);
        sb.append("|");
        FormatStyle formatStyle = this.a;
        sb.append(formatStyle);
        sb.append((Object) null);
        String sb2 = sb.toString();
        ConcurrentHashMap concurrentHashMap = b;
        DateTimeFormatter dateTimeFormatter = (DateTimeFormatter) concurrentHashMap.get(sb2);
        if (dateTimeFormatter != null) {
            return dateTimeFormatter;
        }
        Objects.requireNonNull(locale, "locale");
        Objects.requireNonNull(aVar, "chrono");
        if (formatStyle == null) {
            j$.time.h.c("Either dateStyle or timeStyle must be non-null");
            return null;
        }
        DateFormat dateInstance = DateFormat.getDateInstance(formatStyle.ordinal(), locale);
        if (!(dateInstance instanceof SimpleDateFormat)) {
            throw new UnsupportedOperationException("Can't determine pattern from " + dateInstance);
        }
        String pattern = ((SimpleDateFormat) dateInstance).toPattern();
        if (pattern == null) {
            pattern = null;
        } else {
            int i = 0;
            boolean z = pattern.indexOf(66) != -1;
            boolean z2 = pattern.indexOf(98) != -1;
            if (z || z2) {
                StringBuilder sb3 = new StringBuilder(pattern.length());
                char c = ' ';
                while (i < pattern.length()) {
                    char charAt = pattern.charAt(i);
                    if (charAt != ' ') {
                        if (charAt != 'B' && charAt != 'b') {
                            sb3.append(charAt);
                        }
                    } else if (i == 0 || (c != 'B' && c != 'b')) {
                        sb3.append(charAt);
                    }
                    i++;
                    c = charAt;
                }
                int length = sb3.length() - 1;
                if (length >= 0 && sb3.charAt(length) == ' ') {
                    sb3.deleteCharAt(length);
                }
                pattern = sb3.toString();
            }
        }
        v vVar = new v();
        vVar.h(pattern);
        DateTimeFormatter r = vVar.r(locale, e0.SMART, null);
        DateTimeFormatter dateTimeFormatter2 = (DateTimeFormatter) concurrentHashMap.putIfAbsent(sb2, r);
        return dateTimeFormatter2 != null ? dateTimeFormatter2 : r;
    }

    @Override // j$.time.format.e
    public final boolean f(y yVar, StringBuilder sb) {
        a(yVar.b.b, j$.time.a.N(yVar.a)).c().f(yVar, sb);
        return true;
    }

    @Override // j$.time.format.e
    public final int g(w wVar, CharSequence charSequence, int i) {
        return a(wVar.a.b, wVar.d()).c().g(wVar, charSequence, i);
    }

    public final String toString() {
        Object obj = this.a;
        if (obj == null) {
            obj = "";
        }
        return "Localized(" + obj + "," + ((Object) "") + ")";
    }
}
