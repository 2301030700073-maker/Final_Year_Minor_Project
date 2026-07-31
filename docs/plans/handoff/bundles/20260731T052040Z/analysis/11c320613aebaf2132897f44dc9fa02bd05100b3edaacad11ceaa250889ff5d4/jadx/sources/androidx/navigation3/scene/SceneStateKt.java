package androidx.navigation3.scene;

import androidx.compose.material3.BadgeKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.navigation3.runtime.NavEntry;
import java.util.List;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SceneStateKt {

    /* renamed from: lambda$-51699941, reason: not valid java name */
    public static final ComposableLambdaImpl f7lambda$51699941 = new ComposableLambdaImpl(-51699941, false, new BadgeKt$$ExternalSyntheticLambda0(1));

    public static final Scene provideScene(List list, List list2, List list3) {
        Scene scene;
        if (list2.size() > 0) {
            ((SinglePaneSceneStrategy) list2.get(0)).getClass();
            scene = new SinglePaneScene(((NavEntry) CollectionsKt.last(list)).contentKey, (NavEntry) CollectionsKt.last(list), CollectionsKt.dropLast(list));
        } else {
            scene = null;
        }
        if (scene == null) {
            scene = new SinglePaneScene(((NavEntry) CollectionsKt.last(list)).contentKey, (NavEntry) CollectionsKt.last(list), CollectionsKt.dropLast(list));
        }
        int size = list3.size();
        for (int i = 0; i < size; i++) {
            if (list3.get(i) != null) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                return null;
            }
            scene = scene instanceof OverlayScene ? (OverlayScene) scene : null;
            scene.getClass();
        }
        return scene;
    }
}
