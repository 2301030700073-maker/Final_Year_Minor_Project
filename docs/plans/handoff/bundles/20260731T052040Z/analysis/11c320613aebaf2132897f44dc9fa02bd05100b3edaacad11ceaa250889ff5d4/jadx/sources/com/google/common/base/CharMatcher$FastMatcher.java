package com.google.common.base;

import j$.util.function.Predicate$CC;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class CharMatcher$FastMatcher implements Predicate {
    public static String access$100(char c) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public /* synthetic */ java.util.function.Predicate and(java.util.function.Predicate predicate) {
        return Predicate$CC.$default$and(this, predicate);
    }

    @Override // com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return matches(((Character) obj).charValue());
    }

    public abstract boolean matches(char c);

    public /* synthetic */ java.util.function.Predicate negate() {
        return Predicate$CC.$default$negate(this);
    }

    public /* synthetic */ java.util.function.Predicate or(java.util.function.Predicate predicate) {
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return apply(obj);
    }
}
