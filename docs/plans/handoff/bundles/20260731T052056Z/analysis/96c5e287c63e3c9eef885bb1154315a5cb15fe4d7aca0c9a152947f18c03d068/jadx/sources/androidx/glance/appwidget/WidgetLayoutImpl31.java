package androidx.glance.appwidget;

import androidx.glance.appwidget.proto.LayoutProto$DimensionType;
import androidx.glance.unit.Dimension;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidgetLayoutImpl31 {
    public static final WidgetLayoutImpl31 INSTANCE = new WidgetLayoutImpl31();

    public final LayoutProto$DimensionType toProto(Dimension dimension) {
        return dimension instanceof Dimension.Expand ? LayoutProto$DimensionType.EXPAND : LayoutProto$DimensionType.WRAP;
    }
}
