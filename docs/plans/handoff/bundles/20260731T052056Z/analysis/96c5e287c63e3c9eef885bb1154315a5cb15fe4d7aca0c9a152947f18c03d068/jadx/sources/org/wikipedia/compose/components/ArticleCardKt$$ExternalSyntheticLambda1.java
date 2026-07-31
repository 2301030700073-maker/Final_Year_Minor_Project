package org.wikipedia.compose.components;

import android.content.Context;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.VerticalAlignElement;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.painter.BrushPainter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import coil3.compose.AsyncImageKt;
import coil3.request.ImageRequest;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function2;
import okio.ByteString;
import okio.Okio__OkioKt;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ArticleCardKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ boolean f$1;

    public /* synthetic */ ArticleCardKt$$ExternalSyntheticLambda1(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i) {
        this.f$0 = textFieldSelectionManager;
        this.f$1 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        Unit unit;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
        PageTitle pageTitle;
        ?? r3;
        Arrangement$End$1 arrangement$End$1;
        BiasAlignment.Horizontal horizontal;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13;
        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        GapComposer gapComposer;
        int i = this.$r8$classId;
        Unit unit2 = Unit.INSTANCE;
        Object obj3 = this.f$0;
        boolean z2 = this.f$1;
        switch (i) {
            case 0:
                PageTitle pageTitle2 = (PageTitle) obj3;
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                    Arrangement$End$1 arrangement$End$12 = OffsetKt.Top;
                    BiasAlignment.Horizontal horizontal2 = Alignment.Companion.Start;
                    ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$12, horizontal2, gapComposer2, 0);
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetMeasurePolicy;
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$15);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$16);
                    Integer valueOf = Integer.valueOf(i2);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$17 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$17);
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                    Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$18 = ComposeUiNode.Companion.SetModifier;
                    Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$18);
                    String str = pageTitle2.thumbUrl;
                    if (str == null || str.length() == 0) {
                        z = z2;
                        unit = unit2;
                        composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$18;
                        pageTitle = pageTitle2;
                        r3 = 0;
                        arrangement$End$1 = arrangement$End$12;
                        horizontal = horizontal2;
                        composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                        ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                        composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$17;
                        layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                        composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$15;
                        gapComposer2.startReplaceGroup(-2021600203);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(-2022249839);
                        Context context = (Context) gapComposer2.consume(AndroidCompositionLocals_androidKt.LocalContext);
                        String str2 = pageTitle2.thumbUrl;
                        Boolean bool = Boolean.TRUE;
                        Boolean bool2 = Boolean.FALSE;
                        context.getClass();
                        ImageRequest build = Okio__OkioKt._implementation != null ? ByteString.Companion.getRequestBuilder(context, str2, bool, bool2, null, null).build() : null;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                        z = z2;
                        composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$18;
                        pageTitle = pageTitle2;
                        arrangement$End$1 = arrangement$End$12;
                        composeUiNode$Companion$SetModifier$14 = composeUiNode$Companion$SetModifier$15;
                        composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                        ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                        composeUiNode$Companion$SetModifier$13 = composeUiNode$Companion$SetModifier$17;
                        layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                        r3 = 0;
                        unit = unit2;
                        horizontal = horizontal2;
                        AsyncImageKt.m774AsyncImagex1rPTaM(build, null, ClipKt.clip(SizeKt.m140height3ABfNKs(SizeKt.fillMaxWidth(companion, 1.0f), 108.0f), RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).borderColor)), new BrushPainter(new SolidColor(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).borderColor)), null, null, ContentScale.Companion.Crop, gapComposer2, 36912, 6, 31712);
                        gapComposer2.end(false);
                    }
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(companion, 8.0f);
                    ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, r3);
                    long j2 = gapComposer2.compositeKeyHashCode;
                    int i3 = (int) (j2 ^ (j2 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$19 = composeUiNode$Companion$SetModifier$14;
                    Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$19);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$110 = composeUiNode$Companion$SetModifier$12;
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$110);
                    Animation.CC.m(i3, gapComposer2, composeUiNode$Companion$SetModifier$13, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$111 = composeUiNode$Companion$SetModifier$1;
                    Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$111);
                    String displayText = pageTitle.getDisplayText();
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = TypographyKt.LocalTypography;
                    TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal3)).bodyLarge;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = WikipediaColorKt.LocalWikipediaColor;
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$112 = composeUiNode$Companion$SetModifier$13;
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$13 = ownerSnapshotObserver$onCommitAffectingLayout$1;
                    TabsBoxKt.m897HtmlTextKiACRJU(displayText, null, null, textStyle, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal4)).primaryColor, 0, 0, 0L, null, null, 0, gapComposer2, 0, 4070);
                    GapComposer gapComposer3 = gapComposer2;
                    OffsetKt.Spacer(gapComposer3, SizeKt.m140height3ABfNKs(companion, 2.0f));
                    RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.Top, gapComposer3, r3);
                    long j3 = gapComposer3.compositeKeyHashCode;
                    int i4 = (int) (j3 ^ (j3 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer3.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer3, companion);
                    gapComposer3.startReusableNode();
                    if (gapComposer3.inserting) {
                        gapComposer3.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer3.useNode();
                    }
                    Updater.m327setimpl(gapComposer3, rowMeasurePolicy, composeUiNode$Companion$SetModifier$19);
                    Updater.m327setimpl(gapComposer3, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$110);
                    Animation.CC.m(i4, gapComposer3, composeUiNode$Companion$SetModifier$112, gapComposer3, ownerSnapshotObserver$onCommitAffectingLayout$13);
                    Updater.m327setimpl(gapComposer3, materializeModifier3, composeUiNode$Companion$SetModifier$111);
                    PageTitle pageTitle3 = pageTitle;
                    String str3 = pageTitle3.description;
                    if (str3 == null || str3.length() == 0) {
                        staticProvidableCompositionLocal = staticProvidableCompositionLocal4;
                        gapComposer3.startReplaceGroup(-1953988775);
                        OffsetKt.Spacer(gapComposer3, Animation.CC.weight$default$1(companion, 1.0f));
                        gapComposer3.end(r3);
                        gapComposer = gapComposer3;
                    } else {
                        gapComposer3.startReplaceGroup(-1954411305);
                        String str4 = pageTitle3.description;
                        if (str4 == null) {
                            str4 = "";
                        }
                        staticProvidableCompositionLocal = staticProvidableCompositionLocal4;
                        TabsBoxKt.m897HtmlTextKiACRJU(str4, Animation.CC.weight$default$1(companion, 1.0f), null, ((Typography) gapComposer3.consume(staticProvidableCompositionLocal3)).bodyMedium, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).secondaryColor, 3, 2, 0L, null, null, 0, gapComposer3, 1769472, 3972);
                        GapComposer gapComposer4 = gapComposer3;
                        gapComposer4.end(r3);
                        gapComposer = gapComposer4;
                    }
                    if (z) {
                        gapComposer.startReplaceGroup(-1953855847);
                        OffsetKt.Spacer(gapComposer, SizeKt.m149width3ABfNKs(companion, 8.0f));
                        IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.check_circle_24px, r3, gapComposer), null, SizeKt.m145size3ABfNKs(companion, 24.0f).then(new VerticalAlignElement(Alignment.Companion.Bottom)), ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).primaryColor, gapComposer, 56, 0);
                        gapComposer.end(r3);
                    } else {
                        gapComposer.startReplaceGroup(-1953425815);
                        OffsetKt.Spacer(gapComposer, SizeKt.m140height3ABfNKs(SizeKt.m149width3ABfNKs(companion, 32.0f), 24.0f));
                        gapComposer.end(r3);
                    }
                    Modifier.CC.m(gapComposer, true, true, true);
                    break;
                }
                break;
            case 1:
                ((Integer) obj2).getClass();
                BasicTextKt.SelectionToolbarAndHandles((TextFieldSelectionManager) obj3, z2, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                ResultKt.PredictiveBackHandler(z2, (Function2) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit2;
    }

    public /* synthetic */ ArticleCardKt$$ExternalSyntheticLambda1(PageTitle pageTitle, boolean z) {
        this.f$0 = pageTitle;
        this.f$1 = z;
    }

    public /* synthetic */ ArticleCardKt$$ExternalSyntheticLambda1(boolean z, Function2 function2, int i) {
        this.f$1 = z;
        this.f$0 = function2;
    }
}
