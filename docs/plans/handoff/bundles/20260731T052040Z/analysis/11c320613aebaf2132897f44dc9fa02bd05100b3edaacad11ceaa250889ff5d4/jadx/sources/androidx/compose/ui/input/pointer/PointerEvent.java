package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.cardview.widget.CardView;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PointerEvent {
    public final List changes;
    public final int classification;
    public final CardView.AnonymousClass1 internalPointerEvent;
    public int type;

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        if (r11 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0072, code lost:
    
        r0 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007a, code lost:
    
        if (r11 != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0084, code lost:
    
        if (r11 != false) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PointerEvent(java.util.List r10, androidx.cardview.widget.CardView.AnonymousClass1 r11) {
        /*
            r9 = this;
            r9.<init>()
            r9.changes = r10
            r9.internalPointerEvent = r11
            int r11 = android.os.Build.VERSION.SDK_INT
            r0 = 0
            r1 = 29
            if (r11 < r1) goto L19
            android.view.MotionEvent r2 = r9.getMotionEvent()
            if (r2 == 0) goto L19
            int r2 = r2.getClassification()
            goto L1a
        L19:
            r2 = r0
        L1a:
            r9.classification = r2
            android.view.MotionEvent r2 = r9.getMotionEvent()
            if (r2 == 0) goto L25
            r2.getButtonState()
        L25:
            android.view.MotionEvent r2 = r9.getMotionEvent()
            if (r2 == 0) goto L2e
            r2.getMetaState()
        L2e:
            android.view.MotionEvent r2 = r9.getMotionEvent()
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L98
            if (r11 < r1) goto L41
            int r10 = r2.getClassification()
            if (r10 != r3) goto L41
            r10 = r5
            goto L42
        L41:
            r10 = r0
        L42:
            r6 = 5
            if (r11 < r1) goto L4d
            int r11 = r2.getClassification()
            if (r11 != r6) goto L4d
            r11 = r5
            goto L4e
        L4d:
            r11 = r0
        L4e:
            int r1 = r2.getActionMasked()
            r2 = 10
            if (r1 == 0) goto L91
            r7 = 12
            if (r1 == r5) goto L89
            r8 = 8
            if (r1 == r4) goto L7f
            switch(r1) {
                case 5: goto L76;
                case 6: goto L6c;
                case 7: goto L7f;
                case 8: goto L69;
                case 9: goto L66;
                case 10: goto L63;
                default: goto L61;
            }
        L61:
            goto Lb5
        L63:
            r0 = r6
            goto Lb5
        L66:
            r0 = 4
            goto Lb5
        L69:
            r0 = 6
            goto Lb5
        L6c:
            if (r10 == 0) goto L70
        L6e:
            r0 = r7
            goto Lb5
        L70:
            if (r11 == 0) goto L74
        L72:
            r0 = r8
            goto Lb5
        L74:
            r0 = r4
            goto Lb5
        L76:
            if (r10 == 0) goto L7a
        L78:
            r0 = r2
            goto Lb5
        L7a:
            if (r11 == 0) goto L7d
            goto L72
        L7d:
            r0 = r5
            goto Lb5
        L7f:
            if (r10 == 0) goto L84
            r0 = 11
            goto Lb5
        L84:
            if (r11 == 0) goto L87
            goto L72
        L87:
            r0 = r3
            goto Lb5
        L89:
            if (r10 == 0) goto L8c
            goto L6e
        L8c:
            if (r11 == 0) goto L74
            r0 = 9
            goto Lb5
        L91:
            if (r10 == 0) goto L94
            goto L78
        L94:
            if (r11 == 0) goto L7d
            r0 = 7
            goto Lb5
        L98:
            int r11 = r10.size()
        L9c:
            if (r0 >= r11) goto L87
            java.lang.Object r1 = r10.get(r0)
            androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
            boolean r2 = net.newpipe.app.AppKt.changedToUpIgnoreConsumed(r1)
            if (r2 == 0) goto Lab
            goto L74
        Lab:
            boolean r1 = net.newpipe.app.AppKt.changedToDownIgnoreConsumed(r1)
            if (r1 == 0) goto Lb2
            goto L7d
        Lb2:
            int r0 = r0 + 1
            goto L9c
        Lb5:
            r9.type = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.PointerEvent.<init>(java.util.List, androidx.cardview.widget.CardView$1):void");
    }

    public final MotionEvent getMotionEvent() {
        CardView.AnonymousClass1 anonymousClass1 = this.internalPointerEvent;
        if (anonymousClass1 != null) {
            return (MotionEvent) ((CardView.AnonymousClass1) anonymousClass1.this$0).this$0;
        }
        return null;
    }
}
