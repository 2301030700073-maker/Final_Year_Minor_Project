package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import j$.util.DesugarCollections;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class AwsHostNameUtils {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f9068do = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");

    /* renamed from: do, reason: not valid java name */
    public static String m5173do(String str, String str2) {
        String str3;
        if (str == null) {
            throw new IllegalArgumentException("hostname cannot be null");
        }
        Iterator it = DesugarCollections.unmodifiableList(InternalConfig.Factory.f8784do.f8779do).iterator();
        while (true) {
            if (!it.hasNext()) {
                str3 = null;
                break;
            }
            HostRegexToRegionMapping hostRegexToRegionMapping = (HostRegexToRegionMapping) it.next();
            if (str.matches(hostRegexToRegionMapping.f8775do)) {
                str3 = hostRegexToRegionMapping.f8776if;
                break;
            }
        }
        if (str3 != null) {
            return str3;
        }
        if (!str.endsWith(".amazonaws.com")) {
            if (str2 != null) {
                Matcher matcher = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(str2) + "[.-]([a-z0-9-]+)\\.").matcher(str);
                if (matcher.find()) {
                    return matcher.group(1);
                }
            }
            return "us-east-1";
        }
        String substring = str.substring(0, str.length() - 14);
        Matcher matcher2 = f9068do.matcher(substring);
        if (matcher2.matches()) {
            return matcher2.group(1);
        }
        int lastIndexOf = substring.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return "us-east-1";
        }
        String substring2 = substring.substring(lastIndexOf + 1);
        if ("us-gov".equals(substring2)) {
            substring2 = "us-gov-west-1";
        }
        return substring2;
    }
}
