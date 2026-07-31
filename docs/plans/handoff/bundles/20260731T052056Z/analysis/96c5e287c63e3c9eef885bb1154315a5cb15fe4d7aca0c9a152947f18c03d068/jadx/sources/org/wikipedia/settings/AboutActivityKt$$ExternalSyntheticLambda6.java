package org.wikipedia.settings;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AboutActivityKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ List f$1;

    public /* synthetic */ AboutActivityKt$$ExternalSyntheticLambda6(int i, int i2, Modifier modifier, List list) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = list;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        List list = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                PrefsIoUtil.AboutScreenBody(Updater.updateChangedFlags(7), gapComposer, modifier, list);
                break;
            default:
                ReadingChallengePlaygroundDialogKt.CategoryTable(Updater.updateChangedFlags(7), gapComposer, modifier, list);
                break;
        }
        return unit;
    }
}
