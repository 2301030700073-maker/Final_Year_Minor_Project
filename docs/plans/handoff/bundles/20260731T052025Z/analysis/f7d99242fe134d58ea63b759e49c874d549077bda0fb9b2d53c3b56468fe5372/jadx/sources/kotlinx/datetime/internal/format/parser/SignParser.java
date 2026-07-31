package kotlinx.datetime.internal.format.parser;

import kotlin.jvm.functions.Function0;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignParser implements ParserOperation {
    public final StringsKt__StringsKt$$ExternalSyntheticLambda0 isNegativeSetter;
    public final String whatThisExpects;

    public SignParser(StringsKt__StringsKt$$ExternalSyntheticLambda0 stringsKt__StringsKt$$ExternalSyntheticLambda0, String str) {
        this.isNegativeSetter = stringsKt__StringsKt$$ExternalSyntheticLambda0;
        this.whatThisExpects = str;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    /* renamed from: consume-FANa98k */
    public final Object mo1023consumeFANa98k(Copyable copyable, String str, int i) {
        if (i >= str.length()) {
            return Integer.valueOf(i);
        }
        final char charAt = str.charAt(i);
        StringsKt__StringsKt$$ExternalSyntheticLambda0 stringsKt__StringsKt$$ExternalSyntheticLambda0 = this.isNegativeSetter;
        if (charAt == '-') {
            stringsKt__StringsKt$$ExternalSyntheticLambda0.invoke(copyable, Boolean.TRUE);
            return Integer.valueOf(i + 1);
        }
        if (charAt != '+') {
            return new ParseError(i, new Function0() { // from class: kotlinx.datetime.internal.format.parser.SignParser$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return "Expected " + SignParser.this.whatThisExpects + " but got " + charAt;
                }
            });
        }
        stringsKt__StringsKt$$ExternalSyntheticLambda0.invoke(copyable, Boolean.FALSE);
        return Integer.valueOf(i + 1);
    }

    public final String toString() {
        return this.whatThisExpects;
    }
}
