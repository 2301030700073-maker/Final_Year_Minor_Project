package androidx.compose.material.ripple;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Ripple.android.kt */
/* loaded from: classes.dex */
public abstract class Ripple_androidKt {
    private static final boolean IsRunningInPreview = Intrinsics.areEqual(Build.DEVICE, "layoutlib");

    /* renamed from: createPlatformRippleNode-TDGSqEk, reason: not valid java name */
    public static final DelegatableNode m601createPlatformRippleNodeTDGSqEk(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, Function0 function0) {
        if (IsRunningInPreview) {
            return new CommonRippleNode(interactionSource, z, f, colorProducer, function0, null);
        }
        return new AndroidRippleNode(interactionSource, z, f, colorProducer, function0, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RippleContainer createAndAttachRippleContainerIfNeeded(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof RippleContainer) {
                return (RippleContainer) childAt;
            }
        }
        RippleContainer rippleContainer = new RippleContainer(viewGroup.getContext());
        viewGroup.addView(rippleContainer);
        return rippleContainer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.ViewParent] */
    public static final ViewGroup findNearestViewGroup(View view) {
        while (!(view instanceof ViewGroup)) {
            ?? parent = view.getParent();
            if (!(parent instanceof View)) {
                throw new IllegalArgumentException(("Couldn't find a valid parent for " + view + ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?").toString());
            }
            view = parent;
        }
        return (ViewGroup) view;
    }
}
