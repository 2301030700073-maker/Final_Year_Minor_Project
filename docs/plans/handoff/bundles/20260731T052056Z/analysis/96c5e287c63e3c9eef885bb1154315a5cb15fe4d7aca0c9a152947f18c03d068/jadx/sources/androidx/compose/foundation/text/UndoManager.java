package androidx.compose.foundation.text;

import androidx.cardview.widget.CardView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UndoManager {
    public boolean forceNextSnapshot;
    public Long lastSnapshot;
    public CardView.AnonymousClass1 redoStack;
    public int storedCharacters;
    public CardView.AnonymousClass1 undoStack;

    /* JADX WARN: Removed duplicated region for block: B:27:0x006b A[LOOP:0: B:22:0x005b->B:27:0x006b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[EDGE_INSN: B:28:0x0070->B:29:0x0070 BREAK  A[LOOP:0: B:22:0x005b->B:27:0x006b], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void makeSnapshot(androidx.compose.ui.text.input.TextFieldValue r6) {
        /*
            r5 = this;
            androidx.compose.ui.text.AnnotatedString r0 = r6.annotatedString
            r1 = 0
            r5.forceNextSnapshot = r1
            androidx.cardview.widget.CardView$1 r1 = r5.undoStack
            r2 = 0
            if (r1 == 0) goto Lf
            java.lang.Object r1 = r1.this$0
            androidx.compose.ui.text.input.TextFieldValue r1 = (androidx.compose.ui.text.input.TextFieldValue) r1
            goto L10
        Lf:
            r1 = r2
        L10:
            boolean r1 = r6.equals(r1)
            if (r1 == 0) goto L17
            goto L74
        L17:
            java.lang.String r1 = r0.text
            androidx.cardview.widget.CardView$1 r3 = r5.undoStack
            if (r3 == 0) goto L26
            java.lang.Object r3 = r3.this$0
            androidx.compose.ui.text.input.TextFieldValue r3 = (androidx.compose.ui.text.input.TextFieldValue) r3
            androidx.compose.ui.text.AnnotatedString r3 = r3.annotatedString
            java.lang.String r3 = r3.text
            goto L27
        L26:
            r3 = r2
        L27:
            boolean r1 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            androidx.cardview.widget.CardView$1 r3 = r5.undoStack
            if (r1 == 0) goto L34
            if (r3 == 0) goto L74
            r3.this$0 = r6
            return
        L34:
            androidx.cardview.widget.CardView$1 r1 = new androidx.cardview.widget.CardView$1
            r4 = 6
            r1.<init>(r4, r3, r6)
            r5.undoStack = r1
            r5.redoStack = r2
            int r6 = r5.storedCharacters
            java.lang.String r0 = r0.text
            int r0 = r0.length()
            int r0 = r0 + r6
            r5.storedCharacters = r0
            r6 = 100000(0x186a0, float:1.4013E-40)
            if (r0 <= r6) goto L74
            androidx.cardview.widget.CardView$1 r5 = r5.undoStack
            if (r5 == 0) goto L57
            java.lang.Object r6 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            goto L58
        L57:
            r6 = r2
        L58:
            if (r6 != 0) goto L5b
            goto L74
        L5b:
            if (r5 == 0) goto L68
            java.lang.Object r6 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            if (r6 == 0) goto L68
            java.lang.Object r6 = r6.mCardBackground
            androidx.cardview.widget.CardView$1 r6 = (androidx.cardview.widget.CardView.AnonymousClass1) r6
            goto L69
        L68:
            r6 = r2
        L69:
            if (r6 == 0) goto L70
            java.lang.Object r5 = r5.mCardBackground
            androidx.cardview.widget.CardView$1 r5 = (androidx.cardview.widget.CardView.AnonymousClass1) r5
            goto L5b
        L70:
            if (r5 == 0) goto L74
            r5.mCardBackground = r2
        L74:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.UndoManager.makeSnapshot(androidx.compose.ui.text.input.TextFieldValue):void");
    }
}
