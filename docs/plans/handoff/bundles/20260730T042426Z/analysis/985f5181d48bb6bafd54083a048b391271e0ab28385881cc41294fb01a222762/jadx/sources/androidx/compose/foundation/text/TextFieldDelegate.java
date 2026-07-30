package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionManagerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextPainter;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: TextFieldDelegate.kt */
/* loaded from: classes.dex */
public abstract class TextFieldDelegate {
    public static final Companion Companion = new Companion(null);

    /* compiled from: TextFieldDelegate.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: layout-_EkL_-Y$foundation_release, reason: not valid java name */
        public final Triple m447layout_EkL_Y$foundation_release(TextDelegate textDelegate, long j, LayoutDirection layoutDirection, TextLayoutResult textLayoutResult) {
            TextLayoutResult m438layoutNN6EwU = textDelegate.m438layoutNN6EwU(j, layoutDirection, textLayoutResult);
            return new Triple(Integer.valueOf(IntSize.m2484getWidthimpl(m438layoutNN6EwU.m2111getSizeYbymL2g())), Integer.valueOf(IntSize.m2483getHeightimpl(m438layoutNN6EwU.m2111getSizeYbymL2g())), m438layoutNN6EwU);
        }

        /* renamed from: draw-Q1vqE60$foundation_release, reason: not valid java name */
        public final void m446drawQ1vqE60$foundation_release(Canvas canvas, TextFieldValue textFieldValue, long j, long j2, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Paint paint, long j3) {
            if (!TextRange.m2119getCollapsedimpl(j)) {
                paint.mo1236setColor8_81llA(j3);
                m444drawHighlightLepunE(canvas, j, offsetMapping, textLayoutResult, paint);
            } else if (!TextRange.m2119getCollapsedimpl(j2)) {
                Color m1298boximpl = Color.m1298boximpl(textLayoutResult.getLayoutInput().getStyle().m2138getColor0d7_KjU());
                if (m1298boximpl.m1312unboximpl() == 16) {
                    m1298boximpl = null;
                }
                long m1312unboximpl = m1298boximpl != null ? m1298boximpl.m1312unboximpl() : Color.Companion.m1313getBlack0d7_KjU();
                paint.mo1236setColor8_81llA(Color.m1302copywmQWz5c$default(m1312unboximpl, Color.m1305getAlphaimpl(m1312unboximpl) * 0.2f, 0.0f, 0.0f, 0.0f, 14, null));
                m444drawHighlightLepunE(canvas, j2, offsetMapping, textLayoutResult, paint);
            } else if (!TextRange.m2119getCollapsedimpl(textFieldValue.m2247getSelectiond9O1mEE())) {
                paint.mo1236setColor8_81llA(j3);
                m444drawHighlightLepunE(canvas, textFieldValue.m2247getSelectiond9O1mEE(), offsetMapping, textLayoutResult, paint);
            }
            TextPainter.INSTANCE.paint(canvas, textLayoutResult);
        }

        /* renamed from: drawHighlight-Le-punE, reason: not valid java name */
        private final void m444drawHighlightLepunE(Canvas canvas, long j, OffsetMapping offsetMapping, TextLayoutResult textLayoutResult, Paint paint) {
            int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m2123getMinimpl(j));
            int originalToTransformed2 = offsetMapping.originalToTransformed(TextRange.m2122getMaximpl(j));
            if (originalToTransformed != originalToTransformed2) {
                canvas.drawPath(textLayoutResult.getPathForRange(originalToTransformed, originalToTransformed2), paint);
            }
        }

        public final void notifyFocusedRect$foundation_release(TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, LayoutCoordinates layoutCoordinates, TextInputSession textInputSession, boolean z, OffsetMapping offsetMapping) {
            Rect rect;
            if (z) {
                int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m2122getMaximpl(textFieldValue.m2247getSelectiond9O1mEE()));
                if (originalToTransformed < textLayoutResult.getLayoutInput().getText().length()) {
                    rect = textLayoutResult.getBoundingBox(originalToTransformed);
                } else if (originalToTransformed != 0) {
                    rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
                } else {
                    rect = new Rect(0.0f, 0.0f, 1.0f, IntSize.m2483getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null)));
                }
                long mo1756localToRootMKHz9U = layoutCoordinates.mo1756localToRootMKHz9U(OffsetKt.Offset(rect.getLeft(), rect.getTop()));
                textInputSession.notifyFocusedRect(RectKt.m1191Recttz77jQw(OffsetKt.Offset(Offset.m1167getXimpl(mo1756localToRootMKHz9U), Offset.m1168getYimpl(mo1756localToRootMKHz9U)), SizeKt.Size(rect.getWidth(), rect.getHeight())));
            }
        }

        public final void updateTextLayoutResult$foundation_release(TextInputSession textInputSession, TextFieldValue textFieldValue, OffsetMapping offsetMapping, TextLayoutResultProxy textLayoutResultProxy) {
            LayoutCoordinates decorationBoxCoordinates;
            final LayoutCoordinates innerTextFieldCoordinates = textLayoutResultProxy.getInnerTextFieldCoordinates();
            if (innerTextFieldCoordinates == null || !innerTextFieldCoordinates.isAttached() || (decorationBoxCoordinates = textLayoutResultProxy.getDecorationBoxCoordinates()) == null) {
                return;
            }
            textInputSession.updateTextLayoutResult(textFieldValue, offsetMapping, textLayoutResultProxy.getValue(), new Function1() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$updateTextLayoutResult$1$1$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    m449invoke58bKbWc(((Matrix) obj).m1379unboximpl());
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke-58bKbWc, reason: not valid java name */
                public final void m449invoke58bKbWc(float[] fArr) {
                    if (LayoutCoordinates.this.isAttached()) {
                        LayoutCoordinatesKt.findRootCoordinates(LayoutCoordinates.this).mo1759transformFromEL8BTi8(LayoutCoordinates.this, fArr);
                    }
                }
            }, SelectionManagerKt.visibleBounds(innerTextFieldCoordinates), innerTextFieldCoordinates.localBoundingBoxOf(decorationBoxCoordinates, false));
        }

        public final void onEditCommand$foundation_release(List list, EditProcessor editProcessor, Function1 function1, TextInputSession textInputSession) {
            TextFieldValue apply = editProcessor.apply(list);
            if (textInputSession != null) {
                textInputSession.updateState(null, apply);
            }
            function1.invoke(apply);
        }

        /* renamed from: setCursorOffset-ULxng0E$foundation_release, reason: not valid java name */
        public final void m448setCursorOffsetULxng0E$foundation_release(long j, TextLayoutResultProxy textLayoutResultProxy, EditProcessor editProcessor, OffsetMapping offsetMapping, Function1 function1) {
            function1.invoke(TextFieldValue.m2244copy3r_uNRQ$default(editProcessor.toTextFieldValue(), null, TextRangeKt.TextRange(offsetMapping.transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(textLayoutResultProxy, j, false, 2, null))), null, 5, null));
        }

        public final TextInputSession restartInput$foundation_release(TextInputService textInputService, TextFieldValue textFieldValue, final EditProcessor editProcessor, ImeOptions imeOptions, final Function1 function1, Function1 function12) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            TextInputSession startInput = textInputService.startInput(textFieldValue, imeOptions, new Function1() { // from class: androidx.compose.foundation.text.TextFieldDelegate$Companion$restartInput$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((List) obj);
                    return Unit.INSTANCE;
                }

                public final void invoke(List list) {
                    TextFieldDelegate.Companion.onEditCommand$foundation_release(list, EditProcessor.this, function1, (TextInputSession) ref$ObjectRef.element);
                }
            }, function12);
            ref$ObjectRef.element = startInput;
            return startInput;
        }

        public final TextInputSession onFocus$foundation_release(TextInputService textInputService, TextFieldValue textFieldValue, EditProcessor editProcessor, ImeOptions imeOptions, Function1 function1, Function1 function12) {
            return restartInput$foundation_release(textInputService, textFieldValue, editProcessor, imeOptions, function1, function12);
        }

        public final void onBlur$foundation_release(TextInputSession textInputSession, EditProcessor editProcessor, Function1 function1) {
            function1.invoke(TextFieldValue.m2244copy3r_uNRQ$default(editProcessor.toTextFieldValue(), null, 0L, null, 3, null));
            textInputSession.dispose();
        }

        /* renamed from: applyCompositionDecoration-72CqOWE, reason: not valid java name */
        public final TransformedText m445applyCompositionDecoration72CqOWE(long j, TransformedText transformedText) {
            int originalToTransformed = transformedText.getOffsetMapping().originalToTransformed(TextRange.m2125getStartimpl(j));
            int originalToTransformed2 = transformedText.getOffsetMapping().originalToTransformed(TextRange.m2120getEndimpl(j));
            int min = Math.min(originalToTransformed, originalToTransformed2);
            int max = Math.max(originalToTransformed, originalToTransformed2);
            AnnotatedString.Builder builder = new AnnotatedString.Builder(transformedText.getText());
            builder.addStyle(new SpanStyle(0L, 0L, null, null, null, null, null, 0L, null, null, null, 0L, TextDecoration.Companion.getUnderline(), null, null, null, 61439, null), min, max);
            return new TransformedText(builder.toAnnotatedString(), transformedText.getOffsetMapping());
        }
    }
}
