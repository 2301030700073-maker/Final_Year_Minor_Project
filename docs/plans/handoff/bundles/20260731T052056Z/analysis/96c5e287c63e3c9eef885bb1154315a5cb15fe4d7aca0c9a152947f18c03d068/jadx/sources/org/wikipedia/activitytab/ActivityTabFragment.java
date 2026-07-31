package org.wikipedia.activitytab;

import android.content.ComponentCallbacks;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.LazyListScope$items$1;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ButtonColors;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda1;
import androidx.core.view.MenuHostHelper$LifecycleContainer;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$2;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentViewLifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import androidx.paging.compose.LazyPagingItemsKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import j$.time.LocalDate;
import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlowImpl;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Headers;
import okhttp3.Request;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.timeline.ActivitySource;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda47;
import org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda75;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda26;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda29;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda21;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeRewardDialog;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetRepository;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\t²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\b\u001a\u00020\u00078\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/activitytab/ActivityTabFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Callback", "", "gamesModuleOffsetInItem", "", "isRefreshing", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityTabFragment extends Fragment {
    public final FragmentManager$2 menuProvider;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ActivitySource.values().length];
            try {
                iArr[ActivitySource.EDIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ActivityTabFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new AndroidLeakFixes$Companion$onDecorViewReady$1(24, new AndroidLeakFixes$Companion$onDecorViewReady$1(23, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(ActivityTabViewModel.class), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 1), new KTypeImpl$arguments$2(27, this, lazy), new HomeFragment$special$$inlined$viewModels$default$3(lazy, 2));
        this.menuProvider = new FragmentManager$2(1, this);
    }

    public final void ActivityTabScreen(final boolean z, final String str, final String str2, final ActivityTabModules activityTabModules, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final UiState uiState, final UiState uiState2, final UiState uiState3, final UiState uiState4, final Flow flow, final Function0 function0, GapComposer gapComposer, final int i) {
        LazyListState lazyListState;
        str2.getClass();
        uiState.getClass();
        uiState2.getClass();
        uiState3.getClass();
        uiState4.getClass();
        flow.getClass();
        gapComposer.startRestartGroup(1277091886);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(str2) ? 256 : 128) | (gapComposer.changed(activityTabModules) ? 2048 : 1024) | (gapComposer.changed(z2) ? 16384 : 8192) | (gapComposer.changed(z3) ? 131072 : 65536) | (gapComposer.changed(z4) ? 1048576 : 524288) | (gapComposer.changed(z5) ? 8388608 : 4194304) | (gapComposer.changed(uiState) ? 67108864 : 33554432) | (gapComposer.changed(uiState2) ? 536870912 : 268435456);
        int i3 = (gapComposer.changed(uiState3) ? (char) 4 : (char) 2) | (gapComposer.changed(uiState4) ? ' ' : (char) 16) | (gapComposer.changedInstance(flow) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(this) ? (char) 16384 : (char) 8192);
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (i3 & 9363) == 9362) ? false : true)) {
            final LazyPagingItems collectAsLazyPagingItems = LazyPagingItemsKt.collectAsLazyPagingItems(flow, gapComposer);
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ParcelableSnapshotMutableIntState(0);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue;
            Boolean valueOf = Boolean.valueOf(z5);
            boolean changed = ((i2 & 7168) == 2048) | ((i2 & 29360128) == 8388608) | ((i2 & 458752) == 131072) | gapComposer.changed(rememberLazyListState) | ((i3 & 7168) == 2048);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                lazyListState = rememberLazyListState;
                ActivityTabFragment$ActivityTabScreen$2$1 activityTabFragment$ActivityTabScreen$2$1 = new ActivityTabFragment$ActivityTabScreen$2$1(z5, activityTabModules, z3, lazyListState, function0, parcelableSnapshotMutableIntState, null);
                gapComposer.updateRememberedValue(activityTabFragment$ActivityTabScreen$2$1);
                rememberedValue2 = activityTabFragment$ActivityTabScreen$2$1;
            } else {
                lazyListState = rememberLazyListState;
            }
            Updater.LaunchedEffect(gapComposer, valueOf, (Function2) rememberedValue2);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            final LazyListState lazyListState2 = lazyListState;
            CardKt.m270ScaffoldTvnljyQ(ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape), null, null, null, null, 0, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(-1150549505, new Function3() { // from class: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda22
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    int i4;
                    final PaddingValues paddingValues = (PaddingValues) obj;
                    GapComposer gapComposer2 = (GapComposer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
                    BiasAlignment biasAlignment = Alignment.Companion.Center;
                    BiasAlignment biasAlignment2 = Alignment.Companion.TopStart;
                    paddingValues.getClass();
                    int i5 = gapComposer2.inserting ? -gapComposer2.writer.parent : gapComposer2.reader.parent;
                    if ((intValue & 6) == 0) {
                        intValue |= gapComposer2.changed(paddingValues) ? 4 : 2;
                    }
                    boolean shouldExecute = gapComposer2.shouldExecute(intValue & 1, (intValue & 19) != 18);
                    Unit unit = Unit.INSTANCE;
                    if (!shouldExecute) {
                        gapComposer2.skipToGroupEnd();
                        return unit;
                    }
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    Object obj4 = Composer$Companion.Empty;
                    if (rememberedValue3 == obj4) {
                        rememberedValue3 = Updater.mutableStateOf$default(Boolean.FALSE);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    MutableState mutableState = (MutableState) rememberedValue3;
                    PullToRefreshStateImpl rememberPullToRefreshState = RegexKt.rememberPullToRefreshState(gapComposer2);
                    final UiState uiState5 = UiState.this;
                    if (uiState5 instanceof UiState.Success) {
                        mutableState.setValue(Boolean.FALSE);
                    }
                    boolean z6 = z;
                    final ActivityTabFragment activityTabFragment = this;
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (!z6) {
                        gapComposer2.startReplaceGroup(2114093852);
                        Modifier padding = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment2, false);
                        long j = gapComposer2.compositeKeyHashCode;
                        int i6 = (int) (j ^ (j >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        Function0 function02 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(function02);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                        Integer valueOf2 = Integer.valueOf(i6);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        Updater.m327setimpl(gapComposer2, valueOf2, composeUiNode$Companion$SetModifier$13);
                        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                        Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                        Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                        Modifier scroll$default = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(boxScopeInstance.align(companion, biasAlignment), 16.0f, RecyclerView.DECELERATION_RATE, 2), ImageKt.rememberScrollState(gapComposer2), true);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 48);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i7 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(function02);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i7), composeUiNode$Companion$SetModifier$13);
                        Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        ImageKt.Image(UnsignedKt.painterResource(R.drawable.illustration_activity_tab_logged_out, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion, 164.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer2, 440, 120);
                        Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        String stringResource = UtilsKt.stringResource(R.string.activity_tab_logged_out_title, gapComposer2);
                        TextStyle textStyle = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleSmall;
                        ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                        TextKt.m308TextNvy7gAk(stringResource, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, new TextAlign(3), 0L, 0, false, 0, 0, null, textStyle, gapComposer2, 48, 0, 130040);
                        Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                        PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
                        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                        ButtonColors m260buttonColorsro_MJ88 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).progressiveColor, Color.White, gapComposer2, 12);
                        boolean changedInstance = gapComposer2.changedInstance(activityTabFragment);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changedInstance || rememberedValue4 == obj4) {
                            rememberedValue4 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 8);
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        CardKt.Button((Function0) rememberedValue4, m136paddingqDBjuR0$default2, false, null, m260buttonColorsro_MJ88, null, null, m125PaddingValuesYgX7TsA$default, ImpactModuleKt.f21lambda$1882619459, gapComposer2, 817889328, 364);
                        PaddingValuesImpl m125PaddingValuesYgX7TsA$default2 = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 18.0f);
                        ButtonColors m260buttonColorsro_MJ882 = ButtonDefaults.m260buttonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer2.consume(providableCompositionLocal)).primaryColor, gapComposer2, 12);
                        boolean changedInstance2 = gapComposer2.changedInstance(activityTabFragment);
                        Object rememberedValue5 = gapComposer2.rememberedValue();
                        if (changedInstance2 || rememberedValue5 == obj4) {
                            rememberedValue5 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 9);
                            gapComposer2.updateRememberedValue(rememberedValue5);
                        }
                        CardKt.Button((Function0) rememberedValue5, null, false, null, m260buttonColorsro_MJ882, null, null, m125PaddingValuesYgX7TsA$default2, ImpactModuleKt.f20lambda$1326171468, gapComposer2, 817889280, 366);
                        Modifier.CC.m(gapComposer2, true, true, false);
                        return unit;
                    }
                    gapComposer2.startReplaceGroup(2118190595);
                    gapComposer2.end(false);
                    final ActivityTabModules activityTabModules2 = activityTabModules;
                    final boolean z7 = z2;
                    final boolean z8 = z3;
                    if (!activityTabModules2.noModulesVisible(z7, z8)) {
                        int i8 = 1;
                        gapComposer2.startReplaceGroup(2119880963);
                        gapComposer2.end(false);
                        boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                        boolean changedInstance3 = gapComposer2.changedInstance(activityTabFragment);
                        final LazyPagingItems lazyPagingItems = collectAsLazyPagingItems;
                        boolean changedInstance4 = changedInstance3 | gapComposer2.changedInstance(lazyPagingItems);
                        Object rememberedValue6 = gapComposer2.rememberedValue();
                        if (changedInstance4 || rememberedValue6 == obj4) {
                            rememberedValue6 = new HomeScreenKt$$ExternalSyntheticLambda29(activityTabFragment, lazyPagingItems, mutableState, 11);
                            gapComposer2.updateRememberedValue(rememberedValue6);
                        }
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(2005941464, new GamesHubScreenKt$$ExternalSyntheticLambda21(rememberPullToRefreshState, mutableState, i8), gapComposer2);
                        final LazyListState lazyListState3 = lazyListState2;
                        final String str3 = str;
                        final String str4 = str2;
                        final UiState uiState6 = uiState4;
                        final UiState uiState7 = uiState3;
                        final UiState uiState8 = uiState2;
                        final boolean z9 = z4;
                        final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = parcelableSnapshotMutableIntState;
                        RegexKt.PullToRefreshBox(booleanValue, (Function0) rememberedValue6, null, rememberPullToRefreshState, null, rememberComposableLambda, Expect_jvmKt.rememberComposableLambda(-199700903, new Function3() { // from class: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda29
                            @Override // kotlin.jvm.functions.Function3
                            public final Object invoke(Object obj5, Object obj6, Object obj7) {
                                GapComposer gapComposer3;
                                final BoxScope boxScope = (BoxScope) obj5;
                                GapComposer gapComposer4 = (GapComposer) obj6;
                                int intValue2 = ((Integer) obj7).intValue();
                                boxScope.getClass();
                                if ((intValue2 & 6) == 0) {
                                    intValue2 |= gapComposer4.changed(boxScope) ? 4 : 2;
                                }
                                if (gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                                    final ActivityTabModules activityTabModules3 = activityTabModules2;
                                    boolean changed2 = gapComposer4.changed(activityTabModules3);
                                    final PaddingValues paddingValues2 = paddingValues;
                                    boolean changed3 = changed2 | gapComposer4.changed(paddingValues2);
                                    final String str5 = str3;
                                    boolean changed4 = changed3 | gapComposer4.changed(str5);
                                    final UiState uiState9 = uiState5;
                                    boolean changedInstance5 = changed4 | gapComposer4.changedInstance(uiState9);
                                    final ActivityTabFragment activityTabFragment2 = activityTabFragment;
                                    boolean changedInstance6 = changedInstance5 | gapComposer4.changedInstance(activityTabFragment2);
                                    final String str6 = str4;
                                    boolean changed5 = changedInstance6 | gapComposer4.changed(str6);
                                    final UiState uiState10 = uiState6;
                                    boolean changedInstance7 = changed5 | gapComposer4.changedInstance(uiState10);
                                    final boolean z10 = z8;
                                    boolean changed6 = changedInstance7 | gapComposer4.changed(z10);
                                    boolean z11 = false;
                                    final UiState uiState11 = uiState7;
                                    boolean changedInstance8 = changed6 | gapComposer4.changedInstance(uiState11);
                                    final boolean z12 = z7;
                                    boolean changed7 = changedInstance8 | gapComposer4.changed(z12);
                                    final UiState uiState12 = uiState8;
                                    boolean changedInstance9 = changed7 | gapComposer4.changedInstance(uiState12);
                                    int i9 = intValue2;
                                    final LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                                    boolean changedInstance10 = changedInstance9 | gapComposer4.changedInstance(lazyPagingItems2);
                                    final boolean z13 = z9;
                                    boolean changed8 = changedInstance10 | gapComposer4.changed(z13);
                                    if ((i9 & 14) == 4) {
                                        z11 = true;
                                    }
                                    boolean z14 = changed8 | z11;
                                    Object rememberedValue7 = gapComposer4.rememberedValue();
                                    if (z14 || rememberedValue7 == Composer$Companion.Empty) {
                                        final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState3 = parcelableSnapshotMutableIntState2;
                                        gapComposer3 = gapComposer4;
                                        Function1 function1 = new Function1() { // from class: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda30
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj8) {
                                                ActivityTabModules activityTabModules4;
                                                String str7;
                                                ActivityTabFragment activityTabFragment3;
                                                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj8;
                                                lazyListIntervalContent.getClass();
                                                ModuleType moduleType = ModuleType.TIME_SPENT;
                                                ActivityTabModules activityTabModules5 = ActivityTabModules.this;
                                                boolean isModuleVisible$default = ActivityTabModules.isModuleVisible$default(activityTabModules5, moduleType, false, false, 6);
                                                final PaddingValues paddingValues3 = paddingValues2;
                                                String str8 = str5;
                                                ActivityTabFragment activityTabFragment4 = activityTabFragment2;
                                                if (isModuleVisible$default || ActivityTabModules.isModuleVisible$default(activityTabModules5, ModuleType.READING_INSIGHTS, false, false, 6)) {
                                                    activityTabModules4 = activityTabModules5;
                                                    str7 = str8;
                                                    activityTabFragment3 = activityTabFragment4;
                                                    LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new HomeScreenKt$$ExternalSyntheticLambda26(paddingValues3, str7, activityTabModules4, uiState9, activityTabFragment3), true, 1528864553), 3);
                                                } else {
                                                    activityTabModules4 = activityTabModules5;
                                                    str7 = str8;
                                                    activityTabFragment3 = activityTabFragment4;
                                                }
                                                final ActivityTabFragment activityTabFragment5 = activityTabFragment3;
                                                final String str9 = str7;
                                                final ActivityTabModules activityTabModules6 = activityTabModules4;
                                                final UiState uiState13 = uiState10;
                                                final boolean z15 = z10;
                                                final UiState uiState14 = uiState11;
                                                final boolean z16 = z12;
                                                final UiState uiState15 = uiState12;
                                                final String str10 = str6;
                                                final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState4 = parcelableSnapshotMutableIntState3;
                                                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new Function3() { // from class: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda32
                                                    /* JADX WARN: Multi-variable type inference failed */
                                                    /* JADX WARN: Removed duplicated region for block: B:47:0x03c7  */
                                                    /* JADX WARN: Removed duplicated region for block: B:63:0x047b  */
                                                    /* JADX WARN: Removed duplicated region for block: B:82:0x04b6  */
                                                    /* JADX WARN: Removed duplicated region for block: B:87:0x045d  */
                                                    /* JADX WARN: Type inference failed for: r0v3, types: [boolean, int] */
                                                    /* JADX WARN: Type inference failed for: r0v4 */
                                                    /* JADX WARN: Type inference failed for: r0v5 */
                                                    /* JADX WARN: Type inference failed for: r14v20 */
                                                    /* JADX WARN: Type inference failed for: r14v6 */
                                                    /* JADX WARN: Type inference failed for: r14v7, types: [boolean, int] */
                                                    @Override // kotlin.jvm.functions.Function3
                                                    /*
                                                        Code decompiled incorrectly, please refer to instructions dump.
                                                        To view partially-correct add '--show-bad-code' argument
                                                    */
                                                    public final java.lang.Object invoke(java.lang.Object r46, java.lang.Object r47, java.lang.Object r48) {
                                                        /*
                                                            Method dump skipped, instructions count: 1285
                                                            To view this dump add '--comments-level debug' option
                                                        */
                                                        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda32.invoke(java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
                                                    }
                                                }, true, 854540388), 3);
                                                boolean isModuleVisible$default2 = ActivityTabModules.isModuleVisible$default(activityTabModules6, ModuleType.TIMELINE, false, false, 6);
                                                Unit unit2 = Unit.INSTANCE;
                                                if (isModuleVisible$default2) {
                                                    LazyPagingItems lazyPagingItems3 = lazyPagingItems2;
                                                    boolean z17 = ((CombinedLoadStates) lazyPagingItems3.loadState$delegate.getValue()).refresh instanceof LoadState.Loading;
                                                    boolean z18 = lazyPagingItems3.getItemCount() == 0;
                                                    boolean z19 = z13;
                                                    if (z17 && !z19) {
                                                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, ImpactModuleKt.f19lambda$1207335334, 3);
                                                        return unit2;
                                                    }
                                                    if (z18 && z19) {
                                                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, ImpactModuleKt.f24lambda$600581679, 3);
                                                        return unit2;
                                                    }
                                                    if (z18) {
                                                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new CommunityContentTabKt$$ExternalSyntheticLambda47(9, boxScope), true, -336560814), 3);
                                                        return unit2;
                                                    }
                                                    lazyListIntervalContent.items(lazyPagingItems3.getItemCount(), null, LazyListScope$items$1.INSTANCE, new ComposableLambdaImpl(new ActivityTabFragment$$ExternalSyntheticLambda34(0, lazyPagingItems3, activityTabFragment5), true, -1295611927));
                                                    if (((CombinedLoadStates) lazyPagingItems3.loadState$delegate.getValue()).append instanceof LoadState.Loading) {
                                                        LazyItemScope$CC.item$default(lazyListIntervalContent, null, ImpactModuleKt.f23lambda$461486953, 3);
                                                    }
                                                }
                                                return unit2;
                                            }
                                        };
                                        gapComposer3.updateRememberedValue(function1);
                                        rememberedValue7 = function1;
                                    } else {
                                        gapComposer3 = gapComposer4;
                                    }
                                    ExceptionsKt.LazyColumn(null, LazyListState.this, null, null, null, null, false, null, (Function1) rememberedValue7, gapComposer3, 0, 509);
                                } else {
                                    gapComposer4.skipToGroupEnd();
                                }
                                return Unit.INSTANCE;
                            }
                        }, gapComposer2), gapComposer2, 1769472, 20);
                        return unit;
                    }
                    gapComposer2.startReplaceGroup(2118370271);
                    Modifier padding2 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment2, false);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i9 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, padding2);
                    ComposeUiNode.Companion.getClass();
                    Function0 function03 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(function03);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$16);
                    Integer valueOf3 = Integer.valueOf(i9);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer2, valueOf3, composeUiNode$Companion$SetModifier$17);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$18);
                    gapComposer2.startReplaceGroup(-2012564827);
                    Modifier scroll$default2 = ImageKt.scroll$default(OffsetKt.m134paddingVpY3zN4$default(boxScopeInstance.align(companion, biasAlignment), 16.0f, RecyclerView.DECELERATION_RATE, 2), ImageKt.rememberScrollState(gapComposer2), true);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 48);
                    long j4 = gapComposer2.compositeKeyHashCode;
                    int i10 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default2);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(function03);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$15);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$16);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i10), composeUiNode$Companion$SetModifier$17);
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$18);
                    ImageKt.Image(UnsignedKt.painterResource(R.drawable.illustration_activity_tab_empty, 0, gapComposer2), null, SizeKt.m145size3ABfNKs(companion, 164.0f), null, null, RecyclerView.DECELERATION_RATE, null, gapComposer2, 440, 120);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, 1);
                    String stringResource2 = UtilsKt.stringResource(R.string.activity_tab_customize_screen_no_modules_message, gapComposer2);
                    TextStyle textStyle2 = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).bodyMedium;
                    long j5 = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                    boolean changedInstance5 = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue7 == obj4) {
                        i4 = 1;
                        rememberedValue7 = new ForYouContentTabKt$$ExternalSyntheticLambda75(i4, activityTabFragment);
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    } else {
                        i4 = 1;
                    }
                    TabsBoxKt.m897HtmlTextKiACRJU(stringResource2, m134paddingVpY3zN4$default, null, textStyle2, j5, 0, 0, 0L, (LinkInteractionListener) rememberedValue7, null, 3, gapComposer2, 48, 2788);
                    gapComposer2.end(i4);
                    if (i5 >= 0) {
                        if (gapComposer2.inserting) {
                            SlotWriter slotWriter = gapComposer2.writer;
                            while (gapComposer2.inserting) {
                                gapComposer2.end(slotWriter.isNode(slotWriter.parent));
                            }
                        }
                        SlotReader slotReader = gapComposer2.reader;
                        while (true) {
                            int i11 = slotReader.parent;
                            if (i11 <= i5) {
                                break;
                            }
                            gapComposer2.end(slotReader.isNode(i11));
                        }
                    } else {
                        int i12 = -i5;
                        SlotWriter slotWriter2 = gapComposer2.writer;
                        while (true) {
                            int i13 = slotWriter2.parent;
                            if (i13 <= i12) {
                                break;
                            }
                            gapComposer2.end(slotWriter2.isNode(i13));
                        }
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, 805306368, 446);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(z, str, str2, activityTabModules, z2, z3, z4, z5, uiState, uiState2, uiState3, uiState4, flow, function0, i) { // from class: org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda23
                public final /* synthetic */ boolean f$1;
                public final /* synthetic */ UiState f$10;
                public final /* synthetic */ UiState f$11;
                public final /* synthetic */ UiState f$12;
                public final /* synthetic */ Flow f$13;
                public final /* synthetic */ Function0 f$14;
                public final /* synthetic */ String f$2;
                public final /* synthetic */ String f$3;
                public final /* synthetic */ ActivityTabModules f$4;
                public final /* synthetic */ boolean f$5;
                public final /* synthetic */ boolean f$6;
                public final /* synthetic */ boolean f$7;
                public final /* synthetic */ boolean f$8;
                public final /* synthetic */ UiState f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    ActivityTabFragment.this.ActivityTabScreen(this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, this.f$12, this.f$13, this.f$14, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final ActivityTabViewModel getViewModel() {
        return (ActivityTabViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        Continuation continuation = null;
        int i = 0;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ActivityTabFragment$onCreateView$1(this, continuation, i), 3);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ActivityTabFragment$onCreateView$1(this, continuation, 3), 3);
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ActivityTabFragment$onCreateView$1(this, continuation, 5), 3);
        ComposeView composeView = new ComposeView(requireContext(), null, 6);
        composeView.setContent(new ComposableLambdaImpl(new ActivityTabFragment$$ExternalSyntheticLambda18(this, i), true, 1458329085));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        requireActivity().removeMenuProvider(this.menuProvider);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        String stringExtra;
        this.mCalled = true;
        AppCompatActivity requireActivity = requireActivity();
        FragmentViewLifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        FragmentManager$2 fragmentManager$2 = this.menuProvider;
        fragmentManager$2.getClass();
        SVG svg = requireActivity.menuHostHelper;
        ((CopyOnWriteArrayList) svg.cssRules).add(fragmentManager$2);
        ((Runnable) svg.rootElement).run();
        viewLifecycleOwner.initialize$1();
        LifecycleRegistry lifecycleRegistry = viewLifecycleOwner.mLifecycleRegistry;
        HashMap hashMap = (HashMap) svg.idToElementMap;
        MenuHostHelper$LifecycleContainer menuHostHelper$LifecycleContainer = (MenuHostHelper$LifecycleContainer) hashMap.remove(fragmentManager$2);
        if (menuHostHelper$LifecycleContainer != null) {
            menuHostHelper$LifecycleContainer.mLifecycle.removeObserver(menuHostHelper$LifecycleContainer.mObserver);
            menuHostHelper$LifecycleContainer.mObserver = null;
        }
        hashMap.put(fragmentManager$2, new MenuHostHelper$LifecycleContainer(lifecycleRegistry, new MenuHostHelper$$ExternalSyntheticLambda1(0, svg, fragmentManager$2)));
        if (requireActivity().getIntent().getBooleanExtra("scrollToGames", false)) {
            StateFlowImpl stateFlowImpl = getViewModel()._scrollToGames;
            Boolean bool = Boolean.TRUE;
            stateFlowImpl.getClass();
            stateFlowImpl.updateState(null, bool);
            requireActivity().getIntent().removeExtra("scrollToGames");
        }
        Prefs prefs = Prefs.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_game_stats_snackbar_shown), false) && (stringExtra = requireActivity().getIntent().getStringExtra("snackbarMessage")) != null) {
            ShareUtil.makeSnackbar$default(requireView(), stringExtra).show();
            requireActivity().getIntent().removeExtra("snackbarMessage");
            PrefsIoUtil.setBoolean(R.string.preference_key_game_stats_snackbar_shown, true);
        }
        Intent intent = requireActivity().getIntent();
        LocalDate localDate = ReadingChallengeWidgetRepository.REMOVE_DATE;
        intent.getClass();
        if (intent.hasExtra("reading_challenge_reward") && Headers.Companion.isLoggedIn()) {
            intent.removeExtra("reading_challenge_reward");
            FragmentManagerImpl childFragmentManager = getChildFragmentManager();
            childFragmentManager.getClass();
            Okio__OkioKt.show(childFragmentManager, new ReadingChallengeRewardDialog());
        }
        getViewModel().loadAll();
        requireActivity().invalidateOptionsMenu();
    }
}
