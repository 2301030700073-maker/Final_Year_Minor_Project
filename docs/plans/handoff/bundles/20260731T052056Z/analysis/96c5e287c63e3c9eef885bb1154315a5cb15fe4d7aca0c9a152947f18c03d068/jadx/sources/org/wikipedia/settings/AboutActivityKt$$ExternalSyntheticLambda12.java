package org.wikipedia.settings;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda12 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda12(Modifier modifier, Function1 function1, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                PrefsIoUtil.AboutWikipediaImage(modifier, function1, gapComposer, Updater.updateChangedFlags(1));
                break;
            default:
                ReadingChallengePlaygroundDialogKt.FilterView(modifier, function1, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
