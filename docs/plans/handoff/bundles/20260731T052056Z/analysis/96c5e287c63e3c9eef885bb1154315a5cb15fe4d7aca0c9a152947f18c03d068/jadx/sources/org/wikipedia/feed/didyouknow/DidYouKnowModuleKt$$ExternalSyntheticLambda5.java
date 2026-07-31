package org.wikipedia.feed.didyouknow;

import android.net.Uri;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.StringsKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class DidYouKnowModuleKt$$ExternalSyntheticLambda5 implements LinkInteractionListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ DidYouKnowModuleKt$$ExternalSyntheticLambda5(int i, Object obj, Function function) {
        this.$r8$classId = i;
        this.f$0 = function;
        this.f$1 = obj;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void onClick(LinkAnnotation linkAnnotation) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Function function = this.f$0;
        switch (i) {
            case 0:
                linkAnnotation.getClass();
                String str = ((LinkAnnotation.Url) linkAnnotation).url;
                PageTitle.Companion companion = PageTitle.Companion;
                Uri parse = Uri.parse(str);
                parse.getClass();
                companion.getClass();
                ((Function1) function).invoke(PageTitle.Companion.titleForUri(parse, (WikiSite) obj));
                break;
            default:
                Function0 function0 = (Function0) function;
                Function0 function02 = (Function0) obj;
                linkAnnotation.getClass();
                String str2 = ((LinkAnnotation.Url) linkAnnotation).url;
                if (!StringsKt.contains(str2, "#privacy", false)) {
                    if (StringsKt.contains(str2, "#termsOfUse", false)) {
                        function02.invoke();
                        break;
                    }
                } else {
                    function0.invoke();
                    break;
                }
                break;
        }
    }
}
