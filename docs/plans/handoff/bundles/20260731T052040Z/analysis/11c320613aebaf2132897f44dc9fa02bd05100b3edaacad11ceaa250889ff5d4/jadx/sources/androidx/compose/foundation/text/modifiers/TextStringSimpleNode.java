package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TextStringSimpleNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public ParagraphLayoutCache _layoutCache;
    public HashMap baselineCache;
    public FontFamily$Resolver fontFamilyResolver;
    public int maxLines;
    public int minLines;
    public int overflow;
    public TextStyle resolvedInheritedStyle;
    public TextStringSimpleNode$$ExternalSyntheticLambda0 semanticsTextLayoutResult;
    public boolean softWrap;
    public TextStyle style;
    public String text;
    public TextSubstitutionValue textSubstitution;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class TextSubstitutionValue {
        public boolean isShowingSubstitution = false;
        public ParagraphLayoutCache layoutCache = null;
        public final String original;
        public String substitution;

        public TextSubstitutionValue(String str, String str2) {
            this.original = str;
            this.substitution = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TextSubstitutionValue)) {
                return false;
            }
            TextSubstitutionValue textSubstitutionValue = (TextSubstitutionValue) obj;
            return Intrinsics.areEqual(this.original, textSubstitutionValue.original) && Intrinsics.areEqual(this.substitution, textSubstitutionValue.substitution) && this.isShowingSubstitution == textSubstitutionValue.isShowingSubstitution && Intrinsics.areEqual(this.layoutCache, textSubstitutionValue.layoutCache);
        }

        public final int hashCode() {
            int m = (Modifier.CC.m(this.original.hashCode() * 31, 31, this.substitution) + (this.isShowingSubstitution ? 1231 : 1237)) * 31;
            ParagraphLayoutCache paragraphLayoutCache = this.layoutCache;
            return m + (paragraphLayoutCache == null ? 0 : paragraphLayoutCache.hashCode());
        }

        public final String toString() {
            return "TextSubstitution(layoutCache=" + this.layoutCache + ", isShowingSubstitution=" + this.isShowingSubstitution + ')';
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        TextStringSimpleNode$$ExternalSyntheticLambda0 textStringSimpleNode$$ExternalSyntheticLambda0 = this.semanticsTextLayoutResult;
        TextStringSimpleNode$$ExternalSyntheticLambda0 textStringSimpleNode$$ExternalSyntheticLambda02 = textStringSimpleNode$$ExternalSyntheticLambda0;
        if (textStringSimpleNode$$ExternalSyntheticLambda0 == null) {
            final int i = 0;
            ?? r0 = new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0
                public final /* synthetic */ TextStringSimpleNode f$0;

                {
                    this.f$0 = this;
                }

                /* JADX WARN: Removed duplicated region for block: B:24:0x026a  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0272  */
                /* JADX WARN: Removed duplicated region for block: B:29:0x0274  */
                /* JADX WARN: Removed duplicated region for block: B:30:0x026f  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r31) {
                    /*
                        Method dump skipped, instructions count: 642
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
                }
            };
            this.semanticsTextLayoutResult = r0;
            textStringSimpleNode$$ExternalSyntheticLambda02 = r0;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.text);
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        semanticsPropertyReceiver.set(SemanticsProperties.Text, Jsoup.listOf(annotatedString));
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            boolean z = textSubstitutionValue.isShowingSubstitution;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.IsShowingTextSubstitution;
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
            KProperty kProperty = kPropertyArr2[17];
            semanticsPropertyReceiver.set(semanticsPropertyKey, Boolean.valueOf(z));
            AnnotatedString annotatedString2 = new AnnotatedString(textSubstitutionValue.substitution);
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.TextSubstitution;
            KProperty kProperty2 = kPropertyArr2[16];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, annotatedString2);
        }
        final int i2 = 1;
        semanticsPropertyReceiver.set(SemanticsActions.SetTextSubstitution, new AccessibilityAction(null, new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0
            public final /* synthetic */ TextStringSimpleNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 642
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        }));
        final int i3 = 2;
        semanticsPropertyReceiver.set(SemanticsActions.ShowTextSubstitution, new AccessibilityAction(null, new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0
            public final /* synthetic */ TextStringSimpleNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                /*
                    Method dump skipped, instructions count: 642
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        }));
        semanticsPropertyReceiver.set(SemanticsActions.ClearTextSubstitution, new AccessibilityAction(null, new Worker$$ExternalSyntheticLambda0(this, 4)));
        semanticsPropertyReceiver.set(SemanticsActions.GetTextLayoutResult, new AccessibilityAction(null, textStringSimpleNode$$ExternalSyntheticLambda02));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if (r1 != null) goto L15;
     */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.node.LayoutNodeDrawScope r19) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.draw(androidx.compose.ui.node.LayoutNodeDrawScope):void");
    }

    public final ParagraphLayoutCache getLayoutCache() {
        TextStyle textStyle = this.resolvedInheritedStyle;
        if (textStyle == null) {
            textStyle = this.style;
        }
        TextStyle textStyle2 = textStyle;
        if (this._layoutCache == null) {
            this._layoutCache = new ParagraphLayoutCache(this.text, textStyle2, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines);
        }
        ParagraphLayoutCache paragraphLayoutCache = this._layoutCache;
        paragraphLayoutCache.getClass();
        return paragraphLayoutCache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
    
        if (r0 != null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.foundation.text.modifiers.ParagraphLayoutCache getLayoutCacheForMeasure(androidx.compose.ui.layout.MeasureScope r10) {
        /*
            r9 = this;
            r0 = 1
            boolean r0 = r9.m122resolveInheritedStyleuwmK9pY(r0)
            if (r0 == 0) goto L21
            androidx.compose.ui.text.TextStyle r0 = r9.resolvedInheritedStyle
            if (r0 != 0) goto Ld
            androidx.compose.ui.text.TextStyle r0 = r9.style
        Ld:
            r3 = r0
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r1 = r9.getLayoutCache()
            java.lang.String r2 = r9.text
            androidx.compose.ui.text.font.FontFamily$Resolver r4 = r9.fontFamilyResolver
            int r5 = r9.overflow
            boolean r6 = r9.softWrap
            int r7 = r9.maxLines
            int r8 = r9.minLines
            r1.m121updateL6sJoHM(r2, r3, r4, r5, r6, r7, r8)
        L21:
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r0 = r9.textSubstitution
            if (r0 == 0) goto L31
            boolean r1 = r0.isShowingSubstitution
            if (r1 == 0) goto L2a
            goto L2b
        L2a:
            r0 = 0
        L2b:
            if (r0 == 0) goto L31
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r0.layoutCache
            if (r0 != 0) goto L35
        L31:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r9.getLayoutCache()
        L35:
            r0.setDensity$foundation(r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.getLayoutCacheForMeasure(androidx.compose.ui.layout.MeasureScope):androidx.compose.foundation.text.modifiers.ParagraphLayoutCache");
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return getLayoutCacheForMeasure(lookaheadCapablePlaceable).intrinsicHeight(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return Cookie.Companion.ceilToIntPx(getLayoutCacheForMeasure(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMaxIntrinsicWidth());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo9measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextStringSimpleNode::measure");
        try {
            ParagraphLayoutCache layoutCacheForMeasure = getLayoutCacheForMeasure(measureScope);
            boolean m120layoutWithConstraintsK40F9xA = layoutCacheForMeasure.m120layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            ParagraphIntrinsics paragraphIntrinsics = layoutCacheForMeasure.paragraphIntrinsics;
            if (paragraphIntrinsics != null) {
                paragraphIntrinsics.getHasStaleResolvedFonts();
            }
            AndroidParagraph androidParagraph = layoutCacheForMeasure.paragraph;
            androidParagraph.getClass();
            TextLayout textLayout = androidParagraph.layout;
            long j2 = layoutCacheForMeasure.layoutSize;
            if (m120layoutWithConstraintsK40F9xA) {
                HitTestResultKt.m317requireCoordinator64DMado(this, 2).invalidateLayer();
                HashMap hashMap = this.baselineCache;
                if (hashMap == null) {
                    hashMap = new HashMap(2);
                    this.baselineCache = hashMap;
                }
                hashMap.put(AlignmentLineKt.FirstBaseline, Integer.valueOf(Math.round(textLayout.getLineBaseline(0))));
                hashMap.put(AlignmentLineKt.LastBaseline, Integer.valueOf(Math.round(textLayout.getLineBaseline(textLayout.lineCount - 1))));
            }
            int i = (int) (j2 >> 32);
            int i2 = (int) (j2 & 4294967295L);
            Placeable mo292measureBRTryo0 = measurable.mo292measureBRTryo0(AppKt.m700fitPrioritizingWidthZbe2FdA(i, i, i2, i2));
            HashMap hashMap2 = this.baselineCache;
            hashMap2.getClass();
            return measureScope.layout(i, i2, hashMap2, new BadgeKt$$ExternalSyntheticLambda2(mo292measureBRTryo0, 5));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return getLayoutCacheForMeasure(lookaheadCapablePlaceable).intrinsicHeight(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return Cookie.Companion.ceilToIntPx(getLayoutCacheForMeasure(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMinIntrinsicWidth());
    }

    /* renamed from: resolveInheritedStyle-uwmK9pY, reason: not valid java name */
    public final boolean m122resolveInheritedStyleuwmK9pY(int i) {
        TextStyle textStyle = this.resolvedInheritedStyle;
        TextStyle textStyle2 = this.style;
        HitTestResultKt.traverseAncestors(this, "StyleOuterNode", new SaversKt$$ExternalSyntheticLambda2(4));
        this.resolvedInheritedStyle = textStyle2;
        if (textStyle == null) {
            return false;
        }
        return !textStyle.equals(textStyle2);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}
