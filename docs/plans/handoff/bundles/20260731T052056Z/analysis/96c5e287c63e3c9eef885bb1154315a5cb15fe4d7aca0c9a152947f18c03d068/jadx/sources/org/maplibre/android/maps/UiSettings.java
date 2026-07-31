package org.maplibre.android.maps;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import org.maplibre.android.maps.MapView;
import org.maplibre.android.maps.widgets.CompassView;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UiSettings {
    public ImageView attributionsView;
    public double clockwiseBearing;
    public CompassView compassView;
    public final FocalPointChangeListener focalPointChangeListener;
    public ImageView logoView;
    public final MapView mapView;
    public final float pixelRatio;
    public final MapView.AnonymousClass2 projection;
    public PointF userProvidedFocalPoint;
    public final int[] compassMargins = new int[4];
    public final int[] attributionsMargins = new int[4];
    public final int[] logoMargins = new int[4];
    public boolean rotateGesturesEnabled = true;
    public boolean tiltGesturesEnabled = true;
    public boolean zoomGesturesEnabled = true;
    public boolean scrollGesturesEnabled = true;
    public boolean horizontalScrollGesturesEnabled = true;
    public boolean doubleTapGesturesEnabled = true;
    public boolean quickZoomGesturesEnabled = true;
    public boolean scaleVelocityAnimationEnabled = true;
    public boolean rotateVelocityAnimationEnabled = true;
    public boolean flingVelocityAnimationEnabled = true;
    public boolean increaseRotateThresholdWhenScaling = true;
    public boolean disableRotateWhenScaling = true;
    public boolean increaseScaleThresholdWhenRotating = true;
    public float zoomRate = 1.0f;
    public boolean deselectMarkersOnTap = true;
    public boolean isCompassInitialized = false;
    public boolean isAttributionInitialized = false;
    public boolean isLogoInitialized = false;

    public UiSettings(MapView.AnonymousClass2 anonymousClass2, FocalPointChangeListener focalPointChangeListener, float f, MapView mapView) {
        this.projection = anonymousClass2;
        this.focalPointChangeListener = focalPointChangeListener;
        this.pixelRatio = f;
        this.mapView = mapView;
    }

    public static void setWidgetMargins(int i, int i2, int i3, int i4, View view, int[] iArr) {
        iArr[0] = i;
        iArr[1] = i2;
        iArr[2] = i3;
        iArr[3] = i4;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.setMargins(i, i2, i3, i4);
        layoutParams.setMarginStart(i);
        layoutParams.setMarginEnd(i3);
        view.setLayoutParams(layoutParams);
    }

    public final void initialiseAttribution(Context context, MapLibreMapOptions mapLibreMapOptions) {
        int color;
        this.isAttributionInitialized = true;
        this.attributionsView = this.mapView.initialiseAttributionView();
        setAttributionEnabled(mapLibreMapOptions.attributionEnabled);
        int i = mapLibreMapOptions.attributionGravity;
        ImageView imageView = this.attributionsView;
        if (imageView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.gravity = i;
            imageView.setLayoutParams(layoutParams);
        }
        int[] iArr = mapLibreMapOptions.attributionMargins;
        if (iArr != null) {
            setAttributionMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
        } else {
            Resources resources = context.getResources();
            int dimension = (int) resources.getDimension(R.dimen.maplibre_four_dp);
            setAttributionMargins((int) resources.getDimension(R.dimen.maplibre_ninety_two_dp), dimension, dimension, dimension);
        }
        int i2 = mapLibreMapOptions.attributionTintColor;
        if (i2 == -1) {
            try {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(context.getResources().getIdentifier("colorPrimary", "attrs", context.getPackageName()), typedValue, true);
                color = typedValue.data;
            } catch (Exception unused) {
                color = context.getResources().getColor(R.color.maplibre_blue, context.getTheme());
            }
            i2 = color;
        }
        setAttributionTintColor(i2);
    }

    public final void initialiseCompass(MapLibreMapOptions mapLibreMapOptions, Resources resources) {
        this.isCompassInitialized = true;
        this.compassView = this.mapView.initialiseCompassView();
        setCompassEnabled(mapLibreMapOptions.compassEnabled);
        int i = mapLibreMapOptions.compassGravity;
        CompassView compassView = this.compassView;
        if (compassView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) compassView.getLayoutParams();
            layoutParams.gravity = i;
            compassView.setLayoutParams(layoutParams);
        }
        int[] iArr = mapLibreMapOptions.compassMargins;
        int[] iArr2 = this.compassMargins;
        if (iArr != null) {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            CompassView compassView2 = this.compassView;
            if (compassView2 != null) {
                setWidgetMargins(i2, i3, i4, i5, compassView2, iArr2);
            }
        } else {
            int dimension = (int) resources.getDimension(R.dimen.maplibre_four_dp);
            CompassView compassView3 = this.compassView;
            if (compassView3 != null) {
                setWidgetMargins(dimension, dimension, dimension, dimension, compassView3, iArr2);
            }
        }
        boolean z = mapLibreMapOptions.fadeCompassFacingNorth;
        CompassView compassView4 = this.compassView;
        if (compassView4 != null) {
            compassView4.fadeCompassViewFacingNorth = z;
        }
        Drawable drawable = mapLibreMapOptions.compassImage;
        if (drawable == null) {
            ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
            drawable = resources.getDrawable(R.drawable.maplibre_compass_icon, null);
            mapLibreMapOptions.compassImage = drawable;
        }
        CompassView compassView5 = this.compassView;
        if (compassView5 != null) {
            compassView5.setCompassImage(drawable);
        }
    }

    public final void initialiseLogo(MapLibreMapOptions mapLibreMapOptions, Resources resources) {
        this.isLogoInitialized = true;
        this.logoView = this.mapView.initialiseLogoView();
        setLogoEnabled(mapLibreMapOptions.logoEnabled);
        int i = mapLibreMapOptions.logoGravity;
        ImageView imageView = this.logoView;
        if (imageView != null) {
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.gravity = i;
            imageView.setLayoutParams(layoutParams);
        }
        int[] iArr = mapLibreMapOptions.logoMargins;
        int[] iArr2 = this.logoMargins;
        if (iArr == null) {
            int dimension = (int) resources.getDimension(R.dimen.maplibre_four_dp);
            ImageView imageView2 = this.logoView;
            if (imageView2 != null) {
                setWidgetMargins(dimension, dimension, dimension, dimension, imageView2, iArr2);
                return;
            }
            return;
        }
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[3];
        ImageView imageView3 = this.logoView;
        if (imageView3 != null) {
            setWidgetMargins(i2, i3, i4, i5, imageView3, iArr2);
        }
    }

    public final void setAttributionEnabled(boolean z) {
        if (z && !this.isAttributionInitialized) {
            MapView mapView = this.mapView;
            initialiseAttribution(mapView.getContext(), mapView.maplibreMapOptions);
        }
        ImageView imageView = this.attributionsView;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public final void setAttributionMargins(int i, int i2, int i3, int i4) {
        ImageView imageView = this.attributionsView;
        if (imageView != null) {
            setWidgetMargins(i, i2, i3, i4, imageView, this.attributionsMargins);
        }
    }

    public final void setAttributionTintColor(int i) {
        if (this.attributionsView == null) {
            return;
        }
        int alpha = Color.alpha(i);
        ImageView imageView = this.attributionsView;
        if (alpha != 0) {
            imageView.setImageTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{i, i}));
        } else {
            int color = imageView.getContext().getColor(R.color.maplibre_blue);
            imageView.setImageTintList(new ColorStateList(new int[][]{new int[]{android.R.attr.state_pressed}, new int[0]}, new int[]{color, color}));
        }
    }

    public final void setCompassEnabled(boolean z) {
        if (z && !this.isCompassInitialized) {
            MapView mapView = this.mapView;
            initialiseCompass(mapView.maplibreMapOptions, mapView.getContext().getResources());
        }
        CompassView compassView = this.compassView;
        if (compassView != null) {
            compassView.setEnabled(z);
            this.compassView.update(this.clockwiseBearing);
        }
    }

    public final void setLogoEnabled(boolean z) {
        if (z && !this.isLogoInitialized) {
            MapView mapView = this.mapView;
            initialiseLogo(mapView.maplibreMapOptions, mapView.getContext().getResources());
        }
        ImageView imageView = this.logoView;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }
}
