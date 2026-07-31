package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UseCaseCameraImpl$start$1$3 implements Function1 {
    public static final UseCaseCameraImpl$start$1$3 INSTANCE = new UseCaseCameraImpl$start$1$3();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Throwable th = (Throwable) obj;
        if (th != null && !(th instanceof CancellationException) && Utf8.SafeProcessor.isErrorEnabled()) {
            Log.e("CXCP", "Surface setup error!", th);
        }
        return Unit.INSTANCE;
    }
}
