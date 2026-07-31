package leakcanary;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidLeakFixes$Companion$backgroundHandler$2 extends Lambda implements Function0 {
    public static final AndroidLeakFixes$Companion$backgroundHandler$2 INSTANCE = new AndroidLeakFixes$Companion$backgroundHandler$2(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        HandlerThread handlerThread = new HandlerThread("plumber-android-leaks");
        handlerThread.start();
        return new Handler(handlerThread.getLooper());
    }
}
