package com.android.quickstep.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.WindowBounds;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Iterator;

@TargetApi(30)
/* loaded from: classes.dex */
public class SplitScreenBounds {
    public static final SplitScreenBounds INSTANCE = new SplitScreenBounds();
    public WindowBounds mBounds;
    public final ArrayList mListeners = new ArrayList();

    public interface OnChangeListener {
        void onSecondaryWindowBoundsChanged();
    }

    public static WindowBounds createDefaultWindowBounds(Context context) {
        WindowMetrics maximumWindowMetrics = ((WindowManager) context.getSystemService(WindowManager.class)).getMaximumWindowMetrics();
        Insets insets = maximumWindowMetrics.getWindowInsets().getInsets(WindowInsets.Type.systemBars());
        Rect bounds = maximumWindowMetrics.getBounds();
        Rect rect = new Rect(insets.left, insets.top, insets.right, insets.bottom);
        Point point = new Point((bounds.width() - rect.left) - rect.right, (bounds.height() - rect.top) - rect.bottom);
        int i = ((DefaultDisplay) DefaultDisplay.INSTANCE.b(context)).mInfo.rotation;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.multi_window_task_divider_size) / 2;
        if (i == 0 || i == 2) {
            bounds.top = (point.y / 2) + rect.top + dimensionPixelSize;
            rect.top = 0;
        } else {
            bounds.left = (point.x / 2) + rect.left + dimensionPixelSize;
            rect.left = 0;
        }
        return new WindowBounds(bounds, rect);
    }

    public void addOnChangeListener(OnChangeListener onChangeListener) {
        this.mListeners.add(onChangeListener);
    }

    public WindowBounds getSecondaryWindowBounds(Context context) {
        if (this.mBounds == null) {
            this.mBounds = createDefaultWindowBounds(context);
        }
        return this.mBounds;
    }

    public void removeOnChangeListener(OnChangeListener onChangeListener) {
        this.mListeners.remove(onChangeListener);
    }

    public void setSecondaryWindowBounds(WindowBounds windowBounds) {
        if (windowBounds.equals(this.mBounds)) {
            return;
        }
        this.mBounds = windowBounds;
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((OnChangeListener) it.next()).onSecondaryWindowBoundsChanged();
        }
    }
}
