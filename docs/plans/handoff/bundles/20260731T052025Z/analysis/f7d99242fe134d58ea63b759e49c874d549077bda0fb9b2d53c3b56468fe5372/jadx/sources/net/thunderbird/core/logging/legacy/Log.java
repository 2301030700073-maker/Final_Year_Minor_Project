package net.thunderbird.core.logging.legacy;

import java.util.Arrays;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Log implements Logger {
    public static final Log INSTANCE = new Log();
    public static Logger logger;

    public static final void d(String str, Object... objArr) {
        Sink$CC.debug$default(getLogger(), null, null, new Log$$ExternalSyntheticLambda0(str, objArr, 4), 3);
    }

    public static final void e(String str, Object... objArr) {
        Sink$CC.error$default(getLogger(), null, null, new Log$$ExternalSyntheticLambda0(str, objArr, 1), 3);
    }

    public static String formatMessage(String str, Object[] objArr) {
        if (str == null) {
            return "";
        }
        if (objArr.length == 0) {
            return str;
        }
        try {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            return String.format(str, Arrays.copyOf(copyOf, copyOf.length));
        } catch (Exception e) {
            return str + " (Error formatting message: " + e + ", args: " + ArraysKt___ArraysKt.joinToString$default(objArr, null, null, null, null, 63) + ")";
        }
    }

    public static Logger getLogger() {
        Logger logger2 = logger;
        if (logger2 != null) {
            return logger2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("logger");
        throw null;
    }

    public static final void i(String str, Object... objArr) {
        Sink$CC.info$default(getLogger(), null, null, new Log$$ExternalSyntheticLambda0(str, objArr, 6), 3);
    }

    public static final void v(Throwable th, String str, Object... objArr) {
        Sink$CC.verbose$default(getLogger(), null, th, new Log$$ExternalSyntheticLambda0(str, objArr, 8), 1);
    }

    public static final void w(String str, Object... objArr) {
        Sink$CC.warn$default(getLogger(), null, new Log$$ExternalSyntheticLambda0(str, objArr, 3), 3);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void debug(String str, Throwable th, Function0 function0) {
        getLogger().debug(str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void error(String str, Throwable th, Function0 function0) {
        getLogger().error(str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void info(String str, Throwable th, Function0 function0) {
        getLogger().info(str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void verbose(String str, Throwable th, Function0 function0) {
        getLogger().verbose(str, th, function0);
    }

    @Override // net.thunderbird.core.logging.Logger
    public final void warn(String str, Throwable th, Function0 function0) {
        getLogger().warn(str, th, function0);
    }

    public static final void w(Exception exc, String str, Object... objArr) {
        Sink$CC.warn$default(getLogger(), exc, new Log$$ExternalSyntheticLambda0(str, objArr, 0), 1);
    }

    public static final void d(Exception exc, String str, Object... objArr) {
        Sink$CC.debug$default(getLogger(), null, exc, new Log$$ExternalSyntheticLambda0(str, objArr, 7), 1);
    }

    public static final void e(Throwable th, String str, Object... objArr) {
        Sink$CC.error$default(getLogger(), null, th, new Log$$ExternalSyntheticLambda0(str, objArr, 2), 1);
    }

    public static final void v(String str, Object... objArr) {
        Sink$CC.verbose$default(getLogger(), null, null, new Log$$ExternalSyntheticLambda0(str, objArr, 5), 3);
    }
}
