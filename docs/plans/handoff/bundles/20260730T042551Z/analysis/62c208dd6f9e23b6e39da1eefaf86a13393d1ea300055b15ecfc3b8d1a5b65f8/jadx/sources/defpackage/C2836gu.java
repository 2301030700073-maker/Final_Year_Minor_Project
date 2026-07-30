package defpackage;

import android.content.Context;
import android.view.SubMenu;
import androidx.appcompat.view.menu.Ccase;
import androidx.appcompat.view.menu.Cgoto;

/* renamed from: gu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2836gu extends Ccase {

    /* renamed from: do, reason: not valid java name */
    public final Class<?> f13226do;

    /* renamed from: if, reason: not valid java name */
    public final int f13227if;

    public C2836gu(Context context, Class<?> cls, int i) {
        super(context);
        this.f13226do = cls;
        this.f13227if = i;
    }

    @Override // androidx.appcompat.view.menu.Ccase, android.view.Menu
    public final SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f13226do.getSimpleName().concat(" does not support submenus"));
    }

    @Override // androidx.appcompat.view.menu.Ccase
    /* renamed from: do */
    public final Cgoto mo3329do(int i, int i2, int i3, CharSequence charSequence) {
        int size = size() + 1;
        int i4 = this.f13227if;
        if (size <= i4) {
            m3331extends();
            Cgoto mo3329do = super.mo3329do(i, i2, i3, charSequence);
            mo3329do.m3352goto(true);
            m3328default();
            return mo3329do;
        }
        String simpleName = this.f13226do.getSimpleName();
        StringBuilder sb = new StringBuilder("Maximum number of items supported by ");
        sb.append(simpleName);
        sb.append(" is ");
        sb.append(i4);
        sb.append(". Limit can be checked with ");
        throw new IllegalArgumentException(Creturn.m7984try(sb, simpleName, "#getMaxItemCount()"));
    }
}
