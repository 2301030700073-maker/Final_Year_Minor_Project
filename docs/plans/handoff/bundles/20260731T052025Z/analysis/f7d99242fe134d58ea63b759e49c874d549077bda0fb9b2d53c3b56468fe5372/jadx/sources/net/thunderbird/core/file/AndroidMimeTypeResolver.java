package net.thunderbird.core.file;

import coil3.util.UtilsKt;
import com.eygraber.uri.Uri;
import net.thunderbird.app.common.core.AppCommonCoreModuleKt$$ExternalSyntheticLambda7;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidMimeTypeResolver {
    public final AppCommonCoreModuleKt$$ExternalSyntheticLambda7 mimeTypeProvider;

    public AndroidMimeTypeResolver(AppCommonCoreModuleKt$$ExternalSyntheticLambda7 appCommonCoreModuleKt$$ExternalSyntheticLambda7) {
        this.mimeTypeProvider = appCommonCoreModuleKt$$ExternalSyntheticLambda7;
    }

    public final MimeType getMimeType(Uri uri) {
        uri.getClass();
        String type = this.mimeTypeProvider.f$0.getType(Util.toAndroidUri(uri));
        if (type == null) {
            return null;
        }
        int hashCode = type.hashCode();
        if (hashCode == -1487394660) {
            if (type.equals(UtilsKt.MIME_TYPE_JPEG)) {
                return MimeType.JPEG;
            }
            return null;
        }
        if (hashCode == -1248334925) {
            if (type.equals("application/pdf")) {
                return MimeType.PDF;
            }
            return null;
        }
        if (hashCode == -879258763 && type.equals("image/png")) {
            return MimeType.PNG;
        }
        return null;
    }
}
