package org.wikipedia.settings.homefeed;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModulesScreenKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ ForYouModulesScreenKt$$ExternalSyntheticLambda3(Context context, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                mutableState.setValue(Boolean.FALSE);
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "modules_off_confirm", null, null, 242);
                    break;
                }
                break;
            default:
                mutableState.setValue(Boolean.FALSE);
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, "feed_community", "modules_off_confirm", null, null, 242);
                    break;
                }
                break;
        }
        return unit;
    }
}
