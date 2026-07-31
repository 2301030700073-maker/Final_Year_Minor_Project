package com.fsck.k9.message.html;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.message.html.DividerReplacer;
import com.fsck.k9.message.html.HtmlModification;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextToHtml {
    public static final List HTML_MODIFIERS = IntOffsetKt.listOf((Object[]) new HtmlModifier[]{DividerReplacer.INSTANCE, UriLinkifier.INSTANCE, SignatureWrapper.INSTANCE});
    public final StringBuilder html;
    public final HTMLTag htmlTag;
    public final boolean retainOriginalWhitespace;
    public final CharSequence text;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface HtmlModifier {
        List findModifications(CharSequence charSequence);
    }

    public TextToHtml(CharSequence charSequence, StringBuilder sb, boolean z, HTMLTag hTMLTag) {
        this.text = charSequence;
        this.html = sb;
        this.retainOriginalWhitespace = z;
        this.htmlTag = hTMLTag;
    }

    public final void appendAsHtmlFragment() {
        CharSequence charSequence;
        int i;
        int i2;
        HTMLTag hTMLTag = this.htmlTag;
        String str = "<" + hTMLTag.html + " dir=\"auto\">";
        StringBuilder sb = this.html;
        sb.append(str);
        ArrayList arrayList = new ArrayList();
        Iterator it = HTML_MODIFIERS.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            charSequence = this.text;
            if (!hasNext) {
                break;
            } else {
                CollectionsKt.addAll(((HtmlModifier) it.next()).findModifications(charSequence), arrayList);
            }
        }
        List<HtmlModification> sortedWith = CollectionsKt.sortedWith(arrayList, new TextToHtml$appendAsHtmlFragment$$inlined$sortedBy$1());
        ArrayDeque arrayDeque = new ArrayDeque();
        int i3 = 0;
        for (HtmlModification htmlModification : sortedWith) {
            while (true) {
                i = htmlModification.startIndex;
                i2 = htmlModification.endIndex;
                HtmlModification.Wrap wrap = (HtmlModification.Wrap) arrayDeque.peek();
                if (i < (wrap != null ? wrap.endIndex : Integer.MAX_VALUE)) {
                    break;
                }
                HtmlModification.Wrap wrap2 = (HtmlModification.Wrap) arrayDeque.pop();
                appendHtmlEncoded(i3, wrap2.endIndex);
                wrap2.appendSuffix(this);
                i3 = wrap2.endIndex;
            }
            appendHtmlEncoded(i3, i);
            HtmlModification.Wrap wrap3 = (HtmlModification.Wrap) arrayDeque.peek();
            if (i2 > (wrap3 != null ? wrap3.endIndex : Integer.MAX_VALUE)) {
                DBUtil$$ExternalSyntheticBUOutline0.m$1("HtmlModification ", htmlModification, " must be fully contained within outer HtmlModification ", arrayDeque.peek());
                return;
            } else if (htmlModification instanceof HtmlModification.Wrap) {
                ((HtmlModification.Wrap) htmlModification).appendPrefix(this);
                arrayDeque.push(htmlModification);
                i3 = i;
            } else if (htmlModification instanceof DividerReplacer.Divider) {
                sb.append("<hr>");
                i3 = i2;
            }
        }
        while (!arrayDeque.isEmpty()) {
            HtmlModification.Wrap wrap4 = (HtmlModification.Wrap) arrayDeque.pop();
            appendHtmlEncoded(i3, wrap4.endIndex);
            wrap4.appendSuffix(this);
            i3 = wrap4.endIndex;
        }
        appendHtmlEncoded(i3, charSequence.length());
        sb.append("</" + hTMLTag.html + ">");
    }

    public final void appendHtmlEncoded(int i, int i2) {
        boolean z = this.retainOriginalWhitespace;
        CharSequence charSequence = this.text;
        if (z) {
            while (i < i2) {
                appendHtmlEncoded$core(charSequence.charAt(i));
                i++;
            }
            return;
        }
        StringBuilder sb = this.html;
        if (i < i2 && charSequence.charAt(i) == ' ') {
            sb.append((char) 160);
            i++;
        }
        int i3 = 0;
        while (i < i2) {
            if (charSequence.charAt(i) == ' ') {
                i3++;
            } else {
                if (i3 > 0) {
                    int i4 = i3 - 1;
                    for (int i5 = 0; i5 < i4; i5++) {
                        sb.append((char) 160);
                    }
                    sb.append(' ');
                }
                appendHtmlEncoded$core(charSequence.charAt(i));
                i3 = 0;
            }
            i++;
        }
        if (i3 <= 0) {
            return;
        }
        int i6 = i3 - 1;
        for (int i7 = 0; i7 < i6; i7++) {
            sb.append((char) 160);
        }
        sb.append(' ');
    }

    public final void appendHtmlEncoded$core(char c) {
        StringBuilder sb = this.html;
        if (c == '\n') {
            sb.append("<br>");
            return;
        }
        if (c != '\r') {
            if (c == '&') {
                sb.append("&amp;");
                return;
            }
            if (c == '<') {
                sb.append("&lt;");
            } else if (c != '>') {
                sb.append(c);
            } else {
                sb.append("&gt;");
            }
        }
    }
}
