package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Options;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TooltipKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$6;
    public final /* synthetic */ Object f$8;
    public final /* synthetic */ int f$9;

    public /* synthetic */ TooltipKt$$ExternalSyntheticLambda1(Modifier modifier, YearInReviewScreenData.GeoScreen geoScreen, Function2 function2, boolean z, Function1 function1, int i) {
        this.f$0 = modifier;
        this.f$1 = geoScreen;
        this.f$8 = function2;
        this.f$6 = z;
        this.f$2 = function1;
        this.f$9 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$9;
        Object obj3 = this.f$2;
        Object obj4 = this.f$8;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                TooltipKt.TooltipBox((PopupPositionProvider) obj6, (ComposableLambdaImpl) obj5, (TooltipStateImpl) obj3, this.f$6, (ComposableLambdaImpl) obj4, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                Options.Companion.OnThisDayGameCardProgress((Modifier) obj6, this.f$6, (OnThisDayCardGameState.InProgress) obj5, (String) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                YearInReviewDialog.GeoScreenContent((Modifier) obj6, (YearInReviewScreenData.GeoScreen) obj5, (Function2) obj4, this.f$6, (Function1) obj3, (GapComposer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ TooltipKt$$ExternalSyntheticLambda1(Modifier modifier, boolean z, OnThisDayCardGameState.InProgress inProgress, String str, Function0 function0, int i) {
        this.f$0 = modifier;
        this.f$6 = z;
        this.f$1 = inProgress;
        this.f$8 = str;
        this.f$2 = function0;
        this.f$9 = i;
    }

    public /* synthetic */ TooltipKt$$ExternalSyntheticLambda1(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipStateImpl tooltipStateImpl, boolean z, ComposableLambdaImpl composableLambdaImpl2, int i) {
        this.f$0 = popupPositionProvider;
        this.f$1 = composableLambdaImpl;
        this.f$2 = tooltipStateImpl;
        this.f$6 = z;
        this.f$8 = composableLambdaImpl2;
        this.f$9 = i;
    }
}
