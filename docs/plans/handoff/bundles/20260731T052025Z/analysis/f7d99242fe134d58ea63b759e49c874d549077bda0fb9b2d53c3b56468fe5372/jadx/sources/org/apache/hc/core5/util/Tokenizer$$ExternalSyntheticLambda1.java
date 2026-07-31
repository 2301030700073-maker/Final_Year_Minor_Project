package org.apache.hc.core5.util;

import org.apache.james.mime4j.field.address.ParseException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class Tokenizer$$ExternalSyntheticLambda1 {
    public static /* synthetic */ void m(Object obj, String str) {
        throw new ParseException(str + obj + ((Object) "\""));
    }

    public boolean test(char c) {
        return c == ',' || c == '+';
    }
}
