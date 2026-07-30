package defpackage;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* renamed from: c5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0789c5 extends Cimplements {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ BaseTransientBottomBar f8486do;

    public C0789c5(BaseTransientBottomBar baseTransientBottomBar) {
        this.f8486do = baseTransientBottomBar;
    }

    @Override // defpackage.Cimplements
    /* renamed from: else */
    public final boolean mo3759else(View view, int i, Bundle bundle) {
        if (i != 1048576) {
            return super.mo3759else(view, i, bundle);
        }
        this.f8486do.mo5919do();
        return true;
    }

    @Override // defpackage.Cimplements
    /* renamed from: new */
    public final void mo1356new(View view, C3893w c3893w) {
        View.AccessibilityDelegate accessibilityDelegate = ((Cimplements) this).f13562do;
        AccessibilityNodeInfo accessibilityNodeInfo = c3893w.f16161do;
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        c3893w.m8500do(1048576);
        accessibilityNodeInfo.setDismissable(true);
    }
}
