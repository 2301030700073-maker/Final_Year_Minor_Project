package coil3.map;

import android.content.Context;
import android.content.res.Resources;
import coil3.Uri;
import coil3.UriKt;
import coil3.request.Options;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceIntMapper implements Mapper<Integer, Uri> {
    private final boolean isApplicable(int i, Context context) {
        try {
            return context.getResources().getResourceEntryName(i) != null;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    public Uri map(int i, Options options) {
        if (!isApplicable(i, options.getContext())) {
            return null;
        }
        return UriKt.toUri$default("android.resource://" + options.getContext().getPackageName() + "/" + i, null, 1, null);
    }

    @Override // coil3.map.Mapper
    public /* bridge */ /* synthetic */ Uri map(Integer num, Options options) {
        return map(num.intValue(), options);
    }
}
