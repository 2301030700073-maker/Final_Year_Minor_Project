package com.fsck.k9.message.quote;

import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InsertableHtmlContent implements Serializable {
    public int headerInsertionPoint = 0;
    public int footerInsertionPoint = 0;
    public StringBuilder quotedContent = new StringBuilder();
    public StringBuilder userContent = new StringBuilder();
    public int insertionLocation = 1;

    public final void setFooterInsertionPoint(int i) {
        int length = this.quotedContent.length();
        if (i < 0 || i > length) {
            this.footerInsertionPoint = length;
        } else {
            this.footerInsertionPoint = i;
        }
    }

    public final void setHeaderInsertionPoint(int i) {
        if (i < 0 || i > this.quotedContent.length()) {
            this.headerInsertionPoint = 0;
        } else {
            this.headerInsertionPoint = i;
        }
    }

    public final String toString() {
        int i = this.insertionLocation == 1 ? this.headerInsertionPoint : this.footerInsertionPoint;
        String sb = this.quotedContent.insert(i, this.userContent.toString()).toString();
        this.quotedContent.delete(i, this.userContent.length() + i);
        return sb;
    }
}
