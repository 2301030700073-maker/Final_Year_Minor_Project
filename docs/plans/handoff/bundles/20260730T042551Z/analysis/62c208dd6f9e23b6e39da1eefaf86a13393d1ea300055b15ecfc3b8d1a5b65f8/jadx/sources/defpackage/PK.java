package defpackage;

import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.QK;

/* loaded from: classes.dex */
public final class PK extends QK.Cif<Boolean> {
    public PK() {
        super(R.id.tag_accessibility_heading, Boolean.class, 0, 28);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: case */
    public final boolean mo1421case(Boolean bool, Boolean bool2) {
        return !QK.Cif.m1915do(bool, bool2);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: for */
    public final void mo1422for(View view, Boolean bool) {
        QK.Cgoto.m1908else(view, bool.booleanValue());
    }

    @Override // defpackage.QK.Cif
    /* renamed from: if */
    public final Boolean mo1423if(View view) {
        return Boolean.valueOf(QK.Cgoto.m1909for(view));
    }
}
