package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import java.util.List;

/* compiled from: LazyListLayoutInfo.kt */
/* loaded from: classes.dex */
public interface LazyListLayoutInfo {
    int getAfterContentPadding();

    int getBeforeContentPadding();

    int getMainAxisItemSpacing();

    Orientation getOrientation();

    int getTotalItemsCount();

    int getViewportEndOffset();

    /* renamed from: getViewportSize-YbymL2g, reason: not valid java name */
    long mo317getViewportSizeYbymL2g();

    int getViewportStartOffset();

    List getVisibleItemsInfo();
}
