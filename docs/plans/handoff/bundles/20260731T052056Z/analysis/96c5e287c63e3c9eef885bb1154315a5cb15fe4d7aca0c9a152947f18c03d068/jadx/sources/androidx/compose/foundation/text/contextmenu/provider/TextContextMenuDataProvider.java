package androidx.compose.foundation.text.contextmenu.provider;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface TextContextMenuDataProvider {
    Rect contentBounds(LayoutCoordinates layoutCoordinates);

    TextContextMenuData data();

    /* renamed from: position-tuRUvjQ */
    long mo203positiontuRUvjQ(LayoutCoordinates layoutCoordinates);
}
