package defpackage;

import java.lang.reflect.Method;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* renamed from: y9, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4021y9 {

    /* renamed from: do, reason: not valid java name */
    public static final Method f16683do;

    static {
        Method method;
        try {
            method = ScheduledThreadPoolExecutor.class.getMethod("setRemoveOnCancelPolicy", Boolean.TYPE);
        } catch (Throwable unused) {
            method = null;
        }
        f16683do = method;
    }
}
