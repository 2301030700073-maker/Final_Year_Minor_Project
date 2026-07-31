package kotlinx.serialization.json.internal;

import kotlin.Result;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
