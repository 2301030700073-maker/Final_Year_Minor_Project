package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* loaded from: classes.dex */
public class A {

    /* renamed from: do, reason: not valid java name */
    public final Object f0do;

    /* renamed from: A$do, reason: invalid class name */
    public static class Cdo extends AccessibilityNodeProvider {

        /* renamed from: do, reason: not valid java name */
        public final A f1do;

        public Cdo(A a) {
            this.f1do = a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            C3893w mo0do = this.f1do.mo0do(i);
            if (mo0do == null) {
                return null;
            }
            return mo0do.f16161do;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            this.f1do.getClass();
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            C3893w mo2if = this.f1do.mo2if(i);
            if (mo2if == null) {
                return null;
            }
            return mo2if.f16161do;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final boolean performAction(int i, int i2, Bundle bundle) {
            return this.f1do.mo1for(i, i2, bundle);
        }
    }

    /* renamed from: A$if, reason: invalid class name */
    public static class Cif extends Cdo {
        public Cif(A a) {
            super(a);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f1do.getClass();
        }
    }

    public A() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f0do = new Cif(this);
        } else {
            this.f0do = new Cdo(this);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public C3893w mo0do(int i) {
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public boolean mo1for(int i, int i2, Bundle bundle) {
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public C3893w mo2if(int i) {
        return null;
    }

    public A(AccessibilityNodeProvider accessibilityNodeProvider) {
        this.f0do = accessibilityNodeProvider;
    }
}
