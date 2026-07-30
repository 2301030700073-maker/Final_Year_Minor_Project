package b.e.c.c;

import android.graphics.Typeface;
import b.b.g.Z;

/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Typeface f685a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Z f686b;

    public e(Z z, Typeface typeface) {
        this.f686b = z;
        this.f685a = typeface;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f686b.c(this.f685a);
    }
}
