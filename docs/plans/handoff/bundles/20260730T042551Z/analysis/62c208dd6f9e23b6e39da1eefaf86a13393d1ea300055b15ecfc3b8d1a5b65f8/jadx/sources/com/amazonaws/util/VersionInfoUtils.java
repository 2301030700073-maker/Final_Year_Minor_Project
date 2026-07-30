package com.amazonaws.util;

import com.facebook.appevents.codeless.internal.Constants;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class VersionInfoUtils {

    /* renamed from: do, reason: not valid java name */
    public static volatile String f9082do;

    static {
        LogFactory.getLog(VersionInfoUtils.class);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5202do() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("aws-sdk-");
        sb.append(StringUtils.m5191do(Constants.PLATFORM));
        sb.append("/2.2.15 ");
        sb.append(System.getProperty("os.name").replace(' ', '_'));
        sb.append("/");
        sb.append(System.getProperty("os.version").replace(' ', '_'));
        sb.append(" ");
        sb.append(System.getProperty("java.vm.name").replace(' ', '_'));
        sb.append("/");
        sb.append(System.getProperty("java.vm.version").replace(' ', '_'));
        sb.append("/");
        sb.append(System.getProperty("java.version").replace(' ', '_'));
        String property = System.getProperty("user.language");
        String property2 = System.getProperty("user.region");
        if (property != null && property2 != null) {
            sb.append(" ");
            sb.append(property.replace(' ', '_'));
            sb.append("_");
            sb.append(property2.replace(' ', '_'));
        }
        f9082do = sb.toString();
    }
}
