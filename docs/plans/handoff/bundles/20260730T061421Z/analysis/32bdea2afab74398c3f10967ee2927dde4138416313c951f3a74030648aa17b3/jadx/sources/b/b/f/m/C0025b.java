package b.b.f.m;

import androidx.appcompat.view.menu.ActionMenuItemView;
import b.b.g.AbstractViewOnTouchListenerC0067p0;
import b.b.g.C0054j;
import b.b.g.C0056k;

/* renamed from: b.b.f.m.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0025b extends AbstractViewOnTouchListenerC0067p0 {
    public final /* synthetic */ ActionMenuItemView j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0025b(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.j = actionMenuItemView;
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public G b() {
        C0054j c0054j;
        C0056k c0056k = this.j.i;
        if (c0056k == null || (c0054j = c0056k.f549a.u) == null) {
            return null;
        }
        return c0054j.a();
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public boolean c() {
        G b2;
        ActionMenuItemView actionMenuItemView = this.j;
        n nVar = actionMenuItemView.g;
        return nVar != null && nVar.a(actionMenuItemView.f32d) && (b2 = b()) != null && b2.b();
    }
}
