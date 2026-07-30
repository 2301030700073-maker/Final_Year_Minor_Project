package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;
import defpackage.C3712sw;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* renamed from: androidx.media.new, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cnew implements Runnable {

    /* renamed from: break, reason: not valid java name */
    public final /* synthetic */ String f7203break;

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ IBinder f7204do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cgoto f7205do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ MediaBrowserServiceCompat.Cthis f7206do;

    public Cnew(MediaBrowserServiceCompat.Cgoto cgoto, MediaBrowserServiceCompat.Cbreak cbreak, String str, IBinder iBinder) {
        this.f7205do = cgoto;
        this.f7206do = cbreak;
        this.f7203break = str;
        this.f7204do = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder m4281do = ((MediaBrowserServiceCompat.Cbreak) this.f7206do).m4281do();
        MediaBrowserServiceCompat.Cgoto cgoto = this.f7205do;
        MediaBrowserServiceCompat.Cif orDefault = MediaBrowserServiceCompat.this.f7163do.getOrDefault(m4281do, null);
        if (orDefault == null) {
            return;
        }
        MediaBrowserServiceCompat.this.getClass();
        HashMap<String, List<C3712sw<IBinder, Bundle>>> hashMap = orDefault.f7173do;
        String str = this.f7203break;
        IBinder iBinder = this.f7204do;
        if (iBinder == null) {
            hashMap.remove(str);
            return;
        }
        List<C3712sw<IBinder, Bundle>> list = hashMap.get(str);
        if (list != null) {
            Iterator<C3712sw<IBinder, Bundle>> it = list.iterator();
            while (it.hasNext()) {
                if (iBinder == it.next().f15568do) {
                    it.remove();
                }
            }
            if (list.size() == 0) {
                hashMap.remove(str);
            }
        }
    }
}
