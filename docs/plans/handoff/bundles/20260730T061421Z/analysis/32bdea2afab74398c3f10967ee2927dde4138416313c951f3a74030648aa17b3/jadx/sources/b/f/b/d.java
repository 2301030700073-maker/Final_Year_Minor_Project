package b.f.b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import b.e.i.C0088b;
import b.e.i.E.g;
import b.e.i.q;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class d extends C0088b {
    public static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, RecyclerView.UNDEFINED_DURATION, RecyclerView.UNDEFINED_DURATION);
    public static final a NODE_ADAPTER = new a();
    public static final b SPARSE_VALUES_ADAPTER = new b();
    public final View mHost;
    public final AccessibilityManager mManager;
    public c mNodeProvider;
    public final Rect mTempScreenRect = new Rect();
    public final Rect mTempParentRect = new Rect();
    public final Rect mTempVisibleRect = new Rect();
    public final int[] mTempGlobalRect = new int[2];
    public int mAccessibilityFocusedVirtualViewId = RecyclerView.UNDEFINED_DURATION;
    public int mKeyboardFocusedVirtualViewId = RecyclerView.UNDEFINED_DURATION;
    public int mHoveredVirtualViewId = RecyclerView.UNDEFINED_DURATION;

    public d(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mHost = view;
        this.mManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (q.g(view) == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    public final boolean clearAccessibilityFocus(int i) {
        if (this.mAccessibilityFocusedVirtualViewId != i) {
            return false;
        }
        this.mAccessibilityFocusedVirtualViewId = RecyclerView.UNDEFINED_DURATION;
        this.mHost.invalidate();
        sendEventForVirtualView(i, 65536);
        return true;
    }

    public final boolean clearKeyboardFocusForVirtualView(int i) {
        if (this.mKeyboardFocusedVirtualViewId != i) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = RecyclerView.UNDEFINED_DURATION;
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final b.e.i.E.d createNodeForChild(int i) {
        b.e.i.E.d dVar = new b.e.i.E.d(AccessibilityNodeInfo.obtain());
        dVar.f753a.setEnabled(true);
        dVar.f753a.setFocusable(true);
        dVar.f753a.setClassName("android.view.View");
        dVar.f753a.setBoundsInParent(INVALID_PARENT_BOUNDS);
        dVar.f753a.setBoundsInScreen(INVALID_PARENT_BOUNDS);
        View view = this.mHost;
        dVar.f754b = -1;
        dVar.f753a.setParent(view);
        onPopulateNodeForVirtualView(i, dVar);
        if (dVar.g() == null && dVar.e() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        dVar.f753a.getBoundsInParent(this.mTempParentRect);
        if (this.mTempParentRect.equals(INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = dVar.f753a.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        dVar.f753a.setPackageName(this.mHost.getContext().getPackageName());
        View view2 = this.mHost;
        dVar.f755c = i;
        dVar.f753a.setSource(view2, i);
        boolean z = false;
        if (this.mAccessibilityFocusedVirtualViewId == i) {
            dVar.f753a.setAccessibilityFocused(true);
            dVar.f753a.addAction(128);
        } else {
            dVar.f753a.setAccessibilityFocused(false);
            dVar.f753a.addAction(64);
        }
        boolean z2 = this.mKeyboardFocusedVirtualViewId == i;
        if (z2) {
            dVar.f753a.addAction(2);
        } else if (dVar.f753a.isFocusable()) {
            dVar.f753a.addAction(1);
        }
        dVar.f753a.setFocused(z2);
        this.mHost.getLocationOnScreen(this.mTempGlobalRect);
        dVar.f753a.getBoundsInScreen(this.mTempScreenRect);
        if (this.mTempScreenRect.equals(INVALID_PARENT_BOUNDS)) {
            dVar.f753a.getBoundsInParent(this.mTempScreenRect);
            if (dVar.f754b != -1) {
                b.e.i.E.d dVar2 = new b.e.i.E.d(AccessibilityNodeInfo.obtain());
                for (int i2 = dVar.f754b; i2 != -1; i2 = dVar2.f754b) {
                    View view3 = this.mHost;
                    dVar2.f754b = -1;
                    dVar2.f753a.setParent(view3, -1);
                    dVar2.f753a.setBoundsInParent(INVALID_PARENT_BOUNDS);
                    onPopulateNodeForVirtualView(i2, dVar2);
                    dVar2.f753a.getBoundsInParent(this.mTempParentRect);
                    Rect rect = this.mTempScreenRect;
                    Rect rect2 = this.mTempParentRect;
                    rect.offset(rect2.left, rect2.top);
                }
                dVar2.f753a.recycle();
            }
            this.mTempScreenRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
        }
        if (this.mHost.getLocalVisibleRect(this.mTempVisibleRect)) {
            this.mTempVisibleRect.offset(this.mTempGlobalRect[0] - this.mHost.getScrollX(), this.mTempGlobalRect[1] - this.mHost.getScrollY());
            if (this.mTempScreenRect.intersect(this.mTempVisibleRect)) {
                dVar.f753a.setBoundsInScreen(this.mTempScreenRect);
                Rect rect3 = this.mTempScreenRect;
                if (rect3 != null && !rect3.isEmpty() && this.mHost.getWindowVisibility() == 0) {
                    Object parent = this.mHost.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view4 = (View) parent;
                            if (view4.getAlpha() <= RecentsState.NO_OFFSET || view4.getVisibility() != 0) {
                                break;
                            }
                            parent = view4.getParent();
                        } else if (parent != null) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    dVar.f753a.setVisibleToUser(true);
                }
            }
        }
        return dVar;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.mManager.isEnabled() || !this.mManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            int i2 = this.mHoveredVirtualViewId;
            if (i2 != virtualViewAt) {
                this.mHoveredVirtualViewId = virtualViewAt;
                sendEventForVirtualView(virtualViewAt, 128);
                sendEventForVirtualView(i2, 256);
            }
            return virtualViewAt != Integer.MIN_VALUE;
        }
        if (action != 10 || (i = this.mHoveredVirtualViewId) == Integer.MIN_VALUE) {
            return false;
        }
        if (i != Integer.MIN_VALUE) {
            this.mHoveredVirtualViewId = RecyclerView.UNDEFINED_DURATION;
            sendEventForVirtualView(RecyclerView.UNDEFINED_DURATION, 128);
            sendEventForVirtualView(i, 256);
        }
        return true;
    }

    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return moveFocus(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return moveFocus(1, null);
            }
            return false;
        }
        int i2 = 66;
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    if (keyCode == 19) {
                        i2 = 33;
                    } else if (keyCode == 21) {
                        i2 = 17;
                    } else if (keyCode != 22) {
                        i2 = 130;
                    }
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z = false;
                    while (i < repeatCount && moveFocus(i2, null)) {
                        i++;
                        z = true;
                    }
                    return z;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        int i3 = this.mKeyboardFocusedVirtualViewId;
        if (i3 != Integer.MIN_VALUE) {
            onPerformActionForVirtualView(i3, 16, null);
        }
        return true;
    }

    @Override // b.e.i.C0088b
    public g getAccessibilityNodeProvider(View view) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new c(this);
        }
        return this.mNodeProvider;
    }

    public abstract int getVirtualViewAt(float f, float f2);

    public abstract void getVisibleVirtualViews(List list);

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0144, code lost:
    
        if (r13 < ((r17 * r17) + ((r12 * 13) * r12))) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0150 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean moveFocus(int r20, android.graphics.Rect r21) {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.f.b.d.moveFocus(int, android.graphics.Rect):boolean");
    }

    public b.e.i.E.d obtainAccessibilityNodeInfo(int i) {
        if (i != -1) {
            return createNodeForChild(i);
        }
        b.e.i.E.d dVar = new b.e.i.E.d(AccessibilityNodeInfo.obtain(this.mHost));
        q.w(this.mHost, dVar);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (dVar.f753a.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            dVar.f753a.addChild(this.mHost, ((Integer) arrayList.get(i2)).intValue());
        }
        return dVar;
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // b.e.i.C0088b
    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
    }

    public abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    public void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
    }

    public abstract void onPopulateNodeForVirtualView(int i, b.e.i.E.d dVar);

    public final boolean requestKeyboardFocusForVirtualView(int i) {
        int i2;
        if ((!this.mHost.isFocused() && !this.mHost.requestFocus()) || (i2 = this.mKeyboardFocusedVirtualViewId) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.mKeyboardFocusedVirtualViewId = i;
        sendEventForVirtualView(i, 8);
        return true;
    }

    public final boolean sendEventForVirtualView(int i, int i2) {
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mHost.getParent()) == null) {
            return false;
        }
        if (i != -1) {
            obtain = AccessibilityEvent.obtain(i2);
            b.e.i.E.d obtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(i);
            obtain.getText().add(obtainAccessibilityNodeInfo.g());
            obtain.setContentDescription(obtainAccessibilityNodeInfo.e());
            obtain.setScrollable(obtainAccessibilityNodeInfo.f753a.isScrollable());
            obtain.setPassword(obtainAccessibilityNodeInfo.f753a.isPassword());
            obtain.setEnabled(obtainAccessibilityNodeInfo.f753a.isEnabled());
            obtain.setChecked(obtainAccessibilityNodeInfo.f753a.isChecked());
            onPopulateEventForVirtualView(i, obtain);
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(obtainAccessibilityNodeInfo.f753a.getClassName());
            obtain.setSource(this.mHost, i);
            obtain.setPackageName(this.mHost.getContext().getPackageName());
        } else {
            obtain = AccessibilityEvent.obtain(i2);
            this.mHost.onInitializeAccessibilityEvent(obtain);
        }
        return parent.requestSendAccessibilityEvent(this.mHost, obtain);
    }
}
