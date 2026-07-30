package b.m.b;

import androidx.recyclerview.widget.FastScroller;

/* renamed from: b.m.b.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0192p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FastScroller f1195a;

    public RunnableC0192p(FastScroller fastScroller) {
        this.f1195a = fastScroller;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1195a.hide(500);
    }
}
