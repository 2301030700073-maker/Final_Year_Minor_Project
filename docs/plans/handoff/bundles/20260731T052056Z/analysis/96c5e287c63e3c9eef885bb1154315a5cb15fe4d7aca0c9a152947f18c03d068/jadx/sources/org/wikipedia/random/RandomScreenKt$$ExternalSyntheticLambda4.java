package org.wikipedia.random;

import android.content.Context;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda4(Context context, Function0 function0, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "shake", null, null, null, null, null, 254);
                }
                function0.invoke();
                break;
            case 1:
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, "searchBackButton");
                function0.invoke();
                break;
            case 2:
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, "navigationButton");
                function0.invoke();
                break;
            case 3:
                BreadCrumbLogEvent.Companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, "navigationButton");
                function0.invoke();
                break;
            case 4:
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "previous_button", null, null, 246);
                }
                function0.invoke();
                break;
            default:
                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context);
                if (instrument3 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "next_button", null, null, 246);
                }
                function0.invoke();
                break;
        }
        return unit;
    }
}
