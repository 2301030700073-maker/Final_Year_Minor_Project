package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.room.Room;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class LocalOnBackPressedDispatcherOwner {
    public static final StaticProvidableCompositionLocal LocalOnBackPressedDispatcherOwner = new StaticProvidableCompositionLocal(1, new ImmLeaksCleaner$$ExternalSyntheticLambda0(4));

    public static OnBackPressedDispatcherOwner getCurrent(GapComposer gapComposer) {
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) gapComposer.consume(LocalOnBackPressedDispatcherOwner);
        Object obj = null;
        if (onBackPressedDispatcherOwner == null) {
            gapComposer.startReplaceGroup(1208426157);
            View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
            view.getClass();
            while (true) {
                if (view == null) {
                    onBackPressedDispatcherOwner = null;
                    break;
                }
                Object tag = view.getTag(R.id.view_tree_on_back_pressed_dispatcher_owner);
                OnBackPressedDispatcherOwner onBackPressedDispatcherOwner2 = tag instanceof OnBackPressedDispatcherOwner ? (OnBackPressedDispatcherOwner) tag : null;
                if (onBackPressedDispatcherOwner2 != null) {
                    onBackPressedDispatcherOwner = onBackPressedDispatcherOwner2;
                    break;
                }
                Object parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
                view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
            }
        } else {
            gapComposer.startReplaceGroup(1208423708);
        }
        gapComposer.end(false);
        if (onBackPressedDispatcherOwner != null) {
            gapComposer.startReplaceGroup(1208423789);
            gapComposer.end(false);
            return onBackPressedDispatcherOwner;
        }
        gapComposer.startReplaceGroup(1208428160);
        Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            }
            if (context instanceof OnBackPressedDispatcherOwner) {
                obj = context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        OnBackPressedDispatcherOwner onBackPressedDispatcherOwner3 = (OnBackPressedDispatcherOwner) obj;
        gapComposer.end(false);
        return onBackPressedDispatcherOwner3;
    }
}
