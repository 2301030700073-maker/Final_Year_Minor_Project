package org.wikipedia.compose.components;

import android.net.Uri;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.jvm.functions.Function1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsKt$$ExternalSyntheticLambda4 implements LinkInteractionListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ SettingsKt$$ExternalSyntheticLambda4(Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void onClick(LinkAnnotation linkAnnotation) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                linkAnnotation.getClass();
                String str = ((LinkAnnotation.Url) linkAnnotation).url;
                if (function1 != null) {
                    function1.invoke(str);
                    break;
                }
                break;
            default:
                linkAnnotation.getClass();
                String str2 = ((LinkAnnotation.Url) linkAnnotation).url;
                PageTitle.Companion companion = PageTitle.Companion;
                Uri parse = Uri.parse(str2);
                parse.getClass();
                WikiSite wikiSite = new WikiSite(str2);
                companion.getClass();
                function1.invoke(PageTitle.Companion.titleForUri(parse, wikiSite));
                break;
        }
    }
}
