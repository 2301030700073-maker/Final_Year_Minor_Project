package com.google.common.base;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CharMatcher$Is extends CharMatcher$FastMatcher {
    public final /* synthetic */ int $r8$classId;
    public final char match;

    public /* synthetic */ CharMatcher$Is(char c, int i) {
        this.$r8$classId = i;
        this.match = c;
    }

    @Override // com.google.common.base.CharMatcher$FastMatcher
    public final boolean matches(char c) {
        switch (this.$r8$classId) {
            case 0:
                if (c == this.match) {
                }
                break;
            default:
                if (c != this.match) {
                }
                break;
        }
        return false;
    }

    @Override // com.google.common.base.CharMatcher$FastMatcher
    public final java.util.function.Predicate negate() {
        switch (this.$r8$classId) {
            case 0:
                return new CharMatcher$Is(this.match, 1);
            default:
                return new CharMatcher$Is(this.match, 0);
        }
    }

    public final String toString() {
        int i = this.$r8$classId;
        char c = this.match;
        switch (i) {
            case 0:
                return "CharMatcher.is('" + CharMatcher$FastMatcher.access$100(c) + "')";
            default:
                return "CharMatcher.isNot('" + CharMatcher$FastMatcher.access$100(c) + "')";
        }
    }
}
