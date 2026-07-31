package androidx.compose.animation;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TransitionData {
    public final ChangeSize changeSize;
    public final Map effectsMap;
    public final Fade fade;
    public final boolean hold;
    public final Scale scale;

    public /* synthetic */ TransitionData(Fade fade, ChangeSize changeSize, Scale scale, LinkedHashMap linkedHashMap, int i) {
        this((i & 1) != 0 ? null : fade, (i & 4) != 0 ? null : changeSize, (i & 8) != 0 ? null : scale, (i & 32) == 0, (i & 64) != 0 ? EmptyMap.INSTANCE : linkedHashMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        return Intrinsics.areEqual(this.fade, transitionData.fade) && Intrinsics.areEqual(this.changeSize, transitionData.changeSize) && Intrinsics.areEqual(this.scale, transitionData.scale) && this.hold == transitionData.hold && Intrinsics.areEqual(this.effectsMap, transitionData.effectsMap);
    }

    public final int hashCode() {
        Fade fade = this.fade;
        int hashCode = (fade == null ? 0 : fade.hashCode()) * 961;
        ChangeSize changeSize = this.changeSize;
        int hashCode2 = (hashCode + (changeSize == null ? 0 : changeSize.hashCode())) * 31;
        Scale scale = this.scale;
        return this.effectsMap.hashCode() + ((((hashCode2 + (scale != null ? scale.hashCode() : 0)) * 961) + (this.hold ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "TransitionData(fade=" + this.fade + ", slide=null, changeSize=" + this.changeSize + ", scale=" + this.scale + ", veil=null, hold=" + this.hold + ", effectsMap=" + this.effectsMap + ')';
    }

    public TransitionData(Fade fade, ChangeSize changeSize, Scale scale, boolean z, Map map) {
        this.fade = fade;
        this.changeSize = changeSize;
        this.scale = scale;
        this.hold = z;
        this.effectsMap = map;
    }
}
