package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.ReversedListReadOnly;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
        if (this.groupValues_ == null) {
            this.groupValues_ = new ReversedListReadOnly(this);
        }
        ReversedListReadOnly reversedListReadOnly = this.groupValues_;
        reversedListReadOnly.getClass();
        return reversedListReadOnly;
    }

    public final IntRange getRange() {
        Matcher matcher = this.matcher;
        return RangesKt.until(matcher.start(), matcher.end());
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
        if (matcher2.find(end)) {
            return new MatcherMatchResult(matcher2, charSequence);
        }
        return null;
    }
}
