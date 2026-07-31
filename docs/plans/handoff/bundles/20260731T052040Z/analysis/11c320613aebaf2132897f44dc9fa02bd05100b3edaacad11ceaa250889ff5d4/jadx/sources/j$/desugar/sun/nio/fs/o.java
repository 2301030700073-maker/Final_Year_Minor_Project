package j$.desugar.sun.nio.fs;

import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public abstract class o {
    public static final long a;
    public static final long b;
    public static final char[] c;

    static {
        long j = 0;
        for (int max = Math.max(Math.min(48, 63), 0); max <= Math.max(Math.min(57, 63), 0); max++) {
            j |= 1 << max;
        }
        long b2 = b('A', 'Z') | b('a', 'z');
        long d = d("-_.!~*'()");
        long c2 = b2 | c("-_.!~*'()");
        long d2 = j | d | d(":@&=+$,");
        long c3 = c2 | c(":@&=+$,");
        a = d2 | d(";/");
        b = c3 | c(";/");
        c = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return c2 - 'W';
        }
        if (c2 < 'A' || c2 > 'F') {
            throw new AssertionError();
        }
        return c2 - '7';
    }

    public static long b(char c2, char c3) {
        long j = 0;
        for (int max = Math.max(Math.min((int) c2, Token.SWITCH), 64) - 64; max <= Math.max(Math.min((int) c3, Token.SWITCH), 64) - 64; max++) {
            j |= 1 << max;
        }
        return j;
    }

    public static long c(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt >= '@' && charAt < 128) {
                j |= 1 << (charAt - '@');
            }
        }
        return j;
    }

    public static long d(String str) {
        int length = str.length();
        long j = 0;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt < '@') {
                j |= 1 << charAt;
            }
        }
        return j;
    }
}
