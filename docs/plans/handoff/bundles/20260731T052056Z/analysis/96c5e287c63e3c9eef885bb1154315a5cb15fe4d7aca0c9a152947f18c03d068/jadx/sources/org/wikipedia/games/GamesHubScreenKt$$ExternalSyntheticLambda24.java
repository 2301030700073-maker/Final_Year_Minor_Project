package org.wikipedia.games;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.collection.MutableObjectFloatMap;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterTransitionImpl;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.SizeTransformImpl;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.compose.ComposeNavigator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.AbstractCollection;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okio.Okio__JvmOkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.ShareUtil$shareImage$2;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda24 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Function f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda24(MutableObjectFloatMap mutableObjectFloatMap, ComposeNavigator composeNavigator, Function1 function1, Function1 function12, Function1 function13, State state, MutableState mutableState) {
        this.f$0 = mutableObjectFloatMap;
        this.f$1 = composeNavigator;
        this.f$2 = function1;
        this.f$3 = function12;
        this.f$4 = function13;
        this.f$6 = state;
        this.f$5 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float f;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$2;
        Object obj2 = this.f$6;
        Object obj3 = this.f$5;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                final UiState uiState = (UiState) obj7;
                final InfiniteTransition infiniteTransition = (InfiniteTransition) obj6;
                final Function0 function0 = (Function0) function;
                final GamesHubViewModel gamesHubViewModel = (GamesHubViewModel) obj5;
                final Function2 function2 = (Function2) obj4;
                final MutableState mutableState = (MutableState) obj3;
                final MutableState mutableState2 = (MutableState) obj2;
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.items(((AbstractCollection) WikiGames.getEntries()).getSize(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new Function4() { // from class: org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda26
                    @Override // kotlin.jvm.functions.Function4
                    public final Object invoke(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int intValue = ((Integer) obj9).intValue();
                        GapComposer gapComposer = (GapComposer) obj10;
                        int intValue2 = ((Integer) obj11).intValue();
                        ((LazyItemScopeImpl) obj8).getClass();
                        if ((intValue2 & 48) == 0) {
                            intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                        }
                        if (gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                            if (GamesHubScreenKt$WhenMappings.$EnumSwitchMapping$0[((WikiGames) ((EnumEntriesList) WikiGames.getEntries()).get(intValue)).ordinal()] != 1) {
                                throw Modifier.CC.m(gapComposer, 2002842623, false);
                            }
                            gapComposer.startReplaceGroup(1958698521);
                            UiState uiState2 = UiState.this;
                            if (uiState2 instanceof UiState.Loading) {
                                gapComposer.startReplaceGroup(1958694894);
                                Jsoup.GamesHubLoadingShimmer(infiniteTransition, gapComposer, 8);
                                gapComposer.end(false);
                            } else {
                                boolean z = uiState2 instanceof UiState.Error;
                                GamesHubViewModel gamesHubViewModel2 = gamesHubViewModel;
                                MutableState mutableState3 = mutableState;
                                MutableState mutableState4 = mutableState2;
                                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                                if (z) {
                                    gapComposer.startReplaceGroup(1958913444);
                                    mutableState3.setValue(Boolean.FALSE);
                                    Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.FillWholeMaxSize, 16.0f, 16.0f);
                                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                                    long j = gapComposer.compositeKeyHashCode;
                                    int i2 = (int) ((j >>> 32) ^ j);
                                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m133paddingVpY3zN4);
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
                                    Updater.m327setimpl(gapComposer, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(Modifier.Companion.$$INSTANCE, 1.0f);
                                    Throwable th = ((UiState.Error) uiState2).error;
                                    boolean changedInstance = gapComposer.changedInstance(gamesHubViewModel2);
                                    Object rememberedValue = gapComposer.rememberedValue();
                                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                                        rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda20(gamesHubViewModel2, mutableState3, mutableState4, 1);
                                        gapComposer.updateRememberedValue(rememberedValue);
                                    }
                                    Okio__JvmOkioKt.WikiErrorView(fillMaxWidth, th, new WikiErrorClickEvents(null, null, (Function0) rememberedValue, 7), true, gapComposer, 24582, 4);
                                    gapComposer = gapComposer;
                                    gapComposer.end(true);
                                    gapComposer.end(false);
                                } else {
                                    if (!(uiState2 instanceof UiState.Success)) {
                                        throw Modifier.CC.m(gapComposer, 2002846473, false);
                                    }
                                    gapComposer.startReplaceGroup(1960225457);
                                    mutableState3.setValue(Boolean.FALSE);
                                    String str = (String) mutableState4.getValue();
                                    List list = (List) ((UiState.Success) uiState2).data;
                                    Function0 function02 = function0;
                                    boolean changed = gapComposer.changed(function02) | gapComposer.changedInstance(gamesHubViewModel2);
                                    Function2 function22 = function2;
                                    boolean changed2 = changed | gapComposer.changed(function22);
                                    Object rememberedValue2 = gapComposer.rememberedValue();
                                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                                        FeedComponentsKt$$ExternalSyntheticLambda5 feedComponentsKt$$ExternalSyntheticLambda5 = new FeedComponentsKt$$ExternalSyntheticLambda5(function02, gamesHubViewModel2, function22, mutableState3, mutableState4);
                                        gapComposer.updateRememberedValue(feedComponentsKt$$ExternalSyntheticLambda5);
                                        rememberedValue2 = feedComponentsKt$$ExternalSyntheticLambda5;
                                    }
                                    Jsoup.OnThisDayGameCards(intValue, str, list, (Function2) rememberedValue2, gapComposer, (intValue2 >> 3) & 14);
                                    gapComposer.end(false);
                                }
                            }
                            gapComposer.end(false);
                        } else {
                            gapComposer.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, true, -927523787));
                return unit;
            case 1:
                MutableObjectFloatMap mutableObjectFloatMap = (MutableObjectFloatMap) obj7;
                ComposeNavigator composeNavigator = (ComposeNavigator) obj6;
                Function1 function1 = (Function1) function;
                Function1 function12 = (Function1) obj5;
                Function1 function13 = (Function1) obj4;
                MutableState mutableState3 = (MutableState) obj3;
                AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl = (AnimatedContentTransitionScopeImpl) obj;
                if (!((List) ((State) obj2).getValue()).contains(animatedContentTransitionScopeImpl.getInitialState())) {
                    return CrossfadeKt.togetherWith(EnterTransitionImpl.None, ExitTransitionImpl.None);
                }
                String str = ((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).id;
                int findKeyIndex = mutableObjectFloatMap.findKeyIndex(str);
                if (findKeyIndex >= 0) {
                    f = mutableObjectFloatMap.values[findKeyIndex];
                } else {
                    mutableObjectFloatMap.set(str, RecyclerView.DECELERATION_RATE);
                    f = 0.0f;
                }
                if (!((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).id.equals(((NavBackStackEntry) animatedContentTransitionScopeImpl.getInitialState()).id)) {
                    f = (((Boolean) composeNavigator.isPop.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) ? f - 1.0f : f + 1.0f;
                }
                mutableObjectFloatMap.set(((NavBackStackEntry) animatedContentTransitionScopeImpl.getTargetState()).id, f);
                return new ContentTransform((EnterTransitionImpl) function1.invoke(animatedContentTransitionScopeImpl), (ExitTransitionImpl) function12.invoke(animatedContentTransitionScopeImpl), f, (SizeTransformImpl) function13.invoke(animatedContentTransitionScopeImpl));
            default:
                CoroutineScope coroutineScope = (CoroutineScope) obj4;
                Context context = (Context) obj3;
                String str2 = (String) obj2;
                Bitmap bitmap = (Bitmap) obj;
                bitmap.getClass();
                String format = String.format((String) obj6, Arrays.copyOf(new Object[]{((String) obj7) + "yir_2025", (String) obj5}, 2));
                coroutineScope.getClass();
                context.getClass();
                str2.getClass();
                AwaitKt.launch$default(coroutineScope, new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(context), null, new ShareUtil$shareImage$2(context, str2, format, (Function0) function, bitmap, "yir_2025", (Continuation) null), 2);
                return unit;
        }
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda24(String str, String str2, String str3, CoroutineScope coroutineScope, Context context, String str4, Function0 function0) {
        this.f$0 = str;
        this.f$1 = str2;
        this.f$3 = str3;
        this.f$4 = coroutineScope;
        this.f$5 = context;
        this.f$6 = str4;
        this.f$2 = function0;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda24(UiState uiState, InfiniteTransition infiniteTransition, Function0 function0, GamesHubViewModel gamesHubViewModel, Function2 function2, MutableState mutableState, MutableState mutableState2) {
        this.f$0 = uiState;
        this.f$1 = infiniteTransition;
        this.f$2 = function0;
        this.f$3 = gamesHubViewModel;
        this.f$4 = function2;
        this.f$5 = mutableState;
        this.f$6 = mutableState2;
    }
}
