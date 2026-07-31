package okio.internal;

import java.util.logging.Logger;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class _JavaIoKt {
    public static final Logger logger = Logger.getLogger("okio.Okio");

    public static final boolean isAndroidGetsocknameError(AssertionError assertionError) {
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt.contains$default(message, "getsockname failed") : false) {
                return true;
            }
        }
        return false;
    }
}
