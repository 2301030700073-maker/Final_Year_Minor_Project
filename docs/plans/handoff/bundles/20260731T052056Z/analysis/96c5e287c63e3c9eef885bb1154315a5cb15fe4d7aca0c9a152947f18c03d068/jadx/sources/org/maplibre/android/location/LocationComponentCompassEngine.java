package org.maplibre.android.location;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.SystemClock;
import android.view.WindowManager;
import androidx.compose.animation.core.Animation;
import java.util.ArrayList;
import java.util.Iterator;
import org.maplibre.android.location.LocationComponent;
import org.maplibre.android.log.Logger;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LocationComponentCompassEngine implements SensorEventListener {
    public final Sensor compassSensor;
    public long compassUpdateNextTimestamp;
    public final Sensor gravitySensor;
    public int lastAccuracySensorStatus;
    public float lastHeading;
    public final Sensor magneticFieldSensor;
    public float[] rotationVectorValue;
    public final SensorManager sensorManager;
    public final WindowManager windowManager;
    public final ArrayList compassListeners = new ArrayList();
    public final float[] truncatedRotationVectorValue = new float[4];
    public final float[] rotationMatrix = new float[9];
    public float[] gravityValues = new float[3];
    public float[] magneticValues = new float[3];

    public LocationComponentCompassEngine(WindowManager windowManager, SensorManager sensorManager) {
        this.windowManager = windowManager;
        this.sensorManager = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(11);
        this.compassSensor = defaultSensor;
        if (defaultSensor == null) {
            Logger.d("Mbgl-LocationComponentCompassEngine", "Rotation vector sensor not supported on device, falling back to accelerometer and magnetic field.");
            this.gravitySensor = sensorManager.getDefaultSensor(1);
            this.magneticFieldSensor = sensorManager.getDefaultSensor(2);
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
        if (this.lastAccuracySensorStatus != i) {
            Iterator it = this.compassListeners.iterator();
            while (it.hasNext()) {
                ((LocationComponent.AnonymousClass7) it.next()).getClass();
            }
            this.lastAccuracySensorStatus = i;
        }
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        if (this.lastAccuracySensorStatus == 0) {
            Logger.d("Mbgl-LocationComponentCompassEngine", "Compass sensor is unreliable, device calibration is needed.");
        }
        int type = sensorEvent.sensor.getType();
        float[] fArr = this.truncatedRotationVectorValue;
        int i = 0;
        if (type == 11) {
            float[] fArr2 = sensorEvent.values;
            if (fArr2.length > 4) {
                System.arraycopy(fArr2, 0, fArr, 0, 4);
            } else {
                fArr = fArr2;
            }
            this.rotationVectorValue = fArr;
            updateOrientation();
            return;
        }
        if (sensorEvent.sensor.getType() == 1) {
            float[] fArr3 = sensorEvent.values;
            if (fArr3.length > 4) {
                System.arraycopy(fArr3, 0, fArr, 0, 4);
            } else {
                fArr = fArr3;
            }
            float[] fArr4 = this.gravityValues;
            if (fArr4 != null) {
                while (i < fArr.length) {
                    float f = fArr4[i];
                    fArr4[i] = Animation.CC.m(fArr[i], f, 0.45f, f);
                    i++;
                }
                fArr = fArr4;
            }
            this.gravityValues = fArr;
            updateOrientation();
            return;
        }
        if (sensorEvent.sensor.getType() == 2) {
            float[] fArr5 = sensorEvent.values;
            if (fArr5.length > 4) {
                System.arraycopy(fArr5, 0, fArr, 0, 4);
            } else {
                fArr = fArr5;
            }
            float[] fArr6 = this.magneticValues;
            if (fArr6 != null) {
                while (i < fArr.length) {
                    float f2 = fArr6[i];
                    fArr6[i] = Animation.CC.m(fArr[i], f2, 0.45f, f2);
                    i++;
                }
                fArr = fArr6;
            }
            this.magneticValues = fArr;
            updateOrientation();
        }
    }

    public final void updateOrientation() {
        int i;
        int i2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime < this.compassUpdateNextTimestamp) {
            return;
        }
        float[] fArr = this.rotationVectorValue;
        float[] fArr2 = this.rotationMatrix;
        if (fArr != null) {
            SensorManager.getRotationMatrixFromVector(fArr2, fArr);
        } else {
            SensorManager.getRotationMatrix(fArr2, null, this.gravityValues, this.magneticValues);
        }
        WindowManager windowManager = this.windowManager;
        int rotation = windowManager.getDefaultDisplay().getRotation();
        int i3 = 130;
        int i4 = 129;
        if (rotation == 1) {
            i = 129;
            i2 = 2;
        } else if (rotation == 2) {
            i = 130;
            i2 = 129;
        } else if (rotation != 3) {
            i = 2;
            i2 = 1;
        } else {
            i2 = 130;
            i = 1;
        }
        float[] fArr3 = new float[9];
        SensorManager.remapCoordinateSystem(fArr2, i2, i, fArr3);
        float[] fArr4 = new float[3];
        SensorManager.getOrientation(fArr3, fArr4);
        double d = fArr4[1];
        if (d < -0.7853981633974483d) {
            int rotation2 = windowManager.getDefaultDisplay().getRotation();
            if (rotation2 == 1) {
                i3 = 3;
            } else if (rotation2 == 2) {
                i3 = 129;
                i4 = 131;
            } else if (rotation2 != 3) {
                i4 = 3;
                i3 = 1;
            } else {
                i4 = 1;
                i3 = 131;
            }
        } else if (d > 0.7853981633974483d) {
            int rotation3 = windowManager.getDefaultDisplay().getRotation();
            if (rotation3 != 1) {
                if (rotation3 == 2) {
                    i3 = 129;
                    i4 = 3;
                } else if (rotation3 != 3) {
                    i3 = 1;
                    i4 = 131;
                } else {
                    i3 = 3;
                    i4 = 1;
                }
            }
            i3 = 131;
        } else if (Math.abs(fArr4[2]) > 1.5707963267948966d) {
            int rotation4 = windowManager.getDefaultDisplay().getRotation();
            if (rotation4 != 1) {
                if (rotation4 == 2) {
                    i3 = 129;
                    i4 = 2;
                } else if (rotation4 != 3) {
                    i4 = 130;
                    i3 = 1;
                } else {
                    i3 = 2;
                    i4 = 1;
                }
            }
        } else {
            i3 = i2;
            i4 = i;
        }
        SensorManager.remapCoordinateSystem(fArr2, i3, i4, fArr3);
        SensorManager.getOrientation(fArr3, fArr4);
        float degrees = (float) Math.toDegrees(fArr4[0]);
        Iterator it = this.compassListeners.iterator();
        while (it.hasNext()) {
            LocationComponent.this.updateCompassHeading(degrees);
        }
        this.lastHeading = degrees;
        this.compassUpdateNextTimestamp = elapsedRealtime + 500;
    }
}
