package com.fsck.k9.message.html;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.message.html.HtmlModification;
import com.fsck.k9.message.html.TextToHtml;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SignatureWrapper implements TextToHtml.HtmlModifier {
    public static final SignatureWrapper INSTANCE = new SignatureWrapper();
    public static final Regex SIGNATURE_REGEX = new Regex("(?m)^-- $");

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Signature extends HtmlModification.Wrap {
        @Override // com.fsck.k9.message.html.HtmlModification.Wrap
        public final void appendPrefix(TextToHtml textToHtml) {
            textToHtml.html.append("<div class='k9mail-signature'>");
        }

        @Override // com.fsck.k9.message.html.HtmlModification.Wrap
        public final void appendSuffix(TextToHtml textToHtml) {
            textToHtml.html.append("</div>");
        }

        public final String toString() {
            return Config.CC.m("Signature{startIndex=", this.startIndex, ", endIndex=", this.endIndex, "}");
        }
    }

    @Override // com.fsck.k9.message.html.TextToHtml.HtmlModifier
    public final List findModifications(CharSequence charSequence) {
        charSequence.getClass();
        MatcherMatchResult find = SIGNATURE_REGEX.find(0, charSequence);
        return find == null ? EmptyList.INSTANCE : IntOffsetKt.listOf(new Signature(find.getRange().first, charSequence.length()));
    }
}
