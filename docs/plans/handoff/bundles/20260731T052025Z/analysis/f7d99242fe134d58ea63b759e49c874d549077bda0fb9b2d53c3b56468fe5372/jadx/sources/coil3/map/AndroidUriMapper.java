package coil3.map;

import android.net.Uri;
import coil3.Uri_androidKt;
import coil3.request.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidUriMapper implements Mapper<Uri, coil3.Uri> {
    @Override // coil3.map.Mapper
    public coil3.Uri map(Uri uri, Options options) {
        return Uri_androidKt.toCoilUri(uri);
    }
}
