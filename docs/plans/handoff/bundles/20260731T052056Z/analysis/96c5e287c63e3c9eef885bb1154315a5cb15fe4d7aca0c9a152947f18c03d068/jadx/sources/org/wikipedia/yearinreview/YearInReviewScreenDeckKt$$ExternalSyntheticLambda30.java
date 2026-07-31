package org.wikipedia.yearinreview;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;
import org.wikipedia.yearinreview.YearInReviewScreenData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewScreenDeckKt$$ExternalSyntheticLambda30 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Function f$4;
    public final /* synthetic */ int f$5;

    public /* synthetic */ YearInReviewScreenDeckKt$$ExternalSyntheticLambda30(int i, Modifier modifier, String str, Function0 function0, boolean z) {
        this.f$1 = str;
        this.f$4 = function0;
        this.f$0 = modifier;
        this.f$2 = z;
        this.f$5 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$5;
        Function function = this.f$4;
        Object obj3 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                YearInReviewDialog.StandardScreenContent(this.f$0, (YearInReviewScreenData.StandardScreen) obj3, this.f$2, (Function1) function, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ReadingChallengePlaygroundDialogKt.ChipButton((String) obj3, (Function0) function, this.f$0, this.f$2, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ YearInReviewScreenDeckKt$$ExternalSyntheticLambda30(Modifier modifier, YearInReviewScreenData.StandardScreen standardScreen, boolean z, Function1 function1, int i) {
        this.f$0 = modifier;
        this.f$1 = standardScreen;
        this.f$2 = z;
        this.f$4 = function1;
        this.f$5 = i;
    }
}
