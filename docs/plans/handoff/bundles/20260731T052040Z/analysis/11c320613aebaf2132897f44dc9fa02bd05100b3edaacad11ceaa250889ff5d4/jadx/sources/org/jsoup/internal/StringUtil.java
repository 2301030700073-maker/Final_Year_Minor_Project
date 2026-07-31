package org.jsoup.internal;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import androidx.sqlite.SQLite;
import j$.util.stream.Collector;
import java.net.URL;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.parser.TokenData;
import org.jsoup.select.Nodes$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class StringUtil {
    public static final String[] padding = {"", " ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "         ", "          ", "           ", "            ", "             ", "              ", "               ", "                ", "                 ", "                  ", "                   ", "                    "};
    public static final Pattern extraDotSegmentsPattern = Pattern.compile("^/(?>(?>\\.\\.?/)+)");
    public static final Pattern validUriScheme = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+-.]*:");
    public static final Pattern controlChars = Pattern.compile("[\\x00-\\x1f]*");
    public static final TokenData BuilderPool = new TokenData(new Entities$$ExternalSyntheticLambda0(3));

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StringJoiner {
        public final String separator;
        public StringBuilder sb = StringUtil.borrowBuilder();
        public boolean first = true;

        public StringJoiner(String str) {
            this.separator = str;
        }
    }

    public static void appendNormalisedWhitespace(StringBuilder sb, String str, boolean z) {
        int length = str.length();
        int i = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt == 32 || codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13 || codePointAt == 160) {
                if ((!z || z2) && !z3) {
                    sb.append(' ');
                    z3 = true;
                }
            } else if (codePointAt != 8203 && codePointAt != 173) {
                sb.appendCodePoint(codePointAt);
                z3 = false;
                z2 = true;
            }
            i += Character.charCount(codePointAt);
        }
    }

    public static StringBuilder borrowBuilder() {
        return (StringBuilder) BuilderPool.borrow();
    }

    public static boolean in(String str, String... strArr) {
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean inSorted(String str, String[] strArr) {
        return Arrays.binarySearch(strArr, str) >= 0;
    }

    public static boolean isAsciiLetter(char c) {
        if (c < 'a' || c > 'z') {
            return c >= 'A' && c <= 'Z';
        }
        return true;
    }

    public static boolean isBlank(String str) {
        if (str != null && !str.isEmpty()) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                if (!isWhitespace(str.codePointAt(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static boolean isHexDigit(char c) {
        if (isDigit(c)) {
            return true;
        }
        if (c < 'a' || c > 'f') {
            return c >= 'A' && c <= 'F';
        }
        return true;
    }

    public static boolean isWhitespace(int i) {
        return i == 32 || i == 9 || i == 10 || i == 12 || i == 13;
    }

    public static String join(String str, List list) {
        Iterator it = list.iterator();
        if (!it.hasNext()) {
            return "";
        }
        String obj = it.next().toString();
        if (!it.hasNext()) {
            return obj;
        }
        StringBuilder borrowBuilder = borrowBuilder();
        SQLite.notNull(borrowBuilder);
        borrowBuilder.append((Object) obj);
        while (it.hasNext()) {
            Object next = it.next();
            borrowBuilder.append(str);
            borrowBuilder.append(next);
        }
        return releaseBuilder(borrowBuilder);
    }

    public static Collector joining(String str) {
        int i = 0;
        return Collector.CC.of(new StringUtil$$ExternalSyntheticLambda1(str, i), new StringUtil$$ExternalSyntheticLambda2(), new StringUtil$$ExternalSyntheticLambda3(i), new Nodes$$ExternalSyntheticLambda0(6), new Collector.Characteristics[0]);
    }

    public static String releaseBuilder(StringBuilder sb) {
        SQLite.notNull(sb);
        String sb2 = sb.toString();
        if (sb.length() <= 8192) {
            sb.delete(0, sb.length());
            BuilderPool.release(sb);
        }
        return sb2;
    }

    public static URL resolve(URL url, String str) {
        String replaceAll = controlChars.matcher(str).replaceAll("");
        if (replaceAll.startsWith("?")) {
            replaceAll = url.getPath() + replaceAll;
        }
        URL url2 = new URL(url, replaceAll);
        String replaceFirst = extraDotSegmentsPattern.matcher(url2.getFile()).replaceFirst("/");
        if (url2.getRef() != null) {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(replaceFirst, "#");
            m.append(url2.getRef());
            replaceFirst = m.toString();
        }
        return new URL(url2.getProtocol(), url2.getHost(), url2.getPort(), replaceFirst);
    }
}
