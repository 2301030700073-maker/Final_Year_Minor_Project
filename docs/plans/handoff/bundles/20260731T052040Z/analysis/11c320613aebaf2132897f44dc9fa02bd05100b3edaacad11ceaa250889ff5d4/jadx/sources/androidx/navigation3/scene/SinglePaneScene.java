package androidx.navigation3.scene;

import androidx.compose.runtime.Updater$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation3.runtime.NavEntry;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SinglePaneScene implements Scene {
    public final ComposableLambdaImpl content = new ComposableLambdaImpl(-322904035, true, new Updater$$ExternalSyntheticLambda0(this, 13));
    public final List entries;
    public final NavEntry entry;
    public final Object key;
    public final List previousEntries;

    public SinglePaneScene(Object obj, NavEntry navEntry, List list) {
        this.key = obj;
        this.entry = navEntry;
        this.previousEntries = list;
        this.entries = Jsoup.listOf(navEntry);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SinglePaneScene.class != obj.getClass()) {
            return false;
        }
        SinglePaneScene singlePaneScene = (SinglePaneScene) obj;
        return Intrinsics.areEqual(this.key, singlePaneScene.key) && Intrinsics.areEqual(this.entry, singlePaneScene.entry) && this.previousEntries.equals(singlePaneScene.previousEntries) && Intrinsics.areEqual(this.entries, singlePaneScene.entries);
    }

    @Override // androidx.navigation3.scene.Scene
    public final ComposableLambdaImpl getContent() {
        return this.content;
    }

    @Override // androidx.navigation3.scene.Scene
    public final List getEntries() {
        return this.entries;
    }

    @Override // androidx.navigation3.scene.Scene
    public final Object getKey() {
        return this.key;
    }

    @Override // androidx.navigation3.scene.Scene
    public final Map getMetadata() {
        Map map;
        NavEntry navEntry = (NavEntry) CollectionsKt.lastOrNull(getEntries());
        return (navEntry == null || (map = navEntry.metadata) == null) ? EmptyMap.INSTANCE : map;
    }

    @Override // androidx.navigation3.scene.Scene
    public final List getPreviousEntries() {
        return this.previousEntries;
    }

    public final int hashCode() {
        return (this.entries.hashCode() * 31) + (this.previousEntries.hashCode() * 31) + (this.entry.hashCode() * 31) + (this.key.hashCode() * 31);
    }

    public final String toString() {
        return "SinglePaneScene(key=" + this.key + ", entry=" + this.entry + ", previousEntries=" + this.previousEntries + ", entries=" + this.entries + ')';
    }
}
