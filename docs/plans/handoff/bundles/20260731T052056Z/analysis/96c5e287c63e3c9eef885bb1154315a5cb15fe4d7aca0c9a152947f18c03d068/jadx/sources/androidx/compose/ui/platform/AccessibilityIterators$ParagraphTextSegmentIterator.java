package androidx.compose.ui.platform;

import androidx.appcompat.view.menu.BaseMenuWrapper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AccessibilityIterators$ParagraphTextSegmentIterator extends BaseMenuWrapper {
    public static AccessibilityIterators$ParagraphTextSegmentIterator instance;

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final int[] following(int i) {
        int length = getText().length();
        if (length <= 0 || i >= length) {
            return null;
        }
        if (i < 0) {
            i = 0;
        }
        while (i < length && getText().charAt(i) == '\n' && (getText().charAt(i) == '\n' || (i != 0 && getText().charAt(i - 1) != '\n'))) {
            i++;
        }
        if (i >= length) {
            return null;
        }
        int i2 = i + 1;
        while (i2 < length && !isEndBoundary(i2)) {
            i2++;
        }
        return getRange(i, i2);
    }

    public final boolean isEndBoundary(int i) {
        if (i <= 0 || getText().charAt(i - 1) == '\n') {
            return false;
        }
        return i == getText().length() || getText().charAt(i) == '\n';
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002c, code lost:
    
        return null;
     */
    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] preceding(int r5) {
        /*
            r4 = this;
            java.lang.String r0 = r4.getText()
            int r0 = r0.length()
            if (r0 > 0) goto Lb
            goto L2c
        Lb:
            if (r5 > 0) goto Le
            goto L2c
        Le:
            if (r5 <= r0) goto L11
            r5 = r0
        L11:
            r0 = 10
            if (r5 <= 0) goto L2a
            java.lang.String r1 = r4.getText()
            int r2 = r5 + (-1)
            char r1 = r1.charAt(r2)
            if (r1 != r0) goto L2a
            boolean r1 = r4.isEndBoundary(r5)
            if (r1 != 0) goto L2a
            int r5 = r5 + (-1)
            goto L11
        L2a:
            if (r5 > 0) goto L2e
        L2c:
            r4 = 0
            return r4
        L2e:
            int r1 = r5 + (-1)
        L30:
            if (r1 <= 0) goto L4e
            java.lang.String r2 = r4.getText()
            char r2 = r2.charAt(r1)
            if (r2 == r0) goto L4b
            if (r1 == 0) goto L4e
            java.lang.String r2 = r4.getText()
            int r3 = r1 + (-1)
            char r2 = r2.charAt(r3)
            if (r2 != r0) goto L4b
            goto L4e
        L4b:
            int r1 = r1 + (-1)
            goto L30
        L4e:
            int[] r4 = r4.getRange(r1, r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.AccessibilityIterators$ParagraphTextSegmentIterator.preceding(int):int[]");
    }
}
