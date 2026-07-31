package kotlinx.datetime.internal.format.parser;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ParseError {
    public final Function0 message;
    public final int position;

    public ParseError(int i, Function0 function0) {
        this.position = i;
        this.message = function0;
    }
}
