package org.wikipedia.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ImageUrlUtil {
    public static final Pattern WIDTH_IN_IMAGE_URL_REGEX;

    static {
        Pattern compile = Pattern.compile("/(page\\d+-)?(\\d+)(px-)", 0);
        compile.getClass();
        WIDTH_IN_IMAGE_URL_REGEX = compile;
    }

    public static String getUrlForPreferredSize(int i, String str) {
        str.getClass();
        Matcher matcher = WIDTH_IN_IMAGE_URL_REGEX.matcher(str);
        if (matcher.find()) {
            String group = matcher.group(2);
            group.getClass();
            if (Integer.parseInt(group) != i) {
                String group2 = matcher.group(1);
                if (group2 == null) {
                    group2 = "";
                }
                String replaceFirst = matcher.replaceFirst("/" + group2 + i + "$3");
                replaceFirst.getClass();
                return replaceFirst;
            }
        }
        return str;
    }
}
