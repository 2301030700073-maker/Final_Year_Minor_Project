package com.amazonaws.util;

import com.amazonaws.DefaultRequest;
import com.amazonaws.http.HttpMethodName;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cpublic;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class HttpUtils {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f9076do = Pattern.compile(Pattern.quote("+") + "|" + Pattern.quote("*") + "|" + Pattern.quote("%7E") + "|" + Pattern.quote("%2F"));

    /* renamed from: case, reason: not valid java name */
    public static boolean m5185case(DefaultRequest defaultRequest) {
        return HttpMethodName.POST.equals(defaultRequest.f8681do) && (defaultRequest.f8683do == null);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m5186do(String str, String str2) {
        return m5188if(str, str2, false);
    }

    /* renamed from: for, reason: not valid java name */
    public static String m5187for(DefaultRequest defaultRequest) {
        LinkedHashMap linkedHashMap = defaultRequest.f8687do;
        if (linkedHashMap.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        try {
            boolean z = true;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String encode = URLEncoder.encode((String) entry.getKey(), "UTF-8");
                String str = (String) entry.getValue();
                String encode2 = str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : URLEncoder.encode(str, "UTF-8");
                if (z) {
                    z = false;
                } else {
                    sb.append("&");
                }
                sb.append(encode);
                sb.append("=");
                sb.append(encode2);
            }
            return sb.toString();
        } catch (UnsupportedEncodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m5188if(String str, String str2, boolean z) {
        if (str2 == null || str2.length() <= 0) {
            return !str.endsWith("/") ? str.concat("/") : str;
        }
        if (str2.startsWith("/")) {
            if (str.endsWith("/")) {
                str = str.substring(0, str.length() - 1);
            }
        } else if (!str.endsWith("/")) {
            str = str.concat("/");
        }
        String m5190try = m5190try(str2, true);
        if (z) {
            m5190try = m5190try.replace("//", "/%2F");
        }
        return Cpublic.m7816case(str, m5190try);
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m5189new(URI uri) {
        String m5191do = StringUtils.m5191do(uri.getScheme());
        int port = uri.getPort();
        if (port <= 0) {
            return false;
        }
        if (m5191do.equals("http") && port == 80) {
            return false;
        }
        return (m5191do.equals("https") && port == 443) ? false : true;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m5190try(String str, boolean z) {
        if (str == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            String encode = URLEncoder.encode(str, "UTF-8");
            Matcher matcher = f9076do.matcher(encode);
            StringBuffer stringBuffer = new StringBuffer(encode.length());
            while (matcher.find()) {
                String group = matcher.group(0);
                if ("+".equals(group)) {
                    group = "%20";
                } else if ("*".equals(group)) {
                    group = "%2A";
                } else if ("%7E".equals(group)) {
                    group = "~";
                } else if (z && "%2F".equals(group)) {
                    group = "/";
                }
                matcher.appendReplacement(stringBuffer, group);
            }
            matcher.appendTail(stringBuffer);
            return stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
