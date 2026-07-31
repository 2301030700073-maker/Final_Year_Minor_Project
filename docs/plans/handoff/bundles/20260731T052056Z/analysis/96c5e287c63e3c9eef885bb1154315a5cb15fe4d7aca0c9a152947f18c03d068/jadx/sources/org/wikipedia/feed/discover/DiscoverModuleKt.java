package org.wikipedia.feed.discover;

import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.model.DiscoverCard;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.model.SeeAllRecommendationCard;
import org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda7;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DiscoverModuleKt {
    public static final List discoverPromptImageUrls = Room.listOf((Object[]) new String[]{"https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Red_eyed_tree_frog_edit2.jpg/500px-Red_eyed_tree_frog_edit2.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg/500px-Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Monet_w861.jpg/500px-Monet_w861.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/500px-Mercury_in_color_-_Prockter07_centered.jpg"});

    public static final void DiscoverArticlesModule(final Modifier modifier, final int i, final WikiSite wikiSite, final ForYouModule.Discover discover, final int i2, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, final Function0 function0, final Function1 function1, final Function1 function12, final Function0 function02, GapComposer gapComposer, final int i3) {
        wikiSite.getClass();
        discover.getClass();
        gapComposer.startRestartGroup(-1688190292);
        int i4 = i3 | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(i) ? 32 : 16) | (gapComposer.changedInstance(wikiSite) ? 256 : 128) | (gapComposer.changedInstance(discover) ? 2048 : 1024) | (gapComposer.changed(i2) ? 16384 : 8192) | (gapComposer.changedInstance(function2) ? 131072 : 65536) | (gapComposer.changedInstance(function22) ? 1048576 : 524288) | (gapComposer.changedInstance(function23) ? 8388608 : 4194304) | (gapComposer.changedInstance(function24) ? 67108864 : 33554432) | (gapComposer.changedInstance(function0) ? 536870912 : 268435456);
        int i5 = (gapComposer.changedInstance(function1) ? 4 : 2) | (gapComposer.changedInstance(function12) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128);
        if (gapComposer.shouldExecute(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 147) == 146) ? false : true)) {
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ForYouCardKt.ForYouModulePager(modifier, discover, function1, Expect_jvmKt.rememberComposableLambda(-454067496, new Function3() { // from class: org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int intValue = ((Integer) obj).intValue();
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue2 = ((Integer) obj3).intValue();
                    if ((intValue2 & 6) == 0) {
                        intValue2 |= gapComposer2.changed(intValue) ? 4 : 2;
                    }
                    final int i6 = 1;
                    final int i7 = 0;
                    if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                        ForYouModule.Discover discover2 = ForYouModule.Discover.this;
                        ForYouCard forYouCard = (ForYouCard) discover2.cards.get(intValue);
                        boolean z = forYouCard instanceof SeeAllRecommendationCard;
                        WikiSite wikiSite2 = wikiSite;
                        if (z) {
                            gapComposer2.startReplaceGroup(2022315675);
                            DiscoverModuleKt.SeeAllRecommendationsSlide(null, i, wikiSite2, function02, gapComposer2, 0);
                            gapComposer2.end(false);
                        } else if (forYouCard instanceof DiscoverCard) {
                            gapComposer2.startReplaceGroup(2022612159);
                            final DiscoverCard discoverCard = (DiscoverCard) forYouCard;
                            final HistoryEntry historyEntry = new HistoryEntry(44, discoverCard.title);
                            Context context2 = context;
                            String string = ContextKt.getString(context2, wikiSite2.languageCode, i2, new Object[0]);
                            PageTitle pageTitle = discoverCard.title;
                            Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_lightbulb_24dp, 0, gapComposer2);
                            String string2 = ContextKt.getString(context2, wikiSite2.languageCode, R.string.home_feed_discover_card_footer, string);
                            final Function2 function25 = function2;
                            boolean changed = gapComposer2.changed(function25) | gapComposer2.changed(forYouCard) | gapComposer2.changedInstance(historyEntry);
                            Object rememberedValue = gapComposer2.rememberedValue();
                            Object obj4 = Composer$Companion.Empty;
                            if (changed || rememberedValue == obj4) {
                                rememberedValue = new Function1() { // from class: org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda3
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        int i8 = i7;
                                        Unit unit = Unit.INSTANCE;
                                        HistoryEntry historyEntry2 = historyEntry;
                                        DiscoverCard discoverCard2 = discoverCard;
                                        Function2 function26 = function25;
                                        PageTitle pageTitle2 = (PageTitle) obj5;
                                        switch (i8) {
                                            case 0:
                                                pageTitle2.getClass();
                                                function26.invoke(discoverCard2, historyEntry2);
                                                break;
                                            case 1:
                                                pageTitle2.getClass();
                                                function26.invoke(discoverCard2, historyEntry2);
                                                break;
                                            default:
                                                pageTitle2.getClass();
                                                function26.invoke(discoverCard2, historyEntry2);
                                                break;
                                        }
                                        return unit;
                                    }
                                };
                                gapComposer2.updateRememberedValue(rememberedValue);
                            }
                            Function1 function13 = (Function1) rememberedValue;
                            final Function2 function26 = function23;
                            boolean changed2 = gapComposer2.changed(function26) | gapComposer2.changed(forYouCard) | gapComposer2.changedInstance(historyEntry);
                            Object rememberedValue2 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue2 == obj4) {
                                rememberedValue2 = new Function1() { // from class: org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda3
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        int i8 = i6;
                                        Unit unit = Unit.INSTANCE;
                                        HistoryEntry historyEntry2 = historyEntry;
                                        DiscoverCard discoverCard2 = discoverCard;
                                        Function2 function262 = function26;
                                        PageTitle pageTitle2 = (PageTitle) obj5;
                                        switch (i8) {
                                            case 0:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                            case 1:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                            default:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                        }
                                        return unit;
                                    }
                                };
                                gapComposer2.updateRememberedValue(rememberedValue2);
                            }
                            Function1 function14 = (Function1) rememberedValue2;
                            final Function2 function27 = function22;
                            boolean changed3 = gapComposer2.changed(function27) | gapComposer2.changed(forYouCard) | gapComposer2.changedInstance(historyEntry);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed3 || rememberedValue3 == obj4) {
                                final int i8 = 2;
                                rememberedValue3 = new Function1() { // from class: org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda3
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj5) {
                                        int i82 = i8;
                                        Unit unit = Unit.INSTANCE;
                                        HistoryEntry historyEntry2 = historyEntry;
                                        DiscoverCard discoverCard2 = discoverCard;
                                        Function2 function262 = function27;
                                        PageTitle pageTitle2 = (PageTitle) obj5;
                                        switch (i82) {
                                            case 0:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                            case 1:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                            default:
                                                pageTitle2.getClass();
                                                function262.invoke(discoverCard2, historyEntry2);
                                                break;
                                        }
                                        return unit;
                                    }
                                };
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            Function1 function15 = (Function1) rememberedValue3;
                            Object obj5 = function12;
                            boolean changed4 = gapComposer2.changed(obj5) | gapComposer2.changed(forYouCard);
                            Object rememberedValue4 = gapComposer2.rememberedValue();
                            if (changed4 || rememberedValue4 == obj4) {
                                rememberedValue4 = new Regex$$ExternalSyntheticLambda0(19, obj5, discoverCard);
                                gapComposer2.updateRememberedValue(rememberedValue4);
                            }
                            ForYouCardKt.ForYouCardContent(wikiSite2, pageTitle, null, 0, discover2, forYouCard, painterResource, string2, null, function13, function14, function15, function24, function0, R.string.explore_feed_customize_discover, (Function0) rememberedValue4, gapComposer2, 2097152, 268);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(2023719944);
                            gapComposer2.end(false);
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i4 & 14) | 3072 | ((i4 >> 6) & 112) | ((i5 << 6) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(i, wikiSite, discover, i2, function2, function22, function23, function24, function0, function1, function12, function02, i3) { // from class: org.wikipedia.feed.discover.DiscoverModuleKt$$ExternalSyntheticLambda1
                public final /* synthetic */ int f$1;
                public final /* synthetic */ Function1 f$10;
                public final /* synthetic */ Function1 f$11;
                public final /* synthetic */ Function0 f$12;
                public final /* synthetic */ WikiSite f$2;
                public final /* synthetic */ ForYouModule.Discover f$3;
                public final /* synthetic */ int f$4;
                public final /* synthetic */ Function2 f$5;
                public final /* synthetic */ Function2 f$6;
                public final /* synthetic */ Function2 f$7;
                public final /* synthetic */ Function2 f$8;
                public final /* synthetic */ Function0 f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    DiscoverModuleKt.DiscoverArticlesModule(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void DiscoverEnablePromptModule(Modifier modifier, WikiSite wikiSite, Function0 function0, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        gapComposer.startRestartGroup(566154277);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            int i3 = i2 << 15;
            ForYouCardKt.m907FeedFeatureTeaserModule0vH8DBg(ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_cta_title, new Object[0]), ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_cta_description, new Object[0]), ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_cta_button, new Object[0]), UnsignedKt.painterResource(R.drawable.ic_lightbulb_24dp, 0, gapComposer), discoverPromptImageUrls, modifier, RecyclerView.DECELERATION_RATE, function0, gapComposer, (458752 & i3) | 4096 | (i3 & 29360128), 64);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new DiscoverModuleKt$$ExternalSyntheticLambda2(i, 0, modifier, function0, wikiSite);
        }
    }

    public static final void SeeAllRecommendationsSlide(Modifier modifier, int i, WikiSite wikiSite, Function0 function0, GapComposer gapComposer, int i2) {
        Modifier modifier2;
        GapComposer gapComposer2 = gapComposer;
        wikiSite.getClass();
        gapComposer2.startRestartGroup(-1459582421);
        int i3 = i2 | 6 | (gapComposer2.changed(i) ? 32 : 16) | (gapComposer2.changedInstance(wikiSite) ? 256 : 128) | (gapComposer2.changedInstance(function0) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(OffsetKt.m134paddingVpY3zN4$default(ImageKt.m46backgroundbw27NRU(SizeKt.FillWholeMaxSize, ComposeColors.Green800, ColorKt.RectangleShape), 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, (i * 2) + 64, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m136paddingqDBjuR0$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            SkeletonArticlePreviewRow(48, gapComposer2, null, "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Africa_and_Europe_from_a_Million_Miles_Away.png/500px-Africa_and_Europe_from_a_Million_Miles_Away.png");
            modifier2 = Modifier.Companion.$$INSTANCE;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 16.0f));
            SkeletonArticlePreviewRow(48, gapComposer2, null, "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Edele_Tronier_Ruins_of_St_Catherine%27s_Church_in_Visby%2C_Gotland.jpg/500px-Edele_Tronier_Ruins_of_St_Catherine%27s_Church_in_Visby%2C_Gotland.jpg?_=20220126092935");
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 64.0f));
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(modifier2, 1.0f);
            String string = ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_see_all_title, new Object[0]);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).headlineMedium, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
            TextKt.m308TextNvy7gAk(string, fillMaxWidth, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer, 48, 0, 131064);
            OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(modifier2, 12.0f));
            TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite.languageCode, R.string.home_feed_discover_see_all_description, new Object[0]), SizeKt.fillMaxWidth(modifier2, 1.0f), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal2)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, 0L, 0L, null, null, ContextsKt.getSp(0.25d), 0L, null, 16777087), gapComposer, 48, 0, 131064);
            gapComposer2 = gapComposer;
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 24.0f));
            CardKt.OutlinedButton(function0, new HorizontalAlignElement(Alignment.Companion.CenterHorizontally), false, null, null, ImageKt.m45BorderStrokecXLIe8U(1.0f, Color.White), null, Expect_jvmKt.rememberComposableLambda(1226898243, new RandomModuleKt$$ExternalSyntheticLambda7(context, wikiSite, 2), gapComposer2), gapComposer2, ((i3 >> 9) & 14) | 806879232, 444);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(modifier2, 40.0f));
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9(i, i2, modifier2, function0, wikiSite);
        }
    }

    public static final void SkeletonArticlePreviewRow(int i, GapComposer gapComposer, Modifier modifier, String str) {
        Modifier modifier2;
        long Color;
        long Color2;
        gapComposer.startRestartGroup(151651862);
        int i2 = i | 6;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Color = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), 0.12f, Color.m431getColorSpaceimpl(Color.White));
            Float valueOf = Float.valueOf(RecyclerView.DECELERATION_RATE);
            long j = ComposeColors.Green600;
            Pair pair = new Pair(valueOf, new Color(j));
            Pair pair2 = new Pair(Float.valueOf(0.6f), new Color(j));
            Float valueOf2 = Float.valueOf(1.0f);
            Color2 = ColorKt.Color(Color.m433getRedimpl(j), Color.m432getGreenimpl(j), Color.m430getBlueimpl(j), RecyclerView.DECELERATION_RATE, Color.m431getColorSpaceimpl(j));
            LinearGradient m12linearGradientmHitzGk$default = Lock.m12linearGradientmHitzGk$default(new Pair[]{pair, pair2, new Pair(valueOf2, new Color(Color2))}, 0L, 0L, 14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.CenterVertically, gapComposer, 54);
            long j2 = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, fillMaxWidth);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf3 = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf3, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            AsyncImageKt.m774AsyncImagex1rPTaM(str, null, ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 90.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), new BrushPainter(new SolidColor(Color)), new BrushPainter(new SolidColor(Color)), null, null, ContentScale.Companion.Crop, gapComposer, 36918, 6, 31712);
            LayoutWeightElement layoutWeightElement = new LayoutWeightElement(1.0f, true);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(12.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer, 6);
            long j3 = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, layoutWeightElement);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            modifier2 = companion;
            BoxKt.Box(ImageKt.background$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(modifier2, 0.8f), 20.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(10.0f)), m12linearGradientmHitzGk$default, null, 6), gapComposer, 0);
            BoxKt.Box(ImageKt.background$default(ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(modifier2, 0.5f), 20.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(10.0f)), m12linearGradientmHitzGk$default, null, 6), gapComposer, 0);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedFeatureTeaserModuleKt$$ExternalSyntheticLambda3(modifier2, str, i, 3);
        }
    }
}
