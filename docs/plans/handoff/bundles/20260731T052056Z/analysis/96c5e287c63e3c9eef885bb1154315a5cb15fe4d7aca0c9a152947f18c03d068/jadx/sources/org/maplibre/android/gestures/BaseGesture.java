package org.maplibre.android.gestures;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import org.wikipedia.databinding.FragmentNewsBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseGesture {
    public final Context context;
    public MotionEvent currentEvent;
    public long gestureDuration;
    public final FragmentNewsBinding gesturesManager;
    public boolean isEnabled = true;
    public Object listener;
    public MotionEvent previousEvent;
    public final WindowManager windowManager;

    public BaseGesture(Context context, FragmentNewsBinding fragmentNewsBinding) {
        this.context = context;
        if (context instanceof Activity) {
            this.windowManager = (WindowManager) context.getSystemService("window");
        } else {
            this.windowManager = null;
        }
        this.gesturesManager = fragmentNewsBinding;
    }

    public abstract boolean analyzeEvent(MotionEvent motionEvent);

    public boolean canExecute(int i) {
        if (this.listener == null || !this.isEnabled) {
            return false;
        }
        FragmentNewsBinding fragmentNewsBinding = this.gesturesManager;
        Iterator it = ((ArrayList) fragmentNewsBinding.rootView).iterator();
        while (it.hasNext()) {
            Set<Integer> set = (Set) it.next();
            if (set.contains(Integer.valueOf(i))) {
                for (Integer num : set) {
                    num.getClass();
                    Iterator it2 = ((ArrayList) fragmentNewsBinding.appBarLayout).iterator();
                    while (it2.hasNext()) {
                        BaseGesture baseGesture = (BaseGesture) it2.next();
                        if (baseGesture instanceof ProgressiveGesture) {
                            ProgressiveGesture progressiveGesture = (ProgressiveGesture) baseGesture;
                            if (progressiveGesture.handledTypes.contains(num) && progressiveGesture.isInProgress) {
                                return false;
                            }
                        }
                    }
                }
            }
        }
        return true;
    }
}
