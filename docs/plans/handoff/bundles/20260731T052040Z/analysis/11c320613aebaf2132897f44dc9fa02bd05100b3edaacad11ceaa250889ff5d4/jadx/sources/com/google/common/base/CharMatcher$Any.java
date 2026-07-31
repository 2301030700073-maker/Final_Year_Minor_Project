package com.google.common.base;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CharMatcher$Any extends CharMatcher$FastMatcher {
    public static final CharMatcher$Any INSTANCE = new CharMatcher$Any("CharMatcher.any()", 0);
    public static final CharMatcher$Any INSTANCE$1 = new CharMatcher$Any("CharMatcher.none()", 1);
    public final /* synthetic */ int $r8$classId;
    public final String description;

    public CharMatcher$Any(String str, int i) {
        this.$r8$classId = i;
        this.description = str;
    }

    @Override // com.google.common.base.CharMatcher$FastMatcher
    public final boolean matches(char c) {
        switch (this.$r8$classId) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.common.base.CharMatcher$FastMatcher
    public final java.util.function.Predicate negate() {
        switch (this.$r8$classId) {
            case 0:
                return INSTANCE$1;
            default:
                return INSTANCE;
        }
    }

    public final String toString() {
        return this.description;
    }
}
