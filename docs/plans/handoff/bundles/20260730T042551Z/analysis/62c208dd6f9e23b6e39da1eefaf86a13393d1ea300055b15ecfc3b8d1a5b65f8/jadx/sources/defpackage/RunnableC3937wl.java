package defpackage;

import android.widget.TextView;

/* renamed from: wl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3937wl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0104Al f16395do;

    public RunnableC3937wl(C0104Al c0104Al) {
        this.f16395do = c0104Al;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f16395do.f135do;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
