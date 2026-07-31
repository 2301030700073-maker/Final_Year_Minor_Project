package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.FillNode$$ExternalSyntheticLambda0;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.sqlite.SQLite;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.reflect.KProperty;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextAnnotatedStringNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public MultiParagraphLayoutCache _layoutCache;
    public Map baselineCache;
    public FontFamily$Resolver fontFamilyResolver;
    public int maxLines;
    public int minLines;
    public Function1 onPlaceholderLayout;
    public Function1 onShowTranslation;
    public Function1 onTextLayout;
    public int overflow;
    public List placeholders;
    public TextAnnotatedStringNode$$ExternalSyntheticLambda1 semanticsTextLayoutResult;
    public boolean softWrap;
    public TextStyle style;
    public AnnotatedString text;
    public TextSubstitutionValue textSubstitution;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class TextSubstitutionValue {
        public boolean isShowingSubstitution = false;
        public MultiParagraphLayoutCache layoutCache = null;
        public final AnnotatedString original;
        public AnnotatedString substitution;

        public TextSubstitutionValue(AnnotatedString annotatedString, AnnotatedString annotatedString2) {
            this.original = annotatedString;
            this.substitution = annotatedString2;
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
            int hashCode = (((this.substitution.hashCode() + (this.original.hashCode() * 31)) * 31) + (this.isShowingSubstitution ? 1231 : 1237)) * 31;
            MultiParagraphLayoutCache multiParagraphLayoutCache = this.layoutCache;
            return hashCode + (multiParagraphLayoutCache == null ? 0 : multiParagraphLayoutCache.hashCode());
        }

        public final String toString() {
            return "TextSubstitutionValue(original=" + ((Object) this.original) + ", substitution=" + ((Object) this.substitution) + ", isShowingSubstitution=" + this.isShowingSubstitution + ", layoutCache=" + this.layoutCache + ')';
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$$ExternalSyntheticLambda1] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        TextAnnotatedStringNode$$ExternalSyntheticLambda1 textAnnotatedStringNode$$ExternalSyntheticLambda1 = this.semanticsTextLayoutResult;
        TextAnnotatedStringNode$$ExternalSyntheticLambda1 textAnnotatedStringNode$$ExternalSyntheticLambda12 = textAnnotatedStringNode$$ExternalSyntheticLambda1;
        if (textAnnotatedStringNode$$ExternalSyntheticLambda1 == null) {
            final int i = 0;
            ?? r0 = new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$$ExternalSyntheticLambda1
                public final /* synthetic */ TextAnnotatedStringNode f$0;

                {
                    this.f$0 = this;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    TextLayoutResult textLayoutResult;
                    boolean z;
                    int i2 = i;
                    TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                    switch (i2) {
                        case 0:
                            List list = (List) obj;
                            TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                            if (textLayoutResult2 != null) {
                                TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                                textLayoutResult = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m706mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                                list.add(textLayoutResult);
                            } else {
                                textLayoutResult = null;
                            }
                            return Boolean.valueOf(textLayoutResult != null);
                        case 1:
                            AnnotatedString annotatedString = (AnnotatedString) obj;
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = textAnnotatedStringNode.textSubstitution;
                            EmptyList emptyList = EmptyList.INSTANCE;
                            if (textSubstitutionValue == null) {
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString);
                                MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                                multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                                textSubstitutionValue2.layoutCache = multiParagraphLayoutCache;
                                textAnnotatedStringNode.textSubstitution = textSubstitutionValue2;
                            } else if (!Intrinsics.areEqual(annotatedString, textSubstitutionValue.substitution)) {
                                textSubstitutionValue.substitution = annotatedString;
                                MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue.layoutCache;
                                if (multiParagraphLayoutCache2 != null) {
                                    multiParagraphLayoutCache2.m299updateJ2qo7bo(annotatedString, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                                }
                            }
                            HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                            HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                            HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                            return Boolean.TRUE;
                        default:
                            boolean booleanValue = ((Boolean) obj).booleanValue();
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.textSubstitution;
                            if (textSubstitutionValue3 == null) {
                                z = false;
                            } else {
                                Function1 function1 = textAnnotatedStringNode.onShowTranslation;
                                if (function1 != null) {
                                    function1.invoke(textSubstitutionValue3);
                                }
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.textSubstitution;
                                if (textSubstitutionValue4 != null) {
                                    textSubstitutionValue4.isShowingSubstitution = booleanValue;
                                }
                                HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                                HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                                HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                                z = true;
                            }
                            return Boolean.valueOf(z);
                    }
                }
            };
            this.semanticsTextLayoutResult = r0;
            textAnnotatedStringNode$$ExternalSyntheticLambda12 = r0;
        }
        AnnotatedString annotatedString = this.text;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        semanticsPropertyReceiver.set(SemanticsProperties.Text, IntOffsetKt.listOf(annotatedString));
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null) {
            AnnotatedString annotatedString2 = textSubstitutionValue.substitution;
            SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.TextSubstitution;
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
            KProperty kProperty = kPropertyArr2[16];
            semanticsPropertyReceiver.set(semanticsPropertyKey, annotatedString2);
            boolean z = textSubstitutionValue.isShowingSubstitution;
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.IsShowingTextSubstitution;
            KProperty kProperty2 = kPropertyArr2[17];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, Boolean.valueOf(z));
        }
        final int i2 = 1;
        semanticsPropertyReceiver.set(SemanticsActions.SetTextSubstitution, new AccessibilityAction(null, new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$$ExternalSyntheticLambda1
            public final /* synthetic */ TextAnnotatedStringNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TextLayoutResult textLayoutResult;
                boolean z2;
                int i22 = i2;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                            textLayoutResult = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m706mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                            list.add(textLayoutResult);
                        } else {
                            textLayoutResult = null;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.textSubstitution;
                        EmptyList emptyList = EmptyList.INSTANCE;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString3);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                            multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                            textSubstitutionValue22.layoutCache = multiParagraphLayoutCache;
                            textAnnotatedStringNode.textSubstitution = textSubstitutionValue22;
                        } else if (!Intrinsics.areEqual(annotatedString3, textSubstitutionValue2.substitution)) {
                            textSubstitutionValue2.substitution = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.layoutCache;
                            if (multiParagraphLayoutCache2 != null) {
                                multiParagraphLayoutCache2.m299updateJ2qo7bo(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                            }
                        }
                        HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                        HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                        HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.textSubstitution;
                        if (textSubstitutionValue3 == null) {
                            z2 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.onShowTranslation;
                            if (function1 != null) {
                                function1.invoke(textSubstitutionValue3);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.textSubstitution;
                            if (textSubstitutionValue4 != null) {
                                textSubstitutionValue4.isShowingSubstitution = booleanValue;
                            }
                            HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                            HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                            HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        final int i3 = 2;
        semanticsPropertyReceiver.set(SemanticsActions.ShowTextSubstitution, new AccessibilityAction(null, new Function1(this) { // from class: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode$$ExternalSyntheticLambda1
            public final /* synthetic */ TextAnnotatedStringNode f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TextLayoutResult textLayoutResult;
                boolean z2;
                int i22 = i3;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                            textLayoutResult = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m706mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                            list.add(textLayoutResult);
                        } else {
                            textLayoutResult = null;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.textSubstitution;
                        EmptyList emptyList = EmptyList.INSTANCE;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString3);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                            multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                            textSubstitutionValue22.layoutCache = multiParagraphLayoutCache;
                            textAnnotatedStringNode.textSubstitution = textSubstitutionValue22;
                        } else if (!Intrinsics.areEqual(annotatedString3, textSubstitutionValue2.substitution)) {
                            textSubstitutionValue2.substitution = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.layoutCache;
                            if (multiParagraphLayoutCache2 != null) {
                                multiParagraphLayoutCache2.m299updateJ2qo7bo(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList);
                            }
                        }
                        HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                        HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                        HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                        return Boolean.TRUE;
                    default:
                        boolean booleanValue = ((Boolean) obj).booleanValue();
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue3 = textAnnotatedStringNode.textSubstitution;
                        if (textSubstitutionValue3 == null) {
                            z2 = false;
                        } else {
                            Function1 function1 = textAnnotatedStringNode.onShowTranslation;
                            if (function1 != null) {
                                function1.invoke(textSubstitutionValue3);
                            }
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue4 = textAnnotatedStringNode.textSubstitution;
                            if (textSubstitutionValue4 != null) {
                                textSubstitutionValue4.isShowingSubstitution = booleanValue;
                            }
                            HitTestResultKt.invalidateSemantics(textAnnotatedStringNode);
                            HitTestResultKt.invalidateMeasurement(textAnnotatedStringNode);
                            HitTestResultKt.invalidateDraw(textAnnotatedStringNode);
                            z2 = true;
                        }
                        return Boolean.valueOf(z2);
                }
            }
        }));
        semanticsPropertyReceiver.set(SemanticsActions.ClearTextSubstitution, new AccessibilityAction(null, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(27, this)));
        semanticsPropertyReceiver.set(SemanticsActions.GetTextLayoutResult, new AccessibilityAction(null, textAnnotatedStringNode$$ExternalSyntheticLambda12));
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        List list;
        if (!this.isAttached) {
            return;
        }
        Canvas canvas = layoutNodeDrawScope.canvasDrawScope.drawContext.getCanvas();
        MultiParagraphLayoutCache layoutCache = getLayoutCache(layoutNodeDrawScope);
        TextLayoutResult textLayoutResult = layoutCache.layoutCache;
        if (textLayoutResult == null) {
            Regex$$ExternalSyntheticBUOutline0.m$1(layoutCache, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: ");
            return;
        }
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        boolean z = textLayoutResult.getHasVisualOverflow() && this.overflow != 3;
        if (z) {
            long j = textLayoutResult.size;
            Rect m1090Recttz77jQw = Util.m1090Recttz77jQw(0L, (Float.floatToRawIntBits((int) (j >> 32)) << 32) | (4294967295L & Float.floatToRawIntBits((int) (j & 4294967295L))));
            canvas.save();
            canvas.mo455clipRectmtrdDE(m1090Recttz77jQw);
        }
        try {
            SpanStyle spanStyle = this.style.spanStyle;
            TextDecoration textDecoration = spanStyle.textDecoration;
            if (textDecoration == null) {
                textDecoration = TextDecoration.None;
            }
            TextDecoration textDecoration2 = textDecoration;
            Shadow shadow = spanStyle.shadow;
            if (shadow == null) {
                shadow = Shadow.None;
            }
            Shadow shadow2 = shadow;
            DrawStyle drawStyle = spanStyle.drawStyle;
            if (drawStyle == null) {
                drawStyle = Fill.INSTANCE;
            }
            DrawStyle drawStyle2 = drawStyle;
            Brush brush = spanStyle.textForegroundStyle.getBrush();
            if (brush != null) {
                MultiParagraph.m685painthn5TExg$default(multiParagraph, canvas, brush, this.style.spanStyle.textForegroundStyle.getAlpha(), shadow2, textDecoration2, drawStyle2);
            } else {
                long j2 = Color.Unspecified;
                if (j2 == 16) {
                    j2 = this.style.m707getColor0d7_KjU() != 16 ? this.style.m707getColor0d7_KjU() : Color.Black;
                }
                MultiParagraph.m684paintLG529CI$default(multiParagraph, canvas, j2, shadow2, textDecoration2, drawStyle2);
            }
            if (z) {
                canvas.restore();
            }
            TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
            if (((textSubstitutionValue == null || !textSubstitutionValue.isShowingSubstitution) ? SQLite.hasLinks(this.text) : false) || !((list = this.placeholders) == null || list.isEmpty())) {
                layoutNodeDrawScope.drawContent();
            }
        } finally {
        }
    }

    public final MultiParagraphLayoutCache getLayoutCache() {
        if (this._layoutCache == null) {
            this._layoutCache = new MultiParagraphLayoutCache(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders);
        }
        MultiParagraphLayoutCache multiParagraphLayoutCache = this._layoutCache;
        multiParagraphLayoutCache.getClass();
        return multiParagraphLayoutCache;
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
        return getLayoutCache(lookaheadCapablePlaceable).intrinsicHeight(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int maxIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return BasicTextKt.ceilToIntPx(getLayoutCache(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMaxIntrinsicWidth());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo109measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextAnnotatedStringNode:measure");
        try {
            MultiParagraphLayoutCache layoutCache = getLayoutCache(measureScope);
            boolean m297layoutWithConstraintsK40F9xA = layoutCache.m297layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            TextLayoutResult textLayoutResult = layoutCache.layoutCache;
            if (textLayoutResult == null) {
                throw new IllegalStateException("Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: " + layoutCache);
            }
            long j2 = textLayoutResult.size;
            textLayoutResult.multiParagraph.intrinsics.getHasStaleResolvedFonts();
            if (m297layoutWithConstraintsK40F9xA) {
                HitTestResultKt.m604requireCoordinator64DMado(this, 2).invalidateLayer();
                Function1 function1 = this.onTextLayout;
                if (function1 != null) {
                    function1.invoke(textLayoutResult);
                }
                Map map = this.baselineCache;
                if (map == null) {
                    map = new LinkedHashMap(2);
                }
                map.put(AlignmentLineKt.FirstBaseline, Integer.valueOf(Math.round(textLayoutResult.firstBaseline)));
                map.put(AlignmentLineKt.LastBaseline, Integer.valueOf(Math.round(textLayoutResult.lastBaseline)));
                this.baselineCache = map;
            }
            Function1 function12 = this.onPlaceholderLayout;
            if (function12 != null) {
                function12.invoke(textLayoutResult.placeholderRects);
            }
            int i = (int) (j2 >> 32);
            int i2 = (int) (j2 & 4294967295L);
            Placeable mo571measureBRTryo0 = measurable.mo571measureBRTryo0(MathKt.m987fitPrioritizingWidthZbe2FdA(i, i, i2, i2));
            Map map2 = this.baselineCache;
            map2.getClass();
            return measureScope.layout(i, i2, map2, new FillNode$$ExternalSyntheticLambda0(mo571measureBRTryo0, 7));
        } finally {
            Trace.endSection();
        }
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicHeight(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return getLayoutCache(lookaheadCapablePlaceable).intrinsicHeight(i, lookaheadCapablePlaceable.getLayoutDirection());
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final int minIntrinsicWidth(LookaheadCapablePlaceable lookaheadCapablePlaceable, Measurable measurable, int i) {
        return BasicTextKt.ceilToIntPx(getLayoutCache(lookaheadCapablePlaceable).setLayoutDirection(lookaheadCapablePlaceable.getLayoutDirection()).getMinIntrinsicWidth());
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }

    public final MultiParagraphLayoutCache getLayoutCache(Density density) {
        MultiParagraphLayoutCache multiParagraphLayoutCache;
        TextSubstitutionValue textSubstitutionValue = this.textSubstitution;
        if (textSubstitutionValue != null && textSubstitutionValue.isShowingSubstitution && (multiParagraphLayoutCache = textSubstitutionValue.layoutCache) != null) {
            multiParagraphLayoutCache.setDensity$foundation(density);
            return multiParagraphLayoutCache;
        }
        MultiParagraphLayoutCache layoutCache = getLayoutCache();
        layoutCache.setDensity$foundation(density);
        return layoutCache;
    }
}
