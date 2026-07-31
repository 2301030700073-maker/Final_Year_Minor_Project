package org.wikipedia.feed;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.discover.DiscoverModuleKt;
import org.wikipedia.feed.model.DiscoverEnablePromptCard;
import org.wikipedia.feed.places.PlacesOfInterestModuleKt;
import org.wikipedia.feed.wikigames.GamesModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda8 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ForYouModule f$0;
    public final /* synthetic */ float f$1;
    public final /* synthetic */ Function2 f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ int f$4;
    public final /* synthetic */ WikiSite f$5;
    public final /* synthetic */ Function1 f$6;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda8(float f, int i, int i2, Function1 function1, Function2 function2, WikiSite wikiSite, ForYouModule forYouModule) {
        this.$r8$classId = 1;
        this.f$0 = forYouModule;
        this.f$1 = f;
        this.f$3 = i;
        this.f$5 = wikiSite;
        this.f$6 = function1;
        this.f$2 = function2;
        this.f$4 = i2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        int i2 = this.f$4;
        Unit unit = Unit.INSTANCE;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Function1 function1 = this.f$6;
        int i3 = this.f$3;
        Function2 function2 = this.f$2;
        float f = this.f$1;
        ForYouModule forYouModule = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ForYouModule.PlacesOfInterest placesOfInterest = (ForYouModule.PlacesOfInterest) forYouModule;
                    if (!placesOfInterest.isLoading) {
                        boolean z = placesOfInterest.hasLocationPermission;
                        WikiSite wikiSite = this.f$5;
                        if (!z) {
                            gapComposer.startReplaceGroup(956242269);
                            function2.invoke(new DiscoverEnablePromptCard(1), Integer.valueOf(i3));
                            Modifier navigationBarsPadding = OffsetKt.navigationBarsPadding(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f), ComposeColors.Green800, rectangleShapeKt$RectangleShape$1), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, (i2 * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13));
                            boolean changed = gapComposer.changed(function1);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == neverEqualPolicy) {
                                rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 18);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            PlacesOfInterestModuleKt.PlacesOfInterestLocationPromptModule(navigationBarsPadding, wikiSite, (Function0) rememberedValue, gapComposer, 0);
                            gapComposer.end(false);
                            break;
                        } else {
                            gapComposer.startReplaceGroup(957046843);
                            Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f);
                            boolean changed2 = gapComposer.changed(function1);
                            Object rememberedValue2 = gapComposer.rememberedValue();
                            if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 20);
                                gapComposer.updateRememberedValue(rememberedValue2);
                            }
                            Function2 function22 = (Function2) rememberedValue2;
                            boolean changed3 = gapComposer.changed(function1);
                            Object rememberedValue3 = gapComposer.rememberedValue();
                            if (changed3 || rememberedValue3 == neverEqualPolicy) {
                                rememberedValue3 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 21);
                                gapComposer.updateRememberedValue(rememberedValue3);
                            }
                            Function2 function23 = (Function2) rememberedValue3;
                            boolean changed4 = gapComposer.changed(function1);
                            Object rememberedValue4 = gapComposer.rememberedValue();
                            if (changed4 || rememberedValue4 == neverEqualPolicy) {
                                rememberedValue4 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 22);
                                gapComposer.updateRememberedValue(rememberedValue4);
                            }
                            Function2 function24 = (Function2) rememberedValue4;
                            boolean changed5 = gapComposer.changed(function1);
                            Object rememberedValue5 = gapComposer.rememberedValue();
                            if (changed5 || rememberedValue5 == neverEqualPolicy) {
                                rememberedValue5 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 23);
                                gapComposer.updateRememberedValue(rememberedValue5);
                            }
                            Function2 function25 = (Function2) rememberedValue5;
                            boolean changed6 = gapComposer.changed(function1) | gapComposer.changed(forYouModule);
                            Object rememberedValue6 = gapComposer.rememberedValue();
                            if (changed6 || rememberedValue6 == neverEqualPolicy) {
                                rememberedValue6 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function1, forYouModule, 5);
                                gapComposer.updateRememberedValue(rememberedValue6);
                            }
                            Function0 function0 = (Function0) rememberedValue6;
                            boolean changed7 = gapComposer.changed(function2) | gapComposer.changed(i3);
                            Object rememberedValue7 = gapComposer.rememberedValue();
                            if (changed7 || rememberedValue7 == neverEqualPolicy) {
                                rememberedValue7 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i3, 5, function2);
                                gapComposer.updateRememberedValue(rememberedValue7);
                            }
                            Function1 function12 = (Function1) rememberedValue7;
                            boolean changed8 = gapComposer.changed(function1);
                            Object rememberedValue8 = gapComposer.rememberedValue();
                            if (changed8 || rememberedValue8 == neverEqualPolicy) {
                                rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 20);
                                gapComposer.updateRememberedValue(rememberedValue8);
                            }
                            PlacesOfInterestModuleKt.PlacesOfInterestArticlesModule(m140height3ABfNKs, wikiSite, placesOfInterest, function22, function23, function24, function25, function0, function12, (Function1) rememberedValue8, gapComposer, 0);
                            gapComposer.end(false);
                            break;
                        }
                    } else {
                        gapComposer.startReplaceGroup(955809974);
                        Modifier m140height3ABfNKs2 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j = gapComposer.compositeKeyHashCode;
                        int i4 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m140height3ABfNKs2);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer.startReusableNode();
                        if (gapComposer.inserting) {
                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer.useNode();
                        }
                        Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        ForYouCardKt.LoadingIndicator(null, gapComposer, 0, 1);
                        gapComposer.end(true);
                        gapComposer.end(false);
                        break;
                    }
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ForYouModule.Games games = (ForYouModule.Games) forYouModule;
                    if (!games.isLoading) {
                        gapComposer2.startReplaceGroup(33024747);
                        Modifier navigationBarsPadding2 = OffsetKt.navigationBarsPadding(OffsetKt.m136paddingqDBjuR0$default(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f), ComposeColors.Green800, rectangleShapeKt$RectangleShape$1), RecyclerView.DECELERATION_RATE, (i3 * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13));
                        boolean changed9 = gapComposer2.changed(function1);
                        Object rememberedValue9 = gapComposer2.rememberedValue();
                        if (changed9 || rememberedValue9 == neverEqualPolicy) {
                            rememberedValue9 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 18);
                            gapComposer2.updateRememberedValue(rememberedValue9);
                        }
                        Function1 function13 = (Function1) rememberedValue9;
                        boolean changed10 = gapComposer2.changed(function1);
                        Object rememberedValue10 = gapComposer2.rememberedValue();
                        if (changed10 || rememberedValue10 == neverEqualPolicy) {
                            rememberedValue10 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 17);
                            gapComposer2.updateRememberedValue(rememberedValue10);
                        }
                        Function0 function02 = (Function0) rememberedValue10;
                        boolean changed11 = gapComposer2.changed(function1);
                        Object rememberedValue11 = gapComposer2.rememberedValue();
                        if (changed11 || rememberedValue11 == neverEqualPolicy) {
                            rememberedValue11 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 19);
                            gapComposer2.updateRememberedValue(rememberedValue11);
                        }
                        Function2 function26 = (Function2) rememberedValue11;
                        boolean changed12 = gapComposer2.changed(function1) | gapComposer2.changed(forYouModule);
                        Object rememberedValue12 = gapComposer2.rememberedValue();
                        if (changed12 || rememberedValue12 == neverEqualPolicy) {
                            rememberedValue12 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function1, forYouModule, 4);
                            gapComposer2.updateRememberedValue(rememberedValue12);
                        }
                        Function0 function03 = (Function0) rememberedValue12;
                        boolean changed13 = gapComposer2.changed(function2) | gapComposer2.changed(i2);
                        Object rememberedValue13 = gapComposer2.rememberedValue();
                        if (changed13 || rememberedValue13 == neverEqualPolicy) {
                            rememberedValue13 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i2, 4, function2);
                            gapComposer2.updateRememberedValue(rememberedValue13);
                        }
                        Function1 function14 = (Function1) rememberedValue13;
                        boolean changed14 = gapComposer2.changed(function1);
                        Object rememberedValue14 = gapComposer2.rememberedValue();
                        if (changed14 || rememberedValue14 == neverEqualPolicy) {
                            rememberedValue14 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 19);
                            gapComposer2.updateRememberedValue(rememberedValue14);
                        }
                        GamesModuleKt.GamesModule(navigationBarsPadding2, this.f$5, games, function13, function02, function26, function03, function14, (Function1) rememberedValue14, gapComposer2, 0);
                        gapComposer2.end(false);
                        break;
                    } else {
                        gapComposer2.startReplaceGroup(32641401);
                        Modifier m140height3ABfNKs3 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m140height3ABfNKs3);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        ForYouCardKt.LoadingIndicator(null, gapComposer2, 0, 1);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                        break;
                    }
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    ForYouModule.Discover discover = (ForYouModule.Discover) forYouModule;
                    if (!discover.isLoading) {
                        boolean z2 = discover.isEnabled;
                        int i6 = this.f$4;
                        WikiSite wikiSite2 = this.f$5;
                        if (!z2) {
                            gapComposer3.startReplaceGroup(-1652837430);
                            function2.invoke(new DiscoverEnablePromptCard(0), Integer.valueOf(i3));
                            Modifier navigationBarsPadding3 = OffsetKt.navigationBarsPadding(OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f), ComposeColors.Green800, rectangleShapeKt$RectangleShape$1), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, (i6 * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13));
                            boolean changed15 = gapComposer3.changed(function1);
                            Object rememberedValue15 = gapComposer3.rememberedValue();
                            if (changed15 || rememberedValue15 == neverEqualPolicy) {
                                rememberedValue15 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 14);
                                gapComposer3.updateRememberedValue(rememberedValue15);
                            }
                            DiscoverModuleKt.DiscoverEnablePromptModule(navigationBarsPadding3, wikiSite2, (Function0) rememberedValue15, gapComposer3, 0);
                            gapComposer3.end(false);
                            break;
                        } else {
                            gapComposer3.startReplaceGroup(-1652038870);
                            Modifier m140height3ABfNKs4 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f);
                            int displayStringRes = discover.updateFrequency.getDisplayStringRes();
                            boolean changed16 = gapComposer3.changed(function1);
                            Object rememberedValue16 = gapComposer3.rememberedValue();
                            if (changed16 || rememberedValue16 == neverEqualPolicy) {
                                rememberedValue16 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 7);
                                gapComposer3.updateRememberedValue(rememberedValue16);
                            }
                            Function2 function27 = (Function2) rememberedValue16;
                            boolean changed17 = gapComposer3.changed(function1);
                            Object rememberedValue17 = gapComposer3.rememberedValue();
                            if (changed17 || rememberedValue17 == neverEqualPolicy) {
                                rememberedValue17 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 8);
                                gapComposer3.updateRememberedValue(rememberedValue17);
                            }
                            Function2 function28 = (Function2) rememberedValue17;
                            boolean changed18 = gapComposer3.changed(function1);
                            Object rememberedValue18 = gapComposer3.rememberedValue();
                            if (changed18 || rememberedValue18 == neverEqualPolicy) {
                                rememberedValue18 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 9);
                                gapComposer3.updateRememberedValue(rememberedValue18);
                            }
                            Function2 function29 = (Function2) rememberedValue18;
                            boolean changed19 = gapComposer3.changed(function1);
                            Object rememberedValue19 = gapComposer3.rememberedValue();
                            if (changed19 || rememberedValue19 == neverEqualPolicy) {
                                rememberedValue19 = new HomeScreenKt$$ExternalSyntheticLambda7(function1, 10);
                                gapComposer3.updateRememberedValue(rememberedValue19);
                            }
                            Function2 function210 = (Function2) rememberedValue19;
                            boolean changed20 = gapComposer3.changed(function1) | gapComposer3.changed(forYouModule);
                            Object rememberedValue20 = gapComposer3.rememberedValue();
                            if (changed20 || rememberedValue20 == neverEqualPolicy) {
                                rememberedValue20 = new ForYouContentTabKt$$ExternalSyntheticLambda18(function1, forYouModule, 1);
                                gapComposer3.updateRememberedValue(rememberedValue20);
                            }
                            Function0 function04 = (Function0) rememberedValue20;
                            boolean changed21 = gapComposer3.changed(function2) | gapComposer3.changed(i3);
                            Object rememberedValue21 = gapComposer3.rememberedValue();
                            if (changed21 || rememberedValue21 == neverEqualPolicy) {
                                rememberedValue21 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i3, 1, function2);
                                gapComposer3.updateRememberedValue(rememberedValue21);
                            }
                            Function1 function15 = (Function1) rememberedValue21;
                            boolean changed22 = gapComposer3.changed(function1);
                            Object rememberedValue22 = gapComposer3.rememberedValue();
                            if (changed22 || rememberedValue22 == neverEqualPolicy) {
                                rememberedValue22 = new HomeScreenKt$$ExternalSyntheticLambda8(function1, 15);
                                gapComposer3.updateRememberedValue(rememberedValue22);
                            }
                            Function1 function16 = (Function1) rememberedValue22;
                            boolean changed23 = gapComposer3.changed(function1);
                            Object rememberedValue23 = gapComposer3.rememberedValue();
                            if (changed23 || rememberedValue23 == neverEqualPolicy) {
                                rememberedValue23 = new HomeScreenKt$$ExternalSyntheticLambda4(function1, 15);
                                gapComposer3.updateRememberedValue(rememberedValue23);
                            }
                            DiscoverModuleKt.DiscoverArticlesModule(m140height3ABfNKs4, i6, wikiSite2, discover, displayStringRes, function27, function28, function29, function210, function04, function15, function16, (Function0) rememberedValue23, gapComposer3, 0);
                            gapComposer3.end(false);
                            break;
                        }
                    } else {
                        gapComposer3.startReplaceGroup(-1653257387);
                        Modifier m140height3ABfNKs5 = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), f);
                        MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j3 = gapComposer3.compositeKeyHashCode;
                        int i7 = (int) (j3 ^ (j3 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, m140height3ABfNKs5);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                        gapComposer3.startReusableNode();
                        if (gapComposer3.inserting) {
                            gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                        } else {
                            gapComposer3.useNode();
                        }
                        Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer3, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer3, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                        ForYouCardKt.LoadingIndicator(null, gapComposer3, 0, 1);
                        gapComposer3.end(true);
                        gapComposer3.end(false);
                        break;
                    }
                }
        }
        return unit;
    }

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda8(ForYouModule forYouModule, float f, Function2 function2, int i, int i2, WikiSite wikiSite, Function1 function1, int i3) {
        this.$r8$classId = i3;
        this.f$0 = forYouModule;
        this.f$1 = f;
        this.f$2 = function2;
        this.f$3 = i;
        this.f$4 = i2;
        this.f$5 = wikiSite;
        this.f$6 = function1;
    }
}
