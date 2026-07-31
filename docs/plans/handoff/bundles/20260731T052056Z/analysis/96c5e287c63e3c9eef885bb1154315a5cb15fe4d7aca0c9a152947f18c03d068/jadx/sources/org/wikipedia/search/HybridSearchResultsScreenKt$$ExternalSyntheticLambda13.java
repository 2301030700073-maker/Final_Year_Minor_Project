package org.wikipedia.search;

import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.personalization.homepreference.HomePreferenceType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchResultsScreenKt$$ExternalSyntheticLambda13 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ MutableState f$2;

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda13(Function1 function1, MutableState mutableState, MutableState mutableState2) {
        this.$r8$classId = 2;
        this.f$1 = function1;
        this.f$0 = mutableState;
        this.f$2 = mutableState2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        boolean z;
        Modifier.Companion companion;
        final MutableState mutableState;
        int i = this.$r8$classId;
        Modifier.Companion companion2 = Modifier.Companion.$$INSTANCE;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        final MutableState mutableState2 = this.f$2;
        final MutableState mutableState3 = this.f$0;
        final Function1 function1 = this.f$1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                Modifier clip = ClipKt.clip(CrossfadeKt.animateContentSize$default(SizeKt.m145size3ABfNKs(companion2, 48.0f)), RoundedCornerShapeKt.CircleShape);
                boolean changed = gapComposer.changed(mutableState3) | gapComposer.changed(function1);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changed || rememberedValue == neverEqualPolicy) {
                    z = false;
                    final Object[] objArr = 0 == true ? 1 : 0;
                    rememberedValue = new Function0() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i2 = objArr;
                            Unit unit2 = Unit.INSTANCE;
                            MutableState mutableState4 = mutableState2;
                            MutableState mutableState5 = mutableState3;
                            Function1 function12 = function1;
                            switch (i2) {
                                case 0:
                                    Boolean bool = Boolean.TRUE;
                                    mutableState5.setValue(bool);
                                    mutableState4.setValue(Boolean.FALSE);
                                    function12.invoke(bool);
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    Boolean bool2 = Boolean.FALSE;
                                    mutableState4.setValue(bool2);
                                    function12.invoke(bool2);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(HomePreferenceType.COMMUNITY);
                                    function12.invoke((HomePreferenceType) mutableState4.getValue());
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(HomePreferenceType.PERSONALIZED);
                                    function12.invoke((HomePreferenceType) mutableState4.getValue());
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer.updateRememberedValue(rememberedValue);
                } else {
                    z = false;
                }
                Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, clip, null, (Function0) rememberedValue, z), 16.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, z);
                long j = gapComposer.compositeKeyHashCode;
                int i2 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132padding3ABfNKs);
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
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(((Boolean) mutableState3.getValue()).booleanValue() ? R.drawable.ic_thumb_up_filled : R.drawable.ic_thumb_up, 0, gapComposer), UtilsKt.stringResource(R.string.hybrid_search_results_rate_thumb_up, gapComposer), OffsetKt.m131offsetVpY3zN4$default(SizeKt.m145size3ABfNKs(companion2, 16.0f), -2.0f, 1), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, gapComposer, 392, 0);
                gapComposer.end(true);
                break;
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                ((Integer) obj3).getClass();
                ((AnimatedVisibilityScope) obj).getClass();
                Modifier clip2 = ClipKt.clip(CrossfadeKt.animateContentSize$default(SizeKt.m145size3ABfNKs(companion2, 48.0f)), RoundedCornerShapeKt.CircleShape);
                boolean changed2 = gapComposer2.changed(mutableState3) | gapComposer2.changed(function1);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changed2 || rememberedValue2 == neverEqualPolicy) {
                    final int i3 = 1;
                    rememberedValue2 = new Function0() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda15
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            int i22 = i3;
                            Unit unit2 = Unit.INSTANCE;
                            MutableState mutableState4 = mutableState2;
                            MutableState mutableState5 = mutableState3;
                            Function1 function12 = function1;
                            switch (i22) {
                                case 0:
                                    Boolean bool = Boolean.TRUE;
                                    mutableState5.setValue(bool);
                                    mutableState4.setValue(Boolean.FALSE);
                                    function12.invoke(bool);
                                    break;
                                case 1:
                                    mutableState5.setValue(Boolean.TRUE);
                                    Boolean bool2 = Boolean.FALSE;
                                    mutableState4.setValue(bool2);
                                    function12.invoke(bool2);
                                    break;
                                case 2:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(HomePreferenceType.COMMUNITY);
                                    function12.invoke((HomePreferenceType) mutableState4.getValue());
                                    break;
                                default:
                                    mutableState5.setValue(Boolean.TRUE);
                                    mutableState4.setValue(HomePreferenceType.PERSONALIZED);
                                    function12.invoke((HomePreferenceType) mutableState4.getValue());
                                    break;
                            }
                            return unit2;
                        }
                    };
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Modifier m132padding3ABfNKs2 = OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, clip2, null, (Function0) rememberedValue2, false), 16.0f);
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                long j2 = gapComposer2.compositeKeyHashCode;
                int i4 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs2);
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
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(((Boolean) mutableState3.getValue()).booleanValue() ? R.drawable.ic_thumb_down_filled : R.drawable.ic_thumb_down, 0, gapComposer2), UtilsKt.stringResource(R.string.hybrid_search_results_rate_thumb_down, gapComposer2), OffsetKt.m131offsetVpY3zN4$default(SizeKt.m145size3ABfNKs(companion2, 16.0f), -2.0f, 1), ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).placeholderColor, gapComposer2, 392, 0);
                gapComposer2.end(true);
                break;
            default:
                PaddingValues paddingValues = (PaddingValues) obj;
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer3.changed(paddingValues) ? 4 : 2;
                }
                if (!gapComposer3.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                    Modifier scroll$default = ImageKt.scroll$default(OffsetKt.padding(companion3, paddingValues), ImageKt.rememberScrollState(gapComposer3), true);
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 0);
                    long j3 = gapComposer3.compositeKeyHashCode;
                    int i5 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, scroll$default);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer3, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i5);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer3, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$14);
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion3, 1.0f);
                    boolean changed3 = gapComposer3.changed(function1);
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (changed3 || rememberedValue3 == neverEqualPolicy) {
                        companion = companion3;
                        final int i6 = 2;
                        rememberedValue3 = new Function0() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i22 = i6;
                                Unit unit2 = Unit.INSTANCE;
                                MutableState mutableState4 = mutableState2;
                                MutableState mutableState5 = mutableState3;
                                Function1 function12 = function1;
                                switch (i22) {
                                    case 0:
                                        Boolean bool = Boolean.TRUE;
                                        mutableState5.setValue(bool);
                                        mutableState4.setValue(Boolean.FALSE);
                                        function12.invoke(bool);
                                        break;
                                    case 1:
                                        mutableState5.setValue(Boolean.TRUE);
                                        Boolean bool2 = Boolean.FALSE;
                                        mutableState4.setValue(bool2);
                                        function12.invoke(bool2);
                                        break;
                                    case 2:
                                        mutableState5.setValue(Boolean.TRUE);
                                        mutableState4.setValue(HomePreferenceType.COMMUNITY);
                                        function12.invoke((HomePreferenceType) mutableState4.getValue());
                                        break;
                                    default:
                                        mutableState5.setValue(Boolean.TRUE);
                                        mutableState4.setValue(HomePreferenceType.PERSONALIZED);
                                        function12.invoke((HomePreferenceType) mutableState4.getValue());
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    } else {
                        companion = companion3;
                    }
                    Modifier m51clickableoSLSa3U$default = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth, null, (Function0) rememberedValue3, false);
                    Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
                    BiasAlignment.Vertical vertical = Alignment.Companion.Top;
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$SpacedAligned, vertical, gapComposer3, 6);
                    long j4 = gapComposer3.compositeKeyHashCode;
                    int i7 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer3, m51clickableoSLSa3U$default);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i7, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer3, materializeModifier4, composeUiNode$Companion$SetModifier$14);
                    Modifier.Companion companion4 = companion;
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion4, 24.0f, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12);
                    CardKt.RadioButton(((HomePreferenceType) mutableState2.getValue()) == HomePreferenceType.COMMUNITY, null, m136paddingqDBjuR0$default, false, CardKt.m277colorsro_MJ88(NodeTraversor.getColors(gapComposer3).primaryColor, NodeTraversor.getColors(gapComposer3).primaryColor, 0L, 0L, gapComposer3, 12), gapComposer3, 432, 40);
                    Modifier weight$default$1 = Animation.CC.weight$default$1(OffsetKt.m136paddingqDBjuR0$default(companion4, RecyclerView.DECELERATION_RATE, 8.0f, 24.0f, 8.0f, 1), 1.0f);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 0);
                    long j5 = gapComposer3.compositeKeyHashCode;
                    int i8 = (int) (j5 ^ (j5 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer3, weight$default$1);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i8, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer3, materializeModifier5, composeUiNode$Companion$SetModifier$14);
                    String stringResource = UtilsKt.stringResource(R.string.explore_feed_community_tab_label, gapComposer3);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
                    TextKt.m308TextNvy7gAk(stringResource, null, NodeTraversor.getColors(gapComposer3).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal)).bodyLarge, gapComposer3, 0, 0, 131066);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_preference_community_content_title, gapComposer3), OffsetKt.m136paddingqDBjuR0$default(companion4, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), NodeTraversor.getColors(gapComposer3).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer3, 48, 0, 131064);
                    gapComposer3.end(true);
                    gapComposer3.end(true);
                    Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion4, 1.0f);
                    boolean changed4 = gapComposer3.changed(function1);
                    Object rememberedValue4 = gapComposer3.rememberedValue();
                    if (changed4 || rememberedValue4 == neverEqualPolicy) {
                        final int i9 = 3;
                        mutableState = mutableState2;
                        rememberedValue4 = new Function0() { // from class: org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda15
                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                int i22 = i9;
                                Unit unit2 = Unit.INSTANCE;
                                MutableState mutableState4 = mutableState;
                                MutableState mutableState5 = mutableState3;
                                Function1 function12 = function1;
                                switch (i22) {
                                    case 0:
                                        Boolean bool = Boolean.TRUE;
                                        mutableState5.setValue(bool);
                                        mutableState4.setValue(Boolean.FALSE);
                                        function12.invoke(bool);
                                        break;
                                    case 1:
                                        mutableState5.setValue(Boolean.TRUE);
                                        Boolean bool2 = Boolean.FALSE;
                                        mutableState4.setValue(bool2);
                                        function12.invoke(bool2);
                                        break;
                                    case 2:
                                        mutableState5.setValue(Boolean.TRUE);
                                        mutableState4.setValue(HomePreferenceType.COMMUNITY);
                                        function12.invoke((HomePreferenceType) mutableState4.getValue());
                                        break;
                                    default:
                                        mutableState5.setValue(Boolean.TRUE);
                                        mutableState4.setValue(HomePreferenceType.PERSONALIZED);
                                        function12.invoke((HomePreferenceType) mutableState4.getValue());
                                        break;
                                }
                                return unit2;
                            }
                        };
                        gapComposer3.updateRememberedValue(rememberedValue4);
                    } else {
                        mutableState = mutableState2;
                    }
                    Modifier m51clickableoSLSa3U$default2 = ImageKt.m51clickableoSLSa3U$default(15, fillMaxWidth2, null, (Function0) rememberedValue4, false);
                    RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), vertical, gapComposer3, 6);
                    MutableState mutableState4 = mutableState;
                    long j6 = gapComposer3.compositeKeyHashCode;
                    int i10 = (int) (j6 ^ (j6 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope6 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier6 = AbsoluteAlignment.materializeModifier(gapComposer3, m51clickableoSLSa3U$default2);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, rowMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope6, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i10, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer3, materializeModifier6, composeUiNode$Companion$SetModifier$14);
                    CardKt.RadioButton(((HomePreferenceType) mutableState4.getValue()) == HomePreferenceType.PERSONALIZED, null, OffsetKt.m136paddingqDBjuR0$default(companion4, 24.0f, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12), false, CardKt.m277colorsro_MJ88(NodeTraversor.getColors(gapComposer3).primaryColor, NodeTraversor.getColors(gapComposer3).primaryColor, 0L, 0L, gapComposer3, 12), gapComposer3, 432, 40);
                    Modifier weight$default$12 = Animation.CC.weight$default$1(OffsetKt.m136paddingqDBjuR0$default(companion4, RecyclerView.DECELERATION_RATE, 8.0f, 24.0f, 8.0f, 1), 1.0f);
                    ColumnMeasurePolicy columnMeasurePolicy3 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer3, 0);
                    long j7 = gapComposer3.compositeKeyHashCode;
                    int i11 = (int) (j7 ^ (j7 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope7 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier7 = AbsoluteAlignment.materializeModifier(gapComposer3, weight$default$12);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$13);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, columnMeasurePolicy3, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope7, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i11, gapComposer3, composeUiNode$Companion$SetModifier$13, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer3, materializeModifier7, composeUiNode$Companion$SetModifier$14);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_for_you_tab_label, gapComposer3), null, NodeTraversor.getColors(gapComposer3).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal)).bodyLarge, gapComposer3, 0, 0, 131066);
                    TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.explore_feed_preference_personalized_content_title, gapComposer3), OffsetKt.m136paddingqDBjuR0$default(companion4, RecyclerView.DECELERATION_RATE, 4.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13), NodeTraversor.getColors(gapComposer3).secondaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal)).bodyMedium, gapComposer3, 48, 0, 131064);
                    Modifier.CC.m(gapComposer3, true, true, true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ HybridSearchResultsScreenKt$$ExternalSyntheticLambda13(int i, MutableState mutableState, MutableState mutableState2, Function1 function1) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = function1;
        this.f$2 = mutableState2;
    }
}
