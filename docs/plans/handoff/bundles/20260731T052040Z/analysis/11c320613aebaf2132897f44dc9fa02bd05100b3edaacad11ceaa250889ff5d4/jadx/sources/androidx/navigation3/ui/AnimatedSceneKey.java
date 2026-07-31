package androidx.navigation3.ui;

import androidx.navigation3.scene.Scene;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedSceneKey {
    public final ClassReference clazz;
    public final Object key;

    public AnimatedSceneKey(Scene scene) {
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(scene.getClass());
        Object key = scene.getKey();
        this.clazz = orCreateKotlinClass;
        this.key = key;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnimatedSceneKey)) {
            return false;
        }
        AnimatedSceneKey animatedSceneKey = (AnimatedSceneKey) obj;
        return Intrinsics.areEqual(this.clazz, animatedSceneKey.clazz) && Intrinsics.areEqual(this.key, animatedSceneKey.key);
    }

    public final int hashCode() {
        return this.key.hashCode() + (this.clazz.hashCode() * 31);
    }

    public final String toString() {
        return "AnimatedSceneKey(clazz=" + this.clazz + ", key=" + this.key + ')';
    }
}
