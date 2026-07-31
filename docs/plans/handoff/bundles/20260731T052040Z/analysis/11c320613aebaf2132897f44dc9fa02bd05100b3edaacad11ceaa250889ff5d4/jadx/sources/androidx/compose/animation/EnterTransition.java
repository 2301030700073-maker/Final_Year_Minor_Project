package androidx.compose.animation;

import java.util.LinkedHashMap;
import java.util.Map;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class EnterTransition {
    public static final EnterTransitionImpl None = new EnterTransitionImpl(new TransitionData((Fade) null, (Scale) null, (LinkedHashMap) null, Token.SWITCH));

    public final boolean equals(Object obj) {
        return (obj instanceof EnterTransition) && ((EnterTransitionImpl) ((EnterTransition) obj)).data.equals(((EnterTransitionImpl) this).data);
    }

    public final int hashCode() {
        return ((EnterTransitionImpl) this).data.hashCode();
    }

    public final EnterTransitionImpl plus(EnterTransition enterTransition) {
        Fade fade = ((EnterTransitionImpl) enterTransition).data.fade;
        if (fade == null) {
            fade = ((EnterTransitionImpl) this).data.fade;
        }
        TransitionData transitionData = ((EnterTransitionImpl) enterTransition).data;
        Scale scale = transitionData.scale;
        TransitionData transitionData2 = ((EnterTransitionImpl) this).data;
        if (scale == null) {
            scale = transitionData2.scale;
        }
        Map map = transitionData2.effectsMap;
        Map map2 = transitionData.effectsMap;
        map.getClass();
        map2.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        linkedHashMap.putAll(map2);
        return new EnterTransitionImpl(new TransitionData(fade, scale, linkedHashMap, 32));
    }

    public final String toString() {
        if (equals(None)) {
            return "EnterTransition.None";
        }
        StringBuilder sb = new StringBuilder("EnterTransition: \nFade - ");
        TransitionData transitionData = ((EnterTransitionImpl) this).data;
        Fade fade = transitionData.fade;
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - null,\nShrink - null,\nScale - ");
        Scale scale = transitionData.scale;
        sb.append(scale != null ? scale.toString() : null);
        return sb.toString();
    }
}
