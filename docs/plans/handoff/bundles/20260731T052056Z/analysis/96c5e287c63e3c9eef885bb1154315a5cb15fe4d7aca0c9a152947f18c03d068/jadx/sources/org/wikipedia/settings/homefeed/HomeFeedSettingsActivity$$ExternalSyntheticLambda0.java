package org.wikipedia.settings.homefeed;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.nodes.NodeUtils;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFeedSettingsActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HomeFeedSettingsStartDestination f$0;
    public final /* synthetic */ HomeFeedSettingsActivity f$1;

    public /* synthetic */ HomeFeedSettingsActivity$$ExternalSyntheticLambda0(HomeFeedSettingsStartDestination homeFeedSettingsStartDestination, HomeFeedSettingsActivity homeFeedSettingsActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = homeFeedSettingsStartDestination;
        this.f$1 = homeFeedSettingsActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        HomeFeedSettingsActivity homeFeedSettingsActivity = this.f$1;
        HomeFeedSettingsStartDestination homeFeedSettingsStartDestination = this.f$0;
        int i2 = 1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                int i3 = HomeFeedSettingsActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(51318103, new HomeFeedSettingsActivity$$ExternalSyntheticLambda0(homeFeedSettingsStartDestination, homeFeedSettingsActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                int i4 = HomeFeedSettingsActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    NavHostController rememberNavController = ExceptionsKt.rememberNavController(new Navigator[0], gapComposer);
                    boolean changedInstance = gapComposer.changedInstance(homeFeedSettingsActivity);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(26, homeFeedSettingsActivity);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    NodeUtils.HomeFeedSettingsNavHost(rememberNavController, homeFeedSettingsStartDestination, (Function0) rememberedValue, gapComposer, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
