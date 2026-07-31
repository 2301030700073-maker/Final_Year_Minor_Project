package androidx.compose.foundation.text.modifiers;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.room.Room;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextStringSimpleNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public ParagraphLayoutCache _layoutCache;
    public HashMap baselineCache;
    public FontFamily.Resolver fontFamilyResolver;
    public int maxLines;
    public int minLines;
    public int overflow;
    public TextStringSimpleNode$$ExternalSyntheticLambda0 semanticsTextLayoutResult;
    public boolean softWrap;
    public TextStyle style;
    public String text;
    public TextSubstitutionValue textSubstitution;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            int m = (Animation.CC.m(this.original.hashCode() * 31, 31, this.substitution) + (this.isShowingSubstitution ? 1231 : 1237)) * 31;
            ParagraphLayoutCache paragraphLayoutCache = this.layoutCache;
            return m + (paragraphLayoutCache == null ? 0 : paragraphLayoutCache.hashCode());
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TextSubstitution(layoutCache=");
            sb.append(this.layoutCache);
            sb.append(", isShowingSubstitution=");
            return Animation.CC.m(sb, this.isShowingSubstitution, ')');
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

                /* JADX WARN: Removed duplicated region for block: B:24:0x011e  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x0125  */
                @Override // kotlin.jvm.functions.Function1
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invoke(java.lang.Object r31) {
                    /*
                        Method dump skipped, instructions count: 308
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
        semanticsPropertyReceiver.set(SemanticsProperties.Text, Room.listOf(annotatedString));
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
                    Method dump skipped, instructions count: 308
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
                    Method dump skipped, instructions count: 308
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode$$ExternalSyntheticLambda0.invoke(java.lang.Object):java.lang.Object");
            }
        }));
        semanticsPropertyReceiver.set(SemanticsActions.ClearTextSubstitution, new AccessibilityAction(null, new NavBackStackEntry$$ExternalSyntheticLambda0(20, this)));
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
            goto L94
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
            if (r1 == 0) goto L9b
            androidx.compose.ui.graphics.drawscope.CanvasDrawScope r11 = r11.canvasDrawScope
            com.caverock.androidsvg.SVG r11 = r11.drawContext
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
            r2.mo401clipRectN_I0leg(r3, r4, r5, r6, r7)
        L43:
            androidx.compose.ui.text.TextStyle r10 = r10.style     // Catch: java.lang.Throwable -> L4f
            androidx.compose.ui.text.SpanStyle r0 = r10.spanStyle     // Catch: java.lang.Throwable -> L4f
            androidx.compose.ui.text.style.TextDecoration r3 = r0.textDecoration     // Catch: java.lang.Throwable -> L4f
            if (r3 != 0) goto L4d
            androidx.compose.ui.text.style.TextDecoration r3 = androidx.compose.ui.text.style.TextDecoration.None     // Catch: java.lang.Throwable -> L4f
        L4d:
            r6 = r3
            goto L52
        L4f:
            r0 = move-exception
            r10 = r0
            goto L95
        L52:
            androidx.compose.ui.graphics.Shadow r3 = r0.shadow     // Catch: java.lang.Throwable -> L4f
            if (r3 != 0) goto L58
            androidx.compose.ui.graphics.Shadow r3 = androidx.compose.ui.graphics.Shadow.None     // Catch: java.lang.Throwable -> L4f
        L58:
            r5 = r3
            androidx.compose.ui.graphics.drawscope.DrawStyle r3 = r0.drawStyle     // Catch: java.lang.Throwable -> L4f
            if (r3 != 0) goto L5f
            androidx.compose.ui.graphics.drawscope.Fill r3 = androidx.compose.ui.graphics.drawscope.Fill.INSTANCE     // Catch: java.lang.Throwable -> L4f
        L5f:
            r7 = r3
            androidx.compose.ui.text.style.TextForegroundStyle r0 = r0.textForegroundStyle     // Catch: java.lang.Throwable -> L4f
            androidx.compose.ui.graphics.Brush r3 = r0.getBrush()     // Catch: java.lang.Throwable -> L4f
            if (r3 == 0) goto L74
            androidx.compose.ui.text.SpanStyle r10 = r10.spanStyle     // Catch: java.lang.Throwable -> L4f
            androidx.compose.ui.text.style.TextForegroundStyle r10 = r10.textForegroundStyle     // Catch: java.lang.Throwable -> L4f
            float r4 = r10.getAlpha()     // Catch: java.lang.Throwable -> L4f
            r1.m624painthn5TExg(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L4f
            goto L8f
        L74:
            long r3 = androidx.compose.ui.graphics.Color.Unspecified     // Catch: java.lang.Throwable -> L4f
            r8 = 16
            int r0 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r0 == 0) goto L7d
            goto L8c
        L7d:
            long r3 = r10.m649getColor0d7_KjU()     // Catch: java.lang.Throwable -> L4f
            int r0 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r0 == 0) goto L8a
            long r3 = r10.m649getColor0d7_KjU()     // Catch: java.lang.Throwable -> L4f
            goto L8c
        L8a:
            long r3 = androidx.compose.ui.graphics.Color.Black     // Catch: java.lang.Throwable -> L4f
        L8c:
            r1.m623paintLG529CI(r2, r3, r5, r6, r7)     // Catch: java.lang.Throwable -> L4f
        L8f:
            if (r11 == 0) goto L94
            r2.restore()
        L94:
            return
        L95:
            if (r11 == 0) goto L9a
            r2.restore()
        L9a:
            throw r10
        L9b:
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
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$1()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.draw(androidx.compose.ui.node.LayoutNodeDrawScope):void");
    }

    public final ParagraphLayoutCache getLayoutCache() {
        TextStyle textStyle = this.style;
        ParagraphLayoutCache paragraphLayoutCache = this._layoutCache;
        if (paragraphLayoutCache == null) {
            paragraphLayoutCache = new ParagraphLayoutCache(this.text, textStyle, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines);
            this._layoutCache = paragraphLayoutCache;
        }
        paragraphLayoutCache.getClass();
        return paragraphLayoutCache;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r3 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int maxIntrinsicHeight(androidx.compose.ui.node.LookaheadCapablePlaceable r2, androidx.compose.ui.layout.Measurable r3, int r4) {
        /*
            r1 = this;
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r3 = r1.textSubstitution
            if (r3 == 0) goto L10
            boolean r0 = r3.isShowingSubstitution
            if (r0 == 0) goto L9
            goto La
        L9:
            r3 = 0
        La:
            if (r3 == 0) goto L10
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r3 = r3.layoutCache
            if (r3 != 0) goto L14
        L10:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r3 = r1.getLayoutCache()
        L14:
            r3.setDensity$foundation(r2)
            androidx.compose.ui.unit.LayoutDirection r1 = r2.getLayoutDirection()
            int r1 = r3.intrinsicHeight(r4, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.maxIntrinsicHeight(androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.Measurable, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r2 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int maxIntrinsicWidth(androidx.compose.ui.node.LookaheadCapablePlaceable r1, androidx.compose.ui.layout.Measurable r2, int r3) {
        /*
            r0 = this;
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r2 = r0.textSubstitution
            if (r2 == 0) goto L10
            boolean r3 = r2.isShowingSubstitution
            if (r3 == 0) goto L9
            goto La
        L9:
            r2 = 0
        La:
            if (r2 == 0) goto L10
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r2 = r2.layoutCache
            if (r2 != 0) goto L14
        L10:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r2 = r0.getLayoutCache()
        L14:
            r2.setDensity$foundation(r1)
            androidx.compose.ui.unit.LayoutDirection r0 = r1.getLayoutDirection()
            androidx.compose.ui.text.ParagraphIntrinsics r0 = r2.setLayoutDirection(r0)
            float r0 = r0.getMaxIntrinsicWidth()
            int r0 = androidx.compose.foundation.text.BasicTextKt.ceilToIntPx(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.maxIntrinsicWidth(androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.Measurable, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0013, code lost:
    
        if (r0 != null) goto L13;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.compose.ui.layout.MeasureResult mo16measure3p2s80s(androidx.compose.ui.layout.MeasureScope r5, androidx.compose.ui.layout.Measurable r6, long r7) {
        /*
            r4 = this;
            java.lang.String r0 = "TextStringSimpleNode::measure"
            android.os.Trace.beginSection(r0)
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r0 = r4.textSubstitution     // Catch: java.lang.Throwable -> L98
            if (r0 == 0) goto L15
            boolean r1 = r0.isShowingSubstitution     // Catch: java.lang.Throwable -> L98
            if (r1 == 0) goto Le
            goto Lf
        Le:
            r0 = 0
        Lf:
            if (r0 == 0) goto L15
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r0.layoutCache     // Catch: java.lang.Throwable -> L98
            if (r0 != 0) goto L19
        L15:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r0 = r4.getLayoutCache()     // Catch: java.lang.Throwable -> L98
        L19:
            r0.setDensity$foundation(r5)     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.unit.LayoutDirection r1 = r5.getLayoutDirection()     // Catch: java.lang.Throwable -> L98
            boolean r7 = r0.m219layoutWithConstraintsK40F9xA(r7, r1)     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.text.ParagraphIntrinsics r8 = r0.paragraphIntrinsics     // Catch: java.lang.Throwable -> L98
            if (r8 == 0) goto L2b
            r8.getHasStaleResolvedFonts()     // Catch: java.lang.Throwable -> L98
        L2b:
            androidx.compose.ui.text.AndroidParagraph r8 = r0.paragraph     // Catch: java.lang.Throwable -> L98
            r8.getClass()     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.text.android.TextLayout r8 = r8.layout     // Catch: java.lang.Throwable -> L98
            long r0 = r0.layoutSize     // Catch: java.lang.Throwable -> L98
            if (r7 == 0) goto L70
            r7 = 2
            androidx.compose.ui.node.NodeCoordinator r2 = androidx.compose.ui.node.HitTestResultKt.m547requireCoordinator64DMado(r4, r7)     // Catch: java.lang.Throwable -> L98
            r2.invalidateLayer()     // Catch: java.lang.Throwable -> L98
            java.util.HashMap r2 = r4.baselineCache     // Catch: java.lang.Throwable -> L98
            if (r2 != 0) goto L49
            java.util.HashMap r2 = new java.util.HashMap     // Catch: java.lang.Throwable -> L98
            r2.<init>(r7)     // Catch: java.lang.Throwable -> L98
            r4.baselineCache = r2     // Catch: java.lang.Throwable -> L98
        L49:
            androidx.compose.ui.layout.HorizontalAlignmentLine r7 = androidx.compose.ui.layout.AlignmentLineKt.FirstBaseline     // Catch: java.lang.Throwable -> L98
            r3 = 0
            float r3 = r8.getLineBaseline(r3)     // Catch: java.lang.Throwable -> L98
            int r3 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> L98
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L98
            r2.put(r7, r3)     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.layout.HorizontalAlignmentLine r7 = androidx.compose.ui.layout.AlignmentLineKt.LastBaseline     // Catch: java.lang.Throwable -> L98
            int r3 = r8.lineCount     // Catch: java.lang.Throwable -> L98
            int r3 = r3 + (-1)
            float r8 = r8.getLineBaseline(r3)     // Catch: java.lang.Throwable -> L98
            int r8 = java.lang.Math.round(r8)     // Catch: java.lang.Throwable -> L98
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L98
            r2.put(r7, r8)     // Catch: java.lang.Throwable -> L98
        L70:
            r7 = 32
            long r7 = r0 >> r7
            int r7 = (int) r7     // Catch: java.lang.Throwable -> L98
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r2
            int r8 = (int) r0     // Catch: java.lang.Throwable -> L98
            long r0 = kotlin.text.UStringsKt.m843fitPrioritizingWidthZbe2FdA(r7, r7, r8, r8)     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.layout.Placeable r6 = r6.mo512measureBRTryo0(r0)     // Catch: java.lang.Throwable -> L98
            java.util.HashMap r4 = r4.baselineCache     // Catch: java.lang.Throwable -> L98
            r4.getClass()     // Catch: java.lang.Throwable -> L98
            androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12 r0 = new androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12     // Catch: java.lang.Throwable -> L98
            r1 = 11
            r0.<init>(r6, r1)     // Catch: java.lang.Throwable -> L98
            androidx.compose.ui.layout.MeasureResult r4 = r5.layout(r7, r8, r4, r0)     // Catch: java.lang.Throwable -> L98
            android.os.Trace.endSection()
            return r4
        L98:
            r4 = move-exception
            android.os.Trace.endSection()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.mo16measure3p2s80s(androidx.compose.ui.layout.MeasureScope, androidx.compose.ui.layout.Measurable, long):androidx.compose.ui.layout.MeasureResult");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r3 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int minIntrinsicHeight(androidx.compose.ui.node.LookaheadCapablePlaceable r2, androidx.compose.ui.layout.Measurable r3, int r4) {
        /*
            r1 = this;
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r3 = r1.textSubstitution
            if (r3 == 0) goto L10
            boolean r0 = r3.isShowingSubstitution
            if (r0 == 0) goto L9
            goto La
        L9:
            r3 = 0
        La:
            if (r3 == 0) goto L10
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r3 = r3.layoutCache
            if (r3 != 0) goto L14
        L10:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r3 = r1.getLayoutCache()
        L14:
            r3.setDensity$foundation(r2)
            androidx.compose.ui.unit.LayoutDirection r1 = r2.getLayoutDirection()
            int r1 = r3.intrinsicHeight(r4, r1)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.minIntrinsicHeight(androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.Measurable, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r2 != null) goto L12;
     */
    @Override // androidx.compose.ui.node.LayoutModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int minIntrinsicWidth(androidx.compose.ui.node.LookaheadCapablePlaceable r1, androidx.compose.ui.layout.Measurable r2, int r3) {
        /*
            r0 = this;
            androidx.compose.foundation.text.modifiers.TextStringSimpleNode$TextSubstitutionValue r2 = r0.textSubstitution
            if (r2 == 0) goto L10
            boolean r3 = r2.isShowingSubstitution
            if (r3 == 0) goto L9
            goto La
        L9:
            r2 = 0
        La:
            if (r2 == 0) goto L10
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r2 = r2.layoutCache
            if (r2 != 0) goto L14
        L10:
            androidx.compose.foundation.text.modifiers.ParagraphLayoutCache r2 = r0.getLayoutCache()
        L14:
            r2.setDensity$foundation(r1)
            androidx.compose.ui.unit.LayoutDirection r0 = r1.getLayoutDirection()
            androidx.compose.ui.text.ParagraphIntrinsics r0 = r2.setLayoutDirection(r0)
            float r0 = r0.getMinIntrinsicWidth()
            int r0 = androidx.compose.foundation.text.BasicTextKt.ceilToIntPx(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextStringSimpleNode.minIntrinsicWidth(androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.Measurable, int):int");
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
    }
}
