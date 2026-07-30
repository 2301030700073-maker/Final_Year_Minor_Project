package com.google.android.gms.common.api.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class zza$zza extends LifecycleCallback {

    /* renamed from: a, reason: collision with root package name */
    public List f3381a;

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a() {
        List list;
        synchronized (this) {
            list = this.f3381a;
            this.f3381a = new ArrayList();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
    }
}
