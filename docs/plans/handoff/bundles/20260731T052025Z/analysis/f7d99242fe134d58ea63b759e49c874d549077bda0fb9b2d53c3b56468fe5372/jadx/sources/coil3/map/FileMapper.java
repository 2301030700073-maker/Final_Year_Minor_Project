package coil3.map;

import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;
import coil3.util.UtilsKt;
import java.io.File;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileMapper implements Mapper<File, Uri> {
    @Override // coil3.map.Mapper
    public Uri map(File file, Options options) {
        return UriKt.Uri$default(UtilsKt.SCHEME_FILE, null, file.getPath(), null, null, null, 58, null);
    }
}
