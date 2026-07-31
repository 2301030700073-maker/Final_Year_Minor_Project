package androidx.compose.animation;

import java.util.LinkedHashMap;
import kotlin.collections.MapsKt__MapsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExitTransitionImpl {
    public final TransitionData data;
    public static final ExitTransitionImpl None = new ExitTransitionImpl(new TransitionData((Fade) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 127));
    public static final ExitTransitionImpl KeepUntilTransitionsFinished = new ExitTransitionImpl(new TransitionData((Fade) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 95));

    public ExitTransitionImpl(TransitionData transitionData) {
        this.data = transitionData;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ExitTransitionImpl) && ((ExitTransitionImpl) obj).data.equals(this.data);
    }

    public final int hashCode() {
        return this.data.hashCode();
    }

    public final ExitTransitionImpl plus(ExitTransitionImpl exitTransitionImpl) {
        TransitionData transitionData = exitTransitionImpl.data;
        Fade fade = transitionData.fade;
        TransitionData transitionData2 = this.data;
        if (fade == null) {
            fade = transitionData2.fade;
        }
        ChangeSize changeSize = transitionData.changeSize;
        if (changeSize == null) {
            changeSize = transitionData2.changeSize;
        }
        Scale scale = transitionData.scale;
        if (scale == null) {
            scale = transitionData2.scale;
        }
        return new ExitTransitionImpl(new TransitionData(fade, changeSize, scale, transitionData.hold || transitionData2.hold, MapsKt__MapsKt.plus(transitionData2.effectsMap, transitionData.effectsMap)));
    }

    public final String toString() {
        if (equals(None)) {
            return "ExitTransition.None";
        }
        if (equals(KeepUntilTransitionsFinished)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        StringBuilder sb = new StringBuilder("ExitTransition: \nFade - ");
        TransitionData transitionData = this.data;
        Fade fade = transitionData.fade;
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - null,\nShrink - ");
        ChangeSize changeSize = transitionData.changeSize;
        sb.append(changeSize != null ? changeSize.toString() : null);
        sb.append(",\nScale - ");
        Scale scale = transitionData.scale;
        sb.append(scale != null ? scale.toString() : null);
        sb.append(",\nKeepUntilTransitionsFinished - ");
        sb.append(transitionData.hold);
        return sb.toString();
    }
}
