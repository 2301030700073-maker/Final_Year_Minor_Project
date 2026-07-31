package org.maplibre.android.maps;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.MapLibre;
import org.maplibre.android.attribution.Attribution;
import org.maplibre.android.attribution.AttributionParser;
import org.maplibre.android.camera.CameraPosition;
import org.maplibre.android.style.sources.Source;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AttributionDialogManager implements View.OnClickListener, DialogInterface.OnClickListener {
    public Set attributionSet;
    public final Context context;
    public AlertDialog dialog;
    public final MapLibreMap maplibreMap;

    public AttributionDialogManager(Context context, MapLibreMap mapLibreMap) {
        this.context = context;
        this.maplibreMap = mapLibreMap;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Set set = this.attributionSet;
        String str = ((Attribution[]) set.toArray(new Attribution[set.size()]))[i].url;
        boolean contains = str.contains("https://www.mapbox.com/map-feedback");
        Context context = this.context;
        if (contains || str.contains("https://apps.mapbox.com/feedback")) {
            String apiKey = MapLibre.getApiKey();
            Uri.Builder buildUpon = Uri.parse("https://apps.mapbox.com/feedback").buildUpon();
            MapLibreMap mapLibreMap = this.maplibreMap;
            CameraPosition cameraPosition = mapLibreMap.transform.getCameraPosition();
            if (cameraPosition != null) {
                buildUpon.encodedFragment(String.format(Locale.getDefault(), "/%f/%f/%f/%f/%d", Double.valueOf(cameraPosition.target.getLongitude()), Double.valueOf(cameraPosition.target.getLatitude()), Double.valueOf(cameraPosition.zoom), Double.valueOf(cameraPosition.bearing), Integer.valueOf((int) cameraPosition.tilt)));
            }
            String packageName = context.getApplicationContext().getPackageName();
            if (packageName != null) {
                buildUpon.appendQueryParameter("referrer", packageName);
            }
            if (apiKey != null) {
                buildUpon.appendQueryParameter("access_token", apiKey);
            }
            Style style = mapLibreMap.getStyle();
            if (style != null) {
                style.validateState("getUri");
                Matcher matcher = Pattern.compile("^(.*://[^:^/]*)/(.*)/(.*)").matcher(((NativeMapView) style.nativeMap).getStyleUri());
                if (matcher.find()) {
                    buildUpon.appendQueryParameter("owner", matcher.group(2)).appendQueryParameter("id", matcher.group(3));
                }
            }
            str = buildUpon.build().toString();
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Toast.makeText(context, R.string.maplibre_attributionErrorNoBrowser, 1).show();
            UStringsKt.strictModeViolation(e);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Set set;
        Context context = (Context) new WeakReference(view.getContext()).get();
        if (context == null) {
            set = Collections.EMPTY_SET;
        } else {
            ArrayList arrayList = new ArrayList();
            Style style = this.maplibreMap.getStyle();
            if (style != null) {
                style.validateState("getSources");
                Iterator it = ((NativeMapView) style.nativeMap).getSources().iterator();
                while (it.hasNext()) {
                    String attribution = ((Source) it.next()).getAttribution();
                    if (!attribution.isEmpty()) {
                        arrayList.add(attribution);
                    }
                }
            }
            new WeakReference(context);
            String[] strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
            if (strArr != null) {
                StringBuilder sb = new StringBuilder();
                for (String str : strArr) {
                    if (!str.isEmpty()) {
                        sb.append(str);
                    }
                }
                AttributionParser attributionParser = new AttributionParser(sb.toString(), true, true);
                attributionParser.parseAttributions();
                set = attributionParser.attributions;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Using builder without providing attribution data");
                return;
            }
        }
        this.attributionSet = set;
        Context context2 = this.context;
        if (context2 instanceof Activity ? ((Activity) context2).isFinishing() : false) {
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = this.attributionSet.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Attribution) it2.next()).title);
        }
        String[] strArr2 = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
        AlertDialog.Builder builder = new AlertDialog.Builder(context2);
        builder.setTitle(R.string.maplibre_attributionsDialogTitle);
        builder.setAdapter(new ArrayAdapter(context2, R.layout.maplibre_attribution_list_item, strArr2), this);
        this.dialog = builder.show();
    }
}
