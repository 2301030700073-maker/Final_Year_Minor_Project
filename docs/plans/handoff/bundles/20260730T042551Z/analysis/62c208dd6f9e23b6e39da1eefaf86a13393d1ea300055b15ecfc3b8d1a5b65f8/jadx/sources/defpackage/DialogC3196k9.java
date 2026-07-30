package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.Cgoto;
import androidx.lifecycle.Ctry;
import androidx.savedstate.Cdo;

/* renamed from: k9, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogC3196k9 extends Dialog implements InterfaceC2714eq, InterfaceC0355Lv, InterfaceC3552qB {

    /* renamed from: do, reason: not valid java name */
    public final OnBackPressedDispatcher f13876do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cgoto f13877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3493pB f13878do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogC3196k9(Context context, int i) {
        super(context, i);
        C0173Do.m401try(context, "context");
        this.f13878do = new C3493pB(this);
        this.f13876do = new OnBackPressedDispatcher(new RunnableC3137j9(this, 0));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m7216try(DialogC3196k9 dialogC3196k9) {
        C0173Do.m401try(dialogC3196k9, "this$0");
        super.onBackPressed();
    }

    @Override // defpackage.InterfaceC0355Lv
    /* renamed from: for */
    public final OnBackPressedDispatcher mo1358for() {
        return this.f13876do;
    }

    @Override // defpackage.InterfaceC2714eq
    public final Ctry getLifecycle() {
        Cgoto cgoto = this.f13877do;
        if (cgoto != null) {
            return cgoto;
        }
        Cgoto cgoto2 = new Cgoto(this);
        this.f13877do = cgoto2;
        return cgoto2;
    }

    @Override // defpackage.InterfaceC3552qB
    public final Cdo getSavedStateRegistry() {
        return this.f13878do.f14891do;
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f13876do.m3198if();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            C0173Do.m399new(onBackInvokedDispatcher, "onBackInvokedDispatcher");
            OnBackPressedDispatcher onBackPressedDispatcher = this.f13876do;
            onBackPressedDispatcher.getClass();
            onBackPressedDispatcher.f5125do = onBackInvokedDispatcher;
            onBackPressedDispatcher.m3197for(onBackPressedDispatcher.f5128if);
        }
        this.f13878do.m7789if(bundle);
        Cgoto cgoto = this.f13877do;
        if (cgoto == null) {
            cgoto = new Cgoto(this);
            this.f13877do = cgoto;
        }
        cgoto.m4258case(Ctry.Cdo.ON_CREATE);
    }

    @Override // android.app.Dialog
    public final Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        C0173Do.m399new(onSaveInstanceState, "super.onSaveInstanceState()");
        this.f13878do.m7788for(onSaveInstanceState);
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        Cgoto cgoto = this.f13877do;
        if (cgoto == null) {
            cgoto = new Cgoto(this);
            this.f13877do = cgoto;
        }
        cgoto.m4258case(Ctry.Cdo.ON_RESUME);
    }

    @Override // android.app.Dialog
    public void onStop() {
        Cgoto cgoto = this.f13877do;
        if (cgoto == null) {
            cgoto = new Cgoto(this);
            this.f13877do = cgoto;
        }
        cgoto.m4258case(Ctry.Cdo.ON_DESTROY);
        this.f13877do = null;
        super.onStop();
    }
}
