package kotlin.collections;

import java.util.Collection;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractMutableCollection extends java.util.AbstractCollection implements Collection, KMappedMarker {
    public abstract int getSize();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }
}
