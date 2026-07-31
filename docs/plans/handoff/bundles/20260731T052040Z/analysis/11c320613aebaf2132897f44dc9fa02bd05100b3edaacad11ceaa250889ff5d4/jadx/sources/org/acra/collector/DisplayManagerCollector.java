package org.acra.collector;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import java.lang.reflect.Field;
import java.util.Collection;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.acra.ACRA;
import org.acra.ErrorReporter;
import org.acra.ReportField;
import org.acra.builder.ReportBuilder;
import org.acra.config.CoreConfiguration;
import org.acra.data.CrashReportData;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DisplayManagerCollector extends BaseReportFieldCollector {
    public DisplayManagerCollector() {
        super(ReportField.DISPLAY);
    }

    private String activeFlags(SparseArray<String> sparseArray, int i) {
        StringBuilder sb = new StringBuilder();
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            int keyAt = sparseArray.keyAt(i2) & i;
            if (keyAt > 0) {
                if (sb.length() > 0) {
                    sb.append('+');
                }
                sb.append(sparseArray.get(keyAt));
            }
        }
        return sb.toString();
    }

    private void collectCurrentSizeRange(Display display, JSONObject jSONObject) {
        Point point = new Point();
        Point point2 = new Point();
        display.getCurrentSizeRange(point, point2);
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("smallest", new JSONArray((Collection) Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(point.x), Integer.valueOf(point.y)})));
        jSONObject2.put("largest", new JSONArray((Collection) Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(point2.x), Integer.valueOf(point2.y)})));
        jSONObject.put("currentSizeRange", jSONObject2);
    }

    private JSONObject collectDisplayData(Display display) {
        display.getMetrics(new DisplayMetrics());
        JSONObject jSONObject = new JSONObject();
        collectCurrentSizeRange(display, jSONObject);
        collectFlags(display, jSONObject);
        collectMetrics(display, jSONObject);
        collectRealMetrics(display, jSONObject);
        collectName(display, jSONObject);
        collectRealSize(display, jSONObject);
        collectRectSize(display, jSONObject);
        collectSize(display, jSONObject);
        collectRotation(display, jSONObject);
        collectIsValid(display, jSONObject);
        jSONObject.put("orientation", display.getRotation()).put("refreshRate", display.getRefreshRate()).put("height", display.getHeight()).put("width", display.getWidth()).put("pixelFormat", display.getPixelFormat());
        return jSONObject;
    }

    private void collectFlags(Display display, JSONObject jSONObject) {
        SparseArray<String> sparseArray = new SparseArray<>();
        int flags = display.getFlags();
        UIntArray.Iterator it = Intrinsics.iterator(display.getClass().getFields());
        while (it.hasNext()) {
            Field field = (Field) it.next();
            String name = field.getName();
            name.getClass();
            if (StringsKt__StringsJVMKt.startsWith(name, "FLAG_", false)) {
                try {
                    sparseArray.put(field.getInt(null), field.getName());
                } catch (IllegalAccessException unused) {
                }
            }
        }
        jSONObject.put("flags", activeFlags(sparseArray, flags));
    }

    private void collectIsValid(Display display, JSONObject jSONObject) {
        jSONObject.put("isValid", display.isValid());
    }

    private void collectMetrics(DisplayMetrics displayMetrics, JSONObject jSONObject) {
        jSONObject.put("density", displayMetrics.density).put("densityDpi", displayMetrics.densityDpi).put("scaledDensity", "x" + displayMetrics.scaledDensity).put("widthPixels", displayMetrics.widthPixels).put("heightPixels", displayMetrics.heightPixels).put("xdpi", displayMetrics.xdpi).put("ydpi", displayMetrics.ydpi);
    }

    private void collectName(Display display, JSONObject jSONObject) {
        jSONObject.put("name", display.getName());
    }

    private void collectRealMetrics(Display display, JSONObject jSONObject) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getRealMetrics(displayMetrics);
        JSONObject jSONObject2 = new JSONObject();
        collectMetrics(displayMetrics, jSONObject2);
        jSONObject.put("realMetrics", jSONObject2);
    }

    private void collectRealSize(Display display, JSONObject jSONObject) {
        Point point = new Point();
        display.getRealSize(point);
        jSONObject.put("realSize", new JSONArray((Collection) Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(point.x), Integer.valueOf(point.y)})));
    }

    private void collectRectSize(Display display, JSONObject jSONObject) {
        Rect rect = new Rect();
        display.getRectSize(rect);
        jSONObject.put("rectSize", new JSONArray((Collection) Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(rect.top), Integer.valueOf(rect.left), Integer.valueOf(rect.width()), Integer.valueOf(rect.height())})));
    }

    private void collectRotation(Display display, JSONObject jSONObject) {
        jSONObject.put("rotation", rotationToString(display.getRotation()));
    }

    private void collectSize(Display display, JSONObject jSONObject) {
        Point point = new Point();
        display.getSize(point);
        jSONObject.put("size", new JSONArray((Collection) Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(point.x), Integer.valueOf(point.y)})));
    }

    private Display[] getDisplays(Context context) {
        Object systemService = context.getSystemService("display");
        systemService.getClass();
        Display[] displays = ((DisplayManager) systemService).getDisplays();
        displays.getClass();
        return displays;
    }

    private String rotationToString(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? String.valueOf(i) : "ROTATION_270" : "ROTATION_180" : "ROTATION_90" : "ROTATION_0";
    }

    @Override // org.acra.collector.BaseReportFieldCollector
    public void collect(ReportField reportField, Context context, CoreConfiguration coreConfiguration, ReportBuilder reportBuilder, CrashReportData crashReportData) {
        reportField.getClass();
        context.getClass();
        coreConfiguration.getClass();
        reportBuilder.getClass();
        crashReportData.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Display display : getDisplays(context)) {
            try {
                jSONObject.put(String.valueOf(display.getDisplayId()), collectDisplayData(display));
            } catch (JSONException e) {
                ErrorReporter errorReporter = ACRA.errorReporter;
                Log.w("ACRA", "Failed to collect data for display " + display.getDisplayId(), e);
            }
        }
        crashReportData.put(ReportField.DISPLAY, jSONObject);
    }

    @Override // org.acra.collector.BaseReportFieldCollector, org.acra.collector.Collector, org.acra.plugins.Plugin
    public boolean enabled(CoreConfiguration coreConfiguration) {
        coreConfiguration.getClass();
        return true;
    }

    private void collectMetrics(Display display, JSONObject jSONObject) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        display.getMetrics(displayMetrics);
        JSONObject jSONObject2 = new JSONObject();
        collectMetrics(displayMetrics, jSONObject2);
        jSONObject.put("metrics", jSONObject2);
    }
}
