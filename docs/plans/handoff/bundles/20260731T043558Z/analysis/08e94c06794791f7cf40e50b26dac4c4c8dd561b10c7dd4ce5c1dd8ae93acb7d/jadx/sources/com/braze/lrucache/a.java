package com.braze.lrucache;

import java.util.Map;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class a implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f99a;

    public a(f fVar) {
        this.f99a = fVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f99a) {
            f fVar = this.f99a;
            if (fVar.i == null) {
                return null;
            }
            while (fVar.h > fVar.f) {
                fVar.d((String) ((Map.Entry) fVar.j.entrySet().iterator().next()).getKey());
            }
            if (this.f99a.a()) {
                this.f99a.d();
                this.f99a.k = 0;
            }
            return null;
        }
    }
}
