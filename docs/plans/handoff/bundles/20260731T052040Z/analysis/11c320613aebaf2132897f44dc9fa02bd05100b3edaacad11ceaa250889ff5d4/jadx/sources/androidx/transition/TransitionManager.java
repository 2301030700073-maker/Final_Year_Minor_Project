package androidx.transition;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.collection.ArrayMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class TransitionManager {
    public static final AutoTransition sDefaultTransition;
    public static final ArrayList sPendingTransitions;
    public static final ThreadLocal sRunningTransitions;

    static {
        AutoTransition autoTransition = new AutoTransition();
        autoTransition.mPlayTogether = false;
        autoTransition.addTransition(new Fade(2));
        autoTransition.addTransition(new ChangeBounds());
        autoTransition.addTransition(new Fade(1));
        sDefaultTransition = autoTransition;
        sRunningTransitions = new ThreadLocal();
        sPendingTransitions = new ArrayList();
    }

    public static void beginDelayedTransition(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = sPendingTransitions;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut()) {
            return;
        }
        arrayList.add(viewGroup);
        if (transition == null) {
            transition = sDefaultTransition;
        }
        Transition mo473clone = transition.mo473clone();
        sceneChangeSetup(viewGroup, mo473clone);
        viewGroup.setTag(R.id.transition_current_scene, null);
        MultiListener multiListener = new MultiListener();
        multiListener.mTransition = mo473clone;
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

    public static void sceneChangeSetup(ViewGroup viewGroup, Transition transition) {
        ArrayList arrayList = (ArrayList) getRunningTransitions().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((Transition) it.next()).pause(viewGroup);
            }
        }
        if (transition != null) {
            transition.captureValues(viewGroup, true);
        }
        if (viewGroup.getTag(R.id.transition_current_scene) == null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MultiListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        public ViewGroup mSceneRoot;
        public Transition mTransition;

        /* JADX WARN: Removed duplicated region for block: B:117:0x01eb A[EDGE_INSN: B:117:0x01eb->B:118:0x01eb BREAK  A[LOOP:1: B:18:0x0087->B:29:0x01e4], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:121:0x01f2  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0213  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0244  */
        /* JADX WARN: Removed duplicated region for block: B:183:0x02c6  */
        /* JADX WARN: Removed duplicated region for block: B:192:0x02f6  */
        /* JADX WARN: Removed duplicated region for block: B:194:0x02fc  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x008d  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 831
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
