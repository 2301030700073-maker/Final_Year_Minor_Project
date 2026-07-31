package androidx.navigation3.scene;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SceneState {
    public final Scene currentScene;
    public final ArrayList entries;
    public final ArrayList overlayScenes;
    public final ArrayList previousScenes;

    public SceneState(ArrayList arrayList, ArrayList arrayList2, Scene scene, ArrayList arrayList3) {
        this.entries = arrayList;
        this.overlayScenes = arrayList2;
        this.currentScene = scene;
        this.previousScenes = arrayList3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SceneState.class != obj.getClass()) {
            return false;
        }
        SceneState sceneState = (SceneState) obj;
        return this.entries.equals(sceneState.entries) && this.overlayScenes.equals(sceneState.overlayScenes) && Intrinsics.areEqual(this.currentScene, sceneState.currentScene) && this.previousScenes.equals(sceneState.previousScenes);
    }

    public final int hashCode() {
        return (this.previousScenes.hashCode() * 31) + (this.currentScene.hashCode() * 31) + (this.overlayScenes.hashCode() * 31) + (this.entries.hashCode() * 31);
    }

    public final String toString() {
        return "SceneState(entries=" + this.entries + ", overlayScenes=" + this.overlayScenes + ", currentScene=" + this.currentScene + ", previousScenes=" + this.previousScenes + ')';
    }
}
