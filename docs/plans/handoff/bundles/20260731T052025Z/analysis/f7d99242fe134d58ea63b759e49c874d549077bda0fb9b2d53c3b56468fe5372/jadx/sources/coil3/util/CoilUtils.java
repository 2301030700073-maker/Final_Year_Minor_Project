package coil3.util;

import android.view.View;
import coil3.request.ImageResult;
import coil3.request.ViewTargetRequestManagerKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoilUtils {
    public static final CoilUtils INSTANCE = new CoilUtils();

    private CoilUtils() {
    }

    public static final void dispose(View view) {
        ViewTargetRequestManagerKt.getRequestManager(view).dispose();
    }

    public static final ImageResult result(View view) {
        return ViewTargetRequestManagerKt.getRequestManager(view).getResult();
    }
}
