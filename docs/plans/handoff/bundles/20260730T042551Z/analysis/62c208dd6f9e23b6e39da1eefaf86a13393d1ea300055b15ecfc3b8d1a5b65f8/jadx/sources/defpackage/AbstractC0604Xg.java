package defpackage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import com.facebook.internal.NativeProtocol;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* renamed from: Xg, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0604Xg extends Cimplements {

    /* renamed from: new, reason: not valid java name */
    public static final Rect f4541new = new Rect(Api.BaseClientBuilder.API_PRIORITY_OTHER, Api.BaseClientBuilder.API_PRIORITY_OTHER, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cfor f4543do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f4545do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AccessibilityManager f4546do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f4544do = new Rect();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Rect f4551if = new Rect();

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public final Rect f4549for = new Rect();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f4547do = new int[2];

    /* renamed from: do, reason: not valid java name */
    public int f4542do = Integer.MIN_VALUE;

    /* renamed from: if, reason: not valid java name */
    public int f4550if = Integer.MIN_VALUE;

    /* renamed from: for, reason: not valid java name */
    public int f4548for = Integer.MIN_VALUE;

    /* renamed from: Xg$do, reason: invalid class name */
    public class Cdo {
    }

    /* renamed from: Xg$for, reason: invalid class name */
    public class Cfor extends A {
        public Cfor() {
        }

        @Override // defpackage.A
        /* renamed from: do */
        public final C3893w mo0do(int i) {
            return new C3893w(AccessibilityNodeInfo.obtain(AbstractC0604Xg.this.m2853super(i).f16161do));
        }

        @Override // defpackage.A
        /* renamed from: for */
        public final boolean mo1for(int i, int i2, Bundle bundle) {
            int i3;
            AbstractC0604Xg abstractC0604Xg = AbstractC0604Xg.this;
            View view = abstractC0604Xg.f4545do;
            if (i == -1) {
                WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
                return view.performAccessibilityAction(i2, bundle);
            }
            boolean z = true;
            if (i2 == 1) {
                return abstractC0604Xg.m2851public(i);
            }
            if (i2 == 2) {
                return abstractC0604Xg.m2842break(i);
            }
            if (i2 == 64) {
                AccessibilityManager accessibilityManager = abstractC0604Xg.f4546do;
                if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled() && (i3 = abstractC0604Xg.f4542do) != i) {
                    if (i3 != Integer.MIN_VALUE) {
                        abstractC0604Xg.f4542do = Integer.MIN_VALUE;
                        abstractC0604Xg.f4545do.invalidate();
                        abstractC0604Xg.m2852return(i3, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
                    }
                    abstractC0604Xg.f4542do = i;
                    view.invalidate();
                    abstractC0604Xg.m2852return(i, 32768);
                }
                z = false;
            } else {
                if (i2 != 128) {
                    return abstractC0604Xg.mo2854throw(i, i2, bundle);
                }
                if (abstractC0604Xg.f4542do == i) {
                    abstractC0604Xg.f4542do = Integer.MIN_VALUE;
                    view.invalidate();
                    abstractC0604Xg.m2852return(i, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
                }
                z = false;
            }
            return z;
        }

        @Override // defpackage.A
        /* renamed from: if */
        public final C3893w mo2if(int i) {
            AbstractC0604Xg abstractC0604Xg = AbstractC0604Xg.this;
            int i2 = i == 2 ? abstractC0604Xg.f4542do : abstractC0604Xg.f4550if;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo0do(i2);
        }
    }

    /* renamed from: Xg$if, reason: invalid class name */
    public class Cif {
    }

    static {
        new Cdo();
        new Cif();
    }

    public AbstractC0604Xg(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f4545do = view;
        this.f4546do = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final boolean m2842break(int i) {
        if (this.f4550if != i) {
            return false;
        }
        this.f4550if = Integer.MIN_VALUE;
        mo2850native(i, false);
        m2852return(i, 8);
        return true;
    }

    /* renamed from: catch, reason: not valid java name */
    public final AccessibilityEvent m2843catch(int i, int i2) {
        View view = this.f4545do;
        if (i == -1) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(obtain);
            return obtain;
        }
        AccessibilityEvent obtain2 = AccessibilityEvent.obtain(i2);
        C3893w m2853super = m2853super(i);
        obtain2.getText().add(m2853super.m8501else());
        AccessibilityNodeInfo accessibilityNodeInfo = m2853super.f16161do;
        obtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        obtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        obtain2.setPassword(accessibilityNodeInfo.isPassword());
        obtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        obtain2.setChecked(accessibilityNodeInfo.isChecked());
        if (obtain2.getText().isEmpty() && obtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain2.setClassName(accessibilityNodeInfo.getClassName());
        obtain2.setSource(view, i);
        obtain2.setPackageName(view.getContext().getPackageName());
        return obtain2;
    }

    /* renamed from: class, reason: not valid java name */
    public final C3893w m2844class(int i) {
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        C3893w c3893w = new C3893w(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        c3893w.m8495break("android.view.View");
        Rect rect = f4541new;
        c3893w.m8507this(rect);
        obtain.setBoundsInScreen(rect);
        c3893w.f16160do = -1;
        View view = this.f4545do;
        obtain.setParent(view);
        mo2849import(i, c3893w);
        if (c3893w.m8501else() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f4551if;
        c3893w.m8496case(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(view.getContext().getPackageName());
        c3893w.f16162if = i;
        obtain.setSource(view, i);
        boolean z = false;
        if (this.f4542do == i) {
            obtain.setAccessibilityFocused(true);
            c3893w.m8500do(128);
        } else {
            obtain.setAccessibilityFocused(false);
            c3893w.m8500do(64);
        }
        boolean z2 = this.f4550if == i;
        if (z2) {
            c3893w.m8500do(2);
        } else if (obtain.isFocusable()) {
            c3893w.m8500do(1);
        }
        obtain.setFocused(z2);
        int[] iArr = this.f4547do;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.f4544do;
        obtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            c3893w.m8496case(rect3);
            if (c3893w.f16160do != -1) {
                C3893w c3893w2 = new C3893w(AccessibilityNodeInfo.obtain());
                for (int i2 = c3893w.f16160do; i2 != -1; i2 = c3893w2.f16160do) {
                    c3893w2.f16160do = -1;
                    c3893w2.f16161do.setParent(view, -1);
                    c3893w2.m8507this(rect);
                    mo2849import(i2, c3893w2);
                    c3893w2.m8496case(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f4549for;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
                accessibilityNodeInfo.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            z = true;
                        }
                    }
                }
                if (z) {
                    accessibilityNodeInfo.setVisibleToUser(true);
                }
            }
        }
        return c3893w;
    }

    /* renamed from: const, reason: not valid java name */
    public abstract void mo2845const(ArrayList arrayList);

    /* renamed from: final, reason: not valid java name */
    public final void m2846final(int i) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f4546do.isEnabled() || (parent = (view = this.f4545do).getParent()) == null) {
            return;
        }
        AccessibilityEvent m2843catch = m2843catch(i, 2048);
        m2843catch.setContentChangeTypes(0);
        parent.requestSendAccessibilityEvent(view, m2843catch);
    }

    @Override // defpackage.Cimplements
    /* renamed from: for, reason: not valid java name */
    public final void mo2847for(View view, AccessibilityEvent accessibilityEvent) {
        super.mo2847for(view, accessibilityEvent);
    }

    @Override // defpackage.Cimplements
    /* renamed from: if, reason: not valid java name */
    public final A mo2848if(View view) {
        if (this.f4543do == null) {
            this.f4543do = new Cfor();
        }
        return this.f4543do;
    }

    /* renamed from: import, reason: not valid java name */
    public abstract void mo2849import(int i, C3893w c3893w);

    /* renamed from: native, reason: not valid java name */
    public void mo2850native(int i, boolean z) {
    }

    @Override // defpackage.Cimplements
    /* renamed from: new */
    public final void mo1356new(View view, C3893w c3893w) {
        ((Cimplements) this).f13562do.onInitializeAccessibilityNodeInfo(view, c3893w.f16161do);
        mo2855while(c3893w);
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m2851public(int i) {
        int i2;
        View view = this.f4545do;
        if ((!view.isFocused() && !view.requestFocus()) || (i2 = this.f4550if) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m2842break(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.f4550if = i;
        mo2850native(i, true);
        m2852return(i, 8);
        return true;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m2852return(int i, int i2) {
        View view;
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f4546do.isEnabled() || (parent = (view = this.f4545do).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, m2843catch(i, i2));
    }

    /* renamed from: super, reason: not valid java name */
    public final C3893w m2853super(int i) {
        if (i != -1) {
            return m2844class(i);
        }
        View view = this.f4545do;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(view);
        C3893w c3893w = new C3893w(obtain);
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        view.onInitializeAccessibilityNodeInfo(obtain);
        ArrayList arrayList = new ArrayList();
        mo2845const(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            c3893w.f16161do.addChild(view, ((Integer) arrayList.get(i2)).intValue());
        }
        return c3893w;
    }

    /* renamed from: throw, reason: not valid java name */
    public abstract boolean mo2854throw(int i, int i2, Bundle bundle);

    /* renamed from: while, reason: not valid java name */
    public void mo2855while(C3893w c3893w) {
    }
}
