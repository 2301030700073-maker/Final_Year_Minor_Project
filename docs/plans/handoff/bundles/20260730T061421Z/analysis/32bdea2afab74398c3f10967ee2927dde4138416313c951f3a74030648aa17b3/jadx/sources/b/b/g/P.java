package b.b.g;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.appcompat.widget.AppCompatSpinner$DropdownPopup;

/* loaded from: classes.dex */
public class P extends AbstractViewOnTouchListenerC0067p0 {
    public final /* synthetic */ AppCompatSpinner$DropdownPopup j;
    public final /* synthetic */ X k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(X x, View view, AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup) {
        super(view);
        this.k = x;
        this.j = appCompatSpinner$DropdownPopup;
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    public b.b.f.m.G b() {
        return this.j;
    }

    @Override // b.b.g.AbstractViewOnTouchListenerC0067p0
    @SuppressLint({"SyntheticAccessor"})
    public boolean c() {
        if (this.k.getInternalPopup().b()) {
            return true;
        }
        this.k.b();
        return true;
    }
}
