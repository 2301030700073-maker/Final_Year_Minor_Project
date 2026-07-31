package androidx.compose.animation;

import java.util.LinkedHashMap;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ExitTransition {
    public static final ExitTransitionImpl None = new ExitTransitionImpl(new TransitionData((Fade) null, (Scale) null, (LinkedHashMap) null, Token.SWITCH));
    public static final ExitTransitionImpl KeepUntilTransitionsFinished = new ExitTransitionImpl(new TransitionData((Fade) null, (Scale) null, (LinkedHashMap) null, 95));

    public final boolean equals(Object obj) {
        return (obj instanceof ExitTransition) && ((ExitTransitionImpl) ((ExitTransition) obj)).data.equals(((ExitTransitionImpl) this).data);
    }

    public final int hashCode() {
        return ((ExitTransitionImpl) this).data.hashCode();
    }

    public final String toString() {
        if (equals(None)) {
            return "ExitTransition.None";
        }
        if (equals(KeepUntilTransitionsFinished)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        StringBuilder sb = new StringBuilder("ExitTransition: \nFade - ");
        TransitionData transitionData = ((ExitTransitionImpl) this).data;
        Fade fade = transitionData.fade;
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - null,\nShrink - null,\nScale - ");
        Scale scale = transitionData.scale;
        sb.append(scale != null ? scale.toString() : null);
        sb.append(",\nKeepUntilTransitionsFinished - ");
        sb.append(transitionData.hold);
        return sb.toString();
    }
}
