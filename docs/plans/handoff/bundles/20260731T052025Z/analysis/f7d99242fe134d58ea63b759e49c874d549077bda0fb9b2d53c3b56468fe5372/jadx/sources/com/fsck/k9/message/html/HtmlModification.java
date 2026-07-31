package com.fsck.k9.message.html;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class HtmlModification {
    public final int endIndex;
    public final int startIndex;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Wrap extends HtmlModification {
        public abstract void appendPrefix(TextToHtml textToHtml);

        public abstract void appendSuffix(TextToHtml textToHtml);
    }

    public HtmlModification(int i, int i2) {
        this.startIndex = i;
        this.endIndex = i2;
    }
}
