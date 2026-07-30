package c.a.a.E0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TimeInterpolator f1268a;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        ((Animator) obj).setInterpolator(this.f1268a);
    }
}
