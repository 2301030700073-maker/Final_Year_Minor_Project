package org.wikipedia.util.log;

import android.util.Log;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class L$LEVEL_D$1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ L$LEVEL_D$1(int i) {
        this.$r8$classId = i;
    }

    public final void log(String str, Throwable th) {
        str.getClass();
        if (StringsKt.contains("org.wikipedia", "beta", false) || StringsKt.contains("org.wikipedia", "alpha", false) || !StringsKt.contains("org.wikipedia", "dev", false)) {
            logLevel("org.wikipedia", str, th);
            return;
        }
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[4];
        logLevel(stackTraceElement.getClassName(), (stackTraceElement.getMethodName() + "():" + stackTraceElement.getLineNumber() + ": ").concat(str), th);
    }

    public final void logLevel(String str, String str2, Throwable th) {
        switch (this.$r8$classId) {
            case 0:
                Log.d(str, str2, th);
                break;
            case 1:
                Log.e(str, str2, th);
                break;
            case 2:
                Log.i(str, str2, th);
                break;
            case 3:
                Log.v(str, str2, th);
                break;
            default:
                Log.w(str, str2, th);
                break;
        }
    }
}
