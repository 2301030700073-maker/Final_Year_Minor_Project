package defpackage;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import j$.util.Objects;

/* renamed from: Gr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0242Gr {

    /* renamed from: do, reason: not valid java name */
    public final InterfaceC0198Er f1266do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f1267do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f1268do;

    /* renamed from: Gr$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public OnBackInvokedCallback f1269do;

        /* renamed from: do, reason: not valid java name */
        public OnBackInvokedCallback mo766do(final InterfaceC0198Er interfaceC0198Er) {
            Objects.requireNonNull(interfaceC0198Er);
            return new OnBackInvokedCallback() { // from class: Fr
                @Override // android.window.OnBackInvokedCallback
                public final void onBackInvoked() {
                    InterfaceC0198Er.this.mo505if();
                }
            };
        }

        /* renamed from: for, reason: not valid java name */
        public void m767for(View view) {
            OnBackInvokedDispatcher findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (findOnBackInvokedDispatcher == null) {
                return;
            }
            findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f1269do);
            this.f1269do = null;
        }

        /* renamed from: if, reason: not valid java name */
        public void m768if(InterfaceC0198Er interfaceC0198Er, View view, boolean z) {
            OnBackInvokedDispatcher findOnBackInvokedDispatcher;
            if (this.f1269do == null && (findOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback mo766do = mo766do(interfaceC0198Er);
                this.f1269do = mo766do;
                findOnBackInvokedDispatcher.registerOnBackInvokedCallback(z ? 1000000 : 0, mo766do);
            }
        }
    }

    /* renamed from: Gr$if, reason: invalid class name */
    public static class Cif extends Cdo {

        /* renamed from: Gr$if$do, reason: invalid class name */
        public class Cdo implements OnBackAnimationCallback {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InterfaceC0198Er f1270do;

            public Cdo(InterfaceC0198Er interfaceC0198Er) {
                this.f1270do = interfaceC0198Er;
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackCancelled() {
                if (Cif.this.f1269do != null) {
                    this.f1270do.mo506new();
                }
            }

            @Override // android.window.OnBackInvokedCallback
            public final void onBackInvoked() {
                this.f1270do.mo505if();
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackProgressed(BackEvent backEvent) {
                if (Cif.this.f1269do != null) {
                    this.f1270do.mo507try(new B4(backEvent));
                }
            }

            @Override // android.window.OnBackAnimationCallback
            public final void onBackStarted(BackEvent backEvent) {
                if (Cif.this.f1269do != null) {
                    this.f1270do.mo504do(new B4(backEvent));
                }
            }
        }

        @Override // defpackage.C0242Gr.Cdo
        /* renamed from: do */
        public final OnBackInvokedCallback mo766do(InterfaceC0198Er interfaceC0198Er) {
            return new Cdo(interfaceC0198Er);
        }
    }

    public <T extends View & InterfaceC0198Er> C0242Gr(T t) {
        T t2 = t;
        int i = Build.VERSION.SDK_INT;
        this.f1267do = i >= 34 ? new Cif() : i >= 33 ? new Cdo() : null;
        this.f1266do = t2;
        this.f1268do = t;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m765do(boolean z) {
        Cdo cdo = this.f1267do;
        if (cdo != null) {
            cdo.m768if(this.f1266do, this.f1268do, z);
        }
    }
}
