package com.amazonaws.transform;

/* loaded from: classes.dex */
public class StaxUnmarshallerContext {

    /* renamed from: do, reason: not valid java name */
    public int f9035do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f9036do;

    public static class MetadataExpression {
    }

    /* renamed from: do, reason: not valid java name */
    public final int m5161do() {
        throw null;
    }

    /* renamed from: for, reason: not valid java name */
    public final String m5162for() {
        throw null;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5163if() {
        throw null;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m5164new(int i, String str) {
        if (str.equals(".")) {
            return true;
        }
        int i2 = -1;
        while (true) {
            i2 = str.indexOf("/", i2 + 1);
            if (i2 <= -1) {
                break;
            }
            if (str.charAt(i2 + 1) != '@') {
                i++;
            }
        }
        return m5161do() == i && this.f9036do.endsWith("/".concat(str));
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5165try() {
        int i = this.f9035do;
        if (i != 2) {
            if (i == 3) {
                throw null;
            }
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f9036do);
            sb.append("/");
            throw null;
        }
    }
}
