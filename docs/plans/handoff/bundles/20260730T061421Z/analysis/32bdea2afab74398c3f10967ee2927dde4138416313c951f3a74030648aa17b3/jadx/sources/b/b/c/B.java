package b.b.c;

import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class B implements Window.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Window.Callback f246a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ J f247b;

    public B(J j, Window.Callback callback) {
        this.f247b = j;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f246a = callback;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ActionMode a(android.view.ActionMode.Callback r9) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.B.a(android.view.ActionMode$Callback):android.view.ActionMode");
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f246a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.f247b.x(keyEvent) || this.f246a.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (r4 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:9:? A[RETURN, SYNTHETIC] */
    @Override // android.view.Window.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyShortcutEvent(android.view.KeyEvent r5) {
        /*
            r4 = this;
            android.view.Window$Callback r0 = r4.f246a
            boolean r0 = r0.dispatchKeyShortcutEvent(r5)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L4f
            b.b.c.J r4 = r4.f247b
            int r0 = r5.getKeyCode()
            r4.G()
            b.b.c.c r3 = r4.h
            if (r3 == 0) goto L1f
            boolean r0 = r3.f(r0, r5)
            if (r0 == 0) goto L1f
        L1d:
            r4 = r2
            goto L4d
        L1f:
            b.b.c.H r0 = r4.G
            if (r0 == 0) goto L34
            int r3 = r5.getKeyCode()
            boolean r0 = r4.L(r0, r3, r5, r2)
            if (r0 == 0) goto L34
            b.b.c.H r4 = r4.G
            if (r4 == 0) goto L1d
            r4.l = r2
            goto L1d
        L34:
            b.b.c.H r0 = r4.G
            if (r0 != 0) goto L4c
            b.b.c.H r0 = r4.E(r1)
            r4.M(r0, r5)
            int r3 = r5.getKeyCode()
            boolean r4 = r4.L(r0, r3, r5, r2)
            r0.k = r1
            if (r4 == 0) goto L4c
            goto L1d
        L4c:
            r4 = r1
        L4d:
            if (r4 == 0) goto L50
        L4f:
            r1 = r2
        L50:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.c.B.dispatchKeyShortcutEvent(android.view.KeyEvent):boolean");
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f246a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f246a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f246a.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        this.f246a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        this.f246a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
        this.f246a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0 || (menu instanceof b.b.f.m.o)) {
            return this.f246a.onCreatePanelMenu(i, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i) {
        return this.f246a.onCreatePanelView(i);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f246a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return this.f246a.onMenuItemSelected(i, menuItem);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        this.f246a.onMenuOpened(i, menu);
        J j = this.f247b;
        Objects.requireNonNull(j);
        if (i == 108) {
            j.G();
            AbstractC0004c abstractC0004c = j.h;
            if (abstractC0004c != null) {
                abstractC0004c.b(true);
            }
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        this.f246a.onPanelClosed(i, menu);
        J j = this.f247b;
        Objects.requireNonNull(j);
        if (i == 108) {
            j.G();
            AbstractC0004c abstractC0004c = j.h;
            if (abstractC0004c != null) {
                abstractC0004c.b(false);
                return;
            }
            return;
        }
        if (i == 0) {
            H E = j.E(i);
            if (E.m) {
                j.v(E, false);
            }
        }
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z) {
        this.f246a.onPointerCaptureChanged(z);
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        b.b.f.m.o oVar = menu instanceof b.b.f.m.o ? (b.b.f.m.o) menu : null;
        if (i == 0 && oVar == null) {
            return false;
        }
        if (oVar != null) {
            oVar.y = true;
        }
        boolean onPreparePanel = this.f246a.onPreparePanel(i, view, menu);
        if (oVar != null) {
            oVar.y = false;
        }
        return onPreparePanel;
    }

    @Override // android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List list, Menu menu, int i) {
        b.b.f.m.o oVar;
        H E = this.f247b.E(0);
        if (E == null || (oVar = E.h) == null) {
            this.f246a.onProvideKeyboardShortcuts(list, menu, i);
        } else {
            this.f246a.onProvideKeyboardShortcuts(list, oVar, i);
        }
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(SearchEvent searchEvent) {
        return this.f246a.onSearchRequested(searchEvent);
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f246a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        this.f246a.onWindowFocusChanged(z);
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
        return (this.f247b.s && i == 0) ? a(callback) : this.f246a.onWindowStartingActionMode(callback, i);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        return this.f246a.onSearchRequested();
    }
}
