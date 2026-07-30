package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextFieldScroll.kt */
/* loaded from: classes.dex */
public final class TextFieldScrollerPosition {
    public static final Companion Companion = new Companion(null);
    private static final Saver Saver = ListSaverKt.listSaver(new Function2() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List invoke(SaverScope saverScope, TextFieldScrollerPosition textFieldScrollerPosition) {
            return CollectionsKt.listOf(Float.valueOf(textFieldScrollerPosition.getOffset()), Boolean.valueOf(textFieldScrollerPosition.getOrientation() == Orientation.Vertical));
        }
    }, new Function1() { // from class: androidx.compose.foundation.text.TextFieldScrollerPosition$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final TextFieldScrollerPosition invoke(List list) {
            Object obj = list.get(1);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            Orientation orientation = ((Boolean) obj).booleanValue() ? Orientation.Vertical : Orientation.Horizontal;
            Object obj2 = list.get(0);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Float");
            return new TextFieldScrollerPosition(orientation, ((Float) obj2).floatValue());
        }
    });
    private final MutableFloatState maximum$delegate;
    private final MutableFloatState offset$delegate;
    private final MutableState orientation$delegate;
    private Rect previousCursorRect;
    private long previousSelection;

    public TextFieldScrollerPosition(Orientation orientation, float f) {
        this.offset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.maximum$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(0.0f);
        this.previousCursorRect = Rect.Companion.getZero();
        this.previousSelection = TextRange.Companion.m2130getZerod9O1mEE();
        this.orientation$delegate = SnapshotStateKt.mutableStateOf(orientation, SnapshotStateKt.structuralEqualityPolicy());
    }

    public /* synthetic */ TextFieldScrollerPosition(Orientation orientation, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(orientation, (i & 2) != 0 ? 0.0f : f);
    }

    public final float getOffset() {
        return this.offset$delegate.getFloatValue();
    }

    public final void setOffset(float f) {
        this.offset$delegate.setFloatValue(f);
    }

    private final void setMaximum(float f) {
        this.maximum$delegate.setFloatValue(f);
    }

    public final float getMaximum() {
        return this.maximum$delegate.getFloatValue();
    }

    /* renamed from: setPreviousSelection-5zc-tL8, reason: not valid java name */
    public final void m461setPreviousSelection5zctL8(long j) {
        this.previousSelection = j;
    }

    public final Orientation getOrientation() {
        return (Orientation) this.orientation$delegate.getValue();
    }

    public final void update(Orientation orientation, Rect rect, int i, int i2) {
        float f = i2 - i;
        setMaximum(f);
        if (rect.getLeft() != this.previousCursorRect.getLeft() || rect.getTop() != this.previousCursorRect.getTop()) {
            boolean z = orientation == Orientation.Vertical;
            coerceOffset$foundation_release(z ? rect.getTop() : rect.getLeft(), z ? rect.getBottom() : rect.getRight(), i);
            this.previousCursorRect = rect;
        }
        setOffset(RangesKt.coerceIn(getOffset(), 0.0f, f));
    }

    public final void coerceOffset$foundation_release(float f, float f2, int i) {
        float offset = getOffset();
        float f3 = i;
        float f4 = offset + f3;
        setOffset(getOffset() + ((f2 <= f4 && (f >= offset || f2 - f <= f3)) ? (f >= offset || f2 - f > f3) ? 0.0f : f - offset : f2 - f4));
    }

    /* renamed from: getOffsetToFollow-5zc-tL8, reason: not valid java name */
    public final int m460getOffsetToFollow5zctL8(long j) {
        return TextRange.m2125getStartimpl(j) != TextRange.m2125getStartimpl(this.previousSelection) ? TextRange.m2125getStartimpl(j) : TextRange.m2120getEndimpl(j) != TextRange.m2120getEndimpl(this.previousSelection) ? TextRange.m2120getEndimpl(j) : TextRange.m2123getMinimpl(j);
    }

    /* compiled from: TextFieldScroll.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Saver getSaver() {
            return TextFieldScrollerPosition.Saver;
        }
    }
}
