package com.android.quickstep;

import android.os.Looper;
import android.util.SparseArray;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.MultiStateCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.StringJoiner;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class MultiStateCallback {
    public static final boolean DEBUG_STATES = false;
    public static final String TAG = "MultiStateCallback";
    public final SparseArray mCallbacks = new SparseArray();
    public final SparseArray mStateChangeListeners = new SparseArray();
    public int mState = 0;
    public final String[] mStateNames = null;

    public MultiStateCallback(String[] strArr) {
    }

    private String convertToFlagNames(int i) {
        StringJoiner stringJoiner = new StringJoiner(", ", "[", " (" + i + ")]");
        int i2 = 0;
        while (true) {
            String[] strArr = this.mStateNames;
            if (i2 >= strArr.length) {
                return stringJoiner.toString();
            }
            if (((1 << i2) & i) != 0) {
                stringJoiner.add(strArr[i2]);
            }
            i2++;
        }
    }

    private void notifyStateChangeListeners(int i) {
        int size = this.mStateChangeListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = this.mStateChangeListeners.keyAt(i2);
            boolean z = (keyAt & i) == keyAt;
            boolean z2 = (this.mState & keyAt) == keyAt;
            if (z != z2) {
                Iterator it = ((ArrayList) this.mStateChangeListeners.valueAt(i2)).iterator();
                while (it.hasNext()) {
                    ((Consumer) it.next()).accept(Boolean.valueOf(z2));
                }
            }
        }
    }

    public void addChangeListener(int i, Consumer consumer) {
        ArrayList arrayList;
        if (this.mStateChangeListeners.indexOfKey(i) >= 0) {
            arrayList = (ArrayList) this.mStateChangeListeners.get(i);
        } else {
            ArrayList arrayList2 = new ArrayList();
            this.mStateChangeListeners.put(i, arrayList2);
            arrayList = arrayList2;
        }
        arrayList.add(consumer);
    }

    public void clearState(int i) {
        int i2 = this.mState;
        this.mState = (~i) & i2;
        notifyStateChangeListeners(i2);
    }

    public int getState() {
        return this.mState;
    }

    public boolean hasStates(int i) {
        return (this.mState & i) == i;
    }

    public void runOnceAtState(int i, Runnable runnable) {
        LinkedList linkedList;
        if ((this.mState & i) == i) {
            runnable.run();
            return;
        }
        if (this.mCallbacks.indexOfKey(i) >= 0) {
            linkedList = (LinkedList) this.mCallbacks.get(i);
        } else {
            LinkedList linkedList2 = new LinkedList();
            this.mCallbacks.put(i, linkedList2);
            linkedList = linkedList2;
        }
        linkedList.add(runnable);
    }

    /* renamed from: setState, reason: merged with bridge method [inline-methods] */
    public void a(int i) {
        int i2 = this.mState;
        this.mState = i | i2;
        int size = this.mCallbacks.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = this.mCallbacks.keyAt(i3);
            if ((this.mState & keyAt) == keyAt) {
                LinkedList linkedList = (LinkedList) this.mCallbacks.valueAt(i3);
                while (!linkedList.isEmpty()) {
                    ((Runnable) linkedList.pollFirst()).run();
                }
            }
        }
        notifyStateChangeListeners(i2);
    }

    public void setStateOnUiThread(final int i) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            a(i);
        } else {
            Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.mHandler, new Runnable() { // from class: c.a.b.t0
                @Override // java.lang.Runnable
                public final void run() {
                    MultiStateCallback.this.a(i);
                }
            });
        }
    }
}
