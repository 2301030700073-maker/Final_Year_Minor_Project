package defpackage;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;

/* renamed from: En, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0194En extends View.AccessibilityDelegate {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ C0172Dn f892do;

    public C0194En(C0172Dn c0172Dn) {
        this.f892do = c0172Dn;
    }

    @Override // android.view.View.AccessibilityDelegate
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        EditText editText = this.f892do.f664do.f11639do;
        if (editText != null) {
            accessibilityNodeInfo.setLabeledBy(editText);
        }
    }
}
