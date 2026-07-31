package androidx.media3.session.legacy;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.util.Strings;

/* loaded from: classes2.dex */
public final class LegacyParcelableUtil {
    private LegacyParcelableUtil() {
    }

    public static <T extends Parcelable, U extends Parcelable> T convert(U u, Parcelable.Creator<T> creator) {
        if (u == null) {
            return null;
        }
        Parcelable parcelable = (Parcelable) maybeApplyMediaDescriptionParcelableBugWorkaround(u);
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            return (T) maybeApplyMediaDescriptionParcelableBugWorkaround(creator.createFromParcel(obtain));
        } finally {
            obtain.recycle();
        }
    }

    public static <T extends Parcelable, U extends Parcelable> ArrayList<T> convertList(List<U> list, Parcelable.Creator<T> creator) {
        if (list == null) {
            return null;
        }
        Strings.StringListImpl stringListImpl = (ArrayList<T>) new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            stringListImpl.add((Strings.StringListImpl) convert(list.get(i), creator));
        }
        return stringListImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T maybeApplyMediaDescriptionParcelableBugWorkaround(T t) {
        if (Util.SDK_INT < 21 || Util.SDK_INT >= 23) {
            return t;
        }
        if (!(t instanceof MediaBrowserCompat.MediaItem)) {
            return t instanceof android.support.v4.media.MediaDescriptionCompat ? (T) rebuildMediaDescriptionCompat((android.support.v4.media.MediaDescriptionCompat) t) : t;
        }
        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) t;
        return (T) new MediaBrowserCompat.MediaItem(rebuildMediaDescriptionCompat(mediaItem.getDescription()), mediaItem.getFlags());
    }

    private static android.support.v4.media.MediaDescriptionCompat rebuildMediaDescriptionCompat(android.support.v4.media.MediaDescriptionCompat mediaDescriptionCompat) {
        return new MediaDescriptionCompat.Builder().setMediaId(mediaDescriptionCompat.getMediaId()).setTitle(mediaDescriptionCompat.getTitle()).setSubtitle(mediaDescriptionCompat.getSubtitle()).setDescription(mediaDescriptionCompat.getDescription()).setIconBitmap(mediaDescriptionCompat.getIconBitmap()).setIconUri(mediaDescriptionCompat.getIconUri()).setExtras(mediaDescriptionCompat.getExtras()).setMediaUri(mediaDescriptionCompat.getMediaUri()).build();
    }
}
