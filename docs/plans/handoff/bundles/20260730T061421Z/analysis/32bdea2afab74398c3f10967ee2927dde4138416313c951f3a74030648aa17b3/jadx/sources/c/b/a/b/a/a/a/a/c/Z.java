package c.b.a.b.a.a.a.a.c;

import android.os.Bundle;
import android.util.Log;

/* loaded from: classes.dex */
public class Z implements InterfaceC0363b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c.b.a.b.a.a.a.a.b.a f2427a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b0 f2428b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d0 f2429c;

    public Z(d0 d0Var, c.b.a.b.a.a.a.a.b.a aVar, b0 b0Var) {
        this.f2429c = d0Var;
        this.f2427a = aVar;
        this.f2428b = b0Var;
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0363b
    public void a(Bundle bundle) {
        try {
            d0.b(this.f2429c, this.f2427a.d(bundle), this.f2428b);
        } catch (Throwable th) {
            Log.e("AiAiSuggestUi", "Failed to handleContentData", th);
        }
    }
}
