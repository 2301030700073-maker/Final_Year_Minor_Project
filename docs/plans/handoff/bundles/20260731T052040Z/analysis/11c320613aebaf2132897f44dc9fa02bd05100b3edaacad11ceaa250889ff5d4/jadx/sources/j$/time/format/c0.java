package j$.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class c0 {
    public static final c0 a = new c0();

    static {
        new ConcurrentHashMap(16, 0.75f, 2);
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof c0);
    }

    public final int hashCode() {
        return Token.TEMPLATE_LITERAL_SUBST;
    }

    public final String toString() {
        return "DecimalStyle[0+-.]";
    }
}
