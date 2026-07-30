package c.b.a.b.b.j;

import android.content.Context;
import android.os.Handler;
import com.android.launcher3.util.Executors;

/* loaded from: classes.dex */
public class d implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2582a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f2583b = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), this);

    /* renamed from: c, reason: collision with root package name */
    public c.b.a.c.c.e f2584c;

    public d(Context context) {
        this.f2582a = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0222, code lost:
    
        if ((r5 >= 0 ? r5 % r13 : (((r5 & androidx.recyclerview.widget.RecyclerView.FOREVER_NS) % r13) + ((androidx.recyclerview.widget.RecyclerView.FOREVER_NS % r13) + 1)) % r13) < r7) goto L92;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0185  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r21) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.b.b.j.d.handleMessage(android.os.Message):boolean");
    }
}
