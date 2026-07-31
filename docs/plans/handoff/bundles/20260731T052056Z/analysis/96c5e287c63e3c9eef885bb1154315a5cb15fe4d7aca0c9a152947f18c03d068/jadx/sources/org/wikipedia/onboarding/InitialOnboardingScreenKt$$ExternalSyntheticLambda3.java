package org.wikipedia.onboarding;

import android.content.Context;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.extensions.ContextKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class InitialOnboardingScreenKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Context f$0;
    public final /* synthetic */ List f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ InitialOnboardingScreenKt$$ExternalSyntheticLambda3(Context context, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, List list, Function0 function0, Function0 function02) {
        this.f$0 = context;
        this.f$1 = list;
        this.f$2 = function0;
        this.f$3 = function02;
        this.f$4 = parcelableSnapshotMutableIntState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$2;
        Object obj = this.f$4;
        List list = this.f$1;
        Object obj2 = this.f$3;
        Context context = this.f$0;
        switch (i) {
            case 0:
                Function0 function02 = (Function0) obj2;
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj;
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, ((OnboardingScreen) list.get(parcelableSnapshotMutableIntState.getIntValue())).name(), "next_button", null, null, 242);
                }
                if (parcelableSnapshotMutableIntState.getIntValue() == list.size() - 1) {
                    function0.invoke();
                } else {
                    parcelableSnapshotMutableIntState.setIntValue(parcelableSnapshotMutableIntState.getIntValue() + 1);
                }
                function02.invoke();
                break;
            default:
                Map map = (Map) obj2;
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj;
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", (String) map.get(list.get(defaultPagerState.getCurrentPage())), null, "skip_button", null, null, 244);
                }
                function0.invoke();
                break;
        }
        return unit;
    }

    public /* synthetic */ InitialOnboardingScreenKt$$ExternalSyntheticLambda3(Context context, Map map, List list, DefaultPagerState defaultPagerState, Function0 function0) {
        this.f$0 = context;
        this.f$3 = map;
        this.f$1 = list;
        this.f$4 = defaultPagerState;
        this.f$2 = function0;
    }
}
