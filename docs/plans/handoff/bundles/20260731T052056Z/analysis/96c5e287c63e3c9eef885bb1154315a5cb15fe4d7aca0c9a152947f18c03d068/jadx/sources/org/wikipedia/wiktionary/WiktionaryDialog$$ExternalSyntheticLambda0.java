package org.wikipedia.wiktionary;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WiktionaryDialog$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WiktionaryDialog f$0;

    public /* synthetic */ WiktionaryDialog$$ExternalSyntheticLambda0(WiktionaryDialog wiktionaryDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = wiktionaryDialog;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        WiktionaryDialog wiktionaryDialog = this.f$0;
        int i2 = 1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                List list = WiktionaryDialog.enabledLanguages;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(293984166, new WiktionaryDialog$$ExternalSyntheticLambda0(wiktionaryDialog, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                List list2 = WiktionaryDialog.enabledLanguages;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    WiktionaryViewModel wiktionaryViewModel = (WiktionaryViewModel) wiktionaryDialog.viewModel$delegate.getValue();
                    boolean changedInstance = gapComposer.changedInstance(wiktionaryDialog);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WiktionaryDialog$$ExternalSyntheticLambda2(0, wiktionaryDialog);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Jsoup.WiktionaryDialogScreen(wiktionaryViewModel, (Function1) rememberedValue, gapComposer, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
