package org.wikipedia.compose.components;

import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda3;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.PinnedScrollBehavior;
import androidx.compose.material3.SwitchKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okio.Options;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SettingsKt$$ExternalSyntheticLambda8 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ SettingsKt$$ExternalSyntheticLambda8(PinnedScrollBehavior pinnedScrollBehavior, boolean z, Function0 function0) {
        this.$r8$classId = 5;
        this.f$1 = pinnedScrollBehavior;
        this.f$0 = z;
        this.f$2 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        boolean z = this.f$0;
        int i2 = 2;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        boolean z2 = true;
        switch (i) {
            case 0:
                Function2 function2 = (Function2) obj4;
                ToggleSettingItem toggleSettingItem = (ToggleSettingItem) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(function2) | gapComposer.changed(toggleSettingItem);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda8(11, function2, toggleSettingItem);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    long j = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.LocalColorScheme;
                    SwitchKt.Switch(this.f$0, (Function1) rememberedValue, null, false, CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal2)).outline, j, ((ColorScheme) gapComposer.consume(staticProvidableCompositionLocal2)).outline, gapComposer), gapComposer, 0);
                    break;
                }
            case 1:
                ((Integer) obj2).getClass();
                Options.Companion.OnThisDayGameCountdown((OnThisDayCardGameState.Completed) obj4, z, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                InitialOnboardingScreenKt.InitialOnboardingLanguageItem((AppLanguageState) obj4, (String) obj3, z, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 3:
                Resource resource = (Resource) obj4;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    if (z && (resource instanceof Resource.Success) && ((RecommendedReadingListInterestsViewModel.UiState) ((Resource.Success) resource).data).selectedItems.isEmpty()) {
                        z2 = false;
                    }
                    IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer2), UtilsKt.stringResource(R.string.search_back_button_content_description, gapComposer2), OffsetKt.m132padding3ABfNKs(ClipKt.alpha(ImageKt.m51clickableoSLSa3U$default(14, SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 48.0f), null, function0, z2), z2 ? 1.0f : 0.5f), 12.0f), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer2, 8, 0);
                    break;
                }
            case 4:
                Function1 function1 = (Function1) obj4;
                MutableState mutableState = (MutableState) obj3;
                GapComposer gapComposer3 = (GapComposer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean z3 = this.f$0;
                    boolean changed2 = gapComposer3.changed(z3) | gapComposer3.changed(function1);
                    Object rememberedValue2 = gapComposer3.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new RecommendedReadingListSettingsScreenKt$$ExternalSyntheticLambda4(z3, function1, mutableState, 1);
                        gapComposer3.updateRememberedValue(rememberedValue2);
                    }
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = WikipediaColorKt.LocalWikipediaColor;
                    long j2 = ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).paperColor;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = ColorSchemeKt.LocalColorScheme;
                    SwitchKt.Switch(z3, (Function1) rememberedValue2, null, false, CardKt.m276colorsV1nXRL4(((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).paperColor, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal3)).progressiveColor, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal4)).outline, j2, ((ColorScheme) gapComposer3.consume(staticProvidableCompositionLocal4)).outline, gapComposer3), gapComposer3, 0);
                    break;
                }
            default:
                PinnedScrollBehavior pinnedScrollBehavior = (PinnedScrollBehavior) obj4;
                Function0 function02 = (Function0) obj3;
                GapComposer gapComposer4 = (GapComposer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                    break;
                } else {
                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1727981469, new GamesHubScreenKt$$ExternalSyntheticLambda5(i2, z), gapComposer4);
                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(-1227778911, new BackHandlerKt$$ExternalSyntheticLambda3(z, function02), gapComposer4);
                    float f = TopAppBarDefaults.TopAppBarExpandedHeight;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = WikipediaColorKt.LocalWikipediaColor;
                    AppBarKt.m257TopAppBarGHTll3U(rememberComposableLambda, null, rememberComposableLambda2, null, RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal5)).paperColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal5)).paperColor, 0L, gapComposer4, 60), pinnedScrollBehavior, gapComposer4, 390, 58);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ SettingsKt$$ExternalSyntheticLambda8(int i, Object obj, Object obj2, boolean z) {
        this.$r8$classId = i;
        this.f$0 = z;
        this.f$1 = obj;
        this.f$2 = obj2;
    }

    public /* synthetic */ SettingsKt$$ExternalSyntheticLambda8(OnThisDayCardGameState.Completed completed, boolean z, Function0 function0, int i) {
        this.$r8$classId = 1;
        this.f$1 = completed;
        this.f$0 = z;
        this.f$2 = function0;
    }

    public /* synthetic */ SettingsKt$$ExternalSyntheticLambda8(AppLanguageState appLanguageState, String str, boolean z, int i) {
        this.$r8$classId = 2;
        this.f$1 = appLanguageState;
        this.f$2 = str;
        this.f$0 = z;
    }
}
