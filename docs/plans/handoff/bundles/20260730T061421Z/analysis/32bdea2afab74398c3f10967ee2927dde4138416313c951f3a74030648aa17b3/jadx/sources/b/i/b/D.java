package b.i.b;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;

/* loaded from: classes.dex */
public abstract class D extends A {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f836a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f837b;

    /* renamed from: c, reason: collision with root package name */
    public final Handler f838c;

    /* renamed from: d, reason: collision with root package name */
    public final X f839d;

    public D(ActivityC0124t activityC0124t) {
        Handler handler = new Handler();
        this.f839d = new Y();
        this.f836a = activityC0124t;
        b.e.b.d.d(activityC0124t, "context == null");
        this.f837b = activityC0124t;
        b.e.b.d.d(handler, "handler == null");
        this.f838c = handler;
    }
}
