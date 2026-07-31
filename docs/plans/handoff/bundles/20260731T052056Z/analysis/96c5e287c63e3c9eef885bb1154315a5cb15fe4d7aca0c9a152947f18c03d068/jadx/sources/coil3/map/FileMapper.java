package coil3.map;

import android.content.Context;
import android.content.res.Resources;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;
import java.io.File;
import okio.Path;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FileMapper {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FileMapper(int i) {
        this.$r8$classId = i;
    }

    public final Uri map(Object obj, Options options) {
        switch (this.$r8$classId) {
            case 0:
                return UriKt.Uri$default(((File) obj).getPath());
            case 1:
                return UriKt.toUri$default(((android.net.Uri) obj).toString());
            case 2:
                return UriKt.Uri$default(((Path) obj).bytes.utf8());
            case 3:
                int intValue = ((Number) obj).intValue();
                Context context = options.context;
                try {
                    if (context.getResources().getResourceEntryName(intValue) != null) {
                        return UriKt.toUri$default("android.resource://" + context.getPackageName() + "/" + intValue);
                    }
                } catch (Resources.NotFoundException unused) {
                }
                return null;
            default:
                return UriKt.toUri$default((String) obj);
        }
    }
}
