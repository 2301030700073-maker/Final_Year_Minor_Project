package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.Cif;
import androidx.appcompat.view.menu.Cbreak;
import androidx.appcompat.view.menu.Cnew.Cdo;

/* renamed from: androidx.appcompat.view.menu.else, reason: invalid class name */
/* loaded from: classes.dex */
public final class Celse implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, Cbreak.Cdo {

    /* renamed from: do, reason: not valid java name */
    public Cif f5457do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Ccase f5458do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cnew f5459do;

    public Celse(Ccase ccase) {
        this.f5458do = ccase;
    }

    @Override // androidx.appcompat.view.menu.Cbreak.Cdo
    /* renamed from: for */
    public final void mo3279for(Ccase ccase, boolean z) {
        Cif cif;
        if ((z || ccase == this.f5458do) && (cif = this.f5457do) != null) {
            cif.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.Cbreak.Cdo
    /* renamed from: new */
    public final boolean mo3280new(Ccase ccase) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Cnew cnew = this.f5459do;
        if (cnew.f5531do == null) {
            cnew.f5531do = cnew.new Cdo();
        }
        this.f5458do.m3348while(cnew.f5531do.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f5459do.mo3319for(this.f5458do, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        Ccase ccase = this.f5458do;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f5457do.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f5457do.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                ccase.m3333for(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return ccase.performShortcut(i, keyEvent, 0);
    }
}
