package com.airbnb.lottie.parser;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.svg.internal.AndroidSvg;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.Keyframe;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KeyframeParser {
    public static SparseArrayCompat pathInterpolatorCache;
    public static final LinearInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    public static final AndroidSvg NAMES = AndroidSvg.of("t", "s", "e", "o", "i", "h", "to", "ti");
    public static final AndroidSvg INTERPOLATOR_NAMES = AndroidSvg.of("x", "y");

    public static Interpolator interpolatorFor(PointF pointF, PointF pointF2) {
        WeakReference weakReference;
        Interpolator pathInterpolator;
        pointF.x = MiscUtils.clamp(pointF.x, -1.0f, 1.0f);
        pointF.y = MiscUtils.clamp(pointF.y, -100.0f, 100.0f);
        pointF2.x = MiscUtils.clamp(pointF2.x, -1.0f, 1.0f);
        float clamp = MiscUtils.clamp(pointF2.y, -100.0f, 100.0f);
        pointF2.y = clamp;
        float f = pointF.x;
        float f2 = pointF.y;
        float f3 = pointF2.x;
        Matrix matrix = Utils.IDENTITY_MATRIX;
        int i = f != RecyclerView.DECELERATION_RATE ? (int) (527.0f * f) : 17;
        if (f2 != RecyclerView.DECELERATION_RATE) {
            i = (int) (i * 31 * f2);
        }
        if (f3 != RecyclerView.DECELERATION_RATE) {
            i = (int) (i * 31 * f3);
        }
        if (clamp != RecyclerView.DECELERATION_RATE) {
            i = (int) (i * 31 * clamp);
        }
        AsyncUpdates asyncUpdates = L.defaultAsyncUpdates;
        synchronized (KeyframeParser.class) {
            SparseArrayCompat sparseArrayCompat = pathInterpolatorCache;
            if (sparseArrayCompat == null) {
                sparseArrayCompat = new SparseArrayCompat(0);
                pathInterpolatorCache = sparseArrayCompat;
            }
            weakReference = (WeakReference) ArraySetKt.commonGet(sparseArrayCompat, i);
        }
        Interpolator interpolator = weakReference != null ? (Interpolator) weakReference.get() : null;
        if (weakReference != null && interpolator != null) {
            return interpolator;
        }
        try {
            pathInterpolator = new PathInterpolator(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e) {
            pathInterpolator = "The Path cannot loop back on itself.".equals(e.getMessage()) ? new PathInterpolator(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, RecyclerView.DECELERATION_RATE), pointF2.y) : new LinearInterpolator();
        }
        AsyncUpdates asyncUpdates2 = L.defaultAsyncUpdates;
        try {
            putInterpolator(i, new WeakReference(pathInterpolator));
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return pathInterpolator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.animation.Interpolator] */
    /* JADX WARN: Type inference failed for: r8v2, types: [android.view.animation.Interpolator] */
    public static Keyframe parse(JsonReader jsonReader, LottieComposition lottieComposition, float f, ValueParser valueParser, boolean z, boolean z2) {
        Object obj;
        LinearInterpolator interpolatorFor;
        Interpolator interpolatorFor2;
        Interpolator interpolatorFor3;
        Object obj2;
        AndroidSvg androidSvg;
        LinearInterpolator linearInterpolator;
        AndroidSvg androidSvg2;
        PointF pointF;
        float f2;
        AndroidSvg androidSvg3 = NAMES;
        LinearInterpolator linearInterpolator2 = LINEAR_INTERPOLATOR;
        if (!z || !z2) {
            AndroidSvg androidSvg4 = androidSvg3;
            if (!z) {
                return new Keyframe(valueParser.parse(jsonReader, f));
            }
            jsonReader.beginObject();
            PointF pointF2 = null;
            PointF pointF3 = null;
            PointF pointF4 = null;
            PointF pointF5 = null;
            boolean z3 = false;
            Object obj3 = null;
            float f3 = RecyclerView.DECELERATION_RATE;
            Object obj4 = null;
            while (jsonReader.hasNext()) {
                AndroidSvg androidSvg5 = androidSvg4;
                switch (jsonReader.selectName(androidSvg5)) {
                    case 0:
                        androidSvg4 = androidSvg5;
                        f3 = (float) jsonReader.nextDouble();
                        continue;
                    case 1:
                        obj3 = valueParser.parse(jsonReader, f);
                        break;
                    case 2:
                        obj4 = valueParser.parse(jsonReader, f);
                        break;
                    case 3:
                        pointF5 = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                        break;
                    case 4:
                        pointF2 = JsonUtils.jsonToPoint(jsonReader, 1.0f);
                        break;
                    case 5:
                        if (jsonReader.nextInt() != 1) {
                            z3 = false;
                            break;
                        } else {
                            z3 = true;
                            break;
                        }
                    case 6:
                        pointF3 = JsonUtils.jsonToPoint(jsonReader, f);
                        break;
                    case 7:
                        pointF4 = JsonUtils.jsonToPoint(jsonReader, f);
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
                androidSvg4 = androidSvg5;
            }
            jsonReader.endObject();
            if (z3) {
                obj = obj3;
            } else {
                if (pointF5 != null && pointF2 != null) {
                    interpolatorFor = interpolatorFor(pointF5, pointF2);
                    obj = obj4;
                    Keyframe keyframe = new Keyframe(lottieComposition, obj3, obj, interpolatorFor, f3, (Float) null);
                    keyframe.pathCp1 = pointF3;
                    keyframe.pathCp2 = pointF4;
                    return keyframe;
                }
                obj = obj4;
            }
            interpolatorFor = linearInterpolator2;
            Keyframe keyframe2 = new Keyframe(lottieComposition, obj3, obj, interpolatorFor, f3, (Float) null);
            keyframe2.pathCp1 = pointF3;
            keyframe2.pathCp2 = pointF4;
            return keyframe2;
        }
        jsonReader.beginObject();
        PointF pointF6 = null;
        PointF pointF7 = null;
        PointF pointF8 = null;
        boolean z4 = false;
        PointF pointF9 = null;
        PointF pointF10 = null;
        PointF pointF11 = null;
        Object obj5 = null;
        PointF pointF12 = null;
        PointF pointF13 = null;
        float f4 = RecyclerView.DECELERATION_RATE;
        Object obj6 = null;
        while (jsonReader.hasNext()) {
            int selectName = jsonReader.selectName(androidSvg3);
            AndroidSvg androidSvg6 = INTERPOLATOR_NAMES;
            switch (selectName) {
                case 0:
                    androidSvg = androidSvg3;
                    linearInterpolator = linearInterpolator2;
                    f4 = (float) jsonReader.nextDouble();
                    break;
                case 1:
                    obj5 = valueParser.parse(jsonReader, f);
                    continue;
                case 2:
                    obj6 = valueParser.parse(jsonReader, f);
                    continue;
                case 3:
                    AndroidSvg androidSvg7 = androidSvg3;
                    PointF pointF14 = pointF7;
                    LinearInterpolator linearInterpolator3 = linearInterpolator2;
                    boolean z5 = z4;
                    Object obj7 = obj5;
                    if (jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT) {
                        jsonReader.beginObject();
                        float f5 = RecyclerView.DECELERATION_RATE;
                        float f6 = RecyclerView.DECELERATION_RATE;
                        float f7 = RecyclerView.DECELERATION_RATE;
                        float f8 = RecyclerView.DECELERATION_RATE;
                        while (jsonReader.hasNext()) {
                            int selectName2 = jsonReader.selectName(androidSvg6);
                            if (selectName2 == 0) {
                                JsonReader.Token peek = jsonReader.peek();
                                JsonReader.Token token = JsonReader.Token.NUMBER;
                                if (peek == token) {
                                    f7 = (float) jsonReader.nextDouble();
                                    f5 = f7;
                                } else {
                                    jsonReader.beginArray();
                                    f5 = (float) jsonReader.nextDouble();
                                    f7 = jsonReader.peek() == token ? (float) jsonReader.nextDouble() : f5;
                                    jsonReader.endArray();
                                }
                            } else if (selectName2 != 1) {
                                jsonReader.skipValue();
                            } else {
                                JsonReader.Token peek2 = jsonReader.peek();
                                JsonReader.Token token2 = JsonReader.Token.NUMBER;
                                if (peek2 == token2) {
                                    f8 = (float) jsonReader.nextDouble();
                                    f6 = f8;
                                } else {
                                    jsonReader.beginArray();
                                    f6 = (float) jsonReader.nextDouble();
                                    f8 = jsonReader.peek() == token2 ? (float) jsonReader.nextDouble() : f6;
                                    jsonReader.endArray();
                                }
                            }
                        }
                        pointF11 = new PointF(f5, f6);
                        pointF12 = new PointF(f7, f8);
                        jsonReader.endObject();
                    } else {
                        pointF9 = JsonUtils.jsonToPoint(jsonReader, f);
                    }
                    z4 = z5;
                    obj5 = obj7;
                    linearInterpolator2 = linearInterpolator3;
                    androidSvg3 = androidSvg7;
                    pointF7 = pointF14;
                    continue;
                case 4:
                    linearInterpolator = linearInterpolator2;
                    boolean z6 = z4;
                    if (jsonReader.peek() != JsonReader.Token.BEGIN_OBJECT) {
                        pointF10 = JsonUtils.jsonToPoint(jsonReader, f);
                        z4 = z6;
                        linearInterpolator2 = linearInterpolator;
                        break;
                    } else {
                        jsonReader.beginObject();
                        float f9 = RecyclerView.DECELERATION_RATE;
                        float f10 = RecyclerView.DECELERATION_RATE;
                        float f11 = RecyclerView.DECELERATION_RATE;
                        float f12 = RecyclerView.DECELERATION_RATE;
                        while (jsonReader.hasNext()) {
                            Object obj8 = obj5;
                            int selectName3 = jsonReader.selectName(androidSvg6);
                            if (selectName3 != 0) {
                                androidSvg2 = androidSvg3;
                                if (selectName3 != 1) {
                                    jsonReader.skipValue();
                                    obj5 = obj8;
                                    androidSvg3 = androidSvg2;
                                } else {
                                    JsonReader.Token peek3 = jsonReader.peek();
                                    JsonReader.Token token3 = JsonReader.Token.NUMBER;
                                    if (peek3 == token3) {
                                        pointF = pointF7;
                                        f12 = (float) jsonReader.nextDouble();
                                        obj5 = obj8;
                                        pointF8 = pointF8;
                                        f10 = f12;
                                    } else {
                                        pointF = pointF7;
                                        PointF pointF15 = pointF8;
                                        jsonReader.beginArray();
                                        float nextDouble = (float) jsonReader.nextDouble();
                                        if (jsonReader.peek() == token3) {
                                            f10 = nextDouble;
                                            f12 = (float) jsonReader.nextDouble();
                                        } else {
                                            f10 = nextDouble;
                                            f12 = f10;
                                        }
                                        jsonReader.endArray();
                                        obj5 = obj8;
                                        pointF8 = pointF15;
                                    }
                                }
                            } else {
                                androidSvg2 = androidSvg3;
                                pointF = pointF7;
                                PointF pointF16 = pointF8;
                                JsonReader.Token peek4 = jsonReader.peek();
                                JsonReader.Token token4 = JsonReader.Token.NUMBER;
                                if (peek4 == token4) {
                                    f11 = (float) jsonReader.nextDouble();
                                    obj5 = obj8;
                                    pointF8 = pointF16;
                                    f9 = f11;
                                } else {
                                    jsonReader.beginArray();
                                    pointF8 = pointF16;
                                    float nextDouble2 = (float) jsonReader.nextDouble();
                                    if (jsonReader.peek() == token4) {
                                        f2 = nextDouble2;
                                        f11 = (float) jsonReader.nextDouble();
                                    } else {
                                        f2 = nextDouble2;
                                        f11 = f2;
                                    }
                                    jsonReader.endArray();
                                    obj5 = obj8;
                                    f9 = f2;
                                }
                            }
                            androidSvg3 = androidSvg2;
                            pointF7 = pointF;
                        }
                        androidSvg = androidSvg3;
                        PointF pointF17 = new PointF(f9, f10);
                        pointF6 = new PointF(f11, f12);
                        jsonReader.endObject();
                        z4 = z6;
                        pointF13 = pointF17;
                        break;
                    }
                case 5:
                    if (jsonReader.nextInt() == 1) {
                        z4 = true;
                        break;
                    } else {
                        z4 = false;
                        continue;
                    }
                case 6:
                    pointF7 = JsonUtils.jsonToPoint(jsonReader, f);
                    continue;
                case 7:
                    pointF8 = JsonUtils.jsonToPoint(jsonReader, f);
                    continue;
                default:
                    jsonReader.skipValue();
                    continue;
            }
            linearInterpolator2 = linearInterpolator;
            androidSvg3 = androidSvg;
        }
        PointF pointF18 = pointF7;
        LinearInterpolator linearInterpolator4 = linearInterpolator2;
        boolean z7 = z4;
        Object obj9 = obj5;
        jsonReader.endObject();
        if (z7) {
            obj2 = obj9;
        } else {
            if (pointF9 != null && pointF10 != null) {
                linearInterpolator4 = interpolatorFor(pointF9, pointF10);
            } else if (pointF11 != null && pointF12 != null && pointF13 != null && pointF6 != null) {
                interpolatorFor2 = interpolatorFor(pointF11, pointF13);
                interpolatorFor3 = interpolatorFor(pointF12, pointF6);
                obj2 = obj6;
                linearInterpolator4 = null;
                Keyframe keyframe3 = (interpolatorFor2 != null || interpolatorFor3 == null) ? new Keyframe(lottieComposition, obj9, obj2, linearInterpolator4, f4, (Float) null) : new Keyframe(lottieComposition, obj9, obj2, interpolatorFor2, interpolatorFor3, f4);
                keyframe3.pathCp1 = pointF18;
                keyframe3.pathCp2 = pointF8;
                return keyframe3;
            }
            obj2 = obj6;
        }
        interpolatorFor2 = null;
        interpolatorFor3 = null;
        if (interpolatorFor2 != null) {
        }
        keyframe3.pathCp1 = pointF18;
        keyframe3.pathCp2 = pointF8;
        return keyframe3;
    }

    public static void putInterpolator(int i, WeakReference weakReference) {
        synchronized (KeyframeParser.class) {
            pathInterpolatorCache.put(i, weakReference);
        }
    }
}
