package org.wikipedia.wiktionary;

import android.content.Context;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.LinkInteractionListener;
import kotlin.jvm.functions.Function1;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WiktionaryDialogScreenKt$$ExternalSyntheticLambda6 implements LinkInteractionListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ WiktionaryDialogScreenKt$$ExternalSyntheticLambda6(Context context, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = function1;
    }

    @Override // androidx.compose.ui.text.LinkInteractionListener
    public final void onClick(LinkAnnotation linkAnnotation) {
        int i = this.$r8$classId;
        Function1 function1 = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                linkAnnotation.getClass();
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, "link");
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).url);
                break;
            default:
                linkAnnotation.getClass();
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, "link");
                function1.invoke(((LinkAnnotation.Url) linkAnnotation).url);
                break;
        }
    }
}
