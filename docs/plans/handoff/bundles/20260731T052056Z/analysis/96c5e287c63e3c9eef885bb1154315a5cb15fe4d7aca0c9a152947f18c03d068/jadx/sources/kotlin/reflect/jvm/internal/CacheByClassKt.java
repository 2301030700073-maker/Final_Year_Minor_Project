package kotlin.reflect.jvm.internal;

import kotlin.Result;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CacheByClassKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        Object failure;
        try {
            failure = Class.forName("java.lang.ClassValue");
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (!(failure instanceof Result.Failure)) {
            failure = Boolean.TRUE;
        }
        Object obj = Boolean.FALSE;
        if (failure instanceof Result.Failure) {
            failure = obj;
        }
    }
}
