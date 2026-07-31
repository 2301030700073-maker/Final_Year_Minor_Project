package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ArrayPoolsKt {
    public static final int MAX_CHARS_IN_POOL;

    static {
        Object failure;
        try {
            String property = System.getProperty("kotlinx.serialization.json.pool.size");
            failure = property != null ? StringsKt__StringsJVMKt.toIntOrNull(property) : null;
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        Integer num = (Integer) (failure instanceof Result.Failure ? null : failure);
        MAX_CHARS_IN_POOL = num != null ? num.intValue() : 2097152;
    }
}
