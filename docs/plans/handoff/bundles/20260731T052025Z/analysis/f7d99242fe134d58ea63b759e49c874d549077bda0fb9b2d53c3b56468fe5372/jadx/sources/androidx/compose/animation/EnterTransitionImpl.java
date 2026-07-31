package androidx.compose.animation;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EnterTransitionImpl {
    public static final EnterTransitionImpl None = new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 127));
    public final TransitionData data;

    public EnterTransitionImpl(TransitionData transitionData) {
        this.data = transitionData;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof EnterTransitionImpl) && ((EnterTransitionImpl) obj).data.equals(this.data);
    }

    public final int hashCode() {
        return this.data.hashCode();
    }

    public final EnterTransitionImpl plus(EnterTransitionImpl enterTransitionImpl) {
        TransitionData transitionData = enterTransitionImpl.data;
        Fade fade = transitionData.fade;
        TransitionData transitionData2 = this.data;
        if (fade == null) {
            fade = transitionData2.fade;
        }
        Slide slide = transitionData.slide;
        if (slide == null) {
            slide = transitionData2.slide;
        }
        ChangeSize changeSize = transitionData.changeSize;
        if (changeSize == null) {
            changeSize = transitionData2.changeSize;
        }
        Scale scale = transitionData.scale;
        if (scale == null) {
            scale = transitionData2.scale;
        }
        return new EnterTransitionImpl(new TransitionData(fade, slide, changeSize, scale, MapsKt__MapsKt.plus(transitionData2.effectsMap, transitionData.effectsMap), 32));
    }

    public final String toString() {
        if (equals(None)) {
            return "EnterTransition.None";
        }
        StringBuilder sb = new StringBuilder("EnterTransition: \nFade - ");
        TransitionData transitionData = this.data;
        Fade fade = transitionData.fade;
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - ");
        Slide slide = transitionData.slide;
        sb.append(slide != null ? slide.toString() : null);
        sb.append(",\nShrink - ");
        ChangeSize changeSize = transitionData.changeSize;
        sb.append(changeSize != null ? changeSize.toString() : null);
        sb.append(",\nScale - ");
        Scale scale = transitionData.scale;
        sb.append(scale != null ? scale.toString() : null);
        return sb.toString();
    }
}
