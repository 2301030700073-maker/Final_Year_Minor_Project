package org.jetbrains.compose.resources;

import java.util.LinkedHashMap;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AsyncCache {
    public final MutexImpl mutex = new MutexImpl();
    public final LinkedHashMap cache = new LinkedHashMap();

    public AsyncCache() {
        ResourceCaches.caches.add(this);
    }
}
