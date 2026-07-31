package org.wikipedia.settings.homefeed;

import android.content.Context;
import androidx.compose.runtime.MutableState;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouModulesScreenKt$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ ModulesViewModel f$1;
    public final /* synthetic */ MutableState f$2;
    public final /* synthetic */ MutableState f$3;

    public /* synthetic */ ForYouModulesScreenKt$$ExternalSyntheticLambda4(Context context, ModulesViewModel modulesViewModel, MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
        this.f$1 = modulesViewModel;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$3;
        MutableState mutableState2 = this.f$2;
        ModulesViewModel modulesViewModel = this.f$1;
        Context context = this.f$0;
        switch (i) {
            case 0:
                mutableState2.setValue(Boolean.FALSE);
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "modules_off_cancel", null, null, 242);
                }
                modulesViewModel.toggleModuleVisibility((String) mutableState.getValue(), true);
                break;
            default:
                mutableState2.setValue(Boolean.FALSE);
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, "feed_community", "modules_off_cancel", null, null, 242);
                }
                modulesViewModel.toggleModuleVisibility((String) mutableState.getValue(), true);
                break;
        }
        return unit;
    }
}
