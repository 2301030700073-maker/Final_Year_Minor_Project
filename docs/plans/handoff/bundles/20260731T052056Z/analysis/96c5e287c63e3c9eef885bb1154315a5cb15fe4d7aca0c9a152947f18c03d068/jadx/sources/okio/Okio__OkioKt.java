package okio;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt__ProduceStateKt$produceState$1$1;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontWeight;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import coil3.RealImageLoader$execute$result$1;
import coil3.compose.AsyncImageKt;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import org.jsoup.Jsoup;
import org.jsoup.select.NodeTraversor;
import org.maplibre.geojson.Geometry;
import org.maplibre.geojson.GeometryCollection;
import org.maplibre.geojson.LineString;
import org.maplibre.geojson.MultiLineString;
import org.maplibre.geojson.MultiPoint;
import org.maplibre.geojson.MultiPolygon;
import org.maplibre.geojson.Point;
import org.maplibre.geojson.Polygon;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ActivityTabFragment$onCreateView$2$1$1;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.menu.PageOverflowMenuKt$$ExternalSyntheticLambda3;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.news.NewsModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.topread.TopRead;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda6;
import org.wikipedia.random.RandomActivity$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda16;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import org.wikipedia.settings.homefeed.FeedConfigurationItem;
import org.wikipedia.settings.homefeed.FeedConfigurationState;
import org.wikipedia.settings.homefeed.ModulesViewModel;
import org.wikipedia.talk.TalkTopicsViewModel$subscribeTopic$1;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class Okio__OkioKt {
    public static ByteString.Companion _implementation;

    public static final void FeedConfigurationContent(FeedConfigurationState feedConfigurationState, Function0 function0, Function1 function1, GapComposer gapComposer, int i) {
        int i2;
        feedConfigurationState.getClass();
        function0.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(-1340572242);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(feedConfigurationState) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function1) ? 256 : 128;
        }
        byte b = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            CardKt.m270ScaffoldTvnljyQ(null, Expect_jvmKt.rememberComposableLambda(-936802198, new RandomScreenKt$$ExternalSyntheticLambda16(function0, 6, b), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(997317183, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(19, feedConfigurationState, function1), gapComposer), gapComposer, 805306416, 445);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) feedConfigurationState, (Object) function0, (Object) function1, i, 19);
        }
    }

    public static final void FeedConfigurationItemView(FeedConfigurationItem feedConfigurationItem, Function0 function0, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        feedConfigurationItem.getClass();
        function0.getClass();
        gapComposer2.startRestartGroup(-104426968);
        int i2 = i | (gapComposer2.changed(feedConfigurationItem) ? 4 : 2) | (gapComposer2.changedInstance(function0) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, companion, null, function0, false);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 22.0f);
            Painter painterResource = UnsignedKt.painterResource(feedConfigurationItem.icon, 0, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            IconKt.m286Iconww6aTOc(painterResource, null, m145size3ABfNKs, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer2, 440, 0);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Start, gapComposer2, 6);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            String stringResource = UtilsKt.stringResource(feedConfigurationItem.title, gapComposer2);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
            TextKt.m308TextNvy7gAk(stringResource, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 0, 0, 131066);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(feedConfigurationItem.description, gapComposer), null, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 0, 0, 131066);
            gapComposer2 = gapComposer;
            Modifier.CC.m(gapComposer2, true, true, true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomActivity$$ExternalSyntheticLambda1(feedConfigurationItem, function0, i, 13);
        }
    }

    public static final void FeedConfigurationScreen(ModulesViewModel modulesViewModel, Function0 function0, Function0 function02, Function0 function03, Function0 function04, Function0 function05, GapComposer gapComposer, int i) {
        ModulesViewModel modulesViewModel2;
        char c;
        char c2;
        ModulesViewModel modulesViewModel3;
        int i2;
        function0.getClass();
        function02.getClass();
        function03.getClass();
        function04.getClass();
        function05.getClass();
        gapComposer.startRestartGroup(309731310);
        int i3 = i | 2 | (gapComposer.changedInstance(function0) ? 32 : 16) | (gapComposer.changedInstance(function02) ? 256 : 128) | (gapComposer.changedInstance(function03) ? 2048 : 1024) | (gapComposer.changedInstance(function04) ? 16384 : 8192) | (gapComposer.changedInstance(function05) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                ViewModelStoreOwner current = LocalViewModelStoreOwner.getCurrent(gapComposer);
                if (current == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                }
                c = 0;
                c2 = 1;
                modulesViewModel3 = (ModulesViewModel) UnsignedKt.viewModel(Reflection.factory.getOrCreateKotlinClass(ModulesViewModel.class), current, null, ViewModelKt.getViewModelCreationExtras(current), gapComposer);
                i2 = i3 & (-15);
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-15);
                modulesViewModel3 = modulesViewModel;
                c = 0;
                c2 = 1;
            }
            gapComposer.endDefaults();
            ReadonlyStateFlow readonlyStateFlow = modulesViewModel3.feedConfigurationState;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            Lifecycle$State lifecycle$State = Lifecycle$State.STARTED;
            Object value = readonlyStateFlow.$$delegate_0.getValue();
            Object lifecycle = lifecycleOwner.getLifecycle();
            Object[] objArr = new Object[4];
            objArr[c] = readonlyStateFlow;
            objArr[c2] = lifecycle;
            objArr[2] = lifecycle$State;
            Object obj = EmptyCoroutineContext.INSTANCE;
            objArr[3] = obj;
            boolean changedInstance = gapComposer.changedInstance(lifecycle) | gapComposer.changed(lifecycle$State.ordinal()) | gapComposer.changedInstance(obj) | gapComposer.changedInstance(readonlyStateFlow);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj2 = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == obj2) {
                rememberedValue = new RealImageLoader$execute$result$1(lifecycle, lifecycle$State, obj, readonlyStateFlow, null, 11);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function2 function2 = (Function2) rememberedValue;
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj2) {
                rememberedValue2 = Updater.mutableStateOf$default(value);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            MutableState mutableState = (MutableState) rememberedValue2;
            Object[] copyOf = Arrays.copyOf(objArr, 4);
            boolean changedInstance2 = gapComposer.changedInstance(function2);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changedInstance2 || rememberedValue3 == obj2) {
                rememberedValue3 = new SnapshotStateKt__ProduceStateKt$produceState$1$1(function2, mutableState, null, 2);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(copyOf, (Function2) rememberedValue3, gapComposer);
            FeedConfigurationState feedConfigurationState = (FeedConfigurationState) mutableState.getValue();
            int i4 = ((i2 & 896) == 256 ? c2 : c) | ((57344 & i2) == 16384 ? c2 : c) | ((i2 & 7168) == 2048 ? c2 : c) | ((458752 & i2) == 131072 ? c2 : c);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (i4 != 0 || rememberedValue4 == obj2) {
                Object aboutActivityKt$$ExternalSyntheticLambda7 = new AboutActivityKt$$ExternalSyntheticLambda7(function02, function04, function03, function05, 15);
                gapComposer.updateRememberedValue(aboutActivityKt$$ExternalSyntheticLambda7);
                rememberedValue4 = aboutActivityKt$$ExternalSyntheticLambda7;
            }
            FeedConfigurationContent(feedConfigurationState, function0, (Function1) rememberedValue4, gapComposer, i2 & 112);
            modulesViewModel2 = modulesViewModel3;
        } else {
            gapComposer.skipToGroupEnd();
            modulesViewModel2 = modulesViewModel;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NewsModuleKt$$ExternalSyntheticLambda2(modulesViewModel2, function0, function02, function03, function04, function05, i, 4);
        }
    }

    public static final void PageOverflowMenu(Modifier modifier, String str, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function0, List list, GapComposer gapComposer, int i) {
        Modifier modifier2;
        function0.getClass();
        gapComposer.startRestartGroup(-1790162949);
        int i2 = i | 6 | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changedInstance(pageOverflowMenuState) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(list) ? 16384 : 8192);
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            boolean equals = str.equals(pageOverflowMenuState != null ? pageOverflowMenuState.menuKey : null);
            boolean z = (i2 & 112) == 32;
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (z || rememberedValue == obj) {
                rememberedValue = Updater.mutableStateOf$default(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableState mutableState = (MutableState) rememberedValue;
            Boolean valueOf = Boolean.valueOf(equals);
            boolean changed = gapComposer.changed(equals) | gapComposer.changed(mutableState);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = new ActivityTabFragment$onCreateView$2$1$1(equals, mutableState, (Continuation) null);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Updater.LaunchedEffect(gapComposer, valueOf, (Function2) rememberedValue2);
            Boolean bool = (Boolean) mutableState.getValue();
            bool.getClass();
            Boolean valueOf2 = Boolean.valueOf(equals);
            boolean changed2 = gapComposer.changed(mutableState) | gapComposer.changed(equals) | ((i2 & 7168) == 2048);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                rememberedValue3 = new TalkTopicsViewModel$subscribeTopic$1(equals, function0, mutableState, (Continuation) null);
                gapComposer.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(bool, valueOf2, (Function2) rememberedValue3, gapComposer);
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
            long j = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            boolean changed3 = gapComposer.changed(mutableState);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue4 == obj) {
                rememberedValue4 = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 12);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-117677024, new PageOverflowMenuKt$$ExternalSyntheticLambda3(list, mutableState, i3), gapComposer);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            AndroidMenu_androidKt.m252DropdownMenuIlH_yew(booleanValue, (Function0) rememberedValue4, companion, 0L, null, null, null, j, RecyclerView.DECELERATION_RATE, rememberComposableLambda, gapComposer, 384, 1912);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new FeedComponentsKt$$ExternalSyntheticLambda5(modifier2, str, pageOverflowMenuState, function0, list, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v19 */
    public static final void TopReadItem(Context context, WikiSite wikiSite, int i, boolean z, PageSummary pageSummary, ComposableLambdaImpl composableLambdaImpl, Function1 function1, Function1 function12, GapComposer gapComposer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        PageSummary pageSummary2;
        WikiSite wikiSite2;
        Context context2;
        ?? r12;
        long j;
        boolean z2;
        Function1 function13 = function12;
        GapComposer gapComposer2 = gapComposer;
        context.getClass();
        wikiSite.getClass();
        function1.getClass();
        function13.getClass();
        gapComposer2.startRestartGroup(-1854145296);
        int i3 = i2 | (gapComposer2.changedInstance(context) ? 4 : 2) | (gapComposer2.changedInstance(wikiSite) ? 32 : 16) | (gapComposer2.changed(i) ? 256 : 128) | (gapComposer2.changed(z) ? 2048 : 1024) | (gapComposer2.changedInstance(pageSummary) ? 16384 : 8192) | (gapComposer2.changedInstance(function1) ? 1048576 : 524288) | (gapComposer2.changedInstance(function13) ? 8388608 : 4194304);
        int i4 = 0;
        if (gapComposer2.shouldExecute(i3 & 1, (4793491 & i3) != 4793490)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            boolean changedInstance = ((i3 & 3670016) == 1048576) | gapComposer2.changedInstance(pageSummary);
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (changedInstance || rememberedValue == neverEqualPolicy) {
                rememberedValue = new TopReadModuleKt$$ExternalSyntheticLambda5(function1, pageSummary, i4);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue, false);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
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
            BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 1.0f), NodeTraversor.getColors(gapComposer2).borderColor, ColorKt.RectangleShape), gapComposer2, 0);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 4.0f));
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 12.0f, 1);
            Arrangement$End$1 arrangement$End$12 = OffsetKt.f5Start;
            BiasAlignment.Vertical vertical = Alignment.Companion.Top;
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$12, vertical, gapComposer2, 0);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i6 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
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
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j4 = gapComposer2.compositeKeyHashCode;
            int i7 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$12, vertical, gapComposer2, 0);
            long j5 = gapComposer2.compositeKeyHashCode;
            int i8 = (int) (j5 ^ (j5 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, companion);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i8, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$14);
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(SizeKt.m145size3ABfNKs(companion, 24.0f), NodeTraversor.getColors(gapComposer2).progressiveColor, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f));
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            long j6 = gapComposer2.compositeKeyHashCode;
            int i9 = (int) (j6 ^ (j6 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, m46backgroundbw27NRU);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i9, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$14);
            String valueOf2 = String.valueOf(i);
            long sp = ContextsKt.getSp(16);
            long j7 = NodeTraversor.getColors(gapComposer2).paperColor;
            FontWeight fontWeight = FontWeight.Bold;
            TextKt.m308TextNvy7gAk(valueOf2, null, j7, null, sp, fontWeight, FontFamily.Serif, 0L, null, 0L, 0, false, 0, 0, null, null, gapComposer2, 1597440, 0, 261930);
            gapComposer2.end(true);
            OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 16.0f));
            String displayTitle = pageSummary.getDisplayTitle();
            long j8 = NodeTraversor.getColors(gapComposer2).primaryColor;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
            TabsBoxKt.m897HtmlTextKiACRJU(displayTitle, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleMedium, 0L, 0L, FontWeight.SemiBold, null, 0L, 0L, null, 16777211), j8, 0, 0, 0L, null, null, 0, gapComposer, 0, 4070);
            gapComposer.end(true);
            OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 8.0f));
            RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(arrangement$End$12, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j9 = gapComposer.compositeKeyHashCode;
            int i10 = (int) (j9 ^ (j9 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i10, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier6, composeUiNode$Companion$SetModifier$14);
            int i11 = z ? R.drawable.ic_trending_up_24dp : R.drawable.ic_trending_down_24dp;
            if (z) {
                gapComposer.startReplaceGroup(-1385258543);
                j = NodeTraversor.getColors(gapComposer).successColor;
                r12 = 0;
            } else {
                r12 = 0;
                gapComposer.startReplaceGroup(-1385257259);
                j = NodeTraversor.getColors(gapComposer).destructiveColor;
            }
            gapComposer.end(r12);
            IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(i11, r12, gapComposer), null, SizeKt.m145size3ABfNKs(companion, 24.0f), j, gapComposer, 440, 0);
            OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 16.0f));
            StringUtil stringUtil = StringUtil.INSTANCE;
            pageSummary2 = pageSummary;
            context2 = context;
            TextKt.m308TextNvy7gAk(StringUtil.getPageViewText(context, pageSummary.views), null, NodeTraversor.getColors(gapComposer).secondaryColor, null, 0L, fontWeight, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer, 1572864, 0, 131002);
            OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 4.0f));
            wikiSite2 = wikiSite;
            TextKt.m308TextNvy7gAk(ContextKt.getString(context2, wikiSite.languageCode, R.string.view_top_read_card_pageviews_views_suffix, new Object[0]), null, NodeTraversor.getColors(gapComposer).secondaryColor, null, 0L, FontWeight.Medium, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer, 1572864, 0, 131002);
            gapComposer.end(true);
            gapComposer.end(true);
            if (pageSummary2.getThumbnailUrl() == null) {
                gapComposer.startReplaceGroup(293379498);
                z2 = false;
                gapComposer.end(false);
            } else {
                z2 = false;
                gapComposer.startReplaceGroup(293379499);
                AsyncImageKt.m772AsyncImage10Xjiaw(pageSummary2.getThumbnailUrl(), ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 56.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f)), gapComposer);
                gapComposer.end(false);
            }
            Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 48.0f);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, z2);
            long j10 = gapComposer.compositeKeyHashCode;
            int i12 = (int) (j10 ^ (j10 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer, m145size3ABfNKs);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i12, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier7, composeUiNode$Companion$SetModifier$14);
            boolean changedInstance2 = gapComposer.changedInstance(pageSummary2) | ((i3 & 29360128) == 8388608 ? true : z2);
            Object rememberedValue2 = gapComposer.rememberedValue();
            int i13 = 6;
            if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                function13 = function12;
                rememberedValue2 = new TopReadModuleKt$$ExternalSyntheticLambda5(function13, pageSummary2, i13);
                gapComposer.updateRememberedValue(rememberedValue2);
            } else {
                function13 = function12;
            }
            CardKt.IconButton((Function0) rememberedValue2, null, false, null, null, Expect_jvmKt.rememberComposableLambda(658740530, new ForYouCardKt$$ExternalSyntheticLambda3(context2, wikiSite2, 12), gapComposer), gapComposer, 1572864, 62);
            gapComposer2 = gapComposer;
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.invoke((Object) gapComposer2, (Object) 6);
            gapComposer2.end(true);
            gapComposer2.end(true);
            gapComposer2.end(true);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            pageSummary2 = pageSummary;
            wikiSite2 = wikiSite;
            context2 = context;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TopReadModuleKt$$ExternalSyntheticLambda6(context2, wikiSite2, i, z, pageSummary2, composableLambdaImpl2, function1, function13, i2);
        }
    }

    public static final void TopReadModule(WikiSite wikiSite, TopRead topRead, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Function0 function02, Function1 function1, Function2 function2, Function0 function03, Function0 function04, GapComposer gapComposer, int i) {
        wikiSite.getClass();
        topRead.getClass();
        function02.getClass();
        function1.getClass();
        function2.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(-1766399519);
        int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(topRead) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function1) ? 131072 : 65536) | (gapComposer.changedInstance(function2) ? 1048576 : 524288) | (gapComposer.changedInstance(function03) ? 8388608 : 4194304) | (gapComposer.changedInstance(function04) ? 67108864 : 33554432);
        if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
            int i3 = i2 << 9;
            ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.view_top_read_card_title, R.string.view_top_read_card_description, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, function0, function02, function04, Expect_jvmKt.rememberComposableLambda(105722223, new TopReadModuleKt$$ExternalSyntheticLambda0(function03, topRead, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite, function1, function2, composableLambdaImpl), gapComposer), gapComposer, (i2 & 234881024) | ((i2 << 3) & 112) | 805306368 | (3670016 & i3) | (i3 & 29360128), 17);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda3(wikiSite, topRead, composableLambdaImpl, function0, function02, function1, function2, function03, function04, i, 3);
        }
    }

    public static double[] bbox(Geometry geometry) {
        if (geometry instanceof Point) {
            ArrayList arrayList = new ArrayList();
            arrayList.add((Point) geometry);
            return bboxCalculator(arrayList);
        }
        if (geometry instanceof MultiPoint) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(((MultiPoint) geometry).coordinates());
            return bboxCalculator(arrayList2);
        }
        if (geometry instanceof LineString) {
            ArrayList arrayList3 = new ArrayList();
            arrayList3.addAll(((LineString) geometry).coordinates());
            return bboxCalculator(arrayList3);
        }
        if (geometry instanceof MultiLineString) {
            MultiLineString multiLineString = (MultiLineString) geometry;
            ArrayList arrayList4 = new ArrayList();
            for (int i = 0; i < multiLineString.coordinates().size(); i++) {
                arrayList4.addAll(multiLineString.coordinates().get(i));
            }
            return bboxCalculator(arrayList4);
        }
        if (geometry instanceof Polygon) {
            Polygon polygon = (Polygon) geometry;
            ArrayList arrayList5 = new ArrayList();
            for (int i2 = 0; i2 < polygon.coordinates().size(); i2++) {
                for (int i3 = 0; i3 < polygon.coordinates().get(i2).size(); i3++) {
                    arrayList5.add(polygon.coordinates().get(i2).get(i3));
                }
            }
            return bboxCalculator(arrayList5);
        }
        if (geometry instanceof MultiPolygon) {
            MultiPolygon multiPolygon = (MultiPolygon) geometry;
            ArrayList arrayList6 = new ArrayList();
            for (int i4 = 0; i4 < multiPolygon.coordinates().size(); i4++) {
                for (int i5 = 0; i5 < multiPolygon.coordinates().get(i4).size(); i5++) {
                    for (int i6 = 0; i6 < multiPolygon.coordinates().get(i4).get(i5).size(); i6++) {
                        arrayList6.add(multiPolygon.coordinates().get(i4).get(i5).get(i6));
                    }
                }
            }
            return bboxCalculator(arrayList6);
        }
        if (!(geometry instanceof GeometryCollection)) {
            throw new RuntimeException("Unknown geometry class: " + geometry.getClass());
        }
        ArrayList arrayList7 = new ArrayList();
        Iterator<Geometry> it = ((GeometryCollection) geometry).geometries().iterator();
        while (it.hasNext()) {
            double[] bbox = bbox(it.next());
            arrayList7.add(Point.fromLngLat(bbox[0], bbox[1]));
            arrayList7.add(Point.fromLngLat(bbox[2], bbox[1]));
            arrayList7.add(Point.fromLngLat(bbox[2], bbox[3]));
            arrayList7.add(Point.fromLngLat(bbox[0], bbox[3]));
        }
        MultiPoint fromLngLats = MultiPoint.fromLngLats(arrayList7);
        ArrayList arrayList8 = new ArrayList();
        arrayList8.addAll(fromLngLats.coordinates());
        return bboxCalculator(arrayList8);
    }

    public static double[] bboxCalculator(ArrayList arrayList) {
        double[] dArr = {Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY};
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Point point = (Point) it.next();
            if (dArr[0] > point.longitude()) {
                dArr[0] = point.longitude();
            }
            if (dArr[1] > point.latitude()) {
                dArr[1] = point.latitude();
            }
            if (dArr[2] < point.longitude()) {
                dArr[2] = point.longitude();
            }
            if (dArr[3] < point.latitude()) {
                dArr[3] = point.latitude();
            }
        }
        return dArr;
    }

    public static final RealBufferedSource buffer(Source source) {
        source.getClass();
        return new RealBufferedSource(source);
    }

    public static float dpToPx(float f) {
        return TypedValue.applyDimension(1, f, getDisplayMetrics());
    }

    public static float getDimension(int i) {
        TypedValue typedValue = new TypedValue();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        resources.getValue(i, typedValue, true);
        return TypedValue.complexToFloat(typedValue.data);
    }

    public static DisplayMetrics getDisplayMetrics() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        return displayMetrics;
    }

    public static int getToolbarHeightPx(Context context) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
        obtainStyledAttributes.getClass();
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static int htmlPxToInt(String str) {
        try {
            return StringsKt.contains(str, "px", false) ? Integer.parseInt(StringsKt__StringsJVMKt.replace$default(str, "px", "")) : Integer.parseInt(str);
        } catch (Exception e) {
            L.e(e);
            return 0;
        }
    }

    public static boolean isLandscape(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static final boolean isStarted(Activity activity) {
        activity.getClass();
        return ((AppCompatActivity) activity).lifecycleRegistry.state.isAtLeast(Lifecycle$State.STARTED);
    }

    public static int leadImageHeightForDevice(Context context) {
        float f;
        float f2;
        if (isLandscape(context)) {
            f = getDisplayMetrics().widthPixels;
            TypedValue typedValue = new TypedValue();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            Resources resources = Jsoup.getInstance().getResources();
            resources.getClass();
            resources.getValue(R.dimen.articleHeaderViewScreenHeightRatio, typedValue, true);
            f2 = typedValue.getFloat();
        } else {
            f = getDisplayMetrics().heightPixels;
            TypedValue typedValue2 = new TypedValue();
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            Resources resources2 = Jsoup.getInstance().getResources();
            resources2.getClass();
            resources2.getValue(R.dimen.articleHeaderViewScreenHeightRatio, typedValue2, true);
            f2 = typedValue2.getFloat();
        }
        return (int) (f2 * f);
    }

    public static int roundedDpToPx(float f) {
        return UnsignedKt.roundToInt(dpToPx(f));
    }

    public static int roundedPxToDp(float f) {
        return UnsignedKt.roundToInt(f / getDisplayMetrics().density);
    }

    public static void show(FragmentManagerImpl fragmentManagerImpl, DialogFragment dialogFragment) {
        dialogFragment.getClass();
        if (fragmentManagerImpl.isStateSaved() || fragmentManagerImpl.mDestroyed) {
            return;
        }
        DialogFragment dialogFragment2 = (fragmentManagerImpl.isStateSaved() || fragmentManagerImpl.mDestroyed) ? null : (DialogFragment) fragmentManagerImpl.findFragmentByTag("bottom_sheet_fragment");
        if (dialogFragment2 != null) {
            dialogFragment2.dismiss();
        }
        dialogFragment.show(fragmentManagerImpl, "bottom_sheet_fragment");
    }

    public abstract Object get(KClass kClass);

    public abstract Okio__OkioKt plus(KClass kClass, Object obj);

    public static final RealBufferedSink buffer(Sink sink) {
        sink.getClass();
        return new RealBufferedSink(sink);
    }
}
