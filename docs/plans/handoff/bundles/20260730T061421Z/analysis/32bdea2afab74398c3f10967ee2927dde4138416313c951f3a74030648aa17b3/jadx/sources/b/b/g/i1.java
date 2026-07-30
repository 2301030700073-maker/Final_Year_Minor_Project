package b.b.g;

import android.R;
import android.view.View;
import android.view.Window;
import b.b.f.m.C0024a;

/* loaded from: classes.dex */
public class i1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final C0024a f540a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k1 f541b;

    public i1(k1 k1Var) {
        this.f541b = k1Var;
        this.f540a = new C0024a(this.f541b.f551a.getContext(), 0, R.id.home, 0, this.f541b.i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k1 k1Var = this.f541b;
        Window.Callback callback = k1Var.l;
        if (callback == null || !k1Var.m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f540a);
    }
}
