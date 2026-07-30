package defpackage;

import android.view.View;
import androidx.appcompat.view.menu.Cgoto;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public final class FH implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Toolbar f1000do;

    public FH(Toolbar toolbar) {
        this.f1000do = toolbar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Toolbar.Ctry ctry = this.f1000do.f5934do;
        Cgoto cgoto = ctry == null ? null : ctry.f5964do;
        if (cgoto != null) {
            cgoto.collapseActionView();
        }
    }
}
