package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.collections.ReversedListReadOnly;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        this.groups = new MatcherMatchResult$groups$1(this, 0);
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
}
