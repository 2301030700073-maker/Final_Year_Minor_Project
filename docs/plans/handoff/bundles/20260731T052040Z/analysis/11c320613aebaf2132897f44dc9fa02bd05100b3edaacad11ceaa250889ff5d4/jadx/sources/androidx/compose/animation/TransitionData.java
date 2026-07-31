package androidx.compose.animation;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TransitionData {
    public final Map effectsMap;
    public final Fade fade;
    public final boolean hold;
    public final Scale scale;

    public /* synthetic */ TransitionData(Fade fade, Scale scale, LinkedHashMap linkedHashMap, int i) {
        this((i & 1) != 0 ? null : fade, (i & 8) != 0 ? null : scale, (i & 32) == 0, (i & 64) != 0 ? EmptyMap.INSTANCE : linkedHashMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransitionData)) {
            return false;
        }
        TransitionData transitionData = (TransitionData) obj;
        return Intrinsics.areEqual(this.fade, transitionData.fade) && Intrinsics.areEqual(this.scale, transitionData.scale) && this.hold == transitionData.hold && Intrinsics.areEqual(this.effectsMap, transitionData.effectsMap);
    }

    public final int hashCode() {
        Fade fade = this.fade;
        int hashCode = (fade == null ? 0 : fade.hashCode()) * 29791;
        Scale scale = this.scale;
        return this.effectsMap.hashCode() + ((((hashCode + (scale != null ? scale.hashCode() : 0)) * 961) + (this.hold ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "TransitionData(fade=" + this.fade + ", slide=null, changeSize=null, scale=" + this.scale + ", veil=null, hold=" + this.hold + ", effectsMap=" + this.effectsMap + ')';
    }

    public TransitionData(Fade fade, Scale scale, boolean z, Map map) {
        this.fade = fade;
        this.scale = scale;
        this.hold = z;
        this.effectsMap = map;
    }
}
