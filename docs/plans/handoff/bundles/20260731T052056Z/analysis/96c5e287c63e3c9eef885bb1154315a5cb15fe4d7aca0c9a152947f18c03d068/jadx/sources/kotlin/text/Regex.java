package kotlin.text;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Regex implements Serializable {
    public final Pattern nativePattern;

    public Regex(String str, Set set) {
        str.getClass();
        set.getClass();
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((RegexOption) it.next()).getValue();
        }
        Pattern compile = Pattern.compile(str, (i & 2) != 0 ? i | 64 : i);
        compile.getClass();
        this.nativePattern = compile;
    }

    public final MatcherMatchResult matchAt(int i, String str) {
        Matcher region = this.nativePattern.matcher(str).useAnchoringBounds(false).useTransparentBounds(true).region(i, str.length());
        if (region.lookingAt()) {
            return new MatcherMatchResult(region, str);
        }
        return null;
    }

    public final MatcherMatchResult matchEntire(CharSequence charSequence) {
        charSequence.getClass();
        Matcher matcher = this.nativePattern.matcher(charSequence);
        matcher.getClass();
        if (matcher.matches()) {
            return new MatcherMatchResult(matcher, charSequence);
        }
        return null;
    }

    public final boolean matches(CharSequence charSequence) {
        charSequence.getClass();
        return this.nativePattern.matcher(charSequence).matches();
    }

    public final String replace(String str, Function1 function1) {
        str.getClass();
        Matcher matcher = this.nativePattern.matcher(str);
        matcher.getClass();
        int i = 0;
        MatcherMatchResult findNext = RegexKt.findNext(matcher, 0, str);
        if (findNext == null) {
            return str.toString();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append((CharSequence) str, i, findNext.getRange().first);
            sb.append((CharSequence) function1.invoke(findNext));
            i = findNext.getRange().last + 1;
            findNext = findNext.next();
            if (i >= length) {
                break;
            }
        } while (findNext != null);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public final String toString() {
        String pattern = this.nativePattern.toString();
        pattern.getClass();
        return pattern;
    }

    public Regex(String str, RegexOption regexOption) {
        str.getClass();
        regexOption.getClass();
        int value = regexOption.getValue();
        Pattern compile = Pattern.compile(str, (value & 2) != 0 ? value | 64 : value);
        compile.getClass();
        this.nativePattern = compile;
    }

    public Regex(String str) {
        str.getClass();
        Pattern compile = Pattern.compile(str);
        compile.getClass();
        this.nativePattern = compile;
    }

    public final String replace(String str, String str2) {
        String replaceAll = this.nativePattern.matcher(str).replaceAll(str2);
        replaceAll.getClass();
        return replaceAll;
    }
}
