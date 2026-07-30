package com.android.launcher3.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Point;
import android.util.Log;
import com.android.launcher3.util.ConfigMonitor;
import com.android.launcher3.util.DefaultDisplay;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class ConfigMonitor extends BroadcastReceiver implements DefaultDisplay.DisplayInfoChangeListener {
    public Consumer mCallback;
    public final Context mContext;
    public final int mDensity;
    public final int mDisplayId;
    public final float mFontScale;
    public final Point mLargestSize;
    public final Point mRealSize;
    public final Point mSmallestSize;
    public final Point mTmpPoint1 = new Point();
    public final Point mTmpPoint2 = new Point();

    public ConfigMonitor(Context context, Consumer consumer) {
        this.mContext = context;
        Configuration configuration = context.getResources().getConfiguration();
        this.mFontScale = configuration.fontScale;
        this.mDensity = configuration.densityDpi;
        DefaultDisplay defaultDisplay = (DefaultDisplay) DefaultDisplay.INSTANCE.b(context);
        defaultDisplay.mListeners.add(this);
        DefaultDisplay.Info info = defaultDisplay.mInfo;
        this.mDisplayId = info.id;
        this.mRealSize = new Point(info.realSize);
        this.mSmallestSize = new Point(info.smallestSize);
        this.mLargestSize = new Point(info.largestSize);
        this.mCallback = consumer;
        this.mContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
    }

    public final synchronized void notifyChange() {
        if (this.mCallback != null) {
            final Consumer consumer = this.mCallback;
            this.mCallback = null;
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: c.a.a.a1.a
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(ConfigMonitor.this.mContext);
                }
            });
        }
    }

    @Override // com.android.launcher3.util.DefaultDisplay.DisplayInfoChangeListener
    public void onDisplayInfoChanged(DefaultDisplay.Info info, int i) {
        if (info.id != this.mDisplayId) {
            return;
        }
        Point point = this.mTmpPoint1;
        Point point2 = info.realSize;
        point.set(point2.x, point2.y);
        if (!this.mRealSize.equals(this.mTmpPoint1)) {
            Point point3 = this.mRealSize;
            Point point4 = this.mTmpPoint1;
            if (!point3.equals(point4.y, point4.x)) {
                Log.d("ConfigMonitor", String.format("Display size changed from %s to %s", this.mRealSize, this.mTmpPoint1));
                notifyChange();
                return;
            }
        }
        Point point5 = this.mTmpPoint1;
        Point point6 = info.smallestSize;
        point5.set(point6.x, point6.y);
        Point point7 = this.mTmpPoint2;
        Point point8 = info.largestSize;
        point7.set(point8.x, point8.y);
        if (this.mSmallestSize.equals(this.mTmpPoint1) && this.mLargestSize.equals(this.mTmpPoint2)) {
            return;
        }
        Log.d("ConfigMonitor", String.format("Available size changed from [%s, %s] to [%s, %s]", this.mSmallestSize, this.mLargestSize, this.mTmpPoint1, this.mTmpPoint2));
        notifyChange();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Configuration configuration = context.getResources().getConfiguration();
        if (this.mFontScale == configuration.fontScale && this.mDensity == configuration.densityDpi) {
            return;
        }
        Log.d("ConfigMonitor", "Configuration changed.");
        notifyChange();
    }
}
