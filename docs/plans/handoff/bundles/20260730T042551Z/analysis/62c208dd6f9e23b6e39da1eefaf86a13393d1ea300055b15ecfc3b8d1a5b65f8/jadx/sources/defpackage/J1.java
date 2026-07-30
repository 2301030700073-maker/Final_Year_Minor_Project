package defpackage;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.app.Cfor;
import androidx.appcompat.app.Cnew;

/* loaded from: classes.dex */
public class J1 extends DialogC3196k9 implements InterfaceC3895w1 {

    /* renamed from: do, reason: not valid java name */
    public final I1 f1582do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AppCompatDelegateImpl f1583do;

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r2v2, types: [I1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public J1(android.content.Context r5, int r6) {
        /*
            r4 = this;
            r0 = 1
            r1 = 2130903423(0x7f03017f, float:1.7413664E38)
            if (r6 != 0) goto L15
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            android.content.res.Resources$Theme r3 = r5.getTheme()
            r3.resolveAttribute(r1, r2, r0)
            int r2 = r2.resourceId
            goto L16
        L15:
            r2 = r6
        L16:
            r4.<init>(r5, r2)
            I1 r2 = new I1
            r3 = r4
            androidx.appcompat.app.if r3 = (androidx.appcompat.app.Cif) r3
            r2.<init>()
            r4.f1582do = r2
            androidx.appcompat.app.for r2 = r4.m998case()
            if (r6 != 0) goto L37
            android.util.TypedValue r6 = new android.util.TypedValue
            r6.<init>()
            android.content.res.Resources$Theme r5 = r5.getTheme()
            r5.resolveAttribute(r1, r6, r0)
            int r6 = r6.resourceId
        L37:
            r5 = r2
            androidx.appcompat.app.AppCompatDelegateImpl r5 = (androidx.appcompat.app.AppCompatDelegateImpl) r5
            r5.f5260try = r6
            r2.mo3245final()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.J1.<init>(android.content.Context, int):void");
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m998case().mo3247for(view, layoutParams);
    }

    /* renamed from: case, reason: not valid java name */
    public final Cfor m998case() {
        if (this.f1583do == null) {
            Cnew.Cdo cdo = Cfor.f5341do;
            this.f1583do = new AppCompatDelegateImpl(getContext(), getWindow(), this, this);
        }
        return this.f1583do;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        super.dismiss();
        m998case().mo3260super();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return C0262Hp.m886if(this.f1582do, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: do, reason: not valid java name */
    public final void mo999do() {
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: else, reason: not valid java name */
    public final void mo1000else() {
    }

    @Override // android.app.Dialog
    public final <T extends View> T findViewById(int i) {
        return (T) m998case().mo3266try(i);
    }

    /* renamed from: goto, reason: not valid java name */
    final boolean m1001goto(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        m998case().mo3239catch();
    }

    @Override // defpackage.InterfaceC3895w1
    /* renamed from: new, reason: not valid java name */
    public final void mo1002new() {
    }

    @Override // defpackage.DialogC3196k9, android.app.Dialog
    public void onCreate(Bundle bundle) {
        m998case().mo3237break();
        super.onCreate(bundle);
        m998case().mo3245final();
    }

    @Override // defpackage.DialogC3196k9, android.app.Dialog
    public final void onStop() {
        super.onStop();
        m998case().mo3250import();
    }

    @Override // android.app.Dialog
    public final void setContentView(int i) {
        m998case().mo3257return(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        m998case().mo3244extends(charSequence);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        m998case().mo3258static(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m998case().mo3261switch(view, layoutParams);
    }

    @Override // android.app.Dialog
    public final void setTitle(int i) {
        super.setTitle(i);
        m998case().mo3244extends(getContext().getString(i));
    }
}
