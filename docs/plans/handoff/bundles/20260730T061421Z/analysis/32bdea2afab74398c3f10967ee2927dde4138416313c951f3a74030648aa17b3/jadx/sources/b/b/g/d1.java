package b.b.g;

import android.view.View;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public class d1 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Toolbar f526a;

    public d1(Toolbar toolbar) {
        this.f526a = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        e1 e1Var = this.f526a.K;
        b.b.f.m.r rVar = e1Var == null ? null : e1Var.f529b;
        if (rVar != null) {
            rVar.collapseActionView();
        }
    }
}
