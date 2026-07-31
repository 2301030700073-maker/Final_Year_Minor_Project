package com.bumptech.glide.manager;

import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.util.Util;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingletonConnectivityReceiver$2 implements ConnectivityMonitor.ConnectivityListener {
    public final /* synthetic */ LocalFolder.AnonymousClass12 this$0;

    public SingletonConnectivityReceiver$2(LocalFolder.AnonymousClass12 anonymousClass12) {
        this.this$0 = anonymousClass12;
    }

    @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
    public final void onConnectivityChanged(boolean z) {
        ArrayList arrayList;
        Util.assertMainThread();
        synchronized (this.this$0) {
            arrayList = new ArrayList((HashSet) this.this$0.val$flags);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((ConnectivityMonitor.ConnectivityListener) it.next()).onConnectivityChanged(z);
        }
    }
}
