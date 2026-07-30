package defpackage;

import android.text.TextUtils;
import android.view.View;
import com.joeykrim.rootcheck.R;
import defpackage.QK;

/* loaded from: classes.dex */
public final class OK extends QK.Cif<CharSequence> {
    public OK() {
        super(R.id.tag_state_description, CharSequence.class, 64, 30);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: case */
    public final boolean mo1421case(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: for */
    public final void mo1422for(View view, CharSequence charSequence) {
        QK.Cbreak.m1868case(view, charSequence);
    }

    @Override // defpackage.QK.Cif
    /* renamed from: if */
    public final CharSequence mo1423if(View view) {
        return QK.Cbreak.m1871if(view);
    }
}
