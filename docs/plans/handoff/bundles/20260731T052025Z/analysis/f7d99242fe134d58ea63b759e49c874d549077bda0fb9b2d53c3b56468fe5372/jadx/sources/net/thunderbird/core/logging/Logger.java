package net.thunderbird.core.logging;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Logger {
    void debug(String str, Throwable th, Function0 function0);

    void error(String str, Throwable th, Function0 function0);

    void info(String str, Throwable th, Function0 function0);

    void verbose(String str, Throwable th, Function0 function0);

    void warn(String str, Throwable th, Function0 function0);
}
