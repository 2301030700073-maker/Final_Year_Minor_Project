package com.android.launcher3;

import android.os.Handler;
import android.os.SystemClock;

/* loaded from: classes.dex */
public class Alarm implements Runnable {
    public OnAlarmListener mAlarmListener;
    public long mAlarmTriggerTime;
    public boolean mWaitingForCallback;
    public boolean mAlarmPending = false;
    public Handler mHandler = new Handler();

    @Override // java.lang.Runnable
    public void run() {
        this.mWaitingForCallback = false;
        if (this.mAlarmPending) {
            long uptimeMillis = SystemClock.uptimeMillis();
            long j = this.mAlarmTriggerTime;
            if (j > uptimeMillis) {
                this.mHandler.postDelayed(this, Math.max(0L, j - uptimeMillis));
                this.mWaitingForCallback = true;
                return;
            }
            this.mAlarmPending = false;
            OnAlarmListener onAlarmListener = this.mAlarmListener;
            if (onAlarmListener != null) {
                onAlarmListener.onAlarm(this);
            }
        }
    }

    public void setAlarm(long j) {
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mAlarmPending = true;
        long j2 = this.mAlarmTriggerTime;
        long j3 = j + uptimeMillis;
        this.mAlarmTriggerTime = j3;
        if (this.mWaitingForCallback && j2 > j3) {
            this.mHandler.removeCallbacks(this);
            this.mWaitingForCallback = false;
        }
        if (this.mWaitingForCallback) {
            return;
        }
        this.mHandler.postDelayed(this, this.mAlarmTriggerTime - uptimeMillis);
        this.mWaitingForCallback = true;
    }
}
