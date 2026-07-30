package b.e.g;

import android.content.Context;
import android.graphics.Typeface;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class b implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f707a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f708b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f709c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f710d;

    public b(Context context, a aVar, int i, String str) {
        this.f707a = context;
        this.f708b = aVar;
        this.f709c = i;
        this.f710d = str;
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        h a2 = i.a(this.f707a, this.f708b, this.f709c);
        Typeface typeface = a2.f720a;
        if (typeface != null) {
            i.f722a.b(this.f710d, typeface);
        }
        return a2;
    }
}
