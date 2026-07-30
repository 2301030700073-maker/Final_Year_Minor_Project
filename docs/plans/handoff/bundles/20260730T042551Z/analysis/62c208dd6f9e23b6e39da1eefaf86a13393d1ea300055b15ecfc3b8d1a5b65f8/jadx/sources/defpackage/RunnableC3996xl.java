package defpackage;

import android.widget.TextView;

/* renamed from: xl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class RunnableC3996xl implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0104Al f16597do;

    public RunnableC3996xl(C0104Al c0104Al) {
        this.f16597do = c0104Al;
    }

    @Override // java.lang.Runnable
    public final void run() {
        TextView textView = this.f16597do.f137if;
        if (textView != null) {
            textView.animate().scaleY(1.0f).scaleX(1.0f).setDuration(100L);
        }
    }
}
