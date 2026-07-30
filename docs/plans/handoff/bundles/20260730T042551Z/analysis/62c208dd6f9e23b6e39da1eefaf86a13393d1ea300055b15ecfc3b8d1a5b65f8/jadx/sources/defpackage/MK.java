package defpackage;

import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.QK;

/* loaded from: classes.dex */
public final class MK extends QK.Cif<Boolean> {
    public MK() {
        super(R.id.tag_screen_reader_focusable, Boolean.class, 0, 28);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: case, reason: not valid java name */
    public final boolean mo1421case(Boolean bool, Boolean bool2) {
        return !QK.Cif.m1915do(bool, bool2);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: for, reason: not valid java name */
    public final void mo1422for(View view, Boolean bool) {
        QK.Cgoto.m1905break(view, bool.booleanValue());
    }

    @Override // defpackage.QK.Cif
    /* renamed from: if, reason: not valid java name */
    public final Boolean mo1423if(View view) {
        return Boolean.valueOf(QK.Cgoto.m1912new(view));
    }
}
