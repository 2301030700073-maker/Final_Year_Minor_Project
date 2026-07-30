package defpackage;

import android.widget.TextView;

/* renamed from: zl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC4114zl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0104Al f16940do;

    public RunnableC4114zl(C0104Al c0104Al) {
        this.f16940do = c0104Al;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f16940do.f138new;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
