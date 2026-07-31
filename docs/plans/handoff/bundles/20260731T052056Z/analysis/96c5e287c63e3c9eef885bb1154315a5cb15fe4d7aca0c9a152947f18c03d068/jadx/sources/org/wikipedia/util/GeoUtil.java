package org.wikipedia.util;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Insets;
import android.graphics.Outline;
import android.graphics.drawable.Icon;
import android.icu.number.LocalizedNumberFormatter;
import android.icu.number.NumberFormatter;
import android.icu.number.Precision;
import android.icu.util.Measure;
import android.icu.util.MeasureUnit;
import android.icu.util.ULocale;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.text.DecimalFormat;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class GeoUtil {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Cluster {
        public final Location centroid;
        public final int id;
        public final List locations;

        public Cluster(int i, List list, Location location) {
            this.id = i;
            this.locations = list;
            this.centroid = location;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cluster)) {
                return false;
            }
            Cluster cluster = (Cluster) obj;
            return this.id == cluster.id && this.locations.equals(cluster.locations) && Intrinsics.areEqual(this.centroid, cluster.centroid);
        }

        public final int hashCode() {
            int m = Modifier.CC.m(this.id * 31, 31, this.locations);
            Location location = this.centroid;
            return m + (location == null ? 0 : location.hashCode());
        }

        public final String toString() {
            return "Cluster(id=" + this.id + ", locations=" + this.locations + ", centroid=" + this.centroid + ")";
        }
    }

    public static Icon createWithAdaptiveBitmapContentUri(Uri uri) {
        return Icon.createWithAdaptiveBitmapContentUri(uri);
    }

    public static String getDistanceWithUnit(Location location, Location location2, Locale locale) {
        location.getClass();
        boolean contains = Room.listOf((Object[]) new String[]{"US", "GB", "LR", "MM"}).contains(locale.getCountry());
        double distanceTo = location.distanceTo(location2) / 1000.0d;
        if (contains) {
            distanceTo *= 0.62137119d;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            ULocale forLocale = ULocale.forLocale(locale);
            Measure measure = new Measure(Double.valueOf(distanceTo), contains ? MeasureUnit.MILE : MeasureUnit.KILOMETER);
            String formattedNumber = ((LocalizedNumberFormatter) ((LocalizedNumberFormatter) ((LocalizedNumberFormatter) NumberFormatter.withLocale(forLocale).unit(measure.getUnit())).unitWidth(NumberFormatter.UnitWidth.SHORT)).precision(Precision.maxFraction(2))).format(measure.getNumber()).toString();
            formattedNumber.getClass();
            return formattedNumber;
        }
        return new DecimalFormat("#.##").format(distanceTo) + " " + (contains ? "mi" : "km");
    }

    public static void getExtensionVersion(int i) {
        SdkExtensions.getExtensionVersion(i);
    }

    public static CharSequence getStateDescription(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getStateDescription();
    }

    public static Insets getWaterfallInsets(DisplayCutout displayCutout) {
        return displayCutout.getWaterfallInsets();
    }

    public static void sendGeoIntent(AppCompatActivity appCompatActivity, Location location, String str) {
        location.getClass();
        String str2 = "geo:0,0?q=" + location.getLatitude() + "," + location.getLongitude();
        if (str != null && str.length() != 0) {
            str2 = ViewSizeResolver$CC.m(str2, "(", Uri.encode(str), ")");
        }
        try {
            Uri parse = Uri.parse(str2);
            parse.getClass();
            appCompatActivity.startActivity(new Intent("android.intent.action.VIEW", parse));
        } catch (ActivityNotFoundException unused) {
            ShareUtil.showMessage(appCompatActivity, R.string.error_no_maps_app);
        }
    }

    public static void setDecorFitsSystemWindows(Window window, boolean z) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z ? systemUiVisibility & (-257) : systemUiVisibility | 256);
        window.setDecorFitsSystemWindows(z);
    }

    public static void setImportantForContentCapture(View view) {
        view.setImportantForContentCapture(1);
    }

    public static void setPath(Outline outline, AndroidPath androidPath) {
        if (androidPath instanceof AndroidPath) {
            outline.setPath(androidPath.internalPath);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m("Unable to obtain android.graphics.Path");
        }
    }

    public static void setStateDescription(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        accessibilityNodeInfo.setStateDescription(charSequence);
    }
}
