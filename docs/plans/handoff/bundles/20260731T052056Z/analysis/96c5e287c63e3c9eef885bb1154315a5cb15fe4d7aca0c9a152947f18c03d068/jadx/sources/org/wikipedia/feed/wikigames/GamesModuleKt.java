package org.wikipedia.feed.wikigames;

import android.content.Context;
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
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.PercentCornerSize;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.List;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.compose.ComposeColors;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.model.WikiGameCard;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GamesModuleKt {
    public static final List promptImageUrls = Room.listOf((Object[]) new String[]{"https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Red_eyed_tree_frog_edit2.jpg/500px-Red_eyed_tree_frog_edit2.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg/500px-Palais_de_l%27Industrie_-_%C3%89douard_Baldus.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Monet_w861.jpg/500px-Monet_w861.jpg", "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/500px-Mercury_in_color_-_Prockter07_centered.jpg"});

    public static final void GameEventCard(Modifier modifier, OnThisDay.Event event, Function0 function0, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-1998506784);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(event) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        int i3 = i2;
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            TabsBoxKt.m902WikiCardjfnsLPA(modifier, RecyclerView.DECELERATION_RATE, CardKt.m274cardColorsro_MJ88(ComposeColors.Gray700, 0L, gapComposer, 6, 14), null, function0, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f), Expect_jvmKt.rememberComposableLambda(1012046029, new FeedComponentsKt$$ExternalSyntheticLambda2(i4, event), gapComposer), gapComposer, (i3 & 14) | 1572912 | (57344 & (i3 << 6)), 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) modifier, (Object) event, (Object) function0, i, 17);
        }
    }

    public static final void GamesModule(Modifier modifier, final WikiSite wikiSite, final ForYouModule.Games games, final Function1 function1, final Function0 function0, final Function2 function2, final Function0 function02, Function1 function12, final Function1 function13, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        games.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function02.getClass();
        function12.getClass();
        function13.getClass();
        gapComposer.startRestartGroup(1618168502);
        int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changedInstance(wikiSite) ? 32 : 16) | (gapComposer.changedInstance(games) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function0) ? 16384 : 8192) | (gapComposer.changedInstance(function2) ? 131072 : 65536) | (gapComposer.changedInstance(function02) ? 1048576 : 524288) | (gapComposer.changedInstance(function12) ? 8388608 : 4194304) | (gapComposer.changedInstance(function13) ? 67108864 : 33554432);
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            final Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            ForYouCardKt.ForYouModulePager(modifier, games, function12, Expect_jvmKt.rememberComposableLambda(451417314, new Function3() { // from class: org.wikipedia.feed.wikigames.GamesModuleKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int intValue = ((Integer) obj).intValue();
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue2 = ((Integer) obj3).intValue();
                    if ((intValue2 & 6) == 0) {
                        intValue2 |= gapComposer2.changed(intValue) ? 4 : 2;
                    }
                    if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                        ForYouModule.Games games2 = ForYouModule.Games.this;
                        float f = games2.cards.size() > 1 ? 40.0f : 16.0f;
                        Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(Modifier.Companion.$$INSTANCE, 16.0f, RecyclerView.DECELERATION_RATE, 2);
                        Object obj4 = (ForYouCard) games2.cards.get(intValue);
                        boolean z = obj4 instanceof WikiGameCard;
                        WikiSite wikiSite2 = wikiSite;
                        if (z) {
                            gapComposer2.startReplaceGroup(630844329);
                            WikiGameCard wikiGameCard = (WikiGameCard) obj4;
                            WikiGame$OnThisDayGame wikiGame$OnThisDayGame = wikiGameCard.wikiGame;
                            if (!(wikiGame$OnThisDayGame instanceof WikiGame$OnThisDayGame)) {
                                throw Modifier.CC.m(gapComposer2, 20349817, false);
                            }
                            gapComposer2.startReplaceGroup(20352252);
                            OnThisDayCardGameState onThisDayCardGameState = wikiGame$OnThisDayGame.state;
                            Object obj5 = function1;
                            boolean changed = gapComposer2.changed(obj5) | gapComposer2.changed(wikiGame$OnThisDayGame);
                            Object rememberedValue = gapComposer2.rememberedValue();
                            Object obj6 = Composer$Companion.Empty;
                            if (changed || rememberedValue == obj6) {
                                rememberedValue = new Regex$$ExternalSyntheticLambda0(25, obj5, wikiGame$OnThisDayGame);
                                gapComposer2.updateRememberedValue(rememberedValue);
                            }
                            Function0 function03 = (Function0) rememberedValue;
                            Object obj7 = function2;
                            boolean changed2 = gapComposer2.changed(obj7) | gapComposer2.changedInstance(games2) | gapComposer2.changed(obj4);
                            Object rememberedValue2 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue2 == obj6) {
                                rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda29(obj7, games2, wikiGameCard, 15);
                                gapComposer2.updateRememberedValue(rememberedValue2);
                            }
                            Function0 function04 = (Function0) rememberedValue2;
                            Object obj8 = function13;
                            boolean changed3 = gapComposer2.changed(obj4) | gapComposer2.changed(obj8);
                            Object rememberedValue3 = gapComposer2.rememberedValue();
                            if (changed3 || rememberedValue3 == obj6) {
                                rememberedValue3 = new Regex$$ExternalSyntheticLambda0(26, obj8, wikiGameCard);
                                gapComposer2.updateRememberedValue(rememberedValue3);
                            }
                            GamesModuleKt.m909OnThisDayGameModuleCardaA_HZ9I(m134paddingVpY3zN4$default, wikiSite2, onThisDayCardGameState, f, function03, function04, function02, (Function0) rememberedValue3, gapComposer2, 6);
                            gapComposer2.end(false);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(631480511);
                            Context context2 = context;
                            ForYouCardKt.m907FeedFeatureTeaserModule0vH8DBg(ContextKt.getString(context2, wikiSite2.languageCode, R.string.home_feed_games_module_cta_prompt_title, new Object[0]), ContextKt.getString(context2, wikiSite2.languageCode, R.string.home_feed_games_module_cta_prompt_subtitle, new Object[0]), ContextKt.getString(context2, wikiSite2.languageCode, R.string.home_feed_games_module_cta_prompt_button_text, new Object[0]), UnsignedKt.painterResource(R.drawable.ic_esports_24, 0, gapComposer2), GamesModuleKt.promptImageUrls, m134paddingVpY3zN4$default, f, function0, gapComposer2, 200704, 0);
                            gapComposer2.end(false);
                        }
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i2 & 14) | 3072 | ((i2 >> 3) & 112) | ((i2 >> 15) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda3(modifier, wikiSite, games, function1, function0, function2, function02, function12, function13, i);
        }
    }

    /* renamed from: OnThisDayGameModuleCard-aA_HZ9I, reason: not valid java name */
    public static final void m909OnThisDayGameModuleCardaA_HZ9I(final Modifier modifier, WikiSite wikiSite, final OnThisDayCardGameState onThisDayCardGameState, final float f, final Function0 function0, final Function0 function02, final Function0 function03, final Function0 function04, GapComposer gapComposer, final int i) {
        final WikiSite wikiSite2;
        int i2;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-1983482656);
        int i3 = i | (gapComposer2.changedInstance(wikiSite) ? 32 : 16) | (gapComposer2.changed(onThisDayCardGameState) ? 256 : 128) | (gapComposer2.changed(f) ? 2048 : 1024) | (gapComposer2.changedInstance(function0) ? 16384 : 8192) | (gapComposer2.changedInstance(function02) ? 131072 : 65536) | (gapComposer2.changedInstance(function03) ? 1048576 : 524288) | (gapComposer2.changedInstance(function04) ? 8388608 : 4194304);
        if (gapComposer2.shouldExecute(i3 & 1, (i3 & 4793491) != 4793490)) {
            final Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            if (onThisDayCardGameState instanceof OnThisDayCardGameState.Preview) {
                i2 = R.string.on_this_day_game_play_today_btn_text;
            } else if (onThisDayCardGameState instanceof OnThisDayCardGameState.InProgress) {
                i2 = R.string.on_this_day_game_continue_btn_text;
            } else {
                if (!(onThisDayCardGameState instanceof OnThisDayCardGameState.Completed)) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                i2 = R.string.on_this_day_game_review_results_btn_text;
            }
            final int i4 = i2;
            Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(modifier, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, f, 5);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i5);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14, 1.0f, true);
            String string = ContextKt.getString(context, wikiSite.languageCode, R.string.on_this_day_game_title, new Object[0]);
            long j3 = Color.White;
            TextKt.m308TextNvy7gAk(string, m, j3, null, 0L, null, null, 0L, null, 0L, 0, false, 1, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).headlineSmall, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183), gapComposer2, 384, 24576, 114680);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j4 = gapComposer2.compositeKeyHashCode;
            int i7 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 25);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            CardKt.IconButton((Function0) rememberedValue2, null, false, null, null, Expect_jvmKt.rememberComposableLambda(-1871245218, new ForYouCardKt$$ExternalSyntheticLambda3(context, wikiSite, 13), gapComposer2), gapComposer2, 1572870, 62);
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (rememberedValue3 == neverEqualPolicy) {
                rememberedValue3 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 26);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            ForYouCardKt.ForYouCardDropdownMenu(booleanValue, wikiSite, (Function0) rememberedValue3, null, null, function02, function03, 0, function04, gapComposer2, (i3 & 112) | 28032 | (i3 & 458752) | (i3 & 3670016) | ((i3 << 3) & 234881024), 128);
            wikiSite2 = wikiSite;
            gapComposer2 = gapComposer2;
            gapComposer2.end(true);
            gapComposer2.end(true);
            int i8 = (i3 >> 6) & 896;
            GameEventCard(Animation.CC.weight$default(companion, 1.0f), onThisDayCardGameState.getEvent1(), function0, gapComposer2, i8);
            GameEventCard(Animation.CC.weight$default(companion, 1.0f), onThisDayCardGameState.getEvent2(), function0, gapComposer2, i8);
            HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.CenterHorizontally);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
            PercentCornerSize percentCornerSize = new PercentCornerSize(50.0f);
            CardKt.OutlinedButton(function0, horizontalAlignElement, false, new RoundedCornerShape(percentCornerSize, percentCornerSize, percentCornerSize, percentCornerSize), ButtonDefaults.m262outlinedButtonColorsro_MJ88(j3, gapComposer2), ImageKt.m45BorderStrokecXLIe8U(1.0f, j3), null, Expect_jvmKt.rememberComposableLambda(35197128, new Function3() { // from class: org.wikipedia.feed.wikigames.GamesModuleKt$$ExternalSyntheticLambda8
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    GapComposer gapComposer3 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    ((RowScope) obj).getClass();
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                        TextKt.m308TextNvy7gAk(ContextKt.getString(context, wikiSite2.languageCode, i4, new Object[0]), null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer3, 0, 0, 131070);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer2, ((i3 >> 12) & 14) | 806879232, 420);
            gapComposer2.end(true);
        } else {
            wikiSite2 = wikiSite;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            final WikiSite wikiSite3 = wikiSite2;
            endRestartGroup.block = new Function2(wikiSite3, onThisDayCardGameState, f, function0, function02, function03, function04, i) { // from class: org.wikipedia.feed.wikigames.GamesModuleKt$$ExternalSyntheticLambda9
                public final /* synthetic */ WikiSite f$1;
                public final /* synthetic */ OnThisDayCardGameState f$2;
                public final /* synthetic */ float f$3;
                public final /* synthetic */ Function0 f$4;
                public final /* synthetic */ Function0 f$5;
                public final /* synthetic */ Function0 f$6;
                public final /* synthetic */ Function0 f$7;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(7);
                    GamesModuleKt.m909OnThisDayGameModuleCardaA_HZ9I(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
