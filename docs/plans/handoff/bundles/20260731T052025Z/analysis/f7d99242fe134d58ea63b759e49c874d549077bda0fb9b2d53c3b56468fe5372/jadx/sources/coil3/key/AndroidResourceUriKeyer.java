package coil3.key;

import coil3.Uri;
import coil3.request.Options;
import coil3.util.Utils_androidKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidResourceUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public String key(Uri uri, Options options) {
        if (!Intrinsics.areEqual(uri.getScheme(), "android.resource")) {
            return null;
        }
        return uri + ":" + Utils_androidKt.getNightMode(options.getContext().getResources().getConfiguration());
    }
}
