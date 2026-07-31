package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
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
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
            int m = (Modifier.CC.m(this.original.hashCode() * 31, this.substitution, 31) + (this.isShowingSubstitution ? 1231 : 1237)) * 31;
            ParagraphLayoutCache paragraphLayoutCache = this.layoutCache;
            return m + (paragraphLayoutCache == null ? 0 : paragraphLayoutCache.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TextSubstitution(layoutCache=");
            sb.append(this.layoutCache);
            sb.append(", isShowingSubstitution=");
            return CameraDevices$CC.m(sb, this.isShowingSubstitution, ')');
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

                /* JADX WARN: Removed duplicated region for block: B:24:0x0105  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x010c  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r29) {
                    /*
                        Method dump skipped, instructions count: 282
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
        semanticsPropertyReceiver.set(SemanticsProperties.Text, IntOffsetKt.listOf(annotatedString));
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
                    Method dump skipped, instructions count: 282
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
                    Method dump skipped, instructions count: 282
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        }));
        semanticsPropertyReceiver.set(SemanticsActions.ClearTextSubstitution, new AccessibilityAction(null, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(28, this)));
        semanticsPropertyReceiver.set(SemanticsActions.GetTextLayoutResult, new AccessibilityAction(null, textStringSimpleNode$$ExternalSyntheticLambda02));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0014, code lost:
    
        if (r0 != null) goto L15;
     */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.node.LayoutNodeDrawScope r11) {
        /*
            r10 = this;
            boolean r0 = r10.isAttached
            if (r0 != 0) goto L6
            goto L9c
        L6:
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r0 = r10.textSubstitution
            if (r0 == 0) goto L16
            boolean r1 = r0.isShowingSubstitution
            if (r1 == 0) goto Lf
            goto L10
        Lf:
            r0 = 0
        L10:
            if (r0 == 0) goto L16
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r0.layoutCache
            if (r0 != 0) goto L1a
        L16:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r10.getLayoutCache()
        L1a:
            androidx.compose.ui.text.AndroidParagraph r1 = r0.paragraph
            if (r1 == 0) goto La3
            androidx.compose.ui.graphics.drawscope.CanvasDrawScope r11 = r11.canvasDrawScope
            androidx.core.view.MenuHostHelper r11 = r11.drawContext
            androidx.compose.ui.graphics.Canvas r2 = r11.getCanvas()
            boolean r11 = r0.didOverflow
            if (r11 == 0) goto L43
            long r3 = r0.layoutSize
            r0 = 32
            long r5 = r3 >> r0
            int r0 = (int) r5
            float r5 = (float) r0
            r6 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r3 = r3 & r6
            int r0 = (int) r3
            float r6 = (float) r0
            r2.save()
            r4 = 0
            r7 = 1
            r3 = 0
            r2.mo454clipRectN_I0leg(r3, r4, r5, r6, r7)
        L43:
            r0 = 2
            r10.m303resolveInheritedStyleuwmK9pY(r0)     // Catch: java.lang.Throwable -> L4e
            androidx.compose.ui.text.TextStyle r0 = r10.resolvedInheritedStyle     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L51
            androidx.compose.ui.text.TextStyle r0 = r10.style     // Catch: java.lang.Throwable -> L4e
            goto L51
        L4e:
            r0 = move-exception
            r10 = r0
            goto L9d
        L51:
            androidx.compose.ui.text.SpanStyle r10 = r0.spanStyle     // Catch: java.lang.Throwable -> L4e
            androidx.compose.ui.text.style.TextDecoration r3 = r10.textDecoration     // Catch: java.lang.Throwable -> L4e
            if (r3 != 0) goto L59
            androidx.compose.ui.text.style.TextDecoration r3 = androidx.compose.ui.text.style.TextDecoration.None     // Catch: java.lang.Throwable -> L4e
        L59:
            r6 = r3
            androidx.compose.ui.graphics.Shadow r3 = r10.shadow     // Catch: java.lang.Throwable -> L4e
            if (r3 != 0) goto L60
            androidx.compose.ui.graphics.Shadow r3 = androidx.compose.ui.graphics.Shadow.None     // Catch: java.lang.Throwable -> L4e
        L60:
            r5 = r3
            androidx.compose.ui.graphics.drawscope.DrawStyle r3 = r10.drawStyle     // Catch: java.lang.Throwable -> L4e
            if (r3 != 0) goto L67
            androidx.compose.ui.graphics.drawscope.Fill r3 = androidx.compose.ui.graphics.drawscope.Fill.INSTANCE     // Catch: java.lang.Throwable -> L4e
        L67:
            r7 = r3
            androidx.compose.ui.text.style.TextForegroundStyle r10 = r10.textForegroundStyle     // Catch: java.lang.Throwable -> L4e
            androidx.compose.ui.graphics.Brush r3 = r10.getBrush()     // Catch: java.lang.Throwable -> L4e
            if (r3 == 0) goto L7c
            androidx.compose.ui.text.SpanStyle r10 = r0.spanStyle     // Catch: java.lang.Throwable -> L4e
            androidx.compose.ui.text.style.TextForegroundStyle r10 = r10.textForegroundStyle     // Catch: java.lang.Throwable -> L4e
            float r4 = r10.getAlpha()     // Catch: java.lang.Throwable -> L4e
            r1.m682painthn5TExg(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L4e
            goto L97
        L7c:
            long r3 = androidx.compose.ui.graphics.Color.Unspecified     // Catch: java.lang.Throwable -> L4e
            r8 = 16
            int r10 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r10 == 0) goto L85
            goto L94
        L85:
            long r3 = r0.m707getColor0d7_KjU()     // Catch: java.lang.Throwable -> L4e
            int r10 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r10 == 0) goto L92
            long r3 = r0.m707getColor0d7_KjU()     // Catch: java.lang.Throwable -> L4e
            goto L94
        L92:
            long r3 = androidx.compose.ui.graphics.Color.Black     // Catch: java.lang.Throwable -> L4e
        L94:
            r1.m681paintLG529CI(r2, r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L4e
        L97:
            if (r11 == 0) goto L9c
            r2.restore()
        L9c:
            return
        L9d:
            if (r11 == 0) goto La2
            r2.restore()
        La2:
            throw r10
        La3:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r0 = "Internal Error: ParagraphLayoutCache could not provide a Paragraph during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: (layoutCache="
            r11.<init>(r0)
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r10._layoutCache
            r11.append(r0)
            java.lang.String r0 = ", textSubstitution="
            r11.append(r0)
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r10 = r10.textSubstitution
            r11.append(r10)
            r10 = 41
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalArgumentExceptionForNullCheck(r10)
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m()
            return
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
            boolean r0 = r9.m303resolveInheritedStyleuwmK9pY(r0)
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
            r1.m302updateL6sJoHM(r2, r3, r4, r5, r6, r7, r8)
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
        return BasicTextKt.ceilToIntPx(getLayoutCacheForMeasure(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMaxIntrinsicWidth());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextStringSimpleNode::measure");
        try {
            ParagraphLayoutCache layoutCacheForMeasure = getLayoutCacheForMeasure(measureScope);
            boolean m301layoutWithConstraintsK40F9xA = layoutCacheForMeasure.m301layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            ParagraphIntrinsics paragraphIntrinsics = layoutCacheForMeasure.paragraphIntrinsics;
            if (paragraphIntrinsics != null) {
                paragraphIntrinsics.getHasStaleResolvedFonts();
            }
            AndroidParagraph androidParagraph = layoutCacheForMeasure.paragraph;
            androidParagraph.getClass();
            TextLayout textLayout = androidParagraph.layout;
            long j2 = layoutCacheForMeasure.layoutSize;
            if (m301layoutWithConstraintsK40F9xA) {
                HitTestResultKt.m604requireCoordinator64DMado(this, 2).invalidateLayer();
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
            Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(MathKt.m987fitPrioritizingWidthZbe2FdA(i, i, i2, i2));
            HashMap hashMap2 = this.baselineCache;
            hashMap2.getClass();
            return measureScope.layout(i, i2, hashMap2, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 8));
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
        return BasicTextKt.ceilToIntPx(getLayoutCacheForMeasure(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMinIntrinsicWidth());
    }

    /* renamed from: resolveInheritedStyle-uwmK9pY, reason: not valid java name */
    public final boolean m303resolveInheritedStyleuwmK9pY(int i) {
        TextStyle textStyle = this.resolvedInheritedStyle;
        TextStyle textStyle2 = this.style;
        HitTestResultKt.traverseAncestors(this, "StyleOuterNode", new TextKt$$ExternalSyntheticLambda1(2));
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
