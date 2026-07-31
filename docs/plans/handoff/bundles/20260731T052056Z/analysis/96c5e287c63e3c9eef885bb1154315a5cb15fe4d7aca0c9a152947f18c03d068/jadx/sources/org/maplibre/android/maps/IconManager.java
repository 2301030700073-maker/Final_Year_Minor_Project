package org.maplibre.android.maps;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IconManager {
    public final Object iconMap;

    public IconManager() {
        this.iconMap = new ArrayList();
    }

    public IconManager(NativeMap nativeMap) {
        this.iconMap = new HashMap();
    }
}
