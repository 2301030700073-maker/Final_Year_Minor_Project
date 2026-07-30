package b.b.g;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner$DropdownPopup;

/* loaded from: classes.dex */
public class T implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatSpinner$DropdownPopup f479a;

    public T(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup, X x) {
        this.f479a = appCompatSpinner$DropdownPopup;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f479a.G.setSelection(i);
        if (this.f479a.G.getOnItemClickListener() != null) {
            AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup = this.f479a;
            appCompatSpinner$DropdownPopup.G.performItemClick(view, i, appCompatSpinner$DropdownPopup.D.getItemId(i));
        }
        this.f479a.dismiss();
    }
}
