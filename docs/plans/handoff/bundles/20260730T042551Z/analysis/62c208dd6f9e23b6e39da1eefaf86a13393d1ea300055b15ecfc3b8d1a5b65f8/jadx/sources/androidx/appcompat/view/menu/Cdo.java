package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.appcompat.view.menu.Cbreak;
import com.joeykrim.rootcheck.R;

/* renamed from: androidx.appcompat.view.menu.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo implements Cbreak {

    /* renamed from: do, reason: not valid java name */
    public final Context f5448do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final LayoutInflater f5449do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cbreak.Cdo f5450do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccase f5451do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Ccatch f5452do;

    /* renamed from: if, reason: not valid java name */
    public Context f5454if;

    /* renamed from: try, reason: not valid java name */
    public int f5456try;

    /* renamed from: for, reason: not valid java name */
    public final int f5453for = R.layout.abc_action_menu_layout;

    /* renamed from: new, reason: not valid java name */
    public final int f5455new = R.layout.abc_action_menu_item_layout;

    public Cdo(Context context) {
        this.f5448do = context;
        this.f5449do = LayoutInflater.from(context);
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: break */
    public final void mo3316break(Cbreak.Cdo cdo) {
        this.f5450do = cdo;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: catch */
    public final boolean mo978catch(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    /* renamed from: const */
    public final boolean mo979const(Cgoto cgoto) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.Cbreak
    public final int getId() {
        return this.f5456try;
    }
}
