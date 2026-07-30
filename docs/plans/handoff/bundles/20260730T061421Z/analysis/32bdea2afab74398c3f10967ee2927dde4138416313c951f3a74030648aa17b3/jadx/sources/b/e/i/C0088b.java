package b.e.i;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;

/* renamed from: b.e.i.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0088b {
    public static final View.AccessibilityDelegate DEFAULT_DELEGATE = new View.AccessibilityDelegate();
    public final View.AccessibilityDelegate mBridge;
    public final View.AccessibilityDelegate mOriginalDelegate;

    public C0088b() {
        this.mOriginalDelegate = DEFAULT_DELEGATE;
        this.mBridge = new C0087a(this);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public b.e.i.E.g getAccessibilityNodeProvider(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.mOriginalDelegate.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new b.e.i.E.g(accessibilityNodeProvider);
        }
        return null;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, b.e.i.E.d dVar) {
        this.mOriginalDelegate.onInitializeAccessibilityNodeInfo(view, dVar.f753a);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.mOriginalDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAccessibilityAction(android.view.View r9, int r10, android.os.Bundle r11) {
        /*
            r8 = this;
            r0 = 2131296565(0x7f090135, float:1.821105E38)
            java.lang.Object r0 = r9.getTag(r0)
            java.util.List r0 = (java.util.List) r0
            if (r0 != 0) goto Lf
            java.util.List r0 = java.util.Collections.emptyList()
        Lf:
            r1 = 0
            r2 = r1
        L11:
            int r3 = r0.size()
            if (r2 >= r3) goto L73
            java.lang.Object r3 = r0.get(r2)
            b.e.i.E.b r3 = (b.e.i.E.b) r3
            java.lang.Object r4 = r3.f749a
            android.view.accessibility.AccessibilityNodeInfo$AccessibilityAction r4 = (android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction) r4
            int r4 = r4.getId()
            if (r4 != r10) goto L70
            b.e.i.E.i r0 = r3.f751c
            if (r0 == 0) goto L73
            r0 = 0
            java.lang.Class r2 = r3.f750b
            if (r2 == 0) goto L69
            java.lang.Class[] r4 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L43
            java.lang.reflect.Constructor r2 = r2.getDeclaredConstructor(r4)     // Catch: java.lang.Exception -> L43
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L43
            java.lang.Object r2 = r2.newInstance(r4)     // Catch: java.lang.Exception -> L43
            b.e.i.E.h r2 = (b.e.i.E.h) r2     // Catch: java.lang.Exception -> L43
            r2.f758a = r11     // Catch: java.lang.Exception -> L41
            goto L68
        L41:
            r0 = move-exception
            goto L47
        L43:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
        L47:
            java.lang.Class r4 = r3.f750b
            if (r4 != 0) goto L4e
            java.lang.String r4 = "null"
            goto L52
        L4e:
            java.lang.String r4 = r4.getName()
        L52:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Failed to execute command with argument class ViewCommandArgument: "
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "A11yActionCompat"
            android.util.Log.e(r5, r4, r0)
        L68:
            r0 = r2
        L69:
            b.e.i.E.i r2 = r3.f751c
            boolean r0 = r2.a(r9, r0)
            goto L74
        L70:
            int r2 = r2 + 1
            goto L11
        L73:
            r0 = r1
        L74:
            if (r0 != 0) goto L7c
            android.view.View$AccessibilityDelegate r8 = r8.mOriginalDelegate
            boolean r0 = r8.performAccessibilityAction(r9, r10, r11)
        L7c:
            if (r0 != 0) goto Lcd
            r8 = 2131296262(0x7f090006, float:1.8210436E38)
            if (r10 != r8) goto Lcd
            r8 = -1
            java.lang.String r10 = "ACCESSIBILITY_CLICKABLE_SPAN_ID"
            int r8 = r11.getInt(r10, r8)
            r10 = 2131296566(0x7f090136, float:1.8211052E38)
            java.lang.Object r10 = r9.getTag(r10)
            android.util.SparseArray r10 = (android.util.SparseArray) r10
            r11 = 1
            if (r10 == 0) goto Lcc
            java.lang.Object r8 = r10.get(r8)
            java.lang.ref.WeakReference r8 = (java.lang.ref.WeakReference) r8
            if (r8 == 0) goto Lcc
            java.lang.Object r8 = r8.get()
            android.text.style.ClickableSpan r8 = (android.text.style.ClickableSpan) r8
            if (r8 == 0) goto Lc5
            android.view.accessibility.AccessibilityNodeInfo r10 = r9.createAccessibilityNodeInfo()
            java.lang.CharSequence r10 = r10.getText()
            android.text.style.ClickableSpan[] r10 = b.e.i.E.d.d(r10)
            r0 = r1
        Lb3:
            if (r10 == 0) goto Lc5
            int r2 = r10.length
            if (r0 >= r2) goto Lc5
            r2 = r10[r0]
            boolean r2 = r8.equals(r2)
            if (r2 == 0) goto Lc2
            r10 = r11
            goto Lc6
        Lc2:
            int r0 = r0 + 1
            goto Lb3
        Lc5:
            r10 = r1
        Lc6:
            if (r10 == 0) goto Lcc
            r8.onClick(r9)
            r1 = r11
        Lcc:
            r0 = r1
        Lcd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.e.i.C0088b.performAccessibilityAction(android.view.View, int, android.os.Bundle):boolean");
    }

    public void sendAccessibilityEvent(View view, int i) {
        this.mOriginalDelegate.sendAccessibilityEvent(view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        this.mOriginalDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public C0088b(View.AccessibilityDelegate accessibilityDelegate) {
        this.mOriginalDelegate = accessibilityDelegate;
        this.mBridge = new C0087a(this);
    }
}
