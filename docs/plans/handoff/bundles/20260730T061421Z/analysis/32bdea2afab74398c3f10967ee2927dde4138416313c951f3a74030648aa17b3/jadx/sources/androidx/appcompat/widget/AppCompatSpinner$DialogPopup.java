package androidx.appcompat.widget;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import android.widget.ListView;
import b.b.c.C0010i;
import b.b.c.C0014m;
import b.b.c.DialogInterfaceC0015n;
import b.b.g.X;

/* loaded from: classes.dex */
public class AppCompatSpinner$DialogPopup implements AppCompatSpinner$SpinnerPopup, DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public ListAdapter f49a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f50b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ X f51c;
    public DialogInterfaceC0015n mPopup;

    public AppCompatSpinner$DialogPopup(X x) {
        this.f51c = x;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void a(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public boolean b() {
        DialogInterfaceC0015n dialogInterfaceC0015n = this.mPopup;
        if (dialogInterfaceC0015n != null) {
            return dialogInterfaceC0015n.isShowing();
        }
        return false;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int c() {
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void d(int i, int i2) {
        if (this.f49a == null) {
            return;
        }
        C0014m c0014m = new C0014m(this.f51c.getPopupContext());
        CharSequence charSequence = this.f50b;
        if (charSequence != null) {
            c0014m.f310a.f = charSequence;
        }
        ListAdapter listAdapter = this.f49a;
        int selectedItemPosition = this.f51c.getSelectedItemPosition();
        C0010i c0010i = c0014m.f310a;
        c0010i.r = listAdapter;
        c0010i.s = this;
        c0010i.z = selectedItemPosition;
        c0010i.y = true;
        DialogInterfaceC0015n a2 = c0014m.a();
        this.mPopup = a2;
        ListView listView = a2.f312c.g;
        listView.setTextDirection(i);
        listView.setTextAlignment(i2);
        this.mPopup.show();
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void dismiss() {
        DialogInterfaceC0015n dialogInterfaceC0015n = this.mPopup;
        if (dialogInterfaceC0015n != null) {
            dialogInterfaceC0015n.dismiss();
            this.mPopup = null;
        }
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public int g() {
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public Drawable i() {
        return null;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public CharSequence j() {
        return this.f50b;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void l(CharSequence charSequence) {
        this.f50b = charSequence;
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void m(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void n(int i) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void o(ListAdapter listAdapter) {
        this.f49a = listAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f51c.setSelection(i);
        if (this.f51c.getOnItemClickListener() != null) {
            this.f51c.performItemClick(null, i, this.f49a.getItemId(i));
        }
        DialogInterfaceC0015n dialogInterfaceC0015n = this.mPopup;
        if (dialogInterfaceC0015n != null) {
            dialogInterfaceC0015n.dismiss();
            this.mPopup = null;
        }
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner$SpinnerPopup
    public void p(int i) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }
}
