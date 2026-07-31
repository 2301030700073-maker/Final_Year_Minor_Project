package androidx.navigation3.scene;

import androidx.navigationevent.NavigationEventInfo;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SceneInfo extends NavigationEventInfo {
    public final Scene scene;

    public SceneInfo(Scene scene) {
        this.scene = scene;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneInfo.class != obj.getClass()) {
            return false;
        }
        return Intrinsics.areEqual(this.scene, ((SceneInfo) obj).scene);
    }

    public final int hashCode() {
        return this.scene.hashCode();
    }

    public final String toString() {
        return "SceneInfo(scene=" + this.scene + ')';
    }
}
