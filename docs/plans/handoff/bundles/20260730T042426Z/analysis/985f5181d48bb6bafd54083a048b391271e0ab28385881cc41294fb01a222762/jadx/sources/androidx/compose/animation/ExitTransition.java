package androidx.compose.animation;

import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnterExitTransition.kt */
/* loaded from: classes.dex */
public abstract class ExitTransition {
    public static final Companion Companion = new Companion(null);
    private static final ExitTransition None = new ExitTransitionImpl(new TransitionData(null, null, null, null, false, null, 63, null));
    private static final ExitTransition KeepUntilTransitionsFinished = new ExitTransitionImpl(new TransitionData(null, null, null, null, true, null, 47, null));

    public /* synthetic */ ExitTransition(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract TransitionData getData$animation_release();

    private ExitTransition() {
    }

    public final ExitTransition plus(ExitTransition exitTransition) {
        Fade fade = exitTransition.getData$animation_release().getFade();
        if (fade == null) {
            fade = getData$animation_release().getFade();
        }
        Fade fade2 = fade;
        Slide slide = exitTransition.getData$animation_release().getSlide();
        if (slide == null) {
            slide = getData$animation_release().getSlide();
        }
        Slide slide2 = slide;
        ChangeSize changeSize = exitTransition.getData$animation_release().getChangeSize();
        if (changeSize == null) {
            changeSize = getData$animation_release().getChangeSize();
        }
        ChangeSize changeSize2 = changeSize;
        exitTransition.getData$animation_release().getScale();
        getData$animation_release().getScale();
        return new ExitTransitionImpl(new TransitionData(fade2, slide2, changeSize2, null, exitTransition.getData$animation_release().getHold() || getData$animation_release().getHold(), MapsKt.plus(getData$animation_release().getEffectsMap(), exitTransition.getData$animation_release().getEffectsMap())));
    }

    public boolean equals(Object obj) {
        return (obj instanceof ExitTransition) && Intrinsics.areEqual(((ExitTransition) obj).getData$animation_release(), getData$animation_release());
    }

    public String toString() {
        if (Intrinsics.areEqual(this, None)) {
            return "ExitTransition.None";
        }
        if (Intrinsics.areEqual(this, KeepUntilTransitionsFinished)) {
            return "ExitTransition.KeepUntilTransitionsFinished";
        }
        TransitionData data$animation_release = getData$animation_release();
        StringBuilder sb = new StringBuilder();
        sb.append("ExitTransition: \nFade - ");
        Fade fade = data$animation_release.getFade();
        sb.append(fade != null ? fade.toString() : null);
        sb.append(",\nSlide - ");
        Slide slide = data$animation_release.getSlide();
        sb.append(slide != null ? slide.toString() : null);
        sb.append(",\nShrink - ");
        ChangeSize changeSize = data$animation_release.getChangeSize();
        sb.append(changeSize != null ? changeSize.toString() : null);
        sb.append(",\nScale - ");
        data$animation_release.getScale();
        sb.append((String) null);
        sb.append(",\nKeepUntilTransitionsFinished - ");
        sb.append(data$animation_release.getHold());
        return sb.toString();
    }

    public int hashCode() {
        return getData$animation_release().hashCode();
    }

    /* compiled from: EnterExitTransition.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ExitTransition getNone() {
            return ExitTransition.None;
        }
    }
}
