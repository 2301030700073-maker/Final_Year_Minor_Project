package org.jsoup.helper;

import java.nio.charset.Charset;
import java.util.regex.Pattern;
import org.jsoup.select.QueryParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DataUtil {
    public static final Charset UTF_8;

    static {
        Pattern.compile("(?i)\\bcharset=\\s*(?:[\"'])?([^\\s,;\"']*)");
        Charset forName = Charset.forName("UTF-8");
        UTF_8 = forName;
        forName.name();
        QueryParser.parse("meta[http-equiv=content-type], meta[charset]");
    }
}
