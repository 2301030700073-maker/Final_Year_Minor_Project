package b.b.g;

import android.view.View;

/* renamed from: b.b.g.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0036a implements b.e.i.u {

    /* renamed from: a, reason: collision with root package name */
    public boolean f505a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f506b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0038b f507c;

    public C0036a(AbstractC0038b abstractC0038b) {
        this.f507c = abstractC0038b;
    }

    @Override // b.e.i.u
    public void a(View view) {
        if (this.f505a) {
            return;
        }
        AbstractC0038b abstractC0038b = this.f507c;
        abstractC0038b.f = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f506b);
    }

    @Override // b.e.i.u
    public void b(View view) {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f505a = false;
    }

    @Override // b.e.i.u
    public void c(View view) {
        this.f505a = true;
    }
}
