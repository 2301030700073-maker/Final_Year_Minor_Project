package com.facebook.ads.redexgen.core;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

/* renamed from: com.facebook.ads.redexgen.X.8i, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C10438i implements SensorEventListener {
    public C10438i() {
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] unused = C10458k.A0A = sensorEvent.values;
        C10458k.A06();
    }
}
