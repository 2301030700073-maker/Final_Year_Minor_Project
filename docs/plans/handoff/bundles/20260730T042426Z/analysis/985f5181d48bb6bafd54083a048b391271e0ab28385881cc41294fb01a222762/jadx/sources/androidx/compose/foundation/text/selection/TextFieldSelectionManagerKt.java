package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: TextFieldSelectionManager.kt */
/* loaded from: classes.dex */
public abstract class TextFieldSelectionManagerKt {

    /* compiled from: TextFieldSelectionManager.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Handle.values().length];
            try {
                iArr[Handle.Cursor.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Handle.SelectionStart.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Handle.SelectionEnd.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void TextFieldSelectionHandle(final boolean z, final ResolvedTextDirection resolvedTextDirection, final TextFieldSelectionManager textFieldSelectionManager, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1344558920);
        if ((i & 6) == 0) {
            i2 = (startRestartGroup.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= startRestartGroup.changed(resolvedTextDirection) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= startRestartGroup.changedInstance(textFieldSelectionManager) ? 256 : 128;
        }
        if ((i2 & 147) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1344558920, i2, -1, "androidx.compose.foundation.text.selection.TextFieldSelectionHandle (TextFieldSelectionManager.kt:1000)");
            }
            int i3 = i2 & 14;
            boolean changed = (i3 == 4) | startRestartGroup.changed(textFieldSelectionManager);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = textFieldSelectionManager.handleDragObserver$foundation_release(z);
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
            boolean changedInstance = startRestartGroup.changedInstance(textFieldSelectionManager) | (i3 == 4);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changedInstance || rememberedValue2 == Composer.Companion.getEmpty()) {
                rememberedValue2 = new OffsetProvider() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$1$1
                    @Override // androidx.compose.foundation.text.selection.OffsetProvider
                    /* renamed from: provide-F1C5BW0 */
                    public final long mo388provideF1C5BW0() {
                        return TextFieldSelectionManager.this.m566getHandlePositiontuRUvjQ$foundation_release(z);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            OffsetProvider offsetProvider = (OffsetProvider) rememberedValue2;
            boolean m2124getReversedimpl = TextRange.m2124getReversedimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE());
            Modifier.Companion companion = Modifier.Companion;
            boolean changedInstance2 = startRestartGroup.changedInstance(textDragObserver);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changedInstance2 || rememberedValue3 == Composer.Companion.getEmpty()) {
                rememberedValue3 = new TextFieldSelectionManagerKt$TextFieldSelectionHandle$2$1(textDragObserver, null);
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            AndroidSelectionHandles_androidKt.m540SelectionHandlepzduO1o(offsetProvider, z, resolvedTextDirection, m2124getReversedimpl, 0L, SuspendingPointerInputFilterKt.pointerInput(companion, textDragObserver, (Function2) rememberedValue3), startRestartGroup, (i2 << 3) & 1008, 16);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt$TextFieldSelectionHandle$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    TextFieldSelectionManagerKt.TextFieldSelectionHandle(z, resolvedTextDirection, textFieldSelectionManager, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
                }
            });
        }
    }

    public static final boolean isSelectionHandleInVisibleBound(TextFieldSelectionManager textFieldSelectionManager, boolean z) {
        LayoutCoordinates layoutCoordinates;
        Rect visibleBounds;
        LegacyTextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
        if (state$foundation_release == null || (layoutCoordinates = state$foundation_release.getLayoutCoordinates()) == null || (visibleBounds = SelectionManagerKt.visibleBounds(layoutCoordinates)) == null) {
            return false;
        }
        return SelectionManagerKt.m555containsInclusiveUv8p0NA(visibleBounds, textFieldSelectionManager.m566getHandlePositiontuRUvjQ$foundation_release(z));
    }

    /* renamed from: calculateSelectionMagnifierCenterAndroid-O0kMr_c, reason: not valid java name */
    public static final long m573calculateSelectionMagnifierCenterAndroidO0kMr_c(TextFieldSelectionManager textFieldSelectionManager, long j) {
        int m2125getStartimpl;
        TextLayoutResultProxy layoutResult;
        TextDelegate textDelegate;
        AnnotatedString text;
        Offset m564getCurrentDragPosition_m7T9E = textFieldSelectionManager.m564getCurrentDragPosition_m7T9E();
        if (m564getCurrentDragPosition_m7T9E == null) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        long m1176unboximpl = m564getCurrentDragPosition_m7T9E.m1176unboximpl();
        AnnotatedString transformedText$foundation_release = textFieldSelectionManager.getTransformedText$foundation_release();
        if (transformedText$foundation_release == null || transformedText$foundation_release.length() == 0) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        Handle draggingHandle = textFieldSelectionManager.getDraggingHandle();
        int i = draggingHandle == null ? -1 : WhenMappings.$EnumSwitchMapping$0[draggingHandle.ordinal()];
        if (i == -1) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        if (i == 1 || i == 2) {
            m2125getStartimpl = TextRange.m2125getStartimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE());
        } else {
            if (i != 3) {
                throw new NoWhenBranchMatchedException();
            }
            m2125getStartimpl = TextRange.m2120getEndimpl(textFieldSelectionManager.getValue$foundation_release().m2247getSelectiond9O1mEE());
        }
        LegacyTextFieldState state$foundation_release = textFieldSelectionManager.getState$foundation_release();
        if (state$foundation_release == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        LegacyTextFieldState state$foundation_release2 = textFieldSelectionManager.getState$foundation_release();
        if (state$foundation_release2 == null || (textDelegate = state$foundation_release2.getTextDelegate()) == null || (text = textDelegate.getText()) == null) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        int coerceIn = RangesKt.coerceIn(textFieldSelectionManager.getOffsetMapping$foundation_release().originalToTransformed(m2125getStartimpl), 0, text.length());
        float m1167getXimpl = Offset.m1167getXimpl(layoutResult.m470translateDecorationToInnerCoordinatesMKHz9U$foundation_release(m1176unboximpl));
        TextLayoutResult value = layoutResult.getValue();
        int lineForOffset = value.getLineForOffset(coerceIn);
        float lineLeft = value.getLineLeft(lineForOffset);
        float lineRight = value.getLineRight(lineForOffset);
        float coerceIn2 = RangesKt.coerceIn(m1167getXimpl, Math.min(lineLeft, lineRight), Math.max(lineLeft, lineRight));
        if (!IntSize.m2482equalsimpl0(j, IntSize.Companion.m2488getZeroYbymL2g()) && Math.abs(m1167getXimpl - coerceIn2) > IntSize.m2484getWidthimpl(j) / 2) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        float lineTop = value.getLineTop(lineForOffset);
        return OffsetKt.Offset(coerceIn2, ((value.getLineBottom(lineForOffset) - lineTop) / 2) + lineTop);
    }
}
