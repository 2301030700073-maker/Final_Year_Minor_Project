package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ContextMenuPopupPositionProvider.android.kt */
/* loaded from: classes.dex */
public final class ContextMenuPopupPositionProvider implements PopupPositionProvider {
    private final long localPosition;

    public /* synthetic */ ContextMenuPopupPositionProvider(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    private ContextMenuPopupPositionProvider(long j) {
        this.localPosition = j;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    /* renamed from: calculatePosition-llwVHH4, reason: not valid java name */
    public long mo154calculatePositionllwVHH4(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        return IntOffsetKt.IntOffset(ContextMenuPopupPositionProvider_androidKt.alignPopupAxis(intRect.getLeft() + IntOffset.m2465getXimpl(this.localPosition), IntSize.m2484getWidthimpl(j2), IntSize.m2484getWidthimpl(j), layoutDirection == LayoutDirection.Ltr), ContextMenuPopupPositionProvider_androidKt.alignPopupAxis$default(intRect.getTop() + IntOffset.m2466getYimpl(this.localPosition), IntSize.m2483getHeightimpl(j2), IntSize.m2483getHeightimpl(j), false, 8, null));
    }
}
