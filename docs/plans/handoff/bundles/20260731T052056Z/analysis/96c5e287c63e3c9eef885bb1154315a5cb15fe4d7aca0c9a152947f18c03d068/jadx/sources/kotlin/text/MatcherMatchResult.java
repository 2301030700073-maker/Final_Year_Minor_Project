package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.ReversedListReadOnly;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MatcherMatchResult {
    public ReversedListReadOnly groupValues_;
    public final MatcherMatchResult$groups$1 groups;
    public final CharSequence input;
    public final Matcher matcher;

    public MatcherMatchResult(Matcher matcher, CharSequence charSequence) {
        charSequence.getClass();
        this.matcher = matcher;
        this.input = charSequence;
        this.groups = new MatcherMatchResult$groups$1(0, this);
    }

    public final List getGroupValues() {
        ReversedListReadOnly reversedListReadOnly = this.groupValues_;
        if (reversedListReadOnly != null) {
            return reversedListReadOnly;
        }
        ReversedListReadOnly reversedListReadOnly2 = new ReversedListReadOnly(this);
        this.groupValues_ = reversedListReadOnly2;
        return reversedListReadOnly2;
    }

    public final IntRange getRange() {
        Matcher matcher = this.matcher;
        return RegexKt.until(matcher.start(), matcher.end());
    }

    public final MatcherMatchResult next() {
        Matcher matcher = this.matcher;
        int end = matcher.end() + (matcher.end() == matcher.start() ? 1 : 0);
        CharSequence charSequence = this.input;
        if (end > charSequence.length()) {
            return null;
        }
        Matcher matcher2 = matcher.pattern().matcher(charSequence);
        matcher2.getClass();
        return RegexKt.findNext(matcher2, end, charSequence);
    }
}
