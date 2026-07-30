package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.lang.ref.WeakReference;

/* renamed from: com.google.android.material.snackbar.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto {

    /* renamed from: do, reason: not valid java name */
    public static Cgoto f11504do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f11506do;

    /* renamed from: if, reason: not valid java name */
    public Cfor f11508if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f11507do = new Object();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Handler f11505do = new Handler(Looper.getMainLooper(), new Cdo());

    /* renamed from: com.google.android.material.snackbar.goto$do, reason: invalid class name */
    public class Cdo implements Handler.Callback {
        public Cdo() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            Cgoto cgoto = Cgoto.this;
            Cfor cfor = (Cfor) message.obj;
            synchronized (cgoto.f11507do) {
                if (cgoto.f11506do == cfor || cgoto.f11508if == cfor) {
                    cgoto.m5935do(cfor, 2);
                }
            }
            return true;
        }
    }

    /* renamed from: com.google.android.material.snackbar.goto$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f11510do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final WeakReference<Cif> f11511do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f11512do;

        public Cfor(int i, BaseTransientBottomBar.Cfor cfor) {
            this.f11511do = new WeakReference<>(cfor);
            this.f11510do = i;
        }
    }

    /* renamed from: com.google.android.material.snackbar.goto$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        void mo5925do(int i);

        /* renamed from: if */
        void mo5926if();
    }

    /* renamed from: if, reason: not valid java name */
    public static Cgoto m5933if() {
        if (f11504do == null) {
            f11504do = new Cgoto();
        }
        return f11504do;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m5934case(Cfor cfor) {
        int i = cfor.f11510do;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED : 2750;
        }
        Handler handler = this.f11505do;
        handler.removeCallbacksAndMessages(cfor);
        handler.sendMessageDelayed(Message.obtain(handler, 0, cfor), i);
    }

    /* renamed from: do, reason: not valid java name */
    public final boolean m5935do(Cfor cfor, int i) {
        Cif cif = cfor.f11511do.get();
        if (cif == null) {
            return false;
        }
        this.f11505do.removeCallbacksAndMessages(cfor);
        cif.mo5925do(i);
        return true;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m5936for(BaseTransientBottomBar.Cfor cfor) {
        Cfor cfor2 = this.f11506do;
        if (cfor2 != null) {
            return cfor != null && cfor2.f11511do.get() == cfor;
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m5937new(BaseTransientBottomBar.Cfor cfor) {
        synchronized (this.f11507do) {
            if (m5936for(cfor)) {
                Cfor cfor2 = this.f11506do;
                if (!cfor2.f11512do) {
                    cfor2.f11512do = true;
                    this.f11505do.removeCallbacksAndMessages(cfor2);
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m5938try(BaseTransientBottomBar.Cfor cfor) {
        synchronized (this.f11507do) {
            if (m5936for(cfor)) {
                Cfor cfor2 = this.f11506do;
                if (cfor2.f11512do) {
                    cfor2.f11512do = false;
                    m5934case(cfor2);
                }
            }
        }
    }
}
