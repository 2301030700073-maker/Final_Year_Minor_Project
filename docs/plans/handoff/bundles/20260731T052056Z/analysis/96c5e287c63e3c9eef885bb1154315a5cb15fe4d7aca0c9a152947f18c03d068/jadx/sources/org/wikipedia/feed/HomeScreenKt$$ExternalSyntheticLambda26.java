package org.wikipedia.feed;

import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.text.LinkInteractionListener;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLinkStyles;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.compose.AsyncImageKt;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda1;
import org.wikipedia.activitytab.ActivityTabFragment$$ExternalSyntheticLambda4;
import org.wikipedia.activitytab.ActivityTabModules;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.activitytab.ModuleType;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda4;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda8;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.ToggleSettingItem;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda12;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda13;
import org.wikipedia.search.HybridSearchViewsKt$$ExternalSyntheticLambda7;
import org.wikipedia.search.NoSearchResultsKt$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResult;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda26 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(PaddingValues paddingValues, String str, ActivityTabModules activityTabModules, UiState uiState, ActivityTabFragment activityTabFragment) {
        this.$r8$classId = 1;
        this.f$0 = paddingValues;
        this.f$4 = str;
        this.f$1 = activityTabModules;
        this.f$2 = uiState;
        this.f$3 = activityTabFragment;
    }

    private final Object invoke$org$wikipedia$search$HybridSearchResultsScreenKt$$ExternalSyntheticLambda27(Object obj, Object obj2, Object obj3) {
        ArrayList arrayList;
        LazyListState lazyListState;
        ArrayList arrayList2 = (ArrayList) this.f$0;
        Function1 function1 = (Function1) this.f$2;
        Function6 function6 = (Function6) this.f$1;
        Function4 function4 = (Function4) this.f$3;
        Function2 function2 = (Function2) this.f$4;
        GapComposer gapComposer = (GapComposer) obj2;
        int intValue = ((Integer) obj3).intValue();
        ((LazyItemScopeImpl) obj).getClass();
        if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
            LazyListState rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer);
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new LinkedHashSet();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Set set = (Set) rememberedValue;
            boolean changed = gapComposer.changed(rememberLazyListState) | gapComposer.changedInstance(arrayList2) | gapComposer.changedInstance(set) | gapComposer.changed(function1);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == neverEqualPolicy) {
                arrayList = arrayList2;
                LongPressMenu$show$1$1 longPressMenu$show$1$1 = new LongPressMenu$show$1$1(rememberLazyListState, arrayList, set, function1, null, 7);
                lazyListState = rememberLazyListState;
                gapComposer.updateRememberedValue(longPressMenu$show$1$1);
                rememberedValue2 = longPressMenu$show$1$1;
            } else {
                lazyListState = rememberLazyListState;
                arrayList = arrayList2;
            }
            Updater.LaunchedEffect(gapComposer, lazyListState, (Function2) rememberedValue2);
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 16.0f);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            boolean changedInstance = gapComposer.changedInstance(arrayList) | gapComposer.changed(function6) | gapComposer.changed(function4) | gapComposer.changed(function2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue3 == neverEqualPolicy) {
                AboutActivityKt$$ExternalSyntheticLambda7 aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(arrayList, function6, function4, function2, 13);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                rememberedValue3 = aboutActivityKt$$ExternalSyntheticLambda7;
            }
            ExceptionsKt.LazyRow(null, lazyListState, m125PaddingValuesYgX7TsA$default, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue3, gapComposer, 24960, 489);
        } else {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v6 */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        ?? r10;
        byte b;
        Function1 function1;
        String stringResource;
        BiasAlignment.Vertical vertical;
        Modifier animateContentSize$default;
        long j;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        Object obj4 = Composer$Companion.Empty;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$0;
        Object obj8 = this.f$2;
        Object obj9 = this.f$1;
        switch (i) {
            case 0:
                AppLanguageState appLanguageState = (AppLanguageState) obj7;
                Function0 function0 = (Function0) obj9;
                Object obj10 = (Function1) obj8;
                MutableState mutableState = (MutableState) obj6;
                String str = (String) obj5;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    List appLanguageCodes = appLanguageState != null ? appLanguageState.getAppLanguageCodes() : null;
                    if (appLanguageCodes == null) {
                        appLanguageCodes = EmptyList.INSTANCE;
                    }
                    gapComposer.startReplaceGroup(-1069150323);
                    int size = appLanguageCodes.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        String str2 = (String) appLanguageCodes.get(i2);
                        ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-790558389, new HomeScreenKt$$ExternalSyntheticLambda17(28, appLanguageState, str2), gapComposer);
                        boolean changed = gapComposer.changed(obj10) | gapComposer.changed(str2);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == obj4) {
                            b = 0;
                            rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda29(obj10, str2, mutableState, b);
                            gapComposer.updateRememberedValue(rememberedValue);
                        } else {
                            b = 0;
                        }
                        AndroidMenu_androidKt.DropdownMenuItem(rememberComposableLambda, (Function0) rememberedValue, null, Expect_jvmKt.rememberComposableLambda(746390030, new HomeScreenKt$$ExternalSyntheticLambda30(str2, b, b), gapComposer), Expect_jvmKt.rememberComposableLambda(-1604605361, new HomeScreenKt$$ExternalSyntheticLambda17(29, str2, str), gapComposer), false, null, null, gapComposer, 27654, 484);
                    }
                    gapComposer.end(false);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 8.0f, 1);
                    ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    CardKt.m266HorizontalDivider9IZ8Weo(m134paddingVpY3zN4$default, RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).borderColor, gapComposer, 6, 2);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    boolean changed2 = gapComposer.changed(function0);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed2 || rememberedValue2 == obj4) {
                        r10 = 0;
                        rememberedValue2 = new HomeScreenKt$$ExternalSyntheticLambda32(function0, mutableState, 0);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    } else {
                        r10 = 0;
                    }
                    Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue2, r10), RecyclerView.DECELERATION_RATE, 8.0f, 1);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, r10);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default2);
                    ComposeUiNode.Companion.getClass();
                    Function0 function02 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(function02);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    TextKt.m308TextNvy7gAk(ContextKt.getString((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), str, R.string.explore_feed_manage_languages_label, new Object[0]), OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), ((WikipediaColor) gapComposer.consume(providableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).bodyLarge, gapComposer, 48, 0, 131064);
                    gapComposer.end(true);
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                PaddingValues paddingValues = (PaddingValues) obj7;
                String str3 = (String) obj5;
                ActivityTabModules activityTabModules = (ActivityTabModules) obj9;
                UiState uiState = (UiState) obj8;
                ActivityTabFragment activityTabFragment = (ActivityTabFragment) obj6;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    Modifier padding = OffsetKt.padding(SizeKt.fillMaxWidth(companion, 1.0f), paddingValues);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    Modifier background$default = ImageKt.background$default(padding, Lock.m13verticalGradient8A3gB4$default(Room.listOf((Object[]) new Color[]{new Color(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor), new Color(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).additionColor)})), null, 6);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j3 = gapComposer2.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, background$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.CenterHorizontally);
                    boolean isModuleVisible$default = ActivityTabModules.isModuleVisible$default(activityTabModules, ModuleType.TIME_SPENT, false, false, 6);
                    boolean isModuleVisible$default2 = ActivityTabModules.isModuleVisible$default(activityTabModules, ModuleType.READING_INSIGHTS, false, false, 6);
                    boolean changedInstance = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue3 == obj4) {
                        rememberedValue3 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 2);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    Function0 function03 = (Function0) rememberedValue3;
                    boolean changedInstance2 = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue4 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue4 == obj4) {
                        rememberedValue4 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 3);
                        gapComposer2.updateRememberedValue(rememberedValue4);
                    }
                    Function0 function04 = (Function0) rememberedValue4;
                    boolean changedInstance3 = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue5 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue5 == obj4) {
                        rememberedValue5 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 4);
                        gapComposer2.updateRememberedValue(rememberedValue5);
                    }
                    Function0 function05 = (Function0) rememberedValue5;
                    boolean changedInstance4 = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue6 = gapComposer2.rememberedValue();
                    if (changedInstance4 || rememberedValue6 == obj4) {
                        rememberedValue6 = new ActivityTabFragment$$ExternalSyntheticLambda4(activityTabFragment, 1);
                        gapComposer2.updateRememberedValue(rememberedValue6);
                    }
                    Function1 function12 = (Function1) rememberedValue6;
                    boolean changedInstance5 = gapComposer2.changedInstance(activityTabFragment);
                    Object rememberedValue7 = gapComposer2.rememberedValue();
                    if (changedInstance5 || rememberedValue7 == obj4) {
                        rememberedValue7 = new ActivityTabFragment$$ExternalSyntheticLambda1(activityTabFragment, 5);
                        gapComposer2.updateRememberedValue(rememberedValue7);
                    }
                    ImpactModuleKt.ReadingHistoryModule(horizontalAlignElement, str3, isModuleVisible$default, isModuleVisible$default2, uiState, function03, function04, function05, function12, new WikiErrorClickEvents((Function0) rememberedValue7, null, null, 14), gapComposer2, 0);
                    gapComposer2.end(true);
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                String str4 = (String) obj5;
                ArrayList arrayList = (ArrayList) obj7;
                Set set = (Set) obj9;
                Function1 function13 = (Function1) obj8;
                Function2 function2 = (Function2) obj6;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= gapComposer3.changed(paddingValues2) ? 4 : 2;
                }
                if (gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 19) != 18)) {
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues2), ImageKt.rememberScrollState(gapComposer3), true);
                    ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer3, 6);
                    long j4 = gapComposer3.compositeKeyHashCode;
                    int i5 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, columnMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer3, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer3, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer3, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                    TextKt.m308TextNvy7gAk(str4, OffsetKt.m134paddingVpY3zN4$default(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, 8.0f, 1), ((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).bodyMedium, gapComposer3, 48, 0, 131064);
                    gapComposer3.startReplaceGroup(577365655);
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ToggleSettingItem toggleSettingItem = (ToggleSettingItem) it.next();
                        boolean z = !set.contains(toggleSettingItem.key);
                        String stringResource2 = UtilsKt.stringResource(toggleSettingItem.title, gapComposer3);
                        String stringResource3 = UtilsKt.stringResource(toggleSettingItem.subtitle, gapComposer3);
                        boolean changed3 = gapComposer3.changed(function13);
                        Object rememberedValue8 = gapComposer3.rememberedValue();
                        if (changed3 || rememberedValue8 == obj4) {
                            rememberedValue8 = new HomeScreenKt$$ExternalSyntheticLambda8(function13, 7);
                            gapComposer3.updateRememberedValue(rememberedValue8);
                        }
                        TabsBoxKt.SettingsRow(stringResource2, null, stringResource3, null, (Function1) rememberedValue8, Expect_jvmKt.rememberComposableLambda(1527241515, new SettingsKt$$ExternalSyntheticLambda8(0, function2, toggleSettingItem, z), gapComposer3), gapComposer3, 196608, 10);
                    }
                    gapComposer3.end(false);
                    gapComposer3.end(true);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 3:
                UiState uiState2 = (UiState) obj7;
                Modifier modifier = (Modifier) obj9;
                Function1 function14 = (Function1) obj8;
                WikiErrorClickEvents wikiErrorClickEvents = (WikiErrorClickEvents) obj6;
                String str5 = (String) obj5;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                BiasAlignment biasAlignment = Alignment.Companion.Center;
                paddingValues3.getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= gapComposer4.changed(paddingValues3) ? 4 : 2;
                }
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    gapComposer4.skipToGroupEnd();
                } else if (uiState2 instanceof UiState.Loading) {
                    gapComposer4.startReplaceGroup(-668789887);
                    Modifier padding2 = OffsetKt.padding(modifier.then(SizeKt.FillWholeMaxSize), paddingValues3);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j5 = gapComposer4.compositeKeyHashCode;
                    int i6 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer4, padding2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer4, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                    ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(null, ((WikipediaColor) gapComposer4.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer4, 0, 61);
                    gapComposer4.end(true);
                    gapComposer4.end(false);
                } else if (uiState2 instanceof UiState.Error) {
                    gapComposer4.startReplaceGroup(-668357685);
                    Modifier padding3 = OffsetKt.padding(modifier.then(SizeKt.FillWholeMaxSize), paddingValues3);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j6 = gapComposer4.compositeKeyHashCode;
                    int i7 = (int) (j6 ^ (j6 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer4, padding3);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$14);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer4, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                    Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((UiState.Error) uiState2).error, wikiErrorClickEvents, false, gapComposer4, 6, 20);
                    gapComposer4.end(true);
                    gapComposer4.end(false);
                } else {
                    if (!(uiState2 instanceof UiState.Success)) {
                        throw Modifier.CC.m(gapComposer4, 394069340, false);
                    }
                    gapComposer4.startReplaceGroup(-667758982);
                    List list = (List) ((UiState.Success) uiState2).data;
                    if (list.isEmpty()) {
                        gapComposer4.startReplaceGroup(-667714900);
                        Modifier padding4 = OffsetKt.padding(modifier.then(SizeKt.FillWholeMaxSize), paddingValues3);
                        MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                        long j7 = gapComposer4.compositeKeyHashCode;
                        int i8 = (int) (j7 ^ (j7 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer4.currentCompositionLocalScope();
                        Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer4, padding4);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                        gapComposer4.startReusableNode();
                        if (gapComposer4.inserting) {
                            gapComposer4.createNode(layoutNode$Companion$Constructor$15);
                        } else {
                            gapComposer4.useNode();
                        }
                        Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer4, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer4, materializeModifier6, ComposeUiNode.Companion.SetModifier);
                        TabsBoxKt.SearchEmptyView(6, gapComposer4, SizeKt.fillMaxWidth(companion, 1.0f), str5);
                        Modifier.CC.m(gapComposer4, true, false, false);
                    } else {
                        gapComposer4.startReplaceGroup(-667189233);
                        gapComposer4.end(false);
                        Modifier padding5 = OffsetKt.padding(modifier, paddingValues3);
                        boolean changedInstance6 = gapComposer4.changedInstance(list) | gapComposer4.changed(function14);
                        Object rememberedValue9 = gapComposer4.rememberedValue();
                        if (changedInstance6 || rememberedValue9 == obj4) {
                            rememberedValue9 = new NoSearchResultsKt$$ExternalSyntheticLambda0(list, function14, 1);
                            gapComposer4.updateRememberedValue(rememberedValue9);
                        }
                        ExceptionsKt.LazyColumn(padding5, null, null, null, null, null, false, null, (Function1) rememberedValue9, gapComposer4, 0, 510);
                        gapComposer4.end(false);
                    }
                }
                return unit;
            case 4:
                UiState uiState3 = (UiState) obj7;
                Modifier modifier2 = (Modifier) obj9;
                Context context = (Context) obj6;
                Function1 function15 = (Function1) obj8;
                WikiErrorClickEvents wikiErrorClickEvents2 = (WikiErrorClickEvents) obj5;
                PaddingValues paddingValues4 = (PaddingValues) obj;
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                BiasAlignment biasAlignment2 = Alignment.Companion.Center;
                paddingValues4.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= gapComposer5.changed(paddingValues4) ? 4 : 2;
                }
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    gapComposer5.skipToGroupEnd();
                } else if (Intrinsics.areEqual(uiState3, UiState.Loading.INSTANCE)) {
                    gapComposer5.startReplaceGroup(-1009078145);
                    Modifier padding6 = OffsetKt.padding(modifier2.then(SizeKt.FillWholeMaxSize), paddingValues4);
                    MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j8 = gapComposer5.compositeKeyHashCode;
                    int i9 = (int) (j8 ^ (j8 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer5.currentCompositionLocalScope();
                    Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer5, padding6);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$16 = ComposeUiNode.Companion.Constructor;
                    gapComposer5.startReusableNode();
                    if (gapComposer5.inserting) {
                        gapComposer5.createNode(layoutNode$Companion$Constructor$16);
                    } else {
                        gapComposer5.useNode();
                    }
                    Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer5, currentCompositionLocalScope7, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer5, Integer.valueOf(i9), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer5, materializeModifier7, ComposeUiNode.Companion.SetModifier);
                    ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(OffsetKt.m132padding3ABfNKs(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.BottomEnd), 24.0f), ((WikipediaColor) gapComposer5.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer5, 0, 60);
                    gapComposer5.end(true);
                    gapComposer5.end(false);
                } else if (uiState3 instanceof UiState.Error) {
                    gapComposer5.startReplaceGroup(-1008562367);
                    Modifier padding7 = OffsetKt.padding(modifier2.then(SizeKt.FillWholeMaxSize), paddingValues4);
                    MeasurePolicy maybeCachedBoxMeasurePolicy5 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment2, false);
                    long j9 = gapComposer5.compositeKeyHashCode;
                    int i10 = (int) (j9 ^ (j9 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope8 = gapComposer5.currentCompositionLocalScope();
                    Modifier materializeModifier8 = AbsoluteAlignment.materializeModifier(gapComposer5, padding7);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$17 = ComposeUiNode.Companion.Constructor;
                    gapComposer5.startReusableNode();
                    if (gapComposer5.inserting) {
                        gapComposer5.createNode(layoutNode$Companion$Constructor$17);
                    } else {
                        gapComposer5.useNode();
                    }
                    Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy5, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer5, currentCompositionLocalScope8, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer5, Integer.valueOf(i10), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer5, materializeModifier8, ComposeUiNode.Companion.SetModifier);
                    Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), ((UiState.Error) uiState3).error, wikiErrorClickEvents2, false, gapComposer5, 6, 20);
                    gapComposer5.end(true);
                    gapComposer5.end(false);
                } else {
                    if (!(uiState3 instanceof UiState.Success)) {
                        throw Modifier.CC.m(gapComposer5, -1140928042, false);
                    }
                    gapComposer5.startReplaceGroup(-1007956844);
                    List list2 = (List) ((UiState.Success) uiState3).data;
                    if (list2.isEmpty()) {
                        gapComposer5.startReplaceGroup(-1007916637);
                        Modifier padding8 = OffsetKt.padding(modifier2.then(SizeKt.FillWholeMaxSize), paddingValues4);
                        MeasurePolicy maybeCachedBoxMeasurePolicy6 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment2, false);
                        long j10 = gapComposer5.compositeKeyHashCode;
                        int i11 = (int) (j10 ^ (j10 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope9 = gapComposer5.currentCompositionLocalScope();
                        Modifier materializeModifier9 = AbsoluteAlignment.materializeModifier(gapComposer5, padding8);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$18 = ComposeUiNode.Companion.Constructor;
                        gapComposer5.startReusableNode();
                        if (gapComposer5.inserting) {
                            gapComposer5.createNode(layoutNode$Companion$Constructor$18);
                        } else {
                            gapComposer5.useNode();
                        }
                        Updater.m327setimpl(gapComposer5, maybeCachedBoxMeasurePolicy6, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer5, currentCompositionLocalScope9, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer5, Integer.valueOf(i11), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer5, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer5, materializeModifier9, ComposeUiNode.Companion.SetModifier);
                        TabsBoxKt.SearchEmptyView(6, gapComposer5, SizeKt.fillMaxWidth(companion, 1.0f), UtilsKt.stringResource(R.string.langlinks_no_match, gapComposer5));
                        Modifier.CC.m(gapComposer5, true, false, false);
                    } else {
                        gapComposer5.startReplaceGroup(-1007361179);
                        gapComposer5.end(false);
                        Modifier testTag = TestTagKt.testTag(OffsetKt.padding(modifier2.then(SizeKt.FillWholeMaxSize), paddingValues4), "language_list");
                        boolean changedInstance7 = gapComposer5.changedInstance(list2) | gapComposer5.changedInstance(context) | gapComposer5.changed(function15);
                        Object rememberedValue10 = gapComposer5.rememberedValue();
                        if (changedInstance7 || rememberedValue10 == obj4) {
                            rememberedValue10 = new UtilsKt$$ExternalSyntheticLambda1(list2, context, function15, 25);
                            gapComposer5.updateRememberedValue(rememberedValue10);
                        }
                        ExceptionsKt.LazyColumn(testTag, null, null, null, null, null, false, null, (Function1) rememberedValue10, gapComposer5, 0, 510);
                        gapComposer5.end(false);
                    }
                }
                return unit;
            case 5:
                return invoke$org$wikipedia$search$HybridSearchResultsScreenKt$$ExternalSyntheticLambda27(obj, obj2, obj3);
            default:
                Function0 function06 = (Function0) obj9;
                Function1 function16 = (Function1) obj8;
                SearchResult searchResult = (SearchResult) obj7;
                Function1 function17 = (Function1) obj6;
                Function1 function18 = (Function1) obj5;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue6 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    return unit;
                }
                Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(companion2, 400.0f);
                Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                ColumnMeasurePolicy columnMeasurePolicy4 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer6, 0);
                long j11 = gapComposer6.compositeKeyHashCode;
                int i12 = (int) (j11 ^ (j11 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope10 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier10 = AbsoluteAlignment.materializeModifier(gapComposer6, m140height3ABfNKs);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$19 = ComposeUiNode.Companion.Constructor;
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer6, columnMeasurePolicy4, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope10, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer6, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                LayoutWeightElement m = ViewSizeResolver$CC.m(gapComposer6, materializeModifier10, composeUiNode$Companion$SetModifier$14, 1.0f, true);
                boolean changed4 = gapComposer6.changed(function06);
                Object rememberedValue11 = gapComposer6.rememberedValue();
                if (changed4 || rememberedValue11 == obj4) {
                    function1 = function16;
                    rememberedValue11 = new SearchResultsScreenKt$$ExternalSyntheticLambda1(6, function06);
                    gapComposer6.updateRememberedValue(rememberedValue11);
                } else {
                    function1 = function16;
                }
                Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, m, null, (Function0) rememberedValue11, false);
                BiasAlignment biasAlignment3 = Alignment.Companion.TopStart;
                MeasurePolicy maybeCachedBoxMeasurePolicy7 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment3, false);
                long j12 = gapComposer6.compositeKeyHashCode;
                int i13 = (int) (j12 ^ (j12 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope11 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier11 = AbsoluteAlignment.materializeModifier(gapComposer6, m51clickableoSLSa3U$default);
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy7, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope11, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i13, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer6, materializeModifier11, composeUiNode$Companion$SetModifier$14);
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion2, 16.0f, 16.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8);
                String str6 = searchResult.snippet;
                PageTitle pageTitle = searchResult.pageTitle;
                String str7 = str6 == null ? "" : str6;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                TextStyle textStyle = ((Typography) gapComposer6.consume(staticProvidableCompositionLocal2)).bodyLarge;
                long j13 = NodeTraversor.getColors(gapComposer6).primaryColor;
                TextLinkStyles textLinkStyles = new TextLinkStyles(new SpanStyle(NodeTraversor.getColors(gapComposer6).progressiveColor, ContextsKt.getSp(16), (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65532), null, null, null);
                boolean changed5 = gapComposer6.changed(function17);
                Object rememberedValue12 = gapComposer6.rememberedValue();
                if (changed5 || rememberedValue12 == obj4) {
                    rememberedValue12 = new SettingsKt$$ExternalSyntheticLambda4(function17, 1);
                    gapComposer6.updateRememberedValue(rememberedValue12);
                }
                TabsBoxKt.m897HtmlTextKiACRJU(str7, m136paddingqDBjuR0$default, textLinkStyles, textStyle, j13, 0, 0, 0L, (LinkInteractionListener) rememberedValue12, null, 0, gapComposer6, 0, 3808);
                gapComposer6.end(true);
                Modifier m134paddingVpY3zN4$default3 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion2, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
                BiasAlignment.Vertical vertical2 = Alignment.Companion.CenterVertically;
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, vertical2, gapComposer6, 48);
                long j14 = gapComposer6.compositeKeyHashCode;
                int i14 = (int) (j14 ^ (j14 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope12 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier12 = AbsoluteAlignment.materializeModifier(gapComposer6, m134paddingVpY3zN4$default3);
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope12, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i14, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer6, materializeModifier12, composeUiNode$Companion$SetModifier$14);
                Object[] objArr = {pageTitle.getPrefixedText().concat("_positive")};
                Object rememberedValue13 = gapComposer6.rememberedValue();
                if (rememberedValue13 == obj4) {
                    rememberedValue13 = new SearchResult$$ExternalSyntheticLambda0(5);
                    gapComposer6.updateRememberedValue(rememberedValue13);
                }
                MutableState mutableState2 = (MutableState) SaverKt.rememberSaveable(objArr, (Function0) rememberedValue13, gapComposer6);
                Object[] objArr2 = {pageTitle.getPrefixedText().concat("_negative")};
                Object rememberedValue14 = gapComposer6.rememberedValue();
                if (rememberedValue14 == obj4) {
                    rememberedValue14 = new SearchResult$$ExternalSyntheticLambda0(6);
                    gapComposer6.updateRememberedValue(rememberedValue14);
                }
                MutableState mutableState3 = (MutableState) SaverKt.rememberSaveable(objArr2, (Function0) rememberedValue14, gapComposer6);
                if (((Boolean) mutableState2.getValue()).booleanValue() || ((Boolean) mutableState3.getValue()).booleanValue()) {
                    gapComposer6.startReplaceGroup(-714815992);
                    stringResource = UtilsKt.stringResource(R.string.hybrid_search_results_rated_label, gapComposer6);
                    gapComposer6.end(false);
                } else {
                    gapComposer6.startReplaceGroup(-714712855);
                    stringResource = UtilsKt.stringResource(R.string.hybrid_search_results_rate_label, gapComposer6);
                    gapComposer6.end(false);
                }
                String str8 = stringResource;
                Object rememberedValue15 = gapComposer6.rememberedValue();
                if (rememberedValue15 == obj4) {
                    rememberedValue15 = Updater.mutableStateOf$default(Boolean.FALSE);
                    gapComposer6.updateRememberedValue(rememberedValue15);
                }
                MutableState mutableState4 = (MutableState) rememberedValue15;
                Object rememberedValue16 = gapComposer6.rememberedValue();
                if (rememberedValue16 == obj4) {
                    rememberedValue16 = Updater.mutableStateOf$default(Boolean.TRUE);
                    gapComposer6.updateRememberedValue(rememberedValue16);
                }
                MutableState mutableState5 = (MutableState) rememberedValue16;
                if (((Boolean) mutableState5.getValue()).booleanValue()) {
                    animateContentSize$default = CrossfadeKt.animateContentSize$default(Animation.CC.weight$default$1(companion2, 1.0f));
                    vertical = vertical2;
                } else {
                    vertical = vertical2;
                    animateContentSize$default = CrossfadeKt.animateContentSize$default(SizeKt.wrapContentWidth$default(companion2, null, 3));
                }
                Modifier modifier3 = animateContentSize$default;
                TextStyle textStyle2 = ((Typography) gapComposer6.consume(staticProvidableCompositionLocal2)).bodySmall;
                long j15 = NodeTraversor.getColors(gapComposer6).placeholderColor;
                Object rememberedValue17 = gapComposer6.rememberedValue();
                if (rememberedValue17 == obj4) {
                    j = j15;
                    rememberedValue17 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda12(mutableState4, mutableState5, 0);
                    gapComposer6.updateRememberedValue(rememberedValue17);
                } else {
                    j = j15;
                }
                TextKt.m308TextNvy7gAk(str8, modifier3, j, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, (Function1) rememberedValue17, textStyle2, gapComposer6, 0, 1572864, 65528);
                CrossfadeKt.AnimatedVisibility(!((Boolean) mutableState3.getValue()).booleanValue(), null, null, EnterExitTransitionKt.fadeOut$default(null, 3).plus(EnterExitTransitionKt.shrinkHorizontally$default(null, horizontal, 13)), null, Expect_jvmKt.rememberComposableLambda(593719280, new HybridSearchResultsScreenKt$$ExternalSyntheticLambda13(0, mutableState2, mutableState4, function18), gapComposer6), gapComposer6, 1597446);
                CrossfadeKt.AnimatedVisibility(!((Boolean) mutableState2.getValue()).booleanValue(), null, null, EnterExitTransitionKt.fadeOut$default(null, 3).plus(EnterExitTransitionKt.shrinkHorizontally$default(null, horizontal, 13)), null, Expect_jvmKt.rememberComposableLambda(-317049689, new HybridSearchResultsScreenKt$$ExternalSyntheticLambda13(1, mutableState3, mutableState4, function18), gapComposer6), gapComposer6, 1597446);
                gapComposer6.end(true);
                CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m134paddingVpY3zN4$default(SizeKt.m149width3ABfNKs(companion2, 80.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2), 1.0f, NodeTraversor.getColors(gapComposer6).borderColor, gapComposer6, 54, 0);
                Modifier m139defaultMinSizeVpY3zN4$default = SizeKt.m139defaultMinSizeVpY3zN4$default(RecyclerView.DECELERATION_RATE, 56.0f, 1);
                Function1 function19 = function1;
                boolean changed6 = gapComposer6.changed(function19) | gapComposer6.changedInstance(searchResult);
                Object rememberedValue18 = gapComposer6.rememberedValue();
                if (changed6 || rememberedValue18 == obj4) {
                    rememberedValue18 = new HybridSearchViewsKt$$ExternalSyntheticLambda7(function19, searchResult, 1);
                    gapComposer6.updateRememberedValue(rememberedValue18);
                }
                Modifier m51clickableoSLSa3U$default2 = ImageKt.m51clickableoSLSa3U$default(15, m139defaultMinSizeVpY3zN4$default, null, (Function0) rememberedValue18, false);
                MeasurePolicy maybeCachedBoxMeasurePolicy8 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment3, false);
                long j16 = gapComposer6.compositeKeyHashCode;
                int i15 = (int) (j16 ^ (j16 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope13 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier13 = AbsoluteAlignment.materializeModifier(gapComposer6, m51clickableoSLSa3U$default2);
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy8, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope13, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i15, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer6, materializeModifier13, composeUiNode$Companion$SetModifier$14);
                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(OffsetKt.m133paddingVpY3zN4(companion2, 16.0f, 16.0f), 1.0f);
                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(OffsetKt.SpaceBetween, vertical, gapComposer6, 54);
                long j17 = gapComposer6.compositeKeyHashCode;
                int i16 = (int) (j17 ^ (j17 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope14 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier14 = AbsoluteAlignment.materializeModifier(gapComposer6, fillMaxWidth2);
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope14, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i16, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer6, materializeModifier14, composeUiNode$Companion$SetModifier$14);
                Modifier weight$default$1 = Animation.CC.weight$default$1(OffsetKt.m136paddingqDBjuR0$default(companion2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, 11), 1.0f);
                ColumnMeasurePolicy columnMeasurePolicy5 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer6, 0);
                long j18 = gapComposer6.compositeKeyHashCode;
                int i17 = (int) (j18 ^ (j18 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope15 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier15 = AbsoluteAlignment.materializeModifier(gapComposer6, weight$default$1);
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$19);
                } else {
                    gapComposer6.useNode();
                }
                Updater.m327setimpl(gapComposer6, columnMeasurePolicy5, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope15, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i17, gapComposer6, composeUiNode$Companion$SetModifier$13, gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer6, materializeModifier15, composeUiNode$Companion$SetModifier$14);
                TabsBoxKt.m897HtmlTextKiACRJU(pageTitle.getDisplayText(), null, null, ((Typography) gapComposer6.consume(staticProvidableCompositionLocal2)).bodyLarge, NodeTraversor.getColors(gapComposer6).primaryColor, 2, 2, 0L, null, null, 0, gapComposer6, 1769472, 3974);
                String str9 = pageTitle.description;
                TextKt.m308TextNvy7gAk(str9 == null ? "" : str9, null, NodeTraversor.getColors(gapComposer6).placeholderColor, null, 0L, null, null, 0L, null, 0L, 2, false, 1, 0, null, ((Typography) gapComposer6.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer6, 0, 24960, 110586);
                gapComposer6.end(true);
                String str10 = pageTitle.thumbUrl;
                if (str10 == null || str10.length() == 0) {
                    gapComposer6.startReplaceGroup(1916168717);
                    gapComposer6.end(false);
                } else {
                    gapComposer6.startReplaceGroup(1915352828);
                    Context context2 = (Context) gapComposer6.consume(AndroidCompositionLocals_androidKt.LocalContext);
                    String str11 = pageTitle.thumbUrl;
                    Boolean bool = Boolean.FALSE;
                    context2.getClass();
                    AsyncImageKt.m774AsyncImagex1rPTaM(Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context2, str11, bool, bool, null, null).build() : null, null, ClipKt.clip(SizeKt.m145size3ABfNKs(companion2, 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), new BrushPainter(new SolidColor(NodeTraversor.getColors(gapComposer6).borderColor)), new BrushPainter(new SolidColor(NodeTraversor.getColors(gapComposer6).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer6, 36912, 6, 31712);
                    gapComposer6.end(false);
                }
                Modifier.CC.m(gapComposer6, true, true, true);
                return unit;
        }
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(Object obj, Object obj2, Function1 function1, Object obj3, String str, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = function1;
        this.f$3 = obj3;
        this.f$4 = str;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(String str, ArrayList arrayList, Set set, Function1 function1, Function2 function2) {
        this.$r8$classId = 2;
        this.f$4 = str;
        this.f$0 = arrayList;
        this.f$1 = set;
        this.f$2 = function1;
        this.f$3 = function2;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(ArrayList arrayList, Function1 function1, Function6 function6, Function4 function4, Function2 function2) {
        this.$r8$classId = 5;
        this.f$0 = arrayList;
        this.f$2 = function1;
        this.f$1 = function6;
        this.f$3 = function4;
        this.f$4 = function2;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(Function0 function0, Function1 function1, SearchResult searchResult, Function1 function12, Function1 function13) {
        this.$r8$classId = 6;
        this.f$1 = function0;
        this.f$2 = function1;
        this.f$0 = searchResult;
        this.f$3 = function12;
        this.f$4 = function13;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda26(UiState uiState, Modifier modifier, Context context, Function1 function1, WikiErrorClickEvents wikiErrorClickEvents) {
        this.$r8$classId = 4;
        this.f$0 = uiState;
        this.f$1 = modifier;
        this.f$3 = context;
        this.f$2 = function1;
        this.f$4 = wikiErrorClickEvents;
    }
}
