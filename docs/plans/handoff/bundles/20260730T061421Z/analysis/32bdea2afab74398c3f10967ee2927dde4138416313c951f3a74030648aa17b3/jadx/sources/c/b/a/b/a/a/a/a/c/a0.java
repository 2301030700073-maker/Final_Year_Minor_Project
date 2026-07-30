package c.b.a.b.a.a.a.a.c;

import android.os.Bundle;
import android.util.Log;
import c.b.a.b.a.a.a.a.a.a.C0357b;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.Objects;

/* loaded from: classes.dex */
public class a0 implements InterfaceC0363b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0357b f2434a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c.b.a.b.a.a.a.a.b.a f2435b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ c0 f2436c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f2437d;
    public final /* synthetic */ d0 e;

    public a0(d0 d0Var, C0357b c0357b, c.b.a.b.a.a.a.a.b.a aVar, c0 c0Var, boolean z) {
        this.e = d0Var;
        this.f2434a = c0357b;
        this.f2435b = aVar;
        this.f2436c = c0Var;
        this.f2437d = z;
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0363b
    public void a(Bundle bundle) {
        try {
            d0 d0Var = this.e;
            C0357b c0357b = this.f2434a;
            Objects.requireNonNull(this.f2435b);
            bundle.setClassLoader(EntitiesData.class.getClassLoader());
            d0.a(d0Var, c0357b, (EntitiesData) bundle.getParcelable("EntitiesData"), this.f2436c, this.f2437d);
        } catch (Throwable th) {
            Log.e("AiAiSuggestUi", "Failed to handleEntitiesData", th);
        }
    }
}
