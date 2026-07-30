package androidx.compose.runtime;

import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: CompositionLocalMap.kt */
/* loaded from: classes.dex */
public interface PersistentCompositionLocalMap extends Map, KMappedMarker, CompositionLocalMap, CompositionLocalAccessorScope {

    /* compiled from: CompositionLocalMap.kt */
    public interface Builder extends Map, KMutableMap {
        PersistentCompositionLocalMap build();
    }

    Builder builder();

    PersistentCompositionLocalMap putValue(CompositionLocal compositionLocal, ValueHolder valueHolder);

    /* compiled from: CompositionLocalMap.kt */
    /* renamed from: androidx.compose.runtime.PersistentCompositionLocalMap$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }
}
