package androidx.navigation3.runtime;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NavEntry {
    public final ComposableLambdaImpl content;
    public final Object contentKey;
    public final Object key;
    public final Map metadata;

    public NavEntry(Object obj, Object obj2, Map map, ComposableLambdaImpl composableLambdaImpl) {
        this.key = obj;
        this.contentKey = obj2;
        this.metadata = map;
        this.content = composableLambdaImpl;
    }

    public final void Content(Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(295512821);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(this) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            this.content.invoke(this.key, (Object) gapComposer, (Object) 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavEntry$$ExternalSyntheticLambda0(this, i, i3);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavEntry.class != obj.getClass()) {
            return false;
        }
        NavEntry navEntry = (NavEntry) obj;
        return Intrinsics.areEqual(this.key, navEntry.key) && Intrinsics.areEqual(this.contentKey, navEntry.contentKey) && Intrinsics.areEqual(this.metadata, navEntry.metadata) && this.content == navEntry.content;
    }

    public final int hashCode() {
        return (this.content.hashCode() * 31) + (this.metadata.hashCode() * 31) + (this.contentKey.hashCode() * 31) + (this.key.hashCode() * 31);
    }

    public final String toString() {
        return "NavEntry(key=" + this.key + ", contentKey=" + this.contentKey + ", metadata=" + this.metadata + ", content=" + this.content + ')';
    }

    public NavEntry(NavEntry navEntry, ComposableLambdaImpl composableLambdaImpl) {
        this(navEntry.key, navEntry.contentKey, navEntry.metadata, composableLambdaImpl);
    }
}
