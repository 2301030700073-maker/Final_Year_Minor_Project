package androidx.dynamicanimation.animation;

import androidx.collection.SimpleArrayMap;
import coil3.memory.MemoryCacheService;
import java.util.ArrayList;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimationHandler {
    public static final ThreadLocal sAnimatorHandler = new ThreadLocal();
    public ProcessFinisher mProvider;
    public final SimpleArrayMap mDelayedCallbackStartTime = new SimpleArrayMap(0);
    public final ArrayList mAnimationCallbacks = new ArrayList();
    public final MemoryCacheService mCallbackDispatcher = new MemoryCacheService(this);
    public boolean mListDirty = false;
}
