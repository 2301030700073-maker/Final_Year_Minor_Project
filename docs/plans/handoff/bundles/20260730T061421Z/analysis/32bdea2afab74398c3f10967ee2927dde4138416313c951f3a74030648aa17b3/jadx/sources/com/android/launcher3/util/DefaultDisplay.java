package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DefaultDisplay implements DisplayManager.DisplayListener {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.a1.c
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new DefaultDisplay(context);
        }
    });
    public final Handler mChangeHandler;
    public final Context mDisplayContext;
    public final int mId;
    public Info mInfo;
    public final ArrayList mListeners = new ArrayList();

    public interface DisplayInfoChangeListener {
        void onDisplayInfoChanged(Info info, int i);
    }

    public DefaultDisplay(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(DisplayManager.class);
        Context createDisplayContext = context.getApplicationContext().createDisplayContext(displayManager.getDisplay(0));
        this.mDisplayContext = createDisplayContext;
        Info info = new Info(createDisplayContext, ((DisplayManager) createDisplayContext.getSystemService(DisplayManager.class)).getDisplay(0));
        this.mInfo = info;
        this.mId = info.id;
        this.mChangeHandler = new Handler(new Handler.Callback() { // from class: c.a.a.a1.b
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                DefaultDisplay defaultDisplay = DefaultDisplay.this;
                for (int size = defaultDisplay.mListeners.size() - 1; size >= 0; size--) {
                    ((DefaultDisplay.DisplayInfoChangeListener) defaultDisplay.mListeners.get(size)).onDisplayInfoChanged(defaultDisplay.mInfo, message.what);
                }
                return true;
            }
        });
        displayManager.registerDisplayListener(this, Executors.UI_HELPER_EXECUTOR.mHandler);
    }

    public static int getSingleFrameMs(Context context) {
        return ((DefaultDisplay) INSTANCE.b(context)).mInfo.singleFrameMs;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // android.hardware.display.DisplayManager.DisplayListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onDisplayChanged(int r9) {
        /*
            r8 = this;
            int r0 = r8.mId
            if (r9 == r0) goto L5
            return
        L5:
            com.android.launcher3.util.DefaultDisplay$Info r9 = r8.mInfo
            com.android.launcher3.util.DefaultDisplay$Info r0 = new com.android.launcher3.util.DefaultDisplay$Info
            android.content.Context r1 = r8.mDisplayContext
            java.lang.Class<android.hardware.display.DisplayManager> r2 = android.hardware.display.DisplayManager.class
            java.lang.Object r2 = r1.getSystemService(r2)
            android.hardware.display.DisplayManager r2 = (android.hardware.display.DisplayManager) r2
            r3 = 0
            android.view.Display r2 = r2.getDisplay(r3)
            r0.<init>(r1, r2)
            android.graphics.Point r1 = r0.realSize
            android.graphics.Point r2 = r9.realSize
            boolean r1 = r1.equals(r2)
            java.lang.String r2 = "DefaultDisplay"
            r4 = 1
            r5 = 2
            if (r1 != 0) goto L4b
            android.graphics.Point r1 = r0.realSize
            android.graphics.Point r6 = r9.realSize
            int r7 = r6.y
            int r6 = r6.x
            boolean r1 = r1.equals(r7, r6)
            if (r1 != 0) goto L4b
            java.lang.Object[] r1 = new java.lang.Object[r5]
            android.graphics.Point r5 = r9.realSize
            r1[r3] = r5
            android.graphics.Point r3 = r0.realSize
            r1[r4] = r3
            java.lang.String r3 = "Display size changed from %s to %s"
            java.lang.String r1 = java.lang.String.format(r3, r1)
            android.util.Log.d(r2, r1)
            goto L7c
        L4b:
            android.graphics.Point r1 = r0.smallestSize
            android.graphics.Point r6 = r9.smallestSize
            boolean r1 = r1.equals(r6)
            if (r1 == 0) goto L5f
            android.graphics.Point r1 = r0.largestSize
            android.graphics.Point r6 = r9.largestSize
            boolean r1 = r1.equals(r6)
            if (r1 != 0) goto L7d
        L5f:
            r1 = 4
            java.lang.Object[] r1 = new java.lang.Object[r1]
            android.graphics.Point r6 = r0.smallestSize
            r1[r3] = r6
            android.graphics.Point r3 = r0.largestSize
            r1[r4] = r3
            android.graphics.Point r3 = r9.smallestSize
            r1[r5] = r3
            r3 = 3
            android.graphics.Point r5 = r9.largestSize
            r1[r3] = r5
            java.lang.String r3 = "Available size changed from [%s, %s] to [%s, %s]"
            java.lang.String r1 = java.lang.String.format(r3, r1)
            android.util.Log.d(r2, r1)
        L7c:
            r3 = r4
        L7d:
            int r1 = r9.rotation
            int r2 = r0.rotation
            if (r1 == r2) goto L85
            r3 = r3 | 2
        L85:
            int r1 = r0.singleFrameMs
            int r9 = r9.singleFrameMs
            if (r1 == r9) goto L8d
            r3 = r3 | 4
        L8d:
            if (r3 == 0) goto L96
            r8.mInfo = r0
            android.os.Handler r8 = r8.mChangeHandler
            r8.sendEmptyMessage(r3)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.DefaultDisplay.onDisplayChanged(int):void");
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }

    public class Info {
        public final int id;
        public final Point largestSize;
        public final DisplayMetrics metrics;
        public final Point realSize;
        public final int rotation;
        public final int singleFrameMs;
        public final Point smallestSize;

        public Info(int i, int i2, int i3, Point point, Point point2, Point point3, DisplayMetrics displayMetrics) {
            this.id = i;
            this.rotation = i2;
            this.singleFrameMs = i3;
            this.realSize = point;
            this.smallestSize = point2;
            this.largestSize = point3;
            this.metrics = displayMetrics;
        }

        public Info(Context context, Display display) {
            this.id = display.getDisplayId();
            this.rotation = display.getRotation();
            float refreshRate = display.getRefreshRate();
            this.singleFrameMs = refreshRate > RecentsState.NO_OFFSET ? (int) (1000.0f / refreshRate) : 16;
            this.realSize = new Point();
            this.smallestSize = new Point();
            this.largestSize = new Point();
            display.getRealSize(this.realSize);
            display.getCurrentSizeRange(this.smallestSize, this.largestSize);
            this.metrics = context.getResources().getDisplayMetrics();
        }
    }
}
