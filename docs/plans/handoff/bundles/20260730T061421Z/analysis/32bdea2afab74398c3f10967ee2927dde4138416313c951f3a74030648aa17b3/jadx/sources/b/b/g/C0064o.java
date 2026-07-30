package b.b.g;

import android.content.Context;
import android.view.View;
import com.android.systemui.shared.R;

/* renamed from: b.b.g.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0064o extends b.b.f.m.A {
    public final /* synthetic */ r m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0064o(r rVar, Context context, b.b.f.m.o oVar, View view, boolean z) {
        super(context, oVar, view, z, R.attr.actionOverflowMenuStyle, 0);
        this.m = rVar;
        this.g = 8388613;
        d(rVar.x);
    }

    @Override // b.b.f.m.A
    public void c() {
        b.b.f.m.o oVar = this.m.f575c;
        if (oVar != null) {
            oVar.c(true);
        }
        this.m.t = null;
        super.c();
    }
}
