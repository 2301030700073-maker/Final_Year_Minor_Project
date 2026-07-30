package b.b.g;

import android.content.Context;
import android.view.View;
import com.android.systemui.shared.R;

/* renamed from: b.b.g.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0054j extends b.b.f.m.A {
    public final /* synthetic */ r m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0054j(r rVar, Context context, b.b.f.m.K k, View view) {
        super(context, k, view, false, R.attr.actionOverflowMenuStyle, 0);
        this.m = rVar;
        if (!k.B.g()) {
            View view2 = rVar.i;
            this.f = view2 == null ? (View) rVar.h : view2;
        }
        d(rVar.x);
    }

    @Override // b.b.f.m.A
    public void c() {
        r rVar = this.m;
        rVar.u = null;
        rVar.y = 0;
        super.c();
    }
}
