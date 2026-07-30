package defpackage;

import android.view.View;
import androidx.appcompat.app.AppCompatDelegateImpl;
import defpackage.QK;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class E1 extends C0820cd {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ AppCompatDelegateImpl f714do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E1(AppCompatDelegateImpl appCompatDelegateImpl) {
        super(1);
        this.f714do = appCompatDelegateImpl;
    }

    @Override // defpackage.InterfaceC3503pL
    /* renamed from: do */
    public final void mo325do() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f714do;
        appCompatDelegateImpl.f5240do.setAlpha(1.0f);
        appCompatDelegateImpl.f5243do.m7566new(null);
        appCompatDelegateImpl.f5243do = null;
    }

    @Override // defpackage.C0820cd, defpackage.InterfaceC3503pL
    /* renamed from: for */
    public final void mo326for() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f714do;
        appCompatDelegateImpl.f5240do.setVisibility(0);
        if (appCompatDelegateImpl.f5240do.getParent() instanceof View) {
            View view = (View) appCompatDelegateImpl.f5240do.getParent();
            WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
            QK.Cfor.m1903for(view);
        }
    }
}
