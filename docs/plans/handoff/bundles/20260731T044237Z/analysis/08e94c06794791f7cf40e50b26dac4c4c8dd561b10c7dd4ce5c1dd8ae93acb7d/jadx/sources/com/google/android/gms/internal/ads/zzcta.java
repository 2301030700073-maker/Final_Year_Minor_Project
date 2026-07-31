package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.facebook.react.uimanager.ViewProps;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzcta extends FrameLayout implements ViewTreeObserver.OnScrollChangedListener, ViewTreeObserver.OnGlobalLayoutListener {
    private final Context zza;
    private View zzb;

    private zzcta(Context context) {
        super(context);
        this.zza = context;
    }

    public static zzcta zza(Context context, View view, zzffu zzffuVar) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzcta zzctaVar = new zzcta(context);
        List list = zzffuVar.zzu;
        if (!list.isEmpty() && (resources = zzctaVar.zza.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            zzffv zzffvVar = (zzffv) list.get(0);
            zzctaVar.setLayoutParams(new FrameLayout.LayoutParams((int) (zzffvVar.zza * displayMetrics.density), (int) (zzffvVar.zzb * displayMetrics.density)));
        }
        zzctaVar.zzb = view;
        zzctaVar.addView(view);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzcci.zzb(zzctaVar, zzctaVar);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzcci.zza(zzctaVar, zzctaVar);
        JSONObject jSONObject = zzffuVar.zzah;
        RelativeLayout relativeLayout = new RelativeLayout(zzctaVar.zza);
        JSONObject optJSONObject = jSONObject.optJSONObject("header");
        if (optJSONObject != null) {
            zzctaVar.zzb(optJSONObject, relativeLayout, 10);
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("footer");
        if (optJSONObject2 != null) {
            zzctaVar.zzb(optJSONObject2, relativeLayout, 12);
        }
        zzctaVar.addView(relativeLayout);
        return zzctaVar;
    }

    private final void zzb(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.zza);
        textView.setTextColor(-1);
        textView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setText(jSONObject.optString("text", ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        int zzc = zzc(jSONObject.optDouble(ViewProps.PADDING, 0.0d));
        textView.setPadding(0, zzc, 0, zzc);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zzc(jSONObject.optDouble("height", 15.0d)));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    private final int zzc(double d) {
        com.google.android.gms.ads.internal.client.zzbb.zza();
        return com.google.android.gms.ads.internal.util.client.zzf.zzC(this.zza, (int) d);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.zzb.setY(-r0[1]);
    }
}
