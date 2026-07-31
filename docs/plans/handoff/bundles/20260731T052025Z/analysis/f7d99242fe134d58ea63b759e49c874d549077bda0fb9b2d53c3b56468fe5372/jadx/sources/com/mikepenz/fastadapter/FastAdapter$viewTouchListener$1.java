package com.mikepenz.fastadapter;

import android.view.MotionEvent;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.mikepenz.fastadapter.items.AbstractItem;
import com.mikepenz.fastadapter.listeners.TouchEventHook;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FastAdapter$viewTouchListener$1 extends TouchEventHook {
    @Override // com.mikepenz.fastadapter.listeners.TouchEventHook
    public final boolean onTouch(View view, MotionEvent motionEvent, int i, FastAdapter fastAdapter, AbstractItem abstractItem) {
        ArrayMap.KeyIterator keyIterator = (ArrayMap.KeyIterator) ((ArrayMap.ValueCollection) fastAdapter.extensionsCache.values()).iterator();
        if (!keyIterator.hasNext()) {
            return false;
        }
        keyIterator.next().getClass();
        DBUtil$$ExternalSyntheticBUOutline0.m();
        return false;
    }
}
