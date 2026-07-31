package org.schabi.newpipe.extractor.utils;

import androidx.compose.ui.node.Owner;
import com.grack.nanojson.JsonArray$$ExternalSyntheticLambda0;
import j$.net.URLDecoder;
import j$.util.DesugarArrays;
import j$.util.stream.Collectors;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Map;
import java.util.regex.Pattern;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.utils.Parser;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Utils {
    public static final Pattern M_PATTERN = Pattern.compile("(https?)?://m\\.");
    public static final Pattern WWW_PATTERN = Pattern.compile("(https?)?://www\\.");

    public static void checkUrl(String str, Pattern pattern) {
        if (isNullOrEmpty(str)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Url can't be null or empty");
        } else {
            if (Parser.isMatch(str.toLowerCase(), pattern)) {
                return;
            }
            Utils$$ExternalSyntheticBUOutline0.m("Url doesn't match the pattern");
        }
    }

    public static String followGoogleRedirectIfNeeded(String str) {
        try {
            URL stringToURL = stringToURL(str);
            return (stringToURL.getHost().contains("google") && stringToURL.getPath().equals("/url")) ? URLDecoder.decode(Parser.matchGroup("&url=([^&]+)(?:&|$)", 1, str), StandardCharsets.UTF_8) : str;
        } catch (Exception unused) {
            return str;
        }
    }

    public static String getBaseUrl(String str) {
        try {
            URL stringToURL = stringToURL(str);
            return stringToURL.getProtocol() + "://" + stringToURL.getAuthority();
        } catch (MalformedURLException e) {
            String message = e.getMessage();
            if (message.startsWith("unknown protocol: ")) {
                return message.substring(18);
            }
            throw new ParsingException(Owner.CC.m("Malformed url: ", str), e);
        }
    }

    public static String getQueryValue(URL url, String str) {
        String query = url.getQuery();
        if (query == null) {
            return null;
        }
        for (String str2 : query.split("&")) {
            String[] split = str2.split("=", 2);
            String str3 = split[0];
            Charset charset = StandardCharsets.UTF_8;
            if (URLDecoder.decode(str3, charset).equals(str)) {
                return URLDecoder.decode(split[1], charset);
            }
        }
        return null;
    }

    public static String getStringResultFromRegexArray(String str, String[] strArr) {
        String matchGroup;
        int i = 0;
        Pattern[] patternArr = (Pattern[]) DesugarArrays.stream(strArr).filter(new JsonArray$$ExternalSyntheticLambda0(1)).map(new Utils$$ExternalSyntheticLambda1(i)).toArray(new Utils$$ExternalSyntheticLambda2(i));
        int length = patternArr.length;
        while (i < length) {
            try {
                matchGroup = Parser.matchGroup(str, patternArr[i], 1);
            } catch (Parser.RegexException unused) {
            }
            if (matchGroup != null) {
                return matchGroup;
            }
            i++;
        }
        throw new Parser.RegexException("No regex matched the input on group 1");
    }

    public static boolean isBlank(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (!Character.isWhitespace(codePointAt)) {
                return false;
            }
            i += Character.charCount(codePointAt);
        }
        return true;
    }

    public static boolean isHTTP(URL url) {
        String protocol = url.getProtocol();
        if (protocol.equals("http") || protocol.equals("https")) {
            boolean z = url.getPort() == url.getDefaultPort();
            if (url.getPort() == -1 || z) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.isEmpty();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0034, code lost:
    
        if (r6.equals("M") == false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long mixedNumberWordToLong(java.lang.String r6) {
        /*
            r0 = 2
            java.lang.String r1 = "[\\d]+([\\.,][\\d]+)?([KMBkmb])+"
            java.lang.String r1 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r1, r0, r6)     // Catch: org.schabi.newpipe.extractor.exceptions.ParsingException -> L8
            goto La
        L8:
            java.lang.String r1 = ""
        La:
            java.lang.String r2 = "([\\d]+([\\.,][\\d]+)?)"
            r3 = 1
            java.lang.String r6 = org.schabi.newpipe.extractor.utils.Parser.matchGroup(r2, r3, r6)
            java.lang.String r2 = ","
            java.lang.String r4 = "."
            java.lang.String r6 = r6.replace(r2, r4)
            double r4 = java.lang.Double.parseDouble(r6)
            java.lang.String r6 = r1.toUpperCase()
            r6.getClass()
            int r1 = r6.hashCode()
            r2 = -1
            switch(r1) {
                case 66: goto L42;
                case 75: goto L37;
                case 77: goto L2e;
                default: goto L2c;
            }
        L2c:
            r0 = r2
            goto L4c
        L2e:
            java.lang.String r1 = "M"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L4c
            goto L2c
        L37:
            java.lang.String r0 = "K"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L40
            goto L2c
        L40:
            r0 = r3
            goto L4c
        L42:
            java.lang.String r0 = "B"
            boolean r6 = r6.equals(r0)
            if (r6 != 0) goto L4b
            goto L2c
        L4b:
            r0 = 0
        L4c:
            switch(r0) {
                case 0: goto L5f;
                case 1: goto L59;
                case 2: goto L51;
                default: goto L4f;
            }
        L4f:
            long r0 = (long) r4
            return r0
        L51:
            r0 = 4696837146684686336(0x412e848000000000, double:1000000.0)
        L56:
            double r4 = r4 * r0
            long r0 = (long) r4
            return r0
        L59:
            r0 = 4652007308841189376(0x408f400000000000, double:1000.0)
            goto L56
        L5f:
            r0 = 4741671816366391296(0x41cdcd6500000000, double:1.0E9)
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.extractor.utils.Utils.mixedNumberWordToLong(java.lang.String):long");
    }

    public static String nonEmptyAndNullJoin(String... strArr) {
        return (String) DesugarArrays.stream(strArr).filter(new Player$$ExternalSyntheticLambda48(2)).collect(Collectors.joining("\n\n"));
    }

    public static String removeNonDigitCharacters(String str) {
        return str.replaceAll("\\D+", "");
    }

    public static String replaceHttpWithHttps(String str) {
        if (str == null) {
            return null;
        }
        return str.startsWith("http://") ? "https://".concat(str.substring(7)) : str;
    }

    public static URL stringToURL(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            if (e.getMessage().equals("no protocol: " + str)) {
                return new URL(Owner.CC.m("https://", str));
            }
            throw e;
        }
    }

    public static boolean isNullOrEmpty(Collection collection) {
        return collection == null || collection.isEmpty();
    }

    public static boolean isNullOrEmpty(Map map) {
        return map == null || map.isEmpty();
    }
}
