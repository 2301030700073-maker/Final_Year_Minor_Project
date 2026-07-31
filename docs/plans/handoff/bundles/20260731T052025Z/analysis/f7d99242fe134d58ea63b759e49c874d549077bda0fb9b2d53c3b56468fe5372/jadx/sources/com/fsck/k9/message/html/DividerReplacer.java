package com.fsck.k9.message.html;

import androidx.camera.core.impl.Config;
import com.fsck.k9.message.html.TextToHtml;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import java.util.List;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DividerReplacer implements TextToHtml.HtmlModifier {
    public static final DividerReplacer INSTANCE = new DividerReplacer();
    public static final Regex PATTERN = new Regex("(?:^|\\n)(?:\\s*(?:[-=_]{3,}|(?:-{2,}\\s?(?:>[%8]|[%8]<)\\s?-{2,})+)\\s*(?:\\n|$))+");

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Divider extends HtmlModification {
        public final String toString() {
            return Config.CC.m("Divider{startIndex=", this.startIndex, ", endIndex=", this.endIndex, "}");
        }
    }

    @Override // com.fsck.k9.message.html.TextToHtml.HtmlModifier
    public final List findModifications(CharSequence charSequence) {
        charSequence.getClass();
        return SequencesKt.toList(new TakeWhileSequence(Regex.findAll$default(PATTERN, charSequence), new KoinModuleKt$$ExternalSyntheticLambda0(12), 2));
    }
}
