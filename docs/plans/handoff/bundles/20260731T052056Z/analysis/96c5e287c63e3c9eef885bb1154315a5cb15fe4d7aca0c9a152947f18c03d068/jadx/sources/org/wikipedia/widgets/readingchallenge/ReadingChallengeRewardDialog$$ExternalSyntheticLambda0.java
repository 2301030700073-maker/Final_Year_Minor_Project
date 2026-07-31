package org.wikipedia.widgets.readingchallenge;

import android.content.Context;
import android.net.Uri;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.Collections;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ReadingChallengeRewardDialog$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ReadingChallengeRewardDialog f$0;

    public /* synthetic */ ReadingChallengeRewardDialog$$ExternalSyntheticLambda0(ReadingChallengeRewardDialog readingChallengeRewardDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = readingChallengeRewardDialog;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final ReadingChallengeRewardDialog readingChallengeRewardDialog = this.f$0;
        Object[] objArr = 0;
        final int i2 = 1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(1175367179, new ReadingChallengeRewardDialog$$ExternalSyntheticLambda0(readingChallengeRewardDialog, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(readingChallengeRewardDialog);
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        final Object[] objArr2 = objArr == true ? 1 : 0;
                        rememberedValue = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeRewardDialog$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i3 = objArr2;
                                Unit unit2 = Unit.INSTANCE;
                                ReadingChallengeRewardDialog readingChallengeRewardDialog2 = readingChallengeRewardDialog;
                                switch (i3) {
                                    case 0:
                                        readingChallengeRewardDialog2.dismiss();
                                        break;
                                    default:
                                        SVGAndroidRenderer sVGAndroidRenderer = readingChallengeRewardDialog2.instrument;
                                        Prefs prefs = Prefs.INSTANCE;
                                        Map singletonMap = Collections.singletonMap("streak_count", Integer.valueOf(Prefs.getReadingChallengeStreak()));
                                        singletonMap.getClass();
                                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "challenge_complete", null, "store_button", null, singletonMap, 116);
                                        Context requireContext = readingChallengeRewardDialog2.requireContext();
                                        String string = readingChallengeRewardDialog2.getString(R.string.reading_challenge_reward_url);
                                        string.getClass();
                                        Uri parse = Uri.parse(string);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(requireContext, parse);
                                        readingChallengeRewardDialog2.dismiss();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(readingChallengeRewardDialog);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Function0() { // from class: org.wikipedia.widgets.readingchallenge.ReadingChallengeRewardDialog$$ExternalSyntheticLambda2
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i3 = i2;
                                Unit unit2 = Unit.INSTANCE;
                                ReadingChallengeRewardDialog readingChallengeRewardDialog2 = readingChallengeRewardDialog;
                                switch (i3) {
                                    case 0:
                                        readingChallengeRewardDialog2.dismiss();
                                        break;
                                    default:
                                        SVGAndroidRenderer sVGAndroidRenderer = readingChallengeRewardDialog2.instrument;
                                        Prefs prefs = Prefs.INSTANCE;
                                        Map singletonMap = Collections.singletonMap("streak_count", Integer.valueOf(Prefs.getReadingChallengeStreak()));
                                        singletonMap.getClass();
                                        SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "challenge_complete", null, "store_button", null, singletonMap, 116);
                                        Context requireContext = readingChallengeRewardDialog2.requireContext();
                                        String string = readingChallengeRewardDialog2.getString(R.string.reading_challenge_reward_url);
                                        string.getClass();
                                        Uri parse = Uri.parse(string);
                                        parse.getClass();
                                        UriUtil.visitInExternalBrowser(requireContext, parse);
                                        readingChallengeRewardDialog2.dismiss();
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    StreakProgressBarKt.RewardScreen(function0, (Function0) rememberedValue2, gapComposer, 0);
                    break;
                }
        }
        return unit;
    }
}
