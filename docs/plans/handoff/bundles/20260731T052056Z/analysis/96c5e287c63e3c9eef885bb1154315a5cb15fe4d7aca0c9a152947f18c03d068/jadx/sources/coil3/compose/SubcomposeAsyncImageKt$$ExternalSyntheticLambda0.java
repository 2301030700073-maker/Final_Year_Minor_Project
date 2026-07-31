package coil3.compose;

import android.content.Context;
import android.net.Uri;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsScopeImpl;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
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
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.recyclerview.widget.RecyclerView;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import com.caverock.androidsvg.SVGAndroidRenderer;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.random.XorWowRandom;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;
import org.wikipedia.donate.donationreminder.DonationReminderUiState;
import org.wikipedia.donate.donationreminder.DonationReminderViewModel;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.feed.HomeViewModelKt;
import org.wikipedia.feed.didyouknow.DidYouKnowActivityKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda5;
import org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda28;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.onboarding.OnboardingScreen;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SubcomposeAsyncImageKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        GapComposer gapComposer;
        Unit unit;
        PageSummary pageSummary;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        Context context;
        Function1 function1;
        WikiSite wikiSite;
        int i;
        long j;
        long j2;
        long Color;
        boolean z;
        long Color2;
        long j3;
        Context context2;
        ImageRequest imageRequest;
        ImageRequest imageRequest2;
        GapComposer gapComposer2;
        int i2 = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        Unit unit2 = Unit.INSTANCE;
        Object obj4 = this.f$5;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$2;
        Object obj8 = this.f$1;
        Object obj9 = this.f$0;
        final int i3 = 0;
        final int i4 = 1;
        final int i5 = 2;
        switch (i2) {
            case 0:
                int i6 = 2;
                SizeResolver sizeResolver = (SizeResolver) obj9;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj8;
                AsyncImagePainter asyncImagePainter = (AsyncImagePainter) obj7;
                String str = (String) obj6;
                Alignment alignment = (Alignment) obj5;
                ContentScale contentScale = (ContentScale) obj4;
                BoxWithConstraintsScopeImpl boxWithConstraintsScopeImpl = (BoxWithConstraintsScopeImpl) obj;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                if ((intValue & 6) == 0) {
                    if (gapComposer3.changed(boxWithConstraintsScopeImpl)) {
                        i6 = 4;
                    }
                    intValue |= i6;
                }
                if (gapComposer3.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    ((ConstraintsSizeResolver) sizeResolver).m778setConstraintsBRTryo0(boxWithConstraintsScopeImpl.constraints);
                    composableLambdaImpl.invoke((Object) new RealSubcomposeAsyncImageScope(boxWithConstraintsScopeImpl, asyncImagePainter, str, alignment, contentScale), (Object) gapComposer3, (Object) 0);
                } else {
                    gapComposer3.skipToGroupEnd();
                }
                return unit2;
            case 1:
                DonationReminderUiState donationReminderUiState = (DonationReminderUiState) obj9;
                DonationReminderViewModel donationReminderViewModel = (DonationReminderViewModel) obj8;
                Function1 function12 = (Function1) obj7;
                Function0 function0 = (Function0) obj6;
                WikiErrorClickEvents wikiErrorClickEvents = (WikiErrorClickEvents) obj5;
                MutableState mutableState = (MutableState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer4.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer4.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer4.skipToGroupEnd();
                } else if (donationReminderUiState.isLoading) {
                    gapComposer4.startReplaceGroup(1997776203);
                    Modifier padding = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                    long j4 = gapComposer4.compositeKeyHashCode;
                    int i7 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer4.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer4, padding);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer4.startReusableNode();
                    if (gapComposer4.inserting) {
                        gapComposer4.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer4.useNode();
                    }
                    Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer4, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer4, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer4, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    ProgressIndicatorKt.m291LinearProgressIndicatorrIrjwxo(fillMaxWidth, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).progressiveColor, ((WikipediaColor) gapComposer4.consume(staticProvidableCompositionLocal)).borderColor, 0, RecyclerView.DECELERATION_RATE, gapComposer4, 6);
                    gapComposer4.end(true);
                    gapComposer4.end(false);
                } else {
                    gapComposer4.startReplaceGroup(1998209614);
                    gapComposer4.end(false);
                    if (donationReminderUiState.error != null) {
                        gapComposer4.startReplaceGroup(1998261446);
                        Modifier padding2 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                        long j5 = gapComposer4.compositeKeyHashCode;
                        int i8 = (int) (j5 ^ (j5 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer4.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer4, padding2);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer4.startReusableNode();
                        if (gapComposer4.inserting) {
                            gapComposer4.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer4.useNode();
                        }
                        Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer4, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer4, Integer.valueOf(i8), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer4, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer4, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        Okio__JvmOkioKt.WikiErrorView(SizeKt.fillMaxWidth(companion, 1.0f), donationReminderUiState.error, wikiErrorClickEvents, false, gapComposer4, 6, 20);
                        gapComposer4.end(true);
                        gapComposer4.end(false);
                    } else {
                        gapComposer4.startReplaceGroup(1998730414);
                        gapComposer4.end(false);
                        Modifier then = OffsetKt.padding(companion, paddingValues).then(SizeKt.FillWholeMaxSize);
                        boolean changed = gapComposer4.changed(function0);
                        Object rememberedValue = gapComposer4.rememberedValue();
                        if (changed || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new HomeScreenKt$$ExternalSyntheticLambda32(function0, mutableState, 2);
                            gapComposer4.updateRememberedValue(rememberedValue);
                        }
                        DonationReminderScreenKt.DonationReminderContent(then, donationReminderViewModel, donationReminderUiState, function12, (Function0) rememberedValue, gapComposer4, 0);
                    }
                }
                return unit2;
            case 2:
                List list = (List) obj9;
                WikiSite wikiSite2 = (WikiSite) obj8;
                Function1 function13 = (Function1) obj7;
                PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState = (PageOverflowMenuViewModel.PageOverflowMenuState) obj6;
                Function0 function02 = (Function0) obj5;
                Function3 function3 = (Function3) obj4;
                PaddingValues paddingValues2 = (PaddingValues) obj;
                GapComposer gapComposer5 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= gapComposer5.changed(paddingValues2) ? 4 : 2;
                }
                int i9 = intValue3;
                if (gapComposer5.shouldExecute(i9 & 1, (i9 & 19) != 18)) {
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    boolean changedInstance = gapComposer5.changedInstance(list) | gapComposer5.changedInstance(wikiSite2) | gapComposer5.changed(function13) | gapComposer5.changedInstance(pageOverflowMenuState) | gapComposer5.changed(function02) | gapComposer5.changed(function3);
                    Object rememberedValue2 = gapComposer5.rememberedValue();
                    if (changedInstance || rememberedValue2 == neverEqualPolicy) {
                        DidYouKnowActivityKt$$ExternalSyntheticLambda3 didYouKnowActivityKt$$ExternalSyntheticLambda3 = new DidYouKnowActivityKt$$ExternalSyntheticLambda3(list, wikiSite2, function13, function3, pageOverflowMenuState, function02);
                        gapComposer5.updateRememberedValue(didYouKnowActivityKt$$ExternalSyntheticLambda3);
                        rememberedValue2 = didYouKnowActivityKt$$ExternalSyntheticLambda3;
                    }
                    ExceptionsKt.LazyColumn(m134paddingVpY3zN4$default, null, paddingValues2, null, null, null, false, null, (Function1) rememberedValue2, gapComposer5, ((i9 << 6) & 896) | 6, 506);
                } else {
                    gapComposer5.skipToGroupEnd();
                }
                return unit2;
            case 3:
                Function1 function14 = (Function1) obj9;
                PageSummary pageSummary2 = (PageSummary) obj8;
                Context context3 = (Context) obj7;
                Function1 function15 = (Function1) obj6;
                Function1 function16 = (Function1) obj5;
                WikiSite wikiSite3 = (WikiSite) obj4;
                GapComposer gapComposer6 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer6.shouldExecute(intValue4 & 1, (intValue4 & 17) != 16)) {
                    gapComposer6.skipToGroupEnd();
                    return unit2;
                }
                Modifier clip = ClipKt.clip(OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 16.0f, 24.0f, 2), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f));
                boolean changed2 = gapComposer6.changed(function14) | gapComposer6.changedInstance(pageSummary2);
                Object rememberedValue3 = gapComposer6.rememberedValue();
                if (changed2 || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new TopReadModuleKt$$ExternalSyntheticLambda5(function14, pageSummary2, 1);
                    gapComposer6.updateRememberedValue(rememberedValue3);
                }
                Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, clip, null, (Function0) rememberedValue3, false);
                MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j6 = gapComposer6.compositeKeyHashCode;
                int i10 = (int) (j6 ^ (j6 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer6.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer6, m51clickableoSLSa3U$default);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                gapComposer6.startReusableNode();
                if (gapComposer6.inserting) {
                    gapComposer6.createNode(layoutNode$Companion$Constructor$13);
                } else {
                    gapComposer6.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy3, composeUiNode$Companion$SetModifier$12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer6, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$13);
                Integer valueOf = Integer.valueOf(i10);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer6, valueOf, composeUiNode$Companion$SetModifier$14);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer6, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer6, materializeModifier3, composeUiNode$Companion$SetModifier$15);
                String thumbnailUrl = pageSummary2.getThumbnailUrl();
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                if (thumbnailUrl == null || thumbnailUrl.length() == 0) {
                    gapComposer = gapComposer6;
                    unit = unit2;
                    pageSummary = pageSummary2;
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                    context = context3;
                    function1 = function16;
                    wikiSite = wikiSite3;
                    gapComposer.startReplaceGroup(953527321);
                    List list2 = HomeViewModelKt.noImageCardBackgroundColors;
                    int hashCode = pageSummary.getApiTitle().hashCode();
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 415.0f), TuplesKt.colorResource(((Number) CollectionsKt.random(list2, new XorWowRandom(hashCode, hashCode >> 31))).intValue(), gapComposer), rectangleShapeKt$RectangleShape$1), gapComposer, 0);
                    gapComposer.end(false);
                } else {
                    gapComposer6.startReplaceGroup(953802415);
                    String thumbnailUrl2 = pageSummary2.getThumbnailUrl();
                    if (thumbnailUrl2 != null) {
                        Boolean bool = Boolean.FALSE;
                        context3.getClass();
                        if (Okio__OkioKt._implementation != null) {
                            context2 = context3;
                            imageRequest2 = ByteString.Companion.getRequestBuilder(context3, thumbnailUrl2, bool, bool, null, null).build();
                        } else {
                            context2 = context3;
                            imageRequest2 = null;
                        }
                        imageRequest = imageRequest2;
                    } else {
                        context2 = context3;
                        imageRequest = null;
                    }
                    unit = unit2;
                    function1 = function16;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                    context = context2;
                    pageSummary = pageSummary2;
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                    TabsBoxKt.FadeInAsyncImage(imageRequest, pageSummary.getDisplayTitle(), SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 415.0f), ContentScale.Companion.Crop, new ColorPainter(((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal2)).backgroundColor), new ColorPainter(((WikipediaColor) gapComposer6.consume(staticProvidableCompositionLocal2)).backgroundColor), 0, 0, gapComposer6, 298368);
                    gapComposer = gapComposer6;
                    wikiSite = wikiSite3;
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 415.0f), ColorKt.Color(0, 0, 0, 100), rectangleShapeKt$RectangleShape$1), gapComposer, 6);
                    gapComposer.end(false);
                }
                BiasAlignment biasAlignment = Alignment.Companion.TopEnd;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(boxScopeInstance.align(companion, biasAlignment), 12.0f);
                WikiSite wikiSite4 = wikiSite;
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer, 6);
                long j7 = gapComposer.compositeKeyHashCode;
                int i11 = (int) (j7 ^ (j7 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$13);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i11, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = composeUiNode$Companion$SetModifier$1;
                Updater.m327setimpl(gapComposer, materializeModifier4, composeUiNode$Companion$SetModifier$16);
                Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion, 48.0f);
                PageSummary pageSummary3 = pageSummary;
                boolean changed3 = gapComposer.changed(function15) | gapComposer.changedInstance(pageSummary3);
                Object rememberedValue4 = gapComposer.rememberedValue();
                if (changed3 || rememberedValue4 == neverEqualPolicy) {
                    rememberedValue4 = new TopReadModuleKt$$ExternalSyntheticLambda5(function15, pageSummary3, 2);
                    gapComposer.updateRememberedValue(rememberedValue4);
                }
                Context context4 = context;
                CardKt.IconButton((Function0) rememberedValue4, m145size3ABfNKs, false, null, null, Expect_jvmKt.rememberComposableLambda(466186506, new ForYouCardKt$$ExternalSyntheticLambda3(context4, wikiSite4, 7), gapComposer), gapComposer, 1572912, 60);
                Modifier m145size3ABfNKs2 = SizeKt.m145size3ABfNKs(companion, 48.0f);
                Function1 function17 = function1;
                boolean changed4 = gapComposer.changed(function17) | gapComposer.changedInstance(pageSummary3);
                Object rememberedValue5 = gapComposer.rememberedValue();
                if (changed4 || rememberedValue5 == neverEqualPolicy) {
                    rememberedValue5 = new TopReadModuleKt$$ExternalSyntheticLambda5(function17, pageSummary3, 3);
                    gapComposer.updateRememberedValue(rememberedValue5);
                }
                CardKt.IconButton((Function0) rememberedValue5, m145size3ABfNKs2, false, null, null, Expect_jvmKt.rememberComposableLambda(-2039194879, new ForYouCardKt$$ExternalSyntheticLambda3(context4, wikiSite4, 8), gapComposer), gapComposer, 1572912, 60);
                gapComposer.end(true);
                Modifier clip2 = ClipKt.clip(OffsetKt.m132padding3ABfNKs(SizeKt.fillMaxWidth(boxScopeInstance.align(companion, Alignment.Companion.BottomStart), 1.0f), 16.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(8.0f));
                String thumbnailUrl3 = pageSummary3.getThumbnailUrl();
                if (thumbnailUrl3 == null || thumbnailUrl3.length() == 0) {
                    i = 0;
                    gapComposer.startReplaceGroup(-800412493);
                    gapComposer.end(false);
                    j = Color.Transparent;
                } else {
                    gapComposer.startReplaceGroup(-800410885);
                    j = ColorKt.Color(Color.m433getRedimpl(r9), Color.m432getGreenimpl(r9), Color.m430getBlueimpl(r9), 0.92f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor));
                    i = 0;
                    gapComposer.end(false);
                }
                Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(ImageKt.m46backgroundbw27NRU(clip2, j, rectangleShapeKt$RectangleShape$1), 16.0f);
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, i);
                long j8 = gapComposer.compositeKeyHashCode;
                int i12 = (int) (j8 ^ (j8 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs2);
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$13);
                } else {
                    gapComposer.useNode();
                }
                Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                Updater.m327setimpl(gapComposer, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i12, gapComposer, composeUiNode$Companion$SetModifier$14, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer, materializeModifier5, composeUiNode$Companion$SetModifier$16);
                String displayTitle = pageSummary3.getDisplayTitle();
                String thumbnailUrl4 = pageSummary3.getThumbnailUrl();
                if (thumbnailUrl4 == null || thumbnailUrl4.length() == 0) {
                    gapComposer.startReplaceGroup(1858706979);
                    gapComposer.end(false);
                    j2 = Color.White;
                } else {
                    gapComposer.startReplaceGroup(1858708042);
                    j2 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                    gapComposer.end(false);
                }
                long j9 = j2;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = TypographyKt.LocalTypography;
                TabsBoxKt.m897HtmlTextKiACRJU(displayTitle, null, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer.consume(staticProvidableCompositionLocal3)).titleLarge, 0L, 0L, null, FontFamily.Serif, 0L, 0L, null, 16777183), j9, 3, 0, 0L, null, null, 0, gapComposer, 196608, 4038);
                String str2 = pageSummary3.description;
                if (str2 == null) {
                    gapComposer.startReplaceGroup(1785636684);
                    z = false;
                    gapComposer.end(false);
                } else {
                    gapComposer.startReplaceGroup(1785636685);
                    OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 2.0f));
                    String thumbnailUrl5 = pageSummary3.getThumbnailUrl();
                    if (thumbnailUrl5 == null || thumbnailUrl5.length() == 0) {
                        gapComposer.startReplaceGroup(-827269166);
                        gapComposer.end(false);
                        Color = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.8f, Color.m431getColorSpaceimpl(Color.White));
                    } else {
                        gapComposer.startReplaceGroup(-827267698);
                        Color = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor;
                        gapComposer.end(false);
                    }
                    TextKt.m308TextNvy7gAk(str2, null, Color, null, 0L, null, null, 0L, null, 0L, 2, false, 1, 0, null, ((Typography) gapComposer.consume(staticProvidableCompositionLocal3)).bodyMedium, gapComposer, 0, 24960, 110586);
                    z = false;
                    gapComposer.end(false);
                }
                String str3 = pageSummary3.extract;
                if (str3 == null) {
                    gapComposer.startReplaceGroup(1786179060);
                    gapComposer.end(z);
                } else {
                    gapComposer.startReplaceGroup(1786179061);
                    Modifier m149width3ABfNKs = SizeKt.m149width3ABfNKs(OffsetKt.m134paddingVpY3zN4$default(companion, RecyclerView.DECELERATION_RATE, 12.0f, 1), 48.0f);
                    String thumbnailUrl6 = pageSummary3.getThumbnailUrl();
                    if (thumbnailUrl6 == null || thumbnailUrl6.length() == 0) {
                        gapComposer.startReplaceGroup(110329225);
                        gapComposer.end(false);
                        Color2 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.8f, Color.m431getColorSpaceimpl(Color.White));
                    } else {
                        gapComposer.startReplaceGroup(110331177);
                        Color2 = ColorKt.Color(Color.m433getRedimpl(r3), Color.m432getGreenimpl(r3), Color.m430getBlueimpl(r3), 0.2f, Color.m431getColorSpaceimpl(((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).secondaryColor));
                        gapComposer.end(false);
                    }
                    CardKt.m266HorizontalDivider9IZ8Weo(m149width3ABfNKs, 1.0f, Color2, gapComposer, 54, 0);
                    String thumbnailUrl7 = pageSummary3.getThumbnailUrl();
                    if (thumbnailUrl7 == null || thumbnailUrl7.length() == 0) {
                        gapComposer.startReplaceGroup(110337148);
                        gapComposer.end(false);
                        j3 = Color.White;
                    } else {
                        gapComposer.startReplaceGroup(110338211);
                        j3 = ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor;
                        gapComposer.end(false);
                    }
                    long j10 = j3;
                    TextStyle textStyle = ((Typography) gapComposer.consume(staticProvidableCompositionLocal3)).bodyMedium;
                    String thumbnailUrl8 = pageSummary3.getThumbnailUrl();
                    TextKt.m308TextNvy7gAk(str3, null, j10, null, 0L, null, null, 0L, null, 0L, 2, false, (thumbnailUrl8 == null || thumbnailUrl8.length() == 0) ? 6 : 4, 0, null, textStyle, gapComposer, 0, 384, 110586);
                    gapComposer.end(false);
                }
                gapComposer.end(true);
                gapComposer.end(true);
                return unit;
            default:
                final List list3 = (List) obj9;
                final Context context5 = (Context) obj8;
                AppLanguageState appLanguageState = (AppLanguageState) obj7;
                List list4 = (List) obj6;
                Function0 function03 = (Function0) obj5;
                final ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj4;
                PaddingValues paddingValues3 = (PaddingValues) obj;
                GapComposer gapComposer7 = (GapComposer) obj2;
                int intValue5 = ((Integer) obj3).intValue();
                paddingValues3.getClass();
                if ((intValue5 & 6) == 0) {
                    intValue5 |= gapComposer7.changed(paddingValues3) ? 4 : 2;
                }
                if (gapComposer7.shouldExecute(intValue5 & 1, (intValue5 & 19) != 18)) {
                    Modifier padding3 = OffsetKt.padding(SizeKt.FillWholeMaxSize, paddingValues3);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer7, 0);
                    long j11 = gapComposer7.compositeKeyHashCode;
                    int i13 = (int) (j11 ^ (j11 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer7.currentCompositionLocalScope();
                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer7, padding3);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                    gapComposer7.startReusableNode();
                    if (gapComposer7.inserting) {
                        gapComposer7.createNode(layoutNode$Companion$Constructor$14);
                    } else {
                        gapComposer7.useNode();
                    }
                    Updater.m327setimpl(gapComposer7, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer7, currentCompositionLocalScope6, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer7, Integer.valueOf(i13), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer7, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer7, materializeModifier6, ComposeUiNode.Companion.SetModifier);
                    int i14 = InitialOnboardingScreenKt.WhenMappings.$EnumSwitchMapping$0[((OnboardingScreen) list3.get(parcelableSnapshotMutableIntState.getIntValue())).ordinal()];
                    if (i14 == 1) {
                        gapComposer2 = gapComposer7;
                        gapComposer2.startReplaceGroup(161817281);
                        boolean changedInstance2 = gapComposer2.changedInstance(context5) | gapComposer2.changedInstance(list3);
                        Object rememberedValue6 = gapComposer2.rememberedValue();
                        if (changedInstance2 || rememberedValue6 == neverEqualPolicy) {
                            rememberedValue6 = new Function0() { // from class: org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i15 = i3;
                                    Unit unit3 = Unit.INSTANCE;
                                    ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = parcelableSnapshotMutableIntState;
                                    List list5 = list3;
                                    Context context6 = context5;
                                    switch (i15) {
                                        case 0:
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(context6);
                                            if (instrument != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "about_link", null, null, 242);
                                            }
                                            String string = context6.getString(R.string.about_wikipedia_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse);
                                            break;
                                        case 1:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context6);
                                            if (instrument2 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "privacy_link", null, null, 242);
                                            }
                                            String string2 = context6.getString(R.string.privacy_policy_url);
                                            string2.getClass();
                                            Uri parse2 = Uri.parse(string2);
                                            parse2.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse2);
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context6);
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "terms_link", null, null, 242);
                                            }
                                            String string3 = context6.getString(R.string.terms_of_use_url);
                                            string3.getClass();
                                            Uri parse3 = Uri.parse(string3);
                                            parse3.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse3);
                                            break;
                                    }
                                    return unit3;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue6);
                        }
                        InitialOnboardingScreenKt.InitialOnboardingIntroContent(null, (Function0) rememberedValue6, gapComposer2, 0);
                        gapComposer2.end(false);
                    } else if (i14 == 2) {
                        gapComposer2 = gapComposer7;
                        gapComposer2.startReplaceGroup(162266006);
                        boolean changedInstance3 = gapComposer2.changedInstance(context5) | gapComposer2.changedInstance(list3);
                        Object rememberedValue7 = gapComposer2.rememberedValue();
                        if (changedInstance3 || rememberedValue7 == neverEqualPolicy) {
                            rememberedValue7 = new Function0() { // from class: org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i15 = i4;
                                    Unit unit3 = Unit.INSTANCE;
                                    ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = parcelableSnapshotMutableIntState;
                                    List list5 = list3;
                                    Context context6 = context5;
                                    switch (i15) {
                                        case 0:
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(context6);
                                            if (instrument != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "about_link", null, null, 242);
                                            }
                                            String string = context6.getString(R.string.about_wikipedia_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse);
                                            break;
                                        case 1:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context6);
                                            if (instrument2 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "privacy_link", null, null, 242);
                                            }
                                            String string2 = context6.getString(R.string.privacy_policy_url);
                                            string2.getClass();
                                            Uri parse2 = Uri.parse(string2);
                                            parse2.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse2);
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context6);
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "terms_link", null, null, 242);
                                            }
                                            String string3 = context6.getString(R.string.terms_of_use_url);
                                            string3.getClass();
                                            Uri parse3 = Uri.parse(string3);
                                            parse3.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse3);
                                            break;
                                    }
                                    return unit3;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue7);
                        }
                        Function0 function04 = (Function0) rememberedValue7;
                        boolean changedInstance4 = gapComposer2.changedInstance(context5) | gapComposer2.changedInstance(list3);
                        Object rememberedValue8 = gapComposer2.rememberedValue();
                        if (changedInstance4 || rememberedValue8 == neverEqualPolicy) {
                            rememberedValue8 = new Function0() { // from class: org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda4
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i15 = i5;
                                    Unit unit3 = Unit.INSTANCE;
                                    ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2 = parcelableSnapshotMutableIntState;
                                    List list5 = list3;
                                    Context context6 = context5;
                                    switch (i15) {
                                        case 0:
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(context6);
                                            if (instrument != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "about_link", null, null, 242);
                                            }
                                            String string = context6.getString(R.string.about_wikipedia_url);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse);
                                            break;
                                        case 1:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context6);
                                            if (instrument2 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "privacy_link", null, null, 242);
                                            }
                                            String string2 = context6.getString(R.string.privacy_policy_url);
                                            string2.getClass();
                                            Uri parse2 = Uri.parse(string2);
                                            parse2.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse2);
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context6);
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, ((OnboardingScreen) list5.get(parcelableSnapshotMutableIntState2.getIntValue())).name(), "terms_link", null, null, 242);
                                            }
                                            String string3 = context6.getString(R.string.terms_of_use_url);
                                            string3.getClass();
                                            Uri parse3 = Uri.parse(string3);
                                            parse3.getClass();
                                            UriUtil.visitInExternalBrowser(context6, parse3);
                                            break;
                                    }
                                    return unit3;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue8);
                        }
                        InitialOnboardingScreenKt.InitialOnboardingDataPrivacyContent(null, function04, (Function0) rememberedValue8, gapComposer2, 0);
                        gapComposer2.end(false);
                    } else {
                        if (i14 != 3) {
                            throw Modifier.CC.m(gapComposer7, 836502445, false);
                        }
                        gapComposer7.startReplaceGroup(162993018);
                        boolean changedInstance5 = gapComposer7.changedInstance(context5) | gapComposer7.changedInstance(list3) | gapComposer7.changed(function03);
                        Object rememberedValue9 = gapComposer7.rememberedValue();
                        if (changedInstance5 || rememberedValue9 == neverEqualPolicy) {
                            rememberedValue9 = new GamesHubScreenKt$$ExternalSyntheticLambda28(context5, list3, function03, parcelableSnapshotMutableIntState, 3);
                            gapComposer7.updateRememberedValue(rememberedValue9);
                        }
                        InitialOnboardingScreenKt.InitialOnboardingLanguagesScreen(null, appLanguageState, list4, (Function0) rememberedValue9, gapComposer7, 0);
                        gapComposer2 = gapComposer7;
                        gapComposer2.end(false);
                    }
                    gapComposer2.end(true);
                } else {
                    gapComposer7.skipToGroupEnd();
                }
                return unit2;
        }
    }
}
