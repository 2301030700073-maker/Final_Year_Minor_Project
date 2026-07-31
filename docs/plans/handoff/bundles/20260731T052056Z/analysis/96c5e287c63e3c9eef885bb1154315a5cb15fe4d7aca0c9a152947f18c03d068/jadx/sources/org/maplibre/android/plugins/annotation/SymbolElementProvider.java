package org.maplibre.android.plugins.annotation;

import androidx.compose.animation.core.Animation;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SymbolElementProvider {
    public static final AtomicLong ID_GENERATOR = new AtomicLong(0);
    public final String layerId;
    public final String sourceId;

    public SymbolElementProvider() {
        long incrementAndGet = ID_GENERATOR.incrementAndGet();
        this.layerId = Animation.CC.m("mapbox-android-symbol-layer-", incrementAndGet);
        this.sourceId = Animation.CC.m("mapbox-android-symbol-source-", incrementAndGet);
    }
}
