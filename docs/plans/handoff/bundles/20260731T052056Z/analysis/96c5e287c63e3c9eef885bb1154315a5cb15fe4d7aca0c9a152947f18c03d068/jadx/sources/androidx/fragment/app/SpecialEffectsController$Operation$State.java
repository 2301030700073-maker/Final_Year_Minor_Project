package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SpecialEffectsController$Operation$State {
    private static final /* synthetic */ SpecialEffectsController$Operation$State[] $VALUES;
    public static final Companion Companion;
    public static final SpecialEffectsController$Operation$State GONE;
    public static final SpecialEffectsController$Operation$State INVISIBLE;
    public static final SpecialEffectsController$Operation$State REMOVED;
    public static final SpecialEffectsController$Operation$State VISIBLE;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static SpecialEffectsController$Operation$State asOperationState(View view) {
            view.getClass();
            return (view.getAlpha() == RecyclerView.DECELERATION_RATE && view.getVisibility() == 0) ? SpecialEffectsController$Operation$State.INVISIBLE : from(view.getVisibility());
        }

        public static SpecialEffectsController$Operation$State from(int i) {
            if (i == 0) {
                return SpecialEffectsController$Operation$State.VISIBLE;
            }
            if (i == 4) {
                return SpecialEffectsController$Operation$State.INVISIBLE;
            }
            if (i == 8) {
                return SpecialEffectsController$Operation$State.GONE;
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Unknown visibility "));
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SpecialEffectsController$Operation$State.values().length];
            try {
                iArr[SpecialEffectsController$Operation$State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SpecialEffectsController$Operation$State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SpecialEffectsController$Operation$State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SpecialEffectsController$Operation$State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = new SpecialEffectsController$Operation$State("REMOVED", 0);
        REMOVED = specialEffectsController$Operation$State;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = new SpecialEffectsController$Operation$State("VISIBLE", 1);
        VISIBLE = specialEffectsController$Operation$State2;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State3 = new SpecialEffectsController$Operation$State("GONE", 2);
        GONE = specialEffectsController$Operation$State3;
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State4 = new SpecialEffectsController$Operation$State("INVISIBLE", 3);
        INVISIBLE = specialEffectsController$Operation$State4;
        $VALUES = new SpecialEffectsController$Operation$State[]{specialEffectsController$Operation$State, specialEffectsController$Operation$State2, specialEffectsController$Operation$State3, specialEffectsController$Operation$State4};
        Companion = new Companion();
    }

    public static SpecialEffectsController$Operation$State valueOf(String str) {
        return (SpecialEffectsController$Operation$State) Enum.valueOf(SpecialEffectsController$Operation$State.class, str);
    }

    public static SpecialEffectsController$Operation$State[] values() {
        return (SpecialEffectsController$Operation$State[]) $VALUES.clone();
    }

    public final void applyState(View view, ViewGroup viewGroup) {
        view.getClass();
        viewGroup.getClass();
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Calling apply state");
        }
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            ViewParent parent = view.getParent();
            ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup2 != null) {
                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup2);
                }
                viewGroup2.removeView(view);
                return;
            }
            return;
        }
        if (i == 2) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            ViewParent parent2 = view.getParent();
            if ((parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null) == null) {
                if (FragmentManagerImpl.isLoggingEnabled(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + viewGroup);
                }
                viewGroup.addView(view);
            }
            view.setVisibility(0);
            return;
        }
        if (i == 3) {
            if (FragmentManagerImpl.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (i != 4) {
            return;
        }
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }
}
