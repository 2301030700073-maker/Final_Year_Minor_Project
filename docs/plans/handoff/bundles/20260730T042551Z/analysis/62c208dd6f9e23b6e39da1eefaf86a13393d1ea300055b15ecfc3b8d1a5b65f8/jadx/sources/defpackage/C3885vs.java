package defpackage;

import android.media.browse.MediaBrowser;
import android.os.Parcel;
import android.service.media.MediaBrowserService;
import java.util.ArrayList;
import java.util.List;

/* renamed from: vs, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3885vs<T> {

    /* renamed from: do, reason: not valid java name */
    public final MediaBrowserService.Result f16146do;

    public C3885vs(MediaBrowserService.Result result) {
        this.f16146do = result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: do, reason: not valid java name */
    public final void m8483do(T t) {
        boolean z = t instanceof List;
        ArrayList arrayList = null;
        MediaBrowserService.Result result = this.f16146do;
        if (!z) {
            if (!(t instanceof Parcel)) {
                result.sendResult(null);
                return;
            }
            Parcel parcel = (Parcel) t;
            parcel.setDataPosition(0);
            result.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
            parcel.recycle();
            return;
        }
        List<Parcel> list = (List) t;
        if (list != null) {
            arrayList = new ArrayList();
            for (Parcel parcel2 : list) {
                parcel2.setDataPosition(0);
                arrayList.add(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel2));
                parcel2.recycle();
            }
        }
        result.sendResult(arrayList);
    }
}
