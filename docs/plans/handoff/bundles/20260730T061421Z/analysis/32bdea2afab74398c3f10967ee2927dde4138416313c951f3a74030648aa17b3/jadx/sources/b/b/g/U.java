package b.b.g;

import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatSpinner$DropdownPopup;
import java.util.Objects;

/* loaded from: classes.dex */
public class U implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner$DropdownPopup f484a;

    public U(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        this.f484a = appCompatSpinner$DropdownPopup;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup = this.f484a;
        X x = appCompatSpinner$DropdownPopup.G;
        Objects.requireNonNull(appCompatSpinner$DropdownPopup);
        if (!(b.e.i.q.s(x) && x.getGlobalVisibleRect(appCompatSpinner$DropdownPopup.E))) {
            this.f484a.dismiss();
        } else {
            this.f484a.u();
            super/*b.b.g.y0*/.f();
        }
    }
}
