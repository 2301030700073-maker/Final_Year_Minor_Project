package defpackage;

import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: Cs, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0155Cs {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f438do = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");

    /* renamed from: if, reason: not valid java name */
    public static final Pattern f439if = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f440do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f441if;

    public C0155Cs(String str, String str2) {
        this.f440do = str;
        this.f441if = str2;
    }

    /* renamed from: do, reason: not valid java name */
    public static C0155Cs m307do(String str) {
        Matcher matcher = f438do.matcher(str);
        if (!matcher.lookingAt()) {
            throw new IllegalArgumentException("No subtype found for: \"" + str + '\"');
        }
        String group = matcher.group(1);
        Locale locale = Locale.US;
        group.toLowerCase(locale);
        matcher.group(2).toLowerCase(locale);
        Matcher matcher2 = f439if.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                throw new IllegalArgumentException("Parameter is not formatted correctly: \"" + str.substring(end) + "\" for: \"" + str + '\"');
            }
            String group2 = matcher2.group(1);
            if (group2 != null && group2.equalsIgnoreCase("charset")) {
                String group3 = matcher2.group(2);
                if (group3 == null) {
                    group3 = matcher2.group(3);
                } else if (group3.startsWith("'") && group3.endsWith("'") && group3.length() > 2) {
                    group3 = group3.substring(1, group3.length() - 1);
                }
                if (str2 != null && !group3.equalsIgnoreCase(str2)) {
                    StringBuilder m6919this = Cif.m6919this("Multiple charsets defined: \"", str2, "\" and: \"", group3, "\" for: \"");
                    m6919this.append(str);
                    m6919this.append('\"');
                    throw new IllegalArgumentException(m6919this.toString());
                }
                str2 = group3;
            }
        }
        return new C0155Cs(str, str2);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0155Cs) && ((C0155Cs) obj).f440do.equals(this.f440do);
    }

    public final int hashCode() {
        return this.f440do.hashCode();
    }

    public final String toString() {
        return this.f440do;
    }
}
