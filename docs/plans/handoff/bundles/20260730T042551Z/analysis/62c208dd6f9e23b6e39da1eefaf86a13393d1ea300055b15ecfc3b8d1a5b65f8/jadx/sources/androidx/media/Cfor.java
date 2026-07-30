package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;
import defpackage.C3645ro;
import defpackage.C3712sw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: androidx.media.for, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cfor implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f7193break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Bundle f7194do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ IBinder f7195do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7196do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7197do;

    public Cfor(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, IBinder iBinder, Bundle bundle) {
        this.f7196do = cgoto;
        this.f7197do = cbreak;
        this.f7193break = str;
        this.f7195do = iBinder;
        this.f7194do = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7197do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7196do;
        MediaBrowserServiceCompat.Cif orDefault = MediaBrowserServiceCompat.this.f7163do.getOrDefault(m4281do, null);
        if (orDefault == null) {
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        mediaBrowserServiceCompat.getClass();
        HashMap<String, List<C3712sw<IBinder, Bundle>>> hashMap = orDefault.f7173do;
        String str = this.f7193break;
        List<C3712sw<IBinder, Bundle>> list = hashMap.get(str);
        if (list == null) {
            list = new ArrayList<>();
        }
        Iterator<C3712sw<IBinder, Bundle>> it = list.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Bundle bundle = this.f7194do;
            IBinder iBinder = this.f7195do;
            if (!hasNext) {
                list.add(new C3712sw<>(iBinder, bundle));
                hashMap.put(str, list);
                if (bundle == null) {
                    mediaBrowserServiceCompat.m4280if();
                } else {
                    mediaBrowserServiceCompat.m4280if();
                }
                throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + orDefault.f7172do + " id=" + str);
            }
            C3712sw<IBinder, Bundle> next = it.next();
            if (iBinder == next.f15568do && C3645ro.m8002if(bundle, next.f15569if)) {
                return;
            }
        }
    }
}
