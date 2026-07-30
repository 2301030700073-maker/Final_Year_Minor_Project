package defpackage;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;

/* renamed from: iu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2952iu extends Ccase {
    public C2952iu(Context context) {
        super(context);
    }

    @Override // androidx.appcompat.view.menu.Ccase, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        Cgoto mo3329do = mo3329do(i, i2, i3, charSequence);
        C3475ou c3475ou = new C3475ou(((Ccase) this).f5403do, this, mo3329do);
        mo3329do.f5476do = c3475ou;
        c3475ou.setHeaderTitle(mo3329do.f5477do);
        return c3475ou;
    }
}
