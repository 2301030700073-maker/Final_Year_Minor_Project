package kotlin.text;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Regex implements Serializable {
    private Set<Object> _options;
    private final Pattern nativePattern;

    public Regex(String str) {
        str.getClass();
        Pattern compile = Pattern.compile(str);
        compile.getClass();
        this.nativePattern = compile;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    public final MatcherMatchResult matchAt(int i, String str) {
        str.getClass();
        Matcher region = this.nativePattern.matcher(str).useAnchoringBounds(false).useTransparentBounds(true).region(i, str.length());
        if (region.lookingAt()) {
            return new MatcherMatchResult(region, str);
        }
        return null;
    }

    public final boolean matches(CharSequence charSequence) {
        charSequence.getClass();
        return this.nativePattern.matcher(charSequence).matches();
    }

    public final String replace(String str, RxAwaitKt$$ExternalSyntheticLambda0 rxAwaitKt$$ExternalSyntheticLambda0) {
        Matcher matcher = this.nativePattern.matcher(str);
        matcher.getClass();
        MatcherMatchResult matcherMatchResult = !matcher.find(0) ? null : new MatcherMatchResult(matcher, str);
        if (matcherMatchResult == null) {
            return str.toString();
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        int i = 0;
        do {
            sb.append((CharSequence) str, i, matcherMatchResult.getRange().first);
            sb.append((CharSequence) rxAwaitKt$$ExternalSyntheticLambda0.invoke(matcherMatchResult));
            i = matcherMatchResult.getRange().last + 1;
            CharSequence charSequence = matcherMatchResult.input;
            Matcher matcher2 = matcherMatchResult.matcher;
            int end = matcher2.end() + (matcher2.end() != matcher2.start() ? 0 : 1);
            if (end <= charSequence.length()) {
                Matcher matcher3 = matcher2.pattern().matcher(charSequence);
                matcher3.getClass();
                matcherMatchResult = !matcher3.find(end) ? null : new MatcherMatchResult(matcher3, charSequence);
            } else {
                matcherMatchResult = null;
            }
            if (i >= length) {
                break;
            }
        } while (matcherMatchResult != null);
        if (i < length) {
            sb.append((CharSequence) str, i, length);
        }
        return sb.toString();
    }

    public final List split(String str) {
        int i = 0;
        StringsKt.requireNonNegativeLimit(0);
        Matcher matcher = this.nativePattern.matcher(str);
        if (!matcher.find()) {
            return Jsoup.listOf(str.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        do {
            arrayList.add(str.subSequence(i, matcher.start()).toString());
            i = matcher.end();
        } while (matcher.find());
        arrayList.add(str.subSequence(i, str.length()).toString());
        return arrayList;
    }

    public final String toString() {
        String pattern = this.nativePattern.toString();
        pattern.getClass();
        return pattern;
    }

    public final String replace(String str, String str2) {
        str.getClass();
        String replaceAll = this.nativePattern.matcher(str).replaceAll(str2);
        replaceAll.getClass();
        return replaceAll;
    }
}
