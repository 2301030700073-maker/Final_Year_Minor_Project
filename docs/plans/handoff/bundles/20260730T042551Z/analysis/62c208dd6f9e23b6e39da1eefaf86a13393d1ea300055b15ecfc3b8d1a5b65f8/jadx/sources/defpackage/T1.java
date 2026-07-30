package defpackage;

import android.graphics.Typeface;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class T1 implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Typeface f3581do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ TextView f3582do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3583for;

    public T1(TextView textView, Typeface typeface, int i) {
        this.f3582do = textView;
        this.f3581do = typeface;
        this.f3583for = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f3582do.setTypeface(this.f3581do, this.f3583for);
    }
}
