package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import defpackage.AbstractC0387Nj;

/* renamed from: androidx.fragment.app.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AbstractC0387Nj f6955do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Rect f6956do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ View f6957do;

    public Celse(AbstractC0387Nj abstractC0387Nj, View view, Rect rect) {
        this.f6955do = abstractC0387Nj;
        this.f6957do = view;
        this.f6956do = rect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f6955do.getClass();
        AbstractC0387Nj.m1546else(this.f6956do, this.f6957do);
    }
}
