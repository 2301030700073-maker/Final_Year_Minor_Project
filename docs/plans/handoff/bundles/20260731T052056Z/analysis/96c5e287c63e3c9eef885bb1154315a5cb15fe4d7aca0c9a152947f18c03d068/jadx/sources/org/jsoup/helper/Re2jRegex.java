package org.jsoup.helper;

import com.google.re2j.Matcher;
import java.util.regex.Pattern;
import org.jsoup.helper.Regex;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Re2jRegex extends Regex {
    public static final Pattern unused = Pattern.compile("");
    public final com.google.re2j.Pattern re2jPattern;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Re2jMatcher implements Regex.Matcher {
        public final Matcher delegate;

        public Re2jMatcher(Matcher matcher) {
            this.delegate = matcher;
        }

        @Override // org.jsoup.helper.Regex.Matcher
        public final boolean find() {
            return this.delegate.find();
        }
    }

    public Re2jRegex(com.google.re2j.Pattern pattern) {
        super(unused);
        this.re2jPattern = pattern;
    }

    public static Re2jRegex compile(String str) {
        try {
            return new Re2jRegex(com.google.re2j.Pattern.compile(str));
        } catch (OutOfMemoryError | StackOverflowError e) {
            throw new ValidationException("Pattern complexity error: " + e.getMessage());
        } catch (RuntimeException e2) {
            throw new ValidationException("Pattern syntax error: " + e2.getMessage());
        }
    }

    @Override // org.jsoup.helper.Regex
    public final Regex.Matcher matcher(String str) {
        return new Re2jMatcher(this.re2jPattern.matcher(str));
    }

    @Override // org.jsoup.helper.Regex
    public final String toString() {
        return this.re2jPattern.toString();
    }
}
