package androidx.activity.compose;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.View;
import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.work.OperationKt;
import com.fsck.k9.R;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class LocalOnBackPressedDispatcherOwner {
    public static final DynamicProvidableCompositionLocal LocalOnBackPressedDispatcherOwner = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(4));

    public static OnBackPressedDispatcherOwner getCurrent(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
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
                Object parentOrViewTreeDisjointParent = OperationKt.getParentOrViewTreeDisjointParent(view);
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
