package org.wikipedia.feed;

import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.Locale;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Handshake$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda76 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ Modifier f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda76(int i, String str, Modifier modifier, Function0 function0, int i2) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$3 = modifier;
        this.f$2 = function0;
        this.f$4 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ForYouCardKt.EmptyStateActionRow(this.f$0, this.f$1, this.f$2, this.f$3, (GapComposer) obj, Updater.updateChangedFlags(this.f$4 | 1));
                break;
            default:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer, 0);
                    long j = gapComposer.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
                    Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 16.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8);
                    Painter painterResource = UnsignedKt.painterResource(R.drawable.ic_icon_user_contributions_ooui, 0, gapComposer);
                    String stringResource = UtilsKt.stringResource(R.string.activity_tab_impact_contributions_this_month, gapComposer);
                    int i3 = this.f$0;
                    ImpactModuleKt.CommonCardHeader(m136paddingqDBjuR0$default, painterResource, stringResource, i3 > 0 ? this.f$1 : null, false, true, gapComposer, 196672, 16);
                    Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 16.0f, 1);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer, 0);
                    long j2 = gapComposer.compositeKeyHashCode;
                    int i4 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                    Animation.CC.m(i4, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                    int i5 = this.f$4;
                    float max = Math.max(i3, i5);
                    Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    String pluralStringResource = UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_edits_this_month, i3, gapComposer);
                    Locale locale = Locale.ROOT;
                    String lowerCase = pluralStringResource.toLowerCase(locale);
                    lowerCase.getClass();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    ImpactModuleKt.m894ContributionEditsViewqFjXxE8(m136paddingqDBjuR0$default2, lowerCase, i3, max, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).successColor, gapComposer, 6);
                    Modifier m136paddingqDBjuR0$default3 = OffsetKt.m136paddingqDBjuR0$default(SizeKt.fillMaxWidth(companion, 1.0f), RecyclerView.DECELERATION_RATE, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 13);
                    String lowerCase2 = UtilsKt.pluralStringResource(R.plurals.activity_tab_impact_edits_last_month, i5, gapComposer).toLowerCase(locale);
                    lowerCase2.getClass();
                    ImpactModuleKt.m894ContributionEditsViewqFjXxE8(m136paddingqDBjuR0$default3, lowerCase2, i5, max, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor, gapComposer, 6);
                    gapComposer.end(true);
                    if (i3 == 0) {
                        gapComposer.startReplaceGroup(-272423667);
                        CardKt.m266HorizontalDivider9IZ8Weo(OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2), RecyclerView.DECELERATION_RATE, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor, gapComposer, 6, 2);
                        gapComposer = gapComposer;
                        Modifier fillMaxWidth = SizeKt.fillMaxWidth(this.f$3, 1.0f);
                        Function0 function0 = this.f$2;
                        boolean changed = gapComposer.changed(function0);
                        Object rememberedValue = gapComposer.rememberedValue();
                        if (changed || rememberedValue == Composer$Companion.Empty) {
                            rememberedValue = new Handshake$$ExternalSyntheticLambda0(5, function0);
                            gapComposer.updateRememberedValue(rememberedValue);
                        }
                        ImpactModuleKt.SuggestedEditsView(fillMaxWidth, (Function0) rememberedValue, gapComposer, 0);
                        gapComposer.end(false);
                    } else {
                        gapComposer.startReplaceGroup(-272029657);
                        gapComposer.end(false);
                    }
                    gapComposer.end(true);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda76(int i, String str, Function0 function0, Modifier modifier, int i2) {
        this.f$0 = i;
        this.f$1 = str;
        this.f$2 = function0;
        this.f$3 = modifier;
        this.f$4 = i2;
    }
}
