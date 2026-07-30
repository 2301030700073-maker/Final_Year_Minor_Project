package b.b.g;

import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class Z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f501a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f502b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WeakReference f503c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0037a0 f504d;

    public Z(C0037a0 c0037a0, int i, int i2, WeakReference weakReference) {
        this.f504d = c0037a0;
        this.f501a = i;
        this.f502b = i2;
        this.f503c = weakReference;
    }

    public final void a(int i, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b.e.c.c.f(this, i));
    }

    public final void b(Typeface typeface, Handler handler) {
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
        }
        handler.post(new b.e.c.c.e(this, typeface));
    }

    public void c(Typeface typeface) {
        int i = this.f501a;
        if (i != -1) {
            typeface = Typeface.create(typeface, i, (this.f502b & 2) != 0);
        }
        C0037a0 c0037a0 = this.f504d;
        WeakReference weakReference = this.f503c;
        if (c0037a0.l) {
            c0037a0.k = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                textView.setTypeface(typeface, c0037a0.i);
            }
        }
    }
}
