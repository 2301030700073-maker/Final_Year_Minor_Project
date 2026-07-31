package org.wikipedia.random;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.collection.internal.Lock;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.lifecycle.Lifecycle$Event;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.recyclerview.widget.RecyclerView;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.UtilsKt;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda5;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class RandomScreenKt {

    /* renamed from: lambda$-577873682, reason: not valid java name */
    public static final ComposableLambdaImpl f51lambda$577873682 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(12), false, -577873682);

    /* renamed from: lambda$-1663354943, reason: not valid java name */
    public static final ComposableLambdaImpl f50lambda$1663354943 = new ComposableLambdaImpl(new ForYouCardKt$$ExternalSyntheticLambda17(13), false, -1663354943);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle$Event.values().length];
            try {
                iArr[Lifecycle$Event.ON_RESUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle$Event.ON_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [androidx.compose.ui.Modifier] */
    public static final void RandomControls(boolean z, final boolean z2, final boolean z3, final Function0 function0, final Function0 function02, final Function0 function03, GapComposer gapComposer, final int i) {
        int i2;
        final boolean z4;
        boolean z5;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-47248100);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(z2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(z3) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changedInstance(function02) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function03) ? 131072 : 65536;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new ParcelableSnapshotMutableIntState(0);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) rememberedValue;
            State animateFloatAsState = AnimateAsStateKt.animateFloatAsState(parcelableSnapshotMutableIntState.getIntValue() * 360.0f, null, gapComposer2, 3072, 22);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            long j = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(OffsetKt.navigationBarsPadding(ImageKt.m46backgroundbw27NRU(fillMaxWidth, j, rectangleShapeKt$RectangleShape$1)), RecyclerView.DECELERATION_RATE, 16.0f, 1);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterVertically, gapComposer2, 54);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            int i4 = i2;
            CardKt.IconButton(function0, null, z3, null, null, Expect_jvmKt.rememberComposableLambda(-699744098, new GamesHubScreenKt$$ExternalSyntheticLambda5(1, z3), gapComposer2), gapComposer2, (i2 & 896) | ((i2 >> 9) & 14) | 1572864, 58);
            gapComposer2 = gapComposer2;
            OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 32.0f));
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.m145size3ABfNKs(companion, 48.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(12.0f)), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, rectangleShapeKt$RectangleShape$1);
            boolean z6 = (i4 & 57344) == 16384;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z6 || rememberedValue2 == neverEqualPolicy) {
                z5 = false;
                rememberedValue2 = new RandomScreenKt$$ExternalSyntheticLambda12(function02, parcelableSnapshotMutableIntState, 0);
                gapComposer2.updateRememberedValue(rememberedValue2);
            } else {
                z5 = false;
            }
            Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, m46backgroundbw27NRU, null, (Function0) rememberedValue2, z5);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, z5);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m51clickableoSLSa3U$default);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_dice_24, 0, gapComposer2);
            String stringResource = UtilsKt.stringResource(R.string.view_next_random_article, gapComposer2);
            long j4 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor;
            float floatValue = ((Number) animateFloatAsState.getValue()).floatValue();
            IconKt.m286Iconww6aTOc(painterResource, stringResource, floatValue == RecyclerView.DECELERATION_RATE ? companion : ColorKt.m439graphicsLayer_6ThJ44$default(companion, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, floatValue, null, 524031), j4, gapComposer2, 8, 0);
            gapComposer2.end(true);
            OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion, 32.0f));
            z4 = z;
            CardKt.IconButton(function03, null, z2, null, null, Expect_jvmKt.rememberComposableLambda(206257109, new Function2() { // from class: org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda13
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    long Color;
                    GapComposer gapComposer3 = (GapComposer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if (gapComposer3.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Painter painterResource2 = UnsignedKt.painterResource(z4 ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, gapComposer3);
                        String stringResource2 = UtilsKt.stringResource(R.string.button_add_to_reading_list, gapComposer3);
                        Color = ColorKt.Color(Color.m433getRedimpl(r9), Color.m432getGreenimpl(r9), Color.m430getBlueimpl(r9), z2 ? 1.0f : 0.5f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer3.consume(WikipediaColorKt.LocalWikipediaColor)).progressiveColor));
                        IconKt.m286Iconww6aTOc(painterResource2, stringResource2, null, Color, gapComposer3, 8, 4);
                    } else {
                        gapComposer3.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer2), gapComposer2, ((i4 >> 15) & 14) | 1572864 | ((i4 << 3) & 896), 58);
            gapComposer2.end(true);
        } else {
            z4 = z;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            final boolean z7 = z4;
            endRestartGroup.block = new Function2() { // from class: org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda14
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    RandomScreenKt.RandomControls(z7, z2, z3, function0, function02, function03, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void RandomItemPage(Resource resource, Function1 function1, Function0 function0, Function0 function02, GapComposer gapComposer, int i) {
        boolean z;
        boolean z2;
        float f;
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(-89262473);
        int i2 = (gapComposer2.changed(resource) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changedInstance(function02) ? 2048 : 1024;
        }
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(fillElement, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, ColorKt.RectangleShape);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m46backgroundbw27NRU);
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
            if (resource instanceof Resource.Success) {
                gapComposer2.startReplaceGroup(1729896112);
                PageTitle pageTitle = (PageTitle) ((Resource.Success) resource).data;
                String str = pageTitle.wikiSite.languageCode;
                str.getClass();
                z = true;
                Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == 1 ? LayoutDirection.Rtl : LayoutDirection.Ltr), Expect_jvmKt.rememberComposableLambda(1074507385, new RandomScreenKt$$ExternalSyntheticLambda18(function1, pageTitle, context, 0), gapComposer2), gapComposer2, 56);
                gapComposer2.end(false);
            } else {
                boolean z3 = resource instanceof Resource.Error;
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                if (z3) {
                    gapComposer2.startReplaceGroup(1735076863);
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(fillElement, 32.0f);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterHorizontally, gapComposer2, 54);
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
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    String localizedMessage = ((Resource.Error) resource).throwable.getLocalizedMessage();
                    if (localizedMessage == null) {
                        gapComposer2.startReplaceGroup(-843393208);
                        localizedMessage = UtilsKt.stringResource(R.string.error_message_generic, gapComposer2);
                        z2 = false;
                    } else {
                        z2 = false;
                        gapComposer2.startReplaceGroup(-843394324);
                    }
                    gapComposer2.end(z2);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                    int i5 = i2;
                    TextKt.m308TextNvy7gAk(localizedMessage, null, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyLarge, gapComposer, 0, 0, 131066);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, RecyclerView.DECELERATION_RATE, 16.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer, 0);
                    long j3 = gapComposer.compositeKeyHashCode;
                    int i6 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m136paddingqDBjuR0$default);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i6, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    String stringResource = UtilsKt.stringResource(R.string.error_back, gapComposer);
                    TextStyle textStyle = ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).titleMedium;
                    long j4 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor;
                    Modifier clip = ClipKt.clip(companion, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(4.0f));
                    boolean z4 = (i5 & 7168) == 2048;
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (z4 || rememberedValue == neverEqualPolicy) {
                        f = 4.0f;
                        rememberedValue = new Handshake$$ExternalSyntheticLambda0(23, function02);
                        gapComposer.updateRememberedValue(rememberedValue);
                    } else {
                        f = 4.0f;
                    }
                    TextKt.m308TextNvy7gAk(stringResource, OffsetKt.m133paddingVpY3zN4(ImageKt.m51clickableoSLSa3U$default(15, clip, null, (Function0) rememberedValue, false), 16.0f, 8.0f), j4, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle, gapComposer, 0, 0, 131064);
                    String stringResource2 = UtilsKt.stringResource(R.string.page_error_retry, gapComposer);
                    TextStyle textStyle2 = ((Typography) gapComposer.consume(staticProvidableCompositionLocal2)).titleMedium;
                    long j5 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor;
                    Modifier clip2 = ClipKt.clip(companion, RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(f));
                    boolean z5 = (i5 & 896) == 256;
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (z5 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new Handshake$$ExternalSyntheticLambda0(24, function0);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    TextKt.m308TextNvy7gAk(stringResource2, OffsetKt.m133paddingVpY3zN4(ImageKt.m51clickableoSLSa3U$default(15, clip2, null, (Function0) rememberedValue2, false), 16.0f, 8.0f), j5, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposer, 0, 0, 131064);
                    gapComposer2 = gapComposer;
                    z = true;
                    Modifier.CC.m(gapComposer2, true, true, false);
                } else {
                    gapComposer2.startReplaceGroup(1736812801);
                    ProgressIndicatorKt.m290CircularProgressIndicator4lLiAd8(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.Center), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, RecyclerView.DECELERATION_RATE, 0L, 0, RecyclerView.DECELERATION_RATE, gapComposer2, 0, 60);
                    gapComposer2.end(false);
                    z = true;
                }
            }
            gapComposer2.end(z);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(resource, function1, function0, function02, i, 10);
        }
    }

    public static final void RandomScreen(RandomViewModel randomViewModel, Function0 function0, Function1 function1, Function1 function12, GapComposer gapComposer, int i) {
        Function0 function02;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        LinearGradient m11linearGradientmHitzGk;
        GapComposer gapComposer2 = gapComposer;
        randomViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function12.getClass();
        gapComposer2.startRestartGroup(1561309667);
        int i2 = i | (gapComposer2.changedInstance(randomViewModel) ? 4 : 2) | (gapComposer2.changedInstance(function0) ? 32 : 16) | (gapComposer2.changedInstance(function1) ? 256 : 128) | (gapComposer2.changedInstance(function12) ? 2048 : 1024);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Object rememberedValue = gapComposer2.rememberedValue();
            Object obj = Composer$Companion.Empty;
            if (rememberedValue == obj) {
                rememberedValue = Updater.createCompositionCoroutineScope(gapComposer2);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            CoroutineScope coroutineScope = (CoroutineScope) rememberedValue;
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new Tab$$ExternalSyntheticLambda0(26);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            DefaultPagerState rememberPagerState = PagerStateKt.rememberPagerState((Function0) rememberedValue2, gapComposer2, 390, 2);
            PageTitle pageTitle = (PageTitle) CollectionsKt.getOrNull(randomViewModel.items, rememberPagerState.getCurrentPage());
            Integer valueOf = Integer.valueOf(rememberPagerState.getCurrentPage());
            boolean changedInstance = gapComposer2.changedInstance(randomViewModel) | gapComposer2.changedInstance(pageTitle) | gapComposer2.changedInstance(context);
            Object rememberedValue3 = gapComposer2.rememberedValue();
            if (changedInstance || rememberedValue3 == obj) {
                rememberedValue3 = new ShareUtil$shareImage$2$uri$1(randomViewModel, pageTitle, context, (Continuation) null);
                gapComposer2.updateRememberedValue(rememberedValue3);
            }
            Updater.LaunchedEffect(valueOf, pageTitle, (Function2) rememberedValue3, gapComposer2);
            boolean changedInstance2 = gapComposer2.changedInstance(coroutineScope) | gapComposer2.changed(rememberPagerState);
            Object rememberedValue4 = gapComposer2.rememberedValue();
            if (changedInstance2 || rememberedValue4 == obj) {
                rememberedValue4 = new RandomScreenKt$$ExternalSyntheticLambda2(coroutineScope, rememberPagerState);
                gapComposer2.updateRememberedValue(rememberedValue4);
            }
            Function0 function03 = (Function0) rememberedValue4;
            boolean changed = gapComposer2.changed(rememberPagerState) | gapComposer2.changedInstance(coroutineScope);
            Object rememberedValue5 = gapComposer2.rememberedValue();
            if (changed || rememberedValue5 == obj) {
                rememberedValue5 = new RandomScreenKt$$ExternalSyntheticLambda2(rememberPagerState, coroutineScope);
                gapComposer2.updateRememberedValue(rememberedValue5);
            }
            Function0 function04 = (Function0) rememberedValue5;
            boolean changedInstance3 = gapComposer2.changedInstance(context) | gapComposer2.changed(function03);
            Object rememberedValue6 = gapComposer2.rememberedValue();
            if (changedInstance3 || rememberedValue6 == obj) {
                rememberedValue6 = new RandomScreenKt$$ExternalSyntheticLambda4(context, function03, 0);
                gapComposer2.updateRememberedValue(rememberedValue6);
            }
            ShakeToAdvance((Function0) rememberedValue6, gapComposer2, 0);
            FillElement fillElement = SizeKt.FillWholeMaxSize;
            long j = ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(fillElement, j, rectangleShapeKt$RectangleShape$1);
            BiasAlignment biasAlignment = Alignment.Companion.TopStart;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
            long j2 = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m46backgroundbw27NRU);
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
            Integer valueOf2 = Integer.valueOf(i3);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer2, valueOf2, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j3 = gapComposer2.compositeKeyHashCode;
            int i4 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, fillElement);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            DpKt.m696HorizontalPager8jOkeI(rememberPagerState, SizeKt.fillMaxWidth(ViewSizeResolver$CC.m(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14, 1.0f, true), 1.0f), null, null, 1, null, null, false, null, null, null, Expect_jvmKt.rememberComposableLambda(1817437472, new RandomScreenKt$$ExternalSyntheticLambda5(randomViewModel, function1, function0, 0), gapComposer2), gapComposer, 24576, 16364);
            gapComposer2 = gapComposer;
            boolean booleanValue = ((Boolean) randomViewModel.saveButtonState$delegate.getValue()).booleanValue();
            boolean z = pageTitle != null;
            boolean z2 = rememberPagerState.getCurrentPage() > 0;
            boolean changedInstance4 = gapComposer2.changedInstance(context) | gapComposer2.changed(function04);
            Object rememberedValue7 = gapComposer2.rememberedValue();
            if (changedInstance4 || rememberedValue7 == obj) {
                rememberedValue7 = new RandomScreenKt$$ExternalSyntheticLambda4(context, function04, 4);
                gapComposer2.updateRememberedValue(rememberedValue7);
            }
            Function0 function05 = (Function0) rememberedValue7;
            boolean changedInstance5 = gapComposer2.changedInstance(context) | gapComposer2.changed(function03);
            Object rememberedValue8 = gapComposer2.rememberedValue();
            if (changedInstance5 || rememberedValue8 == obj) {
                rememberedValue8 = new RandomScreenKt$$ExternalSyntheticLambda4(context, function03, 5);
                gapComposer2.updateRememberedValue(rememberedValue8);
            }
            Function0 function06 = (Function0) rememberedValue8;
            boolean changedInstance6 = gapComposer2.changedInstance(pageTitle) | ((i2 & 7168) == 2048);
            Object rememberedValue9 = gapComposer2.rememberedValue();
            if (changedInstance6 || rememberedValue9 == obj) {
                rememberedValue9 = new ForYouCardKt$$ExternalSyntheticLambda5(pageTitle, function12);
                gapComposer2.updateRememberedValue(rememberedValue9);
            }
            RandomControls(booleanValue, z, z2, function05, function06, (Function0) rememberedValue9, gapComposer2, 0);
            gapComposer2.end(true);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier align = boxScopeInstance.align(companion, biasAlignment);
            ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
            long j4 = gapComposer2.compositeKeyHashCode;
            int i5 = (int) (j4 ^ (j4 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, align);
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            long j5 = Color.Black;
            Color = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.8f, Color.m431getColorSpaceimpl(j5));
            function02 = function0;
            RandomTopBar(ImageKt.m46backgroundbw27NRU(companion, Color, rectangleShapeKt$RectangleShape$1), function02, gapComposer2, (i2 & 112) | 6);
            Modifier m140height3ABfNKs = SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 80.0f);
            Float valueOf3 = Float.valueOf(RecyclerView.DECELERATION_RATE);
            Color2 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.8f, Color.m431getColorSpaceimpl(j5));
            Pair pair = new Pair(valueOf3, new Color(Color2));
            Float valueOf4 = Float.valueOf(0.18f);
            Color3 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.7f, Color.m431getColorSpaceimpl(j5));
            Pair pair2 = new Pair(valueOf4, new Color(Color3));
            Float valueOf5 = Float.valueOf(0.38f);
            Color4 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.5f, Color.m431getColorSpaceimpl(j5));
            Pair pair3 = new Pair(valueOf5, new Color(Color4));
            Float valueOf6 = Float.valueOf(0.58f);
            Color5 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.3f, Color.m431getColorSpaceimpl(j5));
            Pair pair4 = new Pair(valueOf6, new Color(Color5));
            Float valueOf7 = Float.valueOf(0.76f);
            Color6 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.15f, Color.m431getColorSpaceimpl(j5));
            Pair pair5 = new Pair(valueOf7, new Color(Color6));
            Float valueOf8 = Float.valueOf(0.9f);
            Color7 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.05f, Color.m431getColorSpaceimpl(j5));
            m11linearGradientmHitzGk = Lock.m11linearGradientmHitzGk((Pair[]) Arrays.copyOf(r1, new Pair[]{pair, pair2, pair3, pair4, pair5, new Pair(valueOf8, new Color(Color7)), new Pair(Float.valueOf(1.0f), new Color(Color.Transparent))}.length), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (4294967295L & Float.floatToRawIntBits(Float.POSITIVE_INFINITY)));
            BoxKt.Box(ImageKt.background$default(m140height3ABfNKs, m11linearGradientmHitzGk, null, 6), gapComposer2, 0);
            gapComposer2.end(true);
            gapComposer2.end(true);
        } else {
            function02 = function0;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1(i, 0, randomViewModel, function02, function1, function12, false);
        }
    }

    public static final void RandomTopBar(Modifier modifier, Function0 function0, GapComposer gapComposer, int i) {
        GapComposer gapComposer2 = gapComposer;
        gapComposer2.startRestartGroup(177216643);
        int i2 = i | (gapComposer2.changedInstance(function0) ? 32 : 16);
        if (gapComposer2.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.m140height3ABfNKs(OffsetKt.statusBarsPadding(SizeKt.fillMaxWidth(modifier, 1.0f)), 56.0f), 4.0f, RecyclerView.DECELERATION_RATE, 2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer2, 48);
            long j = gapComposer2.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer2.startReusableNode();
            if (gapComposer2.inserting) {
                gapComposer2.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer2.useNode();
            }
            Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
            CardKt.IconButton(function0, null, false, null, null, f50lambda$1663354943, gapComposer2, ((i2 >> 3) & 14) | 1572864, 62);
            TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.view_random_card_title, gapComposer2), OffsetKt.m136paddingqDBjuR0$default(Modifier.Companion.$$INSTANCE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), Color.White, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).headlineSmall, 0L, 0L, FontWeight.Bold, null, 0L, 0L, null, 16777211), gapComposer, 432, 0, 131064);
            gapComposer2 = gapComposer;
            gapComposer2.end(true);
        } else {
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda9(i, modifier, function0, 0);
        }
    }

    public static final void ShakeToAdvance(Function0 function0, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-207563584);
        int i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            LifecycleOwner lifecycleOwner = (LifecycleOwner) gapComposer.consume(LocalLifecycleOwnerKt.LocalLifecycleOwner);
            MutableState rememberUpdatedState = Updater.rememberUpdatedState(function0, gapComposer);
            boolean changedInstance = gapComposer.changedInstance(context) | gapComposer.changed(rememberUpdatedState) | gapComposer.changedInstance(lifecycleOwner);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new UtilsKt$$ExternalSyntheticLambda1(context, lifecycleOwner, rememberUpdatedState, 27);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Updater.DisposableEffect(lifecycleOwner, (Function1) rememberedValue, gapComposer);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda16(i, function0);
        }
    }

    public static Intent newIntent(Context context, WikiSite wikiSite, Constants.InvokeSource invokeSource) {
        context.getClass();
        wikiSite.getClass();
        Intent intent = new Intent(context, (Class<?>) RandomActivity.class);
        intent.putExtra("wikiSite", wikiSite);
        intent.putExtra("invokeSource", invokeSource);
        return intent;
    }
}
