package org.wikipedia.feed.topread;

import android.content.Context;
import androidx.collection.internal.Lock;
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
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.LinearGradient;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
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
import coil3.request.ImageRequest;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda3;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.CommunityContentTabKt$$ExternalSyntheticLambda26;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.ForYouContentTabKt$$ExternalSyntheticLambda19;
import org.wikipedia.feed.didyouknow.DidYouKnowItem;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.random.RandomModuleKt$$ExternalSyntheticLambda7;
import org.wikipedia.gallery.ArtistInfo;
import org.wikipedia.gallery.ImageInfo;
import org.wikipedia.gallery.ImageLicense;
import org.wikipedia.gallery.TextInfo;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.util.TabUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TopReadModuleKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId = 3;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Context f$3;
    public final /* synthetic */ WikiSite f$4;
    public final /* synthetic */ Function1 f$5;
    public final /* synthetic */ Function f$6;
    public final /* synthetic */ Function f$7;

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda0(List list, Function0 function0, Context context, WikiSite wikiSite, Function1 function1, Function3 function3, ComposableLambdaImpl composableLambdaImpl) {
        this.f$1 = list;
        this.f$0 = function0;
        this.f$3 = context;
        this.f$4 = wikiSite;
        this.f$5 = function1;
        this.f$6 = function3;
        this.f$7 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        LinearGradient m11linearGradientmHitzGk;
        int i = this.$r8$classId;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        int i2 = 5;
        Unit unit = Unit.INSTANCE;
        int i3 = 3;
        Object obj4 = Composer$Companion.Empty;
        Function function = this.f$7;
        Function function2 = this.f$6;
        Object obj5 = this.f$0;
        Object obj6 = this.f$1;
        switch (i) {
            case 0:
                Function0 function0 = (Function0) obj5;
                TopRead topRead = (TopRead) obj6;
                Function2 function22 = (Function2) function2;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function;
                ColumnScopeInstance columnScopeInstance = (ColumnScopeInstance) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                columnScopeInstance.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(columnScopeInstance) ? 4 : 2;
                }
                if (gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(companion, 16.0f));
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    gapComposer.startReplaceGroup(-420595829);
                    Iterator it = CollectionsKt.take(topRead.articles, 5).iterator();
                    int i5 = 0;
                    while (true) {
                        boolean hasNext = it.hasNext();
                        Context context = this.f$3;
                        WikiSite wikiSite = this.f$4;
                        if (hasNext) {
                            Object next = it.next();
                            int i6 = i5 + 1;
                            if (i5 < 0) {
                                Room.throwIndexOverflow();
                                throw null;
                            }
                            PageSummary pageSummary = (PageSummary) next;
                            List list = pageSummary.viewHistory;
                            if (list != null) {
                                List takeLast = CollectionsKt.takeLast(list, 2);
                                z = takeLast.size() < 2 || ((PageSummary.ViewHistory) takeLast.get(1)).views > ((PageSummary.ViewHistory) takeLast.get(0)).views;
                            } else {
                                z = true;
                            }
                            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1290799145, new TopReadModuleKt$$ExternalSyntheticLambda2(composableLambdaImpl, i5, 0), gapComposer);
                            boolean changed = gapComposer.changed(function22) | gapComposer.changed(i5);
                            Object rememberedValue = gapComposer.rememberedValue();
                            if (changed || rememberedValue == obj4) {
                                rememberedValue = new ForYouContentTabKt$$ExternalSyntheticLambda19(i5, 8, function22);
                                gapComposer.updateRememberedValue(rememberedValue);
                            }
                            Okio__OkioKt.TopReadItem(context, wikiSite, i6, z, pageSummary, rememberComposableLambda, this.f$5, (Function1) rememberedValue, gapComposer, 196608);
                            i5 = i6;
                        } else {
                            gapComposer.end(false);
                            gapComposer.end(true);
                            CardKt.TextButton(function0, OffsetKt.m136paddingqDBjuR0$default(new HorizontalAlignElement(Alignment.Companion.End), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), false, null, null, null, Expect_jvmKt.rememberComposableLambda(-2095040174, new RandomModuleKt$$ExternalSyntheticLambda7(context, wikiSite, r19), gapComposer), gapComposer, 805306368, 508);
                        }
                    }
                } else {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 1:
                Function0 function02 = (Function0) obj5;
                List list2 = (List) obj6;
                Function2 function23 = (Function2) function2;
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) function;
                ColumnScopeInstance columnScopeInstance2 = (ColumnScopeInstance) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                columnScopeInstance2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer2.changed(columnScopeInstance2) ? 4 : 2;
                }
                if (gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    Modifier m134paddingVpY3zN4$default2 = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, RecyclerView.DECELERATION_RATE, 2);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i7 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m134paddingVpY3zN4$default2);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m327setimpl(gapComposer2, Integer.valueOf(i7), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                    gapComposer2.startReplaceGroup(-1607449839);
                    Iterator it2 = CollectionsKt.take(list2, 3).iterator();
                    int i8 = 0;
                    while (true) {
                        boolean hasNext2 = it2.hasNext();
                        WikiSite wikiSite2 = this.f$4;
                        if (hasNext2) {
                            Object next2 = it2.next();
                            int i9 = i8 + 1;
                            if (i8 < 0) {
                                Room.throwIndexOverflow();
                                throw null;
                            }
                            String str = ((DidYouKnowItem) next2).html;
                            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1302716085, new TopReadModuleKt$$ExternalSyntheticLambda2(composableLambdaImpl2, i8, 1), gapComposer2);
                            boolean changed2 = gapComposer2.changed(function23) | gapComposer2.changed(i8);
                            Object rememberedValue2 = gapComposer2.rememberedValue();
                            if (changed2 || rememberedValue2 == obj4) {
                                rememberedValue2 = new ForYouContentTabKt$$ExternalSyntheticLambda19(i8, 7, function23);
                                gapComposer2.updateRememberedValue(rememberedValue2);
                            }
                            TabUtil.DidYouKnowListItem(wikiSite2, str, this.f$5, rememberComposableLambda2, (Function1) rememberedValue2, gapComposer2, 3072);
                            i8 = i9;
                        } else {
                            gapComposer2.end(false);
                            gapComposer2.end(true);
                            CardKt.TextButton(function02, OffsetKt.m136paddingqDBjuR0$default(new HorizontalAlignElement(Alignment.Companion.End), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), false, null, null, null, Expect_jvmKt.rememberComposableLambda(48639123, new RandomModuleKt$$ExternalSyntheticLambda7(this.f$3, wikiSite2, 1), gapComposer2), gapComposer2, 805306368, 508);
                        }
                    }
                } else {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 2:
                FeaturedImageCard featuredImageCard = (FeaturedImageCard) obj5;
                FeaturedImage featuredImage = (FeaturedImage) obj6;
                Function1 function1 = (Function1) function2;
                Function1 function12 = (Function1) function;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((ColumnScopeInstance) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    return unit;
                }
                Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion2, 1.0f), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 24.0f, 7);
                Function1 function13 = this.f$5;
                boolean changed3 = gapComposer3.changed(function13) | gapComposer3.changedInstance(featuredImageCard);
                Object rememberedValue3 = gapComposer3.rememberedValue();
                if (changed3 || rememberedValue3 == obj4) {
                    rememberedValue3 = new CommunityContentTabKt$$ExternalSyntheticLambda26(function13, featuredImageCard, 1);
                    gapComposer3.updateRememberedValue(rememberedValue3);
                }
                Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, m136paddingqDBjuR0$default, null, (Function0) rememberedValue3, false);
                BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j3 = gapComposer3.compositeKeyHashCode;
                int i10 = (int) (j3 ^ (j3 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, m51clickableoSLSa3U$default);
                ComposeUiNode.Companion.getClass();
                Function0 function03 = ComposeUiNode.Companion.Constructor;
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                Integer valueOf = Integer.valueOf(i10);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                ImageInfo imageInfo = featuredImage.thumbnail;
                ImageLicense imageLicense = featuredImage.license;
                String str2 = imageInfo.source;
                Boolean bool = Boolean.FALSE;
                Context context2 = this.f$3;
                context2.getClass();
                ImageRequest imageRequest = null;
                if (Okio__OkioKt._implementation != null) {
                    ImageRequest.Builder requestBuilder = ByteString.Companion.getRequestBuilder(context2, str2, bool, bool, null, null);
                    context2 = context2;
                    imageRequest = requestBuilder.build();
                }
                ProvidableCompositionLocal providableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                Context context3 = context2;
                TabsBoxKt.FadeInAsyncImage(imageRequest, featuredImage.title, SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion2, 1.0f), 520.0f), ContentScale.Companion.Crop, new ColorPainter(((WikipediaColor) gapComposer3.consume(providableCompositionLocal)).backgroundColor), new ColorPainter(((WikipediaColor) gapComposer3.consume(providableCompositionLocal)).backgroundColor), 0, 0, gapComposer3, 298368);
                BiasAlignment biasAlignment2 = Alignment.Companion.TopEnd;
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(boxScopeInstance.align(companion2, biasAlignment2), 12.0f);
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(4.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer3, 6);
                long j4 = gapComposer3.compositeKeyHashCode;
                int i11 = (int) (j4 ^ (j4 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer3, m132padding3ABfNKs);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i11, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer3, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                boolean changed4 = gapComposer3.changed(function1) | gapComposer3.changedInstance(featuredImageCard);
                Object rememberedValue4 = gapComposer3.rememberedValue();
                if (changed4 || rememberedValue4 == obj4) {
                    rememberedValue4 = new CommunityContentTabKt$$ExternalSyntheticLambda26(function1, featuredImageCard, 2);
                    gapComposer3.updateRememberedValue(rememberedValue4);
                }
                Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(companion2, 48.0f);
                WikiSite wikiSite3 = this.f$4;
                CardKt.IconButton((Function0) rememberedValue4, m145size3ABfNKs, false, null, null, Expect_jvmKt.rememberComposableLambda(1025236934, new ForYouCardKt$$ExternalSyntheticLambda3(context3, wikiSite3, 9), gapComposer3), gapComposer3, 1572912, 60);
                boolean changed5 = gapComposer3.changed(function12) | gapComposer3.changedInstance(featuredImageCard);
                Object rememberedValue5 = gapComposer3.rememberedValue();
                if (changed5 || rememberedValue5 == obj4) {
                    rememberedValue5 = new CommunityContentTabKt$$ExternalSyntheticLambda26(function12, featuredImageCard, 3);
                    gapComposer3.updateRememberedValue(rememberedValue5);
                }
                CardKt.IconButton((Function0) rememberedValue5, SizeKt.m145size3ABfNKs(companion2, 48.0f), false, null, null, Expect_jvmKt.rememberComposableLambda(251681519, new ForYouCardKt$$ExternalSyntheticLambda3(context3, wikiSite3, 10), gapComposer3), gapComposer3, 1572912, 60);
                gapComposer3.end(true);
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(boxScopeInstance.align(companion2, Alignment.Companion.BottomStart), 1.0f);
                Pair pair = new Pair(Float.valueOf(RecyclerView.DECELERATION_RATE), new Color(Color.Transparent));
                Float valueOf2 = Float.valueOf(0.18f);
                long j5 = Color.Black;
                Color = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.05f, Color.m431getColorSpaceimpl(j5));
                Pair pair2 = new Pair(valueOf2, new Color(Color));
                Float valueOf3 = Float.valueOf(0.38f);
                Color2 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.15f, Color.m431getColorSpaceimpl(j5));
                Pair pair3 = new Pair(valueOf3, new Color(Color2));
                Float valueOf4 = Float.valueOf(0.58f);
                Color3 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.3f, Color.m431getColorSpaceimpl(j5));
                Pair pair4 = new Pair(valueOf4, new Color(Color3));
                Float valueOf5 = Float.valueOf(0.76f);
                Color4 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.5f, Color.m431getColorSpaceimpl(j5));
                Pair pair5 = new Pair(valueOf5, new Color(Color4));
                Float valueOf6 = Float.valueOf(0.9f);
                Color5 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.7f, Color.m431getColorSpaceimpl(j5));
                Pair pair6 = new Pair(valueOf6, new Color(Color5));
                Float valueOf7 = Float.valueOf(1.0f);
                Color6 = ColorKt.Color(Color.m433getRedimpl(j5), Color.m432getGreenimpl(j5), Color.m430getBlueimpl(j5), 0.85f, Color.m431getColorSpaceimpl(j5));
                m11linearGradientmHitzGk = Lock.m11linearGradientmHitzGk((Pair[]) Arrays.copyOf(r4, new Pair[]{pair, pair2, pair3, pair4, pair5, pair6, new Pair(valueOf7, new Color(Color6))}.length), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) & 4294967295L), (Float.floatToRawIntBits(RecyclerView.DECELERATION_RATE) << 32) | (4294967295L & Float.floatToRawIntBits(Float.POSITIVE_INFINITY)));
                Modifier background$default = ImageKt.background$default(fillMaxWidth, m11linearGradientmHitzGk, null, 6);
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j6 = gapComposer3.compositeKeyHashCode;
                int i12 = (int) (j6 ^ (j6 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer3, background$default);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i12, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer3, materializeModifier5, composeUiNode$Companion$SetModifier$14);
                Modifier m135paddingqDBjuR0 = OffsetKt.m135paddingqDBjuR0(SizeKt.fillMaxWidth(companion2, 1.0f), 16.0f, 80.0f, 16.0f, 16.0f);
                ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer3, 0);
                long j7 = gapComposer3.compositeKeyHashCode;
                int i13 = (int) (j7 ^ (j7 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer3, m135paddingqDBjuR0);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, columnMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i13, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer3, materializeModifier6, composeUiNode$Companion$SetModifier$14);
                Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(companion2, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 8.0f, 7);
                String str3 = featuredImage.description.text;
                long j8 = Color.White;
                ProvidableCompositionLocal providableCompositionLocal2 = TypographyKt.LocalTypography;
                TextStyle textStyle = ((Typography) gapComposer3.consume(providableCompositionLocal2)).bodySmall;
                TextDecoration textDecoration = TextDecoration.Underline;
                TabsBoxKt.m897HtmlTextKiACRJU(str3, m136paddingqDBjuR0$default2, new TextLinkStyles(new SpanStyle(j8, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration, (Shadow) null, 61438), null, null, null), textStyle, j8, 2, 0, 0L, null, null, 0, gapComposer3, 221616, 4032);
                BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                Arrangement$End$1 arrangement$End$1 = OffsetKt.f5Start;
                RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer3, 48);
                long j9 = gapComposer3.compositeKeyHashCode;
                int i14 = (int) (j9 ^ (j9 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer3, companion2);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i14, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer3, materializeModifier7, composeUiNode$Companion$SetModifier$14);
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_user_avatar, 0, gapComposer3), null, OffsetKt.m132padding3ABfNKs(SizeKt.m145size3ABfNKs(companion2, 16.0f), 2.0f), j8, gapComposer3, 3512, 0);
                Modifier m136paddingqDBjuR0$default3 = OffsetKt.m136paddingqDBjuR0$default(Animation.CC.weight$default$1(companion2, 1.0f), 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
                ArtistInfo artistInfo = featuredImage.artist;
                String str4 = artistInfo != null ? artistInfo.html : null;
                if (str4 == null) {
                    str4 = "";
                }
                TextInfo textInfo = featuredImage.credit;
                String str5 = textInfo != null ? textInfo.html : null;
                if (str5 == null) {
                    str5 = "";
                }
                TabsBoxKt.m897HtmlTextKiACRJU(Animation.CC.m(str4, " - ", str5), m136paddingqDBjuR0$default3, new TextLinkStyles(new SpanStyle(j8, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration, (Shadow) null, 61438), null, null, null), ((Typography) gapComposer3.consume(providableCompositionLocal2)).bodySmall, j8, 1, 0, 0L, null, null, 0, gapComposer3, 221568, 4032);
                gapComposer3.end(true);
                Modifier m136paddingqDBjuR0$default4 = OffsetKt.m136paddingqDBjuR0$default(companion2, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                RowMeasurePolicy rowMeasurePolicy3 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer3, 48);
                long j10 = gapComposer3.compositeKeyHashCode;
                int i15 = (int) (j10 ^ (j10 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope8 = gapComposer3.currentCompositionLocalScope();
                Modifier materializeModifier8 = AbsoluteAlignment.materializeModifier(gapComposer3, m136paddingqDBjuR0$default4);
                gapComposer3.startReusableNode();
                if (gapComposer3.inserting) {
                    gapComposer3.createNode(function03);
                } else {
                    gapComposer3.useNode();
                }
                Updater.m327setimpl(gapComposer3, rowMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer3, currentCompositionLocalScope8, composeUiNode$Companion$SetModifier$12);
                Animation.CC.m(i15, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer3, materializeModifier8, composeUiNode$Companion$SetModifier$14);
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(imageLicense != null ? imageLicense.licenseIcon() : R.drawable.ic_info_outline_black_24dp, 0, gapComposer3), null, SizeKt.m145size3ABfNKs(companion2, 16.0f), j8, gapComposer3, 3512, 0);
                Modifier m136paddingqDBjuR0$default5 = OffsetKt.m136paddingqDBjuR0$default(Animation.CC.weight$default$1(companion2, 1.0f), 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
                String str6 = imageLicense != null ? imageLicense.licenseUrl : null;
                if (str6 == null) {
                    str6 = "";
                }
                String str7 = imageLicense != null ? imageLicense.licenseName : null;
                TabsBoxKt.m897HtmlTextKiACRJU(Modifier.CC.m("<a href=\"", str6, "\">", str7 != null ? str7 : "", "</a>"), m136paddingqDBjuR0$default5, new TextLinkStyles(new SpanStyle(j8, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration, (Shadow) null, 61438), null, null, null), ((Typography) gapComposer3.consume(providableCompositionLocal2)).bodySmall, j8, 0, 0, 0L, null, null, 0, gapComposer3, 24960, 4064);
                gapComposer3.end(true);
                gapComposer3.end(true);
                gapComposer3.end(true);
                gapComposer3.end(true);
                return unit;
            default:
                List list3 = (List) obj6;
                Function0 function04 = (Function0) obj5;
                Function3 function3 = (Function3) function2;
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) function;
                ColumnScopeInstance columnScopeInstance3 = (ColumnScopeInstance) obj;
                GapComposer gapComposer4 = (GapComposer) obj2;
                int intValue4 = ((Integer) obj3).intValue();
                columnScopeInstance3.getClass();
                if ((intValue4 & 6) == 0) {
                    intValue4 |= gapComposer4.changed(columnScopeInstance3) ? 4 : 2;
                }
                if (gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 19) != 18)) {
                    gapComposer4.startReplaceGroup(-1164225145);
                    Iterator it3 = list3.iterator();
                    int i16 = 0;
                    while (true) {
                        boolean hasNext3 = it3.hasNext();
                        Context context4 = this.f$3;
                        WikiSite wikiSite4 = this.f$4;
                        if (hasNext3) {
                            Object next3 = it3.next();
                            int i17 = i16 + 1;
                            if (i16 < 0) {
                                Room.throwIndexOverflow();
                                throw null;
                            }
                            OnThisDay.Event event = (OnThisDay.Event) next3;
                            boolean z2 = i16 == 0;
                            ComposableLambdaImpl rememberComposableLambda3 = Expect_jvmKt.rememberComposableLambda(645719805, new OnThisDayModuleKt$$ExternalSyntheticLambda2(composableLambdaImpl3, i16), gapComposer4);
                            boolean changed6 = gapComposer4.changed(function3) | gapComposer4.changed(i16);
                            Object rememberedValue6 = gapComposer4.rememberedValue();
                            if (changed6 || rememberedValue6 == obj4) {
                                rememberedValue6 = new ImpactModuleKt$$ExternalSyntheticLambda3(i16, i2, function3);
                                gapComposer4.updateRememberedValue(rememberedValue6);
                            }
                            ReadingListFragment.MultiSelectCallback.EventRow(context4, wikiSite4, event, z2, rememberComposableLambda3, this.f$5, (Function2) rememberedValue6, gapComposer4, 24576);
                            i16 = i17;
                        } else {
                            gapComposer4.end(false);
                            CardKt.TextButton(function04, OffsetKt.m136paddingqDBjuR0$default(new HorizontalAlignElement(Alignment.Companion.End), RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7), false, null, null, null, Expect_jvmKt.rememberComposableLambda(-1905044315, new RandomModuleKt$$ExternalSyntheticLambda7(context4, wikiSite4, i3), gapComposer4), gapComposer4, 805306368, 508);
                        }
                    }
                } else {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
        }
    }

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda0(Function0 function0, List list, WikiSite wikiSite, Function1 function1, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Context context) {
        this.f$0 = function0;
        this.f$1 = list;
        this.f$4 = wikiSite;
        this.f$5 = function1;
        this.f$6 = function2;
        this.f$7 = composableLambdaImpl;
        this.f$3 = context;
    }

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda0(Function0 function0, TopRead topRead, Context context, WikiSite wikiSite, Function1 function1, Function2 function2, ComposableLambdaImpl composableLambdaImpl) {
        this.f$0 = function0;
        this.f$1 = topRead;
        this.f$3 = context;
        this.f$4 = wikiSite;
        this.f$5 = function1;
        this.f$6 = function2;
        this.f$7 = composableLambdaImpl;
    }

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda0(Function1 function1, FeaturedImageCard featuredImageCard, Context context, FeaturedImage featuredImage, Function1 function12, Function1 function13, WikiSite wikiSite) {
        this.f$5 = function1;
        this.f$0 = featuredImageCard;
        this.f$3 = context;
        this.f$1 = featuredImage;
        this.f$6 = function12;
        this.f$7 = function13;
        this.f$4 = wikiSite;
    }
}
