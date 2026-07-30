package defpackage;

import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Cnew;

/* loaded from: classes.dex */
public final class IH implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final F f1479do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ Cnew f1480do;

    public IH(Cnew cnew) {
        this.f1480do = cnew;
        this.f1479do = new F(cnew.f6004do.getContext(), cnew.f6005do);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Cnew cnew = this.f1480do;
        Window.Callback callback = cnew.f6002do;
        if (callback == null || !cnew.f6012if) {
            return;
        }
        callback.onMenuItemSelected(0, this.f1479do);
    }
}
