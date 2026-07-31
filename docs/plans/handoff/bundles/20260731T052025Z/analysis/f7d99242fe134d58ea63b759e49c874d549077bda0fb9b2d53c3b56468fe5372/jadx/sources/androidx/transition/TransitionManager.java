package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.collection.ArrayMap;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TransitionManager {
    public static final AutoTransition sDefaultTransition;
    public static final ArrayList sPendingTransitions;
    public static final ThreadLocal sRunningTransitions;

    static {
        AutoTransition autoTransition = new AutoTransition();
        autoTransition.mTransitions = new ArrayList();
        autoTransition.mStarted = false;
        autoTransition.mChangeFlags = 0;
        autoTransition.mPlayTogether = false;
        autoTransition.addTransition(new Fade(2));
        autoTransition.addTransition(new ChangeBounds());
        autoTransition.addTransition(new Fade(1));
        sDefaultTransition = autoTransition;
        sRunningTransitions = new ThreadLocal();
        sPendingTransitions = new ArrayList();
    }

    public static void beginDelayedTransition(FrameLayout frameLayout, Transition transition) {
        ArrayList arrayList = sPendingTransitions;
        if (arrayList.contains(frameLayout) || !frameLayout.isLaidOut()) {
            return;
        }
        arrayList.add(frameLayout);
        if (transition == null) {
            transition = sDefaultTransition;
        }
        Transition mo819clone = transition.mo819clone();
        ArrayList arrayList2 = (ArrayList) getRunningTransitions().get(frameLayout);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).pause(frameLayout);
            }
        }
        mo819clone.captureValues(frameLayout, true);
        if (frameLayout.getTag(R.id.transition_current_scene) != null) {
            DBUtil$$ExternalSyntheticBUOutline0.m();
            return;
        }
        frameLayout.setTag(R.id.transition_current_scene, null);
        MultiListener multiListener = new MultiListener();
        multiListener.mTransition = mo819clone;
        multiListener.mSceneRoot = frameLayout;
        frameLayout.addOnAttachStateChangeListener(multiListener);
        frameLayout.getViewTreeObserver().addOnPreDrawListener(multiListener);
    }

    public static ArrayMap getRunningTransitions() {
        ArrayMap arrayMap;
        ThreadLocal threadLocal = sRunningTransitions;
        WeakReference weakReference = (WeakReference) threadLocal.get();
        if (weakReference != null && (arrayMap = (ArrayMap) weakReference.get()) != null) {
            return arrayMap;
        }
        ArrayMap arrayMap2 = new ArrayMap(0);
        threadLocal.set(new WeakReference(arrayMap2));
        return arrayMap2;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public ViewGroup mSceneRoot;
        public Transition mTransition;

        /* JADX WARN: Removed duplicated region for block: B:117:0x01e3 A[EDGE_INSN: B:117:0x01e3->B:118:0x01e3 BREAK  A[LOOP:1: B:17:0x0085->B:29:0x01dc], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:121:0x01ea  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x020b  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x023c  */
        /* JADX WARN: Removed duplicated region for block: B:176:0x02a8  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 729
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionManager.MultiListener.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            ViewGroup viewGroup = this.mSceneRoot;
            viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
            viewGroup.removeOnAttachStateChangeListener(this);
            TransitionManager.sPendingTransitions.remove(viewGroup);
            ArrayList arrayList = (ArrayList) TransitionManager.getRunningTransitions().get(viewGroup);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((Transition) it.next()).resume(viewGroup);
                }
            }
            this.mTransition.clearValues(true);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
        }
    }
}
