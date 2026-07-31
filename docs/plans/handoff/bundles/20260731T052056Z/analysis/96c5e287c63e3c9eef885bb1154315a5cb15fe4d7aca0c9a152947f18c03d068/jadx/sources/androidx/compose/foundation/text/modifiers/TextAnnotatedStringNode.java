package androidx.compose.foundation.text.modifiers;

import android.os.Trace;
import androidx.compose.foundation.text.AutoSizeStepBased;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda12;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
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
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.room.Room;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextAnnotatedStringNode extends Modifier.Node implements LayoutModifierNode, DrawModifierNode, SemanticsModifierNode {
    public MultiParagraphLayoutCache _layoutCache;
    public AutoSizeStepBased autoSize;
    public Map baselineCache;
    public FontFamily.Resolver fontFamilyResolver;
    public int maxLines;
    public int minLines;
    public Function1 onPlaceholderLayout;
    public Function1 onShowTranslation;
    public Function1 onTextLayout;
    public int overflow;
    public List placeholders;
    public SelectionController selectionController;
    public TextAnnotatedStringNode$$ExternalSyntheticLambda1 semanticsTextLayoutResult;
    public boolean softWrap;
    public TextStyle style;
    public AnnotatedString text;
    public TextSubstitutionValue textSubstitution;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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

    public TextAnnotatedStringNode(AnnotatedString annotatedString, TextStyle textStyle, FontFamily.Resolver resolver, Function1 function1, int i, boolean z, int i2, int i3, List list, Function1 function12, SelectionController selectionController, AutoSizeStepBased autoSizeStepBased, Function1 function13) {
        this.text = annotatedString;
        this.style = textStyle;
        this.fontFamilyResolver = resolver;
        this.onTextLayout = function1;
        this.overflow = i;
        this.softWrap = z;
        this.maxLines = i2;
        this.minLines = i3;
        this.placeholders = list;
        this.onPlaceholderLayout = function12;
        this.selectionController = selectionController;
        this.autoSize = autoSizeStepBased;
        this.onShowTranslation = function13;
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
                    boolean z;
                    int i2 = i;
                    TextLayoutResult textLayoutResult = null;
                    TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                    switch (i2) {
                        case 0:
                            List list = (List) obj;
                            TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                            if (textLayoutResult2 != null) {
                                TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                                TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m648mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, null, null, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                                list.add(textLayoutResult3);
                                textLayoutResult = textLayoutResult3;
                            }
                            return Boolean.valueOf(textLayoutResult != null);
                        case 1:
                            AnnotatedString annotatedString = (AnnotatedString) obj;
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = textAnnotatedStringNode.textSubstitution;
                            EmptyList emptyList = EmptyList.INSTANCE;
                            if (textSubstitutionValue == null) {
                                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString);
                                MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList, textAnnotatedStringNode.autoSize);
                                multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                                textSubstitutionValue2.layoutCache = multiParagraphLayoutCache;
                                textAnnotatedStringNode.textSubstitution = textSubstitutionValue2;
                            } else if (!Intrinsics.areEqual(annotatedString, textSubstitutionValue.substitution)) {
                                textSubstitutionValue.substitution = annotatedString;
                                MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue.layoutCache;
                                if (multiParagraphLayoutCache2 != null) {
                                    TextStyle textStyle = textAnnotatedStringNode.style;
                                    FontFamily.Resolver resolver = textAnnotatedStringNode.fontFamilyResolver;
                                    int i3 = textAnnotatedStringNode.overflow;
                                    boolean z2 = textAnnotatedStringNode.softWrap;
                                    int i4 = textAnnotatedStringNode.maxLines;
                                    int i5 = textAnnotatedStringNode.minLines;
                                    AutoSizeStepBased autoSizeStepBased = textAnnotatedStringNode.autoSize;
                                    multiParagraphLayoutCache2.text = annotatedString;
                                    multiParagraphLayoutCache2.setStyle(textStyle);
                                    multiParagraphLayoutCache2.fontFamilyResolver = resolver;
                                    multiParagraphLayoutCache2.overflow = i3;
                                    multiParagraphLayoutCache2.softWrap = z2;
                                    multiParagraphLayoutCache2.maxLines = i4;
                                    multiParagraphLayoutCache2.minLines = i5;
                                    multiParagraphLayoutCache2.placeholders = emptyList;
                                    multiParagraphLayoutCache2.autoSize = autoSizeStepBased;
                                    multiParagraphLayoutCache2.historyFlag = (multiParagraphLayoutCache2.historyFlag << 2) | 2;
                                    multiParagraphLayoutCache2.paragraphIntrinsics = null;
                                    multiParagraphLayoutCache2.layoutCache = null;
                                    multiParagraphLayoutCache2.cachedIntrinsicHeight = -1;
                                    multiParagraphLayoutCache2.cachedIntrinsicHeightInputWidth = -1;
                                    multiParagraphLayoutCache2._textAutoSizeLayoutScope = null;
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
        semanticsPropertyReceiver.set(SemanticsProperties.Text, Room.listOf(annotatedString));
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
                boolean z2;
                int i22 = i2;
                TextLayoutResult textLayoutResult = null;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                            TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m648mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, null, null, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                            list.add(textLayoutResult3);
                            textLayoutResult = textLayoutResult3;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.textSubstitution;
                        EmptyList emptyList = EmptyList.INSTANCE;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString3);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList, textAnnotatedStringNode.autoSize);
                            multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                            textSubstitutionValue22.layoutCache = multiParagraphLayoutCache;
                            textAnnotatedStringNode.textSubstitution = textSubstitutionValue22;
                        } else if (!Intrinsics.areEqual(annotatedString3, textSubstitutionValue2.substitution)) {
                            textSubstitutionValue2.substitution = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.layoutCache;
                            if (multiParagraphLayoutCache2 != null) {
                                TextStyle textStyle = textAnnotatedStringNode.style;
                                FontFamily.Resolver resolver = textAnnotatedStringNode.fontFamilyResolver;
                                int i3 = textAnnotatedStringNode.overflow;
                                boolean z22 = textAnnotatedStringNode.softWrap;
                                int i4 = textAnnotatedStringNode.maxLines;
                                int i5 = textAnnotatedStringNode.minLines;
                                AutoSizeStepBased autoSizeStepBased = textAnnotatedStringNode.autoSize;
                                multiParagraphLayoutCache2.text = annotatedString3;
                                multiParagraphLayoutCache2.setStyle(textStyle);
                                multiParagraphLayoutCache2.fontFamilyResolver = resolver;
                                multiParagraphLayoutCache2.overflow = i3;
                                multiParagraphLayoutCache2.softWrap = z22;
                                multiParagraphLayoutCache2.maxLines = i4;
                                multiParagraphLayoutCache2.minLines = i5;
                                multiParagraphLayoutCache2.placeholders = emptyList;
                                multiParagraphLayoutCache2.autoSize = autoSizeStepBased;
                                multiParagraphLayoutCache2.historyFlag = (multiParagraphLayoutCache2.historyFlag << 2) | 2;
                                multiParagraphLayoutCache2.paragraphIntrinsics = null;
                                multiParagraphLayoutCache2.layoutCache = null;
                                multiParagraphLayoutCache2.cachedIntrinsicHeight = -1;
                                multiParagraphLayoutCache2.cachedIntrinsicHeightInputWidth = -1;
                                multiParagraphLayoutCache2._textAutoSizeLayoutScope = null;
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
                boolean z2;
                int i22 = i3;
                TextLayoutResult textLayoutResult = null;
                TextAnnotatedStringNode textAnnotatedStringNode = this.f$0;
                switch (i22) {
                    case 0:
                        List list = (List) obj;
                        TextLayoutResult textLayoutResult2 = textAnnotatedStringNode.getLayoutCache().layoutCache;
                        if (textLayoutResult2 != null) {
                            TextLayoutInput textLayoutInput = textLayoutResult2.layoutInput;
                            TextLayoutResult textLayoutResult3 = new TextLayoutResult(new TextLayoutInput(textLayoutInput.text, TextStyle.m648mergedA7vx0o$default(textAnnotatedStringNode.style, Color.Unspecified, 0L, null, null, 0L, 0, 0L, 16777214), textLayoutInput.placeholders, textLayoutInput.maxLines, textLayoutInput.softWrap, textLayoutInput.overflow, textLayoutInput.density, textLayoutInput.layoutDirection, textLayoutInput.fontFamilyResolver, textLayoutInput.constraints), textLayoutResult2.multiParagraph, textLayoutResult2.size);
                            list.add(textLayoutResult3);
                            textLayoutResult = textLayoutResult3;
                        }
                        return Boolean.valueOf(textLayoutResult != null);
                    case 1:
                        AnnotatedString annotatedString3 = (AnnotatedString) obj;
                        TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue2 = textAnnotatedStringNode.textSubstitution;
                        EmptyList emptyList = EmptyList.INSTANCE;
                        if (textSubstitutionValue2 == null) {
                            TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue22 = new TextAnnotatedStringNode.TextSubstitutionValue(textAnnotatedStringNode.text, annotatedString3);
                            MultiParagraphLayoutCache multiParagraphLayoutCache = new MultiParagraphLayoutCache(annotatedString3, textAnnotatedStringNode.style, textAnnotatedStringNode.fontFamilyResolver, textAnnotatedStringNode.overflow, textAnnotatedStringNode.softWrap, textAnnotatedStringNode.maxLines, textAnnotatedStringNode.minLines, emptyList, textAnnotatedStringNode.autoSize);
                            multiParagraphLayoutCache.setDensity$foundation(textAnnotatedStringNode.getLayoutCache().density);
                            textSubstitutionValue22.layoutCache = multiParagraphLayoutCache;
                            textAnnotatedStringNode.textSubstitution = textSubstitutionValue22;
                        } else if (!Intrinsics.areEqual(annotatedString3, textSubstitutionValue2.substitution)) {
                            textSubstitutionValue2.substitution = annotatedString3;
                            MultiParagraphLayoutCache multiParagraphLayoutCache2 = textSubstitutionValue2.layoutCache;
                            if (multiParagraphLayoutCache2 != null) {
                                TextStyle textStyle = textAnnotatedStringNode.style;
                                FontFamily.Resolver resolver = textAnnotatedStringNode.fontFamilyResolver;
                                int i32 = textAnnotatedStringNode.overflow;
                                boolean z22 = textAnnotatedStringNode.softWrap;
                                int i4 = textAnnotatedStringNode.maxLines;
                                int i5 = textAnnotatedStringNode.minLines;
                                AutoSizeStepBased autoSizeStepBased = textAnnotatedStringNode.autoSize;
                                multiParagraphLayoutCache2.text = annotatedString3;
                                multiParagraphLayoutCache2.setStyle(textStyle);
                                multiParagraphLayoutCache2.fontFamilyResolver = resolver;
                                multiParagraphLayoutCache2.overflow = i32;
                                multiParagraphLayoutCache2.softWrap = z22;
                                multiParagraphLayoutCache2.maxLines = i4;
                                multiParagraphLayoutCache2.minLines = i5;
                                multiParagraphLayoutCache2.placeholders = emptyList;
                                multiParagraphLayoutCache2.autoSize = autoSizeStepBased;
                                multiParagraphLayoutCache2.historyFlag = (multiParagraphLayoutCache2.historyFlag << 2) | 2;
                                multiParagraphLayoutCache2.paragraphIntrinsics = null;
                                multiParagraphLayoutCache2.layoutCache = null;
                                multiParagraphLayoutCache2.cachedIntrinsicHeight = -1;
                                multiParagraphLayoutCache2.cachedIntrinsicHeightInputWidth = -1;
                                multiParagraphLayoutCache2._textAutoSizeLayoutScope = null;
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
        semanticsPropertyReceiver.set(SemanticsActions.ClearTextSubstitution, new AccessibilityAction(null, new NavBackStackEntry$$ExternalSyntheticLambda0(19, this)));
        semanticsPropertyReceiver.set(SemanticsActions.GetTextLayoutResult, new AccessibilityAction(null, textAnnotatedStringNode$$ExternalSyntheticLambda12));
    }

    public final void doInvalidations(boolean z, boolean z2, boolean z3, boolean z4) {
        if (z2 || z3 || z4) {
            MultiParagraphLayoutCache layoutCache = getLayoutCache();
            AnnotatedString annotatedString = this.text;
            TextStyle textStyle = this.style;
            FontFamily.Resolver resolver = this.fontFamilyResolver;
            int i = this.overflow;
            boolean z5 = this.softWrap;
            int i2 = this.maxLines;
            int i3 = this.minLines;
            List list = this.placeholders;
            AutoSizeStepBased autoSizeStepBased = this.autoSize;
            layoutCache.text = annotatedString;
            layoutCache.setStyle(textStyle);
            layoutCache.fontFamilyResolver = resolver;
            layoutCache.overflow = i;
            layoutCache.softWrap = z5;
            layoutCache.maxLines = i2;
            layoutCache.minLines = i3;
            layoutCache.placeholders = list;
            layoutCache.autoSize = autoSizeStepBased;
            layoutCache.historyFlag = (layoutCache.historyFlag << 2) | 2;
            layoutCache.paragraphIntrinsics = null;
            layoutCache.layoutCache = null;
            layoutCache.cachedIntrinsicHeight = -1;
            layoutCache.cachedIntrinsicHeightInputWidth = -1;
            layoutCache._textAutoSizeLayoutScope = null;
        }
        if (this.isAttached) {
            if (z2 || (z && this.semanticsTextLayoutResult != null)) {
                HitTestResultKt.invalidateSemantics(this);
            }
            if (z2 || z3 || z4) {
                HitTestResultKt.invalidateMeasurement(this);
                HitTestResultKt.invalidateDraw(this);
            }
            if (z) {
                HitTestResultKt.invalidateDraw(this);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fc  */
    @Override // androidx.compose.ui.node.DrawModifierNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(androidx.compose.ui.node.LayoutNodeDrawScope r23) {
        /*
            Method dump skipped, instructions count: 449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode.draw(androidx.compose.ui.node.LayoutNodeDrawScope):void");
    }

    public final MultiParagraphLayoutCache getLayoutCache() {
        MultiParagraphLayoutCache multiParagraphLayoutCache = this._layoutCache;
        if (multiParagraphLayoutCache == null) {
            MultiParagraphLayoutCache multiParagraphLayoutCache2 = new MultiParagraphLayoutCache(this.text, this.style, this.fontFamilyResolver, this.overflow, this.softWrap, this.maxLines, this.minLines, this.placeholders, this.autoSize);
            this._layoutCache = multiParagraphLayoutCache2;
            multiParagraphLayoutCache = multiParagraphLayoutCache2;
        }
        multiParagraphLayoutCache.getClass();
        return multiParagraphLayoutCache;
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
    public final MeasureResult mo16measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Trace.beginSection("TextAnnotatedStringNode:measure");
        try {
            MultiParagraphLayoutCache layoutCache = getLayoutCache(measureScope);
            boolean m213layoutWithConstraintsK40F9xA = layoutCache.m213layoutWithConstraintsK40F9xA(j, measureScope.getLayoutDirection());
            TextLayoutResult textLayoutResult = layoutCache.layoutCache;
            if (textLayoutResult == null) {
                throw new IllegalStateException("Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: " + layoutCache);
            }
            long j2 = textLayoutResult.size;
            textLayoutResult.multiParagraph.intrinsics.getHasStaleResolvedFonts();
            if (m213layoutWithConstraintsK40F9xA) {
                HitTestResultKt.m547requireCoordinator64DMado(this, 2).invalidateLayer();
                Function1 function1 = this.onTextLayout;
                if (function1 != null) {
                    function1.invoke(textLayoutResult);
                }
                SelectionController selectionController = this.selectionController;
                if (selectionController != null) {
                    selectionController.updateTextLayout(textLayoutResult);
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
            Placeable mo512measureBRTryo0 = measurable.mo512measureBRTryo0(UStringsKt.m843fitPrioritizingWidthZbe2FdA(i, i, i2, i2));
            Map map2 = this.baselineCache;
            map2.getClass();
            return measureScope.layout(i, i2, map2, new AppBarKt$$ExternalSyntheticLambda12(mo512measureBRTryo0, 10));
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

    public final boolean updateCallbacks(Function1 function1, Function1 function12, SelectionController selectionController, Function1 function13) {
        boolean z;
        if (this.onTextLayout != function1) {
            this.onTextLayout = function1;
            z = true;
        } else {
            z = false;
        }
        if (this.onPlaceholderLayout != function12) {
            this.onPlaceholderLayout = function12;
            z = true;
        }
        if (!Intrinsics.areEqual(this.selectionController, selectionController)) {
            this.selectionController = selectionController;
            z = true;
        }
        if (this.onShowTranslation == function13) {
            return z;
        }
        this.onShowTranslation = function13;
        return true;
    }

    /* renamed from: updateLayoutRelatedArgs-y0k-MQk, reason: not valid java name */
    public final boolean m220updateLayoutRelatedArgsy0kMQk(TextStyle textStyle, List list, int i, int i2, boolean z, FontFamily.Resolver resolver, int i3, AutoSizeStepBased autoSizeStepBased) {
        boolean z2 = !this.style.hasSameLayoutAffectingAttributes(textStyle);
        this.style = textStyle;
        if (!Intrinsics.areEqual(this.placeholders, list)) {
            this.placeholders = list;
            z2 = true;
        }
        if (this.minLines != i) {
            this.minLines = i;
            z2 = true;
        }
        if (this.maxLines != i2) {
            this.maxLines = i2;
            z2 = true;
        }
        if (this.softWrap != z) {
            this.softWrap = z;
            z2 = true;
        }
        if (!Intrinsics.areEqual(this.fontFamilyResolver, resolver)) {
            this.fontFamilyResolver = resolver;
            z2 = true;
        }
        if (this.overflow != i3) {
            this.overflow = i3;
            z2 = true;
        }
        if (Intrinsics.areEqual(this.autoSize, autoSizeStepBased)) {
            return z2;
        }
        this.autoSize = autoSizeStepBased;
        return true;
    }

    public final boolean updateText$foundation(AnnotatedString annotatedString) {
        boolean areEqual = Intrinsics.areEqual(this.text.text, annotatedString.text);
        boolean z = (areEqual && Intrinsics.areEqual(this.text.annotations, annotatedString.annotations)) ? false : true;
        if (z) {
            this.text = annotatedString;
        }
        if (!areEqual) {
            this.textSubstitution = null;
        }
        return z;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
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
