package com.fsck.k9.message.html;

import androidx.camera.core.impl.Config;
import com.fsck.k9.message.html.HtmlModification;
import com.fsck.k9.message.html.TextToHtml;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriLinkifier implements TextToHtml.HtmlModifier {
    public static final UriLinkifier INSTANCE = new UriLinkifier();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LinkifyUri extends HtmlModification.Wrap {
        public final CharSequence uri;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LinkifyUri(int i, int i2, CharSequence charSequence) {
            super(i, i2);
            charSequence.getClass();
            this.uri = charSequence;
        }

        @Override // com.fsck.k9.message.html.HtmlModification.Wrap
        public final void appendPrefix(TextToHtml textToHtml) {
            StringBuilder sb = textToHtml.html;
            sb.append("<a href=\"");
            CharSequence charSequence = this.uri;
            charSequence.getClass();
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if (charAt == '\"') {
                    sb.append("&quot;");
                } else if (charAt == '&') {
                    sb.append("&amp;");
                } else if (charAt != '<') {
                    sb.append(charAt);
                } else {
                    sb.append("&lt;");
                }
            }
            sb.append("\">");
        }

        @Override // com.fsck.k9.message.html.HtmlModification.Wrap
        public final void appendSuffix(TextToHtml textToHtml) {
            textToHtml.html.append("</a>");
        }

        public final String toString() {
            StringBuilder m91m = Config.CC.m91m("LinkifyUri{startIndex=", this.startIndex, ", endIndex=", this.endIndex, ", uri='");
            m91m.append((Object) this.uri);
            m91m.append("'}");
            return m91m.toString();
        }
    }

    @Override // com.fsck.k9.message.html.TextToHtml.HtmlModifier
    public final List findModifications(CharSequence charSequence) {
        charSequence.getClass();
        List<UriMatch> list = SequencesKt.toList(SequencesKt.filterNotNull(new TakeWhileSequence(Regex.findAll$default(UriMatcher.URI_SCHEME, charSequence), new StringsKt__StringsKt$$ExternalSyntheticLambda2(1, charSequence), 2)));
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        for (UriMatch uriMatch : list) {
            arrayList.add(new LinkifyUri(uriMatch.startIndex, uriMatch.endIndex, uriMatch.uri));
        }
        return arrayList;
    }
}
