package b.b.g;

import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import androidx.appcompat.widget.AppCompatSpinner$DropdownPopup;

/* loaded from: classes.dex */
public class V implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f485a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner$DropdownPopup f486b;

    public V(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f486b = appCompatSpinner$DropdownPopup;
        this.f485a = onGlobalLayoutListener;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        ViewTreeObserver viewTreeObserver = this.f486b.G.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.f485a);
        }
    }
}
