package org.wikipedia.widgets.readingchallenge;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingChallengeInstallWidgetDialog f$0;

    public /* synthetic */ ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0(ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = readingChallengeInstallWidgetDialog;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ReadingChallengeInstallWidgetDialog readingChallengeInstallWidgetDialog = this.f$0;
        Object[] objArr = 0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(997714525, new ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda0(readingChallengeInstallWidgetDialog, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer2.changedInstance(readingChallengeInstallWidgetDialog);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2(readingChallengeInstallWidgetDialog, objArr == true ? 1 : 0);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    String stringResource = UtilsKt.stringResource(R.string.reading_challenge_install_prompt_title, gapComposer2);
                    String stringResource2 = UtilsKt.stringResource(R.string.reading_challenge_install_prompt_message, gapComposer2);
                    boolean changedInstance2 = gapComposer2.changedInstance(readingChallengeInstallWidgetDialog);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2(readingChallengeInstallWidgetDialog, i2);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    TabsBoxKt.InstallWidgetScreen(stringResource, stringResource2, (Function0) rememberedValue2, Expect_jvmKt.rememberComposableLambda(194727104, new RandomActivity$$ExternalSyntheticLambda1(14, readingChallengeInstallWidgetDialog, function0), gapComposer2), null, StreakProgressBarKt.lambda$1819238617, gapComposer2, 199680);
                    break;
                }
        }
        return unit;
    }
}
