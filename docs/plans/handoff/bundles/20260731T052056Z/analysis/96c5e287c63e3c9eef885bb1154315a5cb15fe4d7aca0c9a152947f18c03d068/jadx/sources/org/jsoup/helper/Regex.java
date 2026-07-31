package org.jsoup.helper;

import java.lang.reflect.Method;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Regex {
    public static final boolean hasRe2j;
    public final Pattern jdkPattern;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class JdkMatcher implements Matcher {
        public final java.util.regex.Matcher delegate;

        public JdkMatcher(java.util.regex.Matcher matcher) {
            this.delegate = matcher;
        }

        @Override // org.jsoup.helper.Regex.Matcher
        public final boolean find() {
            return this.delegate.find();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Matcher {
        boolean find();
    }

    static {
        boolean z = false;
        try {
            try {
                Class<?> cls = Class.forName("com.google.re2j.Pattern", false, Regex.class.getClassLoader());
                try {
                    Class<?> cls2 = Class.forName("java.lang.Module");
                    Method method = Class.class.getMethod("getModule", null);
                    Object invoke = method.invoke(Regex.class, null);
                    Object invoke2 = method.invoke(cls, null);
                    if (!((Boolean) cls2.getMethod("canRead", cls2).invoke(invoke, invoke2)).booleanValue()) {
                        cls2.getMethod("addReads", cls2).invoke(invoke, invoke2);
                    }
                } catch (ClassNotFoundException unused) {
                }
                z = true;
            } catch (ClassNotFoundException unused2) {
            }
        } catch (ReflectiveOperationException e) {
            System.err.println("Warning: (bug? please report) couldn't access re2j from jsoup due to modules: " + e);
        }
        hasRe2j = z;
    }

    public Regex(Pattern pattern) {
        this.jdkPattern = pattern;
    }

    public static Regex compile(String str) {
        if (hasRe2j && Boolean.parseBoolean(System.getProperty("jsoup.useRe2j", "true"))) {
            return Re2jRegex.compile(str);
        }
        try {
            return new Regex(Pattern.compile(str));
        } catch (PatternSyntaxException e) {
            throw new ValidationException("Pattern syntax error: " + e.getMessage());
        }
    }

    public Matcher matcher(String str) {
        return new JdkMatcher(this.jdkPattern.matcher(str));
    }

    public String toString() {
        return this.jdkPattern.toString();
    }
}
