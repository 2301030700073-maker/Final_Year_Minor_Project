package androidx.compose.foundation.text;

import androidx.cardview.widget.CardView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UndoManager {
    public boolean forceNextSnapshot;
    public Long lastSnapshot;
    public CardView.AnonymousClass1 redoStack;
    public int storedCharacters;
    public CardView.AnonymousClass1 undoStack;

    /* JADX WARN: Removed duplicated region for block: B:29:0x0071 A[LOOP:0: B:24:0x0061->B:29:0x0071, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0076 A[EDGE_INSN: B:30:0x0076->B:31:0x0076 BREAK  A[LOOP:0: B:24:0x0061->B:29:0x0071], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void makeSnapshot(androidx.compose.ui.text.input.TextFieldValue r6) {
        /*
            r5 = this;
            r0 = 0
            r5.forceNextSnapshot = r0
            androidx.cardview.widget.CardView$1 r1 = r5.undoStack
            r2 = 0
            if (r1 == 0) goto Ld
            java.lang.Object r1 = r1.this$0
            androidx.compose.ui.text.input.TextFieldValue r1 = (androidx.compose.ui.text.input.TextFieldValue) r1
            goto Le
        Ld:
            r1 = r2
        Le:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r1)
            if (r1 == 0) goto L16
            goto L7a
        L16:
            androidx.compose.ui.text.AnnotatedString r1 = r6.annotatedString
            java.lang.String r1 = r1.text
            androidx.cardview.widget.CardView$1 r3 = r5.undoStack
            if (r3 == 0) goto L29
            java.lang.Object r3 = r3.this$0
            androidx.compose.ui.text.input.TextFieldValue r3 = (androidx.compose.ui.text.input.TextFieldValue) r3
            if (r3 == 0) goto L29
            androidx.compose.ui.text.AnnotatedString r3 = r3.annotatedString
            java.lang.String r3 = r3.text
            goto L2a
        L29:
            r3 = r2
        L2a:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            androidx.cardview.widget.CardView$1 r3 = r5.undoStack
            if (r1 == 0) goto L37
            if (r3 == 0) goto L7a
            r3.this$0 = r6
            return
        L37:
            androidx.cardview.widget.CardView$1 r1 = new androidx.cardview.widget.CardView$1
            r4 = 24
            r1.<init>(r4, r3, r6, r0)
            r5.undoStack = r1
            r5.redoStack = r2
            int r0 = r5.storedCharacters
            androidx.compose.ui.text.AnnotatedString r6 = r6.annotatedString
            java.lang.String r6 = r6.text
            int r6 = r6.length()
            int r6 = r6 + r0
            r5.storedCharacters = r6
            r0 = 100000(0x186a0, float:1.4013E-40)
            if (r6 <= r0) goto L7a
            androidx.cardview.widget.CardView$1 r5 = r5.undoStack
            if (r5 == 0) goto L5d
            java.lang.Object r6 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            goto L5e
        L5d:
            r6 = r2
        L5e:
            if (r6 != 0) goto L61
            goto L7a
        L61:
            if (r5 == 0) goto L6e
            java.lang.Object r6 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            if (r6 == 0) goto L6e
            java.lang.Object r6 = r6.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            goto L6f
        L6e:
            r6 = r2
        L6f:
            if (r6 == 0) goto L76
            java.lang.Object r5 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r5 = (androidx.cardview.widget.CardView.AnonymousClass1) r5
            goto L61
        L76:
            if (r5 == 0) goto L7a
            r5.mCardBackground = r2
        L7a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.UndoManager.makeSnapshot(androidx.compose.ui.text.input.TextFieldValue):void");
    }
}
