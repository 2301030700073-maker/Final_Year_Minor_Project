package b.b.f;

import android.view.View;
import b.e.i.u;
import b.e.i.v;

/* loaded from: classes.dex */
public class k extends v {

    /* renamed from: a, reason: collision with root package name */
    public boolean f353a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f354b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l f355c;

    public k(l lVar) {
        this.f355c = lVar;
    }

    @Override // b.e.i.u
    public void a(View view) {
        int i = this.f354b + 1;
        this.f354b = i;
        if (i == this.f355c.f356a.size()) {
            u uVar = this.f355c.f359d;
            if (uVar != null) {
                uVar.a(null);
            }
            this.f354b = 0;
            this.f353a = false;
            this.f355c.e = false;
        }
    }

    @Override // b.e.i.v, b.e.i.u
    public void b(View view) {
        if (this.f353a) {
            return;
        }
        this.f353a = true;
        u uVar = this.f355c.f359d;
        if (uVar != null) {
            uVar.b(null);
        }
    }
}
