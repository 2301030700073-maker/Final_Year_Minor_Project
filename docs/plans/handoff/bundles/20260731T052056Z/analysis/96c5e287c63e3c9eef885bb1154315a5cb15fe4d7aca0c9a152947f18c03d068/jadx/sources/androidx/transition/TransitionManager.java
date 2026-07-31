package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.collection.ArrayMap;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TransitionManager {
    public static final AutoTransition sDefaultTransition = new AutoTransition();
    public static final ThreadLocal sRunningTransitions = new ThreadLocal();
    public static final ArrayList sPendingTransitions = new ArrayList();

    public static void beginDelayedTransition(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = sPendingTransitions;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (transition == null) {
            transition = sDefaultTransition;
        }
        Transition mo762clone = transition.mo762clone();
        ArrayList arrayList2 = (ArrayList) getRunningTransitions().get(viewGroup);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).pause(viewGroup);
            }
        }
        mo762clone.captureValues(viewGroup, true);
        if (viewGroup.getTag(R.id.transition_current_scene) != null) {
            ContextsKt$$ExternalSyntheticBUOutline0.m$1();
            return;
        }
        viewGroup.setTag(R.id.transition_current_scene, null);
        MultiListener multiListener = new MultiListener();
        multiListener.mTransition = mo762clone;
        multiListener.mSceneRoot = viewGroup;
        viewGroup.addOnAttachStateChangeListener(multiListener);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(multiListener);
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

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
