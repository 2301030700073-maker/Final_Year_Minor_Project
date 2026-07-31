package org.wikipedia.settings.homefeed;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavHostController;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import okio.Options;
import org.jsoup.Jsoup;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.homefeed.HomeFeedSettingsDestination;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7 implements Function4 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Function0 f$0;
    public final /* synthetic */ Context f$1;
    public final /* synthetic */ NavHostController f$2;

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(Context context, NavHostController navHostController, Function0 function0) {
        this.f$1 = context;
        this.f$2 = navHostController;
        this.f$0 = function0;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        final int i2 = 2;
        final int i3 = 1;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Function0 function0 = this.f$0;
        final NavHostController navHostController = this.f$2;
        final Context context = this.f$1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                boolean changed = gapComposer.changed(function0);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == neverEqualPolicy) {
                    rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(11, function0);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                Function0 function02 = (Function0) rememberedValue;
                boolean changedInstance = gapComposer.changedInstance(context) | gapComposer.changedInstance(navHostController);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = new Function0() { // from class: org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i4 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            NavHostController navHostController2 = navHostController;
                            Context context2 = context;
                            switch (i4) {
                                case 0:
                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(context2);
                                    if (instrument != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "feed_data_info", null, null, 242);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                case 1:
                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context2);
                                    if (instrument2 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "feed_modules_for_you", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE);
                                    break;
                                case 2:
                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context2);
                                    if (instrument3 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "feed_modules_community", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE);
                                    break;
                                case 3:
                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context2);
                                    if (instrument4 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "feed_data_info", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                default:
                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(context2);
                                    if (instrument5 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "feed_default_view", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE);
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function03 = (Function0) rememberedValue2;
                boolean changedInstance2 = gapComposer.changedInstance(context) | gapComposer.changedInstance(navHostController);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changedInstance2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new Function0() { // from class: org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i4 = i2;
                            Unit unit2 = Unit.INSTANCE;
                            NavHostController navHostController2 = navHostController;
                            Context context2 = context;
                            switch (i4) {
                                case 0:
                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(context2);
                                    if (instrument != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "feed_data_info", null, null, 242);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                case 1:
                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context2);
                                    if (instrument2 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "feed_modules_for_you", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE);
                                    break;
                                case 2:
                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context2);
                                    if (instrument3 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "feed_modules_community", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE);
                                    break;
                                case 3:
                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context2);
                                    if (instrument4 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "feed_data_info", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                default:
                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(context2);
                                    if (instrument5 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "feed_default_view", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE);
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Function0 function04 = (Function0) rememberedValue3;
                boolean changedInstance3 = gapComposer.changedInstance(context) | gapComposer.changedInstance(navHostController);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changedInstance3 || rememberedValue4 == neverEqualPolicy) {
                    final int i4 = 3;
                    rememberedValue4 = new Function0() { // from class: org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i42 = i4;
                            Unit unit2 = Unit.INSTANCE;
                            NavHostController navHostController2 = navHostController;
                            Context context2 = context;
                            switch (i42) {
                                case 0:
                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(context2);
                                    if (instrument != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "feed_data_info", null, null, 242);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                case 1:
                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context2);
                                    if (instrument2 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "feed_modules_for_you", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE);
                                    break;
                                case 2:
                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context2);
                                    if (instrument3 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "feed_modules_community", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE);
                                    break;
                                case 3:
                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context2);
                                    if (instrument4 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "feed_data_info", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                default:
                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(context2);
                                    if (instrument5 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "feed_default_view", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE);
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Function0 function05 = (Function0) rememberedValue4;
                boolean changedInstance4 = gapComposer.changedInstance(context) | gapComposer.changedInstance(navHostController);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changedInstance4 || rememberedValue5 == neverEqualPolicy) {
                    final int i5 = 4;
                    rememberedValue5 = new Function0() { // from class: org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i42 = i5;
                            Unit unit2 = Unit.INSTANCE;
                            NavHostController navHostController2 = navHostController;
                            Context context2 = context;
                            switch (i42) {
                                case 0:
                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(context2);
                                    if (instrument != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "feed_data_info", null, null, 242);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                case 1:
                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context2);
                                    if (instrument2 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "feed_modules_for_you", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE);
                                    break;
                                case 2:
                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context2);
                                    if (instrument3 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "feed_modules_community", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE);
                                    break;
                                case 3:
                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context2);
                                    if (instrument4 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "feed_data_info", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                default:
                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(context2);
                                    if (instrument5 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "feed_default_view", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE);
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                NodeTraversor.HomeFeedSettingsScreen(null, function02, function03, function04, function05, (Function0) rememberedValue5, gapComposer, 0);
                break;
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                Prefs prefs = Prefs.INSTANCE;
                HomePreferenceType homePreferenceSelection = Prefs.getHomePreferenceSelection();
                boolean changedInstance5 = gapComposer2.changedInstance(navHostController) | gapComposer2.changed(function0);
                Object rememberedValue6 = gapComposer2.rememberedValue();
                if (changedInstance5 || rememberedValue6 == neverEqualPolicy) {
                    rememberedValue6 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController, function0, 1);
                    gapComposer2.updateRememberedValue(rememberedValue6);
                }
                Function0 function06 = (Function0) rememberedValue6;
                boolean changedInstance6 = gapComposer2.changedInstance(context);
                Object rememberedValue7 = gapComposer2.rememberedValue();
                if (changedInstance6 || rememberedValue7 == neverEqualPolicy) {
                    rememberedValue7 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0(context, i2);
                    gapComposer2.updateRememberedValue(rememberedValue7);
                }
                Jsoup.HomeFeedDefaultViewScreen(null, homePreferenceSelection, function06, (Function1) rememberedValue7, gapComposer2, 0);
                break;
            default:
                GapComposer gapComposer3 = (GapComposer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScopeImpl) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                boolean changedInstance7 = gapComposer3.changedInstance(context) | gapComposer3.changedInstance(navHostController);
                Object rememberedValue8 = gapComposer3.rememberedValue();
                final int i6 = 0;
                if (changedInstance7 || rememberedValue8 == neverEqualPolicy) {
                    rememberedValue8 = new Function0() { // from class: org.wikipedia.settings.homefeed.HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda12
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i42 = i6;
                            Unit unit2 = Unit.INSTANCE;
                            NavHostController navHostController2 = navHostController;
                            Context context2 = context;
                            switch (i42) {
                                case 0:
                                    SVGAndroidRenderer instrument = ContextKt.getInstrument(context2);
                                    if (instrument != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, "feed_for_you", "feed_data_info", null, null, 242);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                case 1:
                                    SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context2);
                                    if (instrument2 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "feed_modules_for_you", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.ForYouModuleScreen.INSTANCE);
                                    break;
                                case 2:
                                    SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context2);
                                    if (instrument3 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "feed_modules_community", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.CommunityModuleScreen.INSTANCE);
                                    break;
                                case 3:
                                    SVGAndroidRenderer instrument4 = ContextKt.getInstrument(context2);
                                    if (instrument4 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "feed_data_info", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.FeedConfiguration.INSTANCE);
                                    break;
                                default:
                                    SVGAndroidRenderer instrument5 = ContextKt.getInstrument(context2);
                                    if (instrument5 != null) {
                                        SVGAndroidRenderer.submitInteraction$default(instrument5, "click", null, null, "feed_default_view", null, null, 246);
                                    }
                                    NavHostController.navigate$default(navHostController2, HomeFeedSettingsDestination.DefaultFeedViewScreen.INSTANCE);
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer3.updateRememberedValue(rememberedValue8);
                }
                Function0 function07 = (Function0) rememberedValue8;
                boolean changedInstance8 = gapComposer3.changedInstance(navHostController) | gapComposer3.changed(function0);
                Object rememberedValue9 = gapComposer3.rememberedValue();
                if (changedInstance8 || rememberedValue9 == neverEqualPolicy) {
                    rememberedValue9 = new HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda13(navHostController, function0, 0);
                    gapComposer3.updateRememberedValue(rememberedValue9);
                }
                Options.Companion.ForYouModulesScreen(null, function07, (Function0) rememberedValue9, gapComposer3, 0);
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(NavHostController navHostController, Function0 function0, Context context) {
        this.f$2 = navHostController;
        this.f$0 = function0;
        this.f$1 = context;
    }

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda7(Function0 function0, Context context, NavHostController navHostController) {
        this.f$0 = function0;
        this.f$1 = context;
        this.f$2 = navHostController;
    }
}
