package kotlinx.datetime.format;

import kotlin.jvm.functions.Function1;
import okhttp3.Headers;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface AbstractDateTimeFormatBuilder extends DateTimeFormatBuilder {
    void appendAlternativeParsingImpl(Function1[] function1Arr, Function1 function1);

    void appendOptionalImpl(String str, Function1 function1);

    AbstractDateTimeFormatBuilder createEmpty();

    Headers.Builder getActualBuilder();
}
