package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.QK;

/* loaded from: classes.dex */
public final class NK extends QK.Cif<CharSequence> {
    public NK() {
        super(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: case */
    public final boolean mo1421case(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: for */
    public final void mo1422for(View view, CharSequence charSequence) {
        QK.Cgoto.m1910goto(view, charSequence);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: if */
    public final CharSequence mo1423if(View view) {
        return QK.Cgoto.m1911if(view);
    }
}
