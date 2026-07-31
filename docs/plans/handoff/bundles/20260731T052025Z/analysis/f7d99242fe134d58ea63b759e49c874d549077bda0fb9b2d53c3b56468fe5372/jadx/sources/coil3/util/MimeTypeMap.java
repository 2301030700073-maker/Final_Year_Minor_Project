package coil3.util;

import java.util.Locale;
import java.util.Map;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeTypeMap {
    public static final MimeTypeMap INSTANCE = new MimeTypeMap();

    private MimeTypeMap() {
    }

    public final String getMimeTypeFromExtension(String str) {
        Map map;
        if (StringsKt.isBlank(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        map = MimeTypesKt.mimeTypeData;
        String str2 = (String) map.get(lowerCase);
        return str2 == null ? MimeTypes_androidKt.extensionFromMimeTypeMap(lowerCase) : str2;
    }

    public final String getMimeTypeFromUrl(String str) {
        if (StringsKt.isBlank(str)) {
            return null;
        }
        String substringBeforeLast$default = StringsKt.substringBeforeLast$default('?', StringsKt.substringBeforeLast$default('#', str));
        return getMimeTypeFromExtension(StringsKt.substringAfterLast('.', StringsKt.substringAfterLast('/', substringBeforeLast$default, substringBeforeLast$default), ""));
    }
}
