package com.fsck.k9.message.html;

import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextToHtml$appendAsHtmlFragment$$inlined$sortedBy$1 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.valueOf(((HtmlModification) obj).startIndex).compareTo(Integer.valueOf(((HtmlModification) obj2).startIndex));
    }
}
