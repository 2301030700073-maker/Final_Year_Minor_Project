package org.wikipedia.feed.onboarding;

import android.content.Context;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.paging.CachedPagingDataKt$cachedIn$5;
import androidx.room.Room;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec$Asset;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.csrf.CsrfTokenClient$getToken$2;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import org.wikipedia.history.HistoryFragment$Companion$clearAllHistory$1$2;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ExploreFeedBuildingActivityKt {

    /* renamed from: lambda$-2113332089, reason: not valid java name */
    public static final ComposableLambdaImpl f41lambda$2113332089 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(24), false, -2113332089);

    public static final void ExploreFeedBuildingScreen(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function0.getClass();
        gapComposer.startRestartGroup(-1836981532);
        int i2 = i | 6 | (gapComposer.changedInstance(function0) ? 32 : 16);
        int i3 = 1;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            LottieCompositionSpec$Asset lottieCompositionSpec$Asset = new LottieCompositionSpec$Asset();
            gapComposer.startReplaceableGroup(-1248473602);
            Continuation continuation = null;
            CachedPagingDataKt$cachedIn$5 cachedPagingDataKt$cachedIn$5 = new CachedPagingDataKt$cachedIn$5(3, 4, null);
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            gapComposer.startReplaceableGroup(1388713953);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(new LottieCompositionResultImpl());
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            gapComposer.end(false);
            gapComposer.startReplaceableGroup(1388714244);
            boolean changed = gapComposer.changed("__LottieInternalDefaultCacheKey__");
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = Room.lottieTask(context, lottieCompositionSpec$Asset, "__LottieInternalDefaultCacheKey__");
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            gapComposer.end(false);
            Updater.LaunchedEffect(lottieCompositionSpec$Asset, "__LottieInternalDefaultCacheKey__", new CsrfTokenClient$getToken$2(cachedPagingDataKt$cachedIn$5, context, lottieCompositionSpec$Asset, mutableState, null), gapComposer);
            LottieCompositionResultImpl lottieCompositionResultImpl = (LottieCompositionResultImpl) mutableState.getValue();
            gapComposer.end(false);
            boolean z = (i2 & 112) == 32;
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (z || rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new HistoryFragment$Companion$clearAllHistory$1$2(function0, continuation, i3);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(gapComposer, Unit.INSTANCE, (Function2) rememberedValue3);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            CardKt.m270ScaffoldTvnljyQ(OffsetKt.safeDrawingPadding(companion), null, null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-2066960973, new CommunityContentTabKt$$ExternalSyntheticLambda47(12, lottieCompositionResultImpl), gapComposer), gapComposer, 805306368, 446);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda9(i, modifier2, function0, 3);
        }
    }
}
