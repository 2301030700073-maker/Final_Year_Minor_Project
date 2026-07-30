package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzfbo;
import com.google.android.gms.internal.ads.zzfty;
import com.google.android.gms.internal.ads.zzfvc;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbv {
    /* renamed from: do, reason: not valid java name */
    public static JSONObject m5570do(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, rect.right - rect.left));
        jSONObject.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, rect.bottom - rect.top));
        jSONObject.put("x", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, rect.left));
        jSONObject.put("y", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    public static Point zza(MotionEvent motionEvent, View view) {
        int[] zzj = zzj(view);
        return new Point(((int) motionEvent.getRawX()) - zzj[0], ((int) motionEvent.getRawY()) - zzj[1]);
    }

    public static WindowManager.LayoutParams zzb() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhT)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zzc(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e) {
            e = e;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("x", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, point2.x));
                jSONObject3.put("y", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, point2.y));
                jSONObject3.put("start_x", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, point.x));
                jSONObject3.put("start_y", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context, point.y));
                jSONObject2 = jSONObject3;
            } catch (JSONException e2) {
                zzo.zzh("Error occurred while putting signals into JSON object.", e2);
            }
            jSONObject.put("click_point", jSONObject2);
            jSONObject.put("asset_id", str);
            return jSONObject;
        } catch (Exception e3) {
            e = e3;
            jSONObject2 = jSONObject;
            zzo.zzh("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
    }

    public static JSONObject zzd(Context context, Map map, Map map2, View view, ImageView.ScaleType scaleType) {
        String str;
        String str2;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        Context context2 = context;
        String str3 = "ad_view";
        String str4 = "relative_to";
        JSONObject jSONObject3 = new JSONObject();
        if (map != null && view != null) {
            int[] zzj = zzj(view);
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                View view2 = (View) ((WeakReference) entry.getValue()).get();
                if (view2 != null) {
                    int[] zzj2 = zzj(view2);
                    JSONObject jSONObject4 = new JSONObject();
                    JSONObject jSONObject5 = new JSONObject();
                    Iterator it2 = it;
                    try {
                        JSONObject jSONObject6 = jSONObject3;
                        try {
                            jSONObject5.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, view2.getMeasuredWidth()));
                            jSONObject5.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, view2.getMeasuredHeight()));
                            jSONObject5.put("x", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, zzj2[0] - zzj[0]));
                            jSONObject5.put("y", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, zzj2[1] - zzj[1]));
                            jSONObject5.put(str4, str3);
                            jSONObject4.put("frame", jSONObject5);
                            Rect rect = new Rect();
                            if (view2.getLocalVisibleRect(rect)) {
                                jSONObject2 = m5570do(context2, rect);
                            } else {
                                jSONObject2 = new JSONObject();
                                jSONObject2.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, 0);
                                jSONObject2.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, 0);
                                jSONObject2.put("x", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, zzj2[0] - zzj[0]));
                                jSONObject2.put("y", com.google.android.gms.ads.internal.client.zzbc.zzb().zzb(context2, zzj2[1] - zzj[1]));
                                jSONObject2.put(str4, str3);
                            }
                            jSONObject4.put("visible_bounds", jSONObject2);
                            if (((String) entry.getKey()).equals("3010")) {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhO)).booleanValue()) {
                                    jSONObject4.put("mediaview_graphics_matrix", view2.getMatrix().toShortString());
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhP)).booleanValue()) {
                                    ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
                                    int i = layoutParams.width;
                                    int i2 = 2;
                                    jSONObject4.put("view_width_layout_type", (i != -2 ? i != -1 ? 2 : 3 : 4) - 1);
                                    int i3 = layoutParams.height;
                                    if (i3 == -2) {
                                        i2 = 4;
                                    } else if (i3 == -1) {
                                        i2 = 3;
                                    }
                                    jSONObject4.put("view_height_layout_type", i2 - 1);
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhQ)).booleanValue()) {
                                    ArrayList arrayList = new ArrayList();
                                    arrayList.add(Integer.valueOf(view2.getId()));
                                    for (ViewParent parent = view2.getParent(); parent instanceof View; parent = parent.getParent()) {
                                        arrayList.add(Integer.valueOf(((View) parent).getId()));
                                    }
                                    jSONObject4.put("view_path", TextUtils.join("/", arrayList));
                                }
                                if (scaleType != null) {
                                    jSONObject4.put("mediaview_scale_type", scaleType.ordinal());
                                }
                            }
                            if (view2 instanceof TextView) {
                                TextView textView = (TextView) view2;
                                jSONObject4.put("text_color", textView.getCurrentTextColor());
                                str = str3;
                                str2 = str4;
                                try {
                                    jSONObject4.put(ViewHierarchyConstants.TEXT_SIZE, textView.getTextSize());
                                    jSONObject4.put(ViewHierarchyConstants.TEXT_KEY, textView.getText());
                                } catch (JSONException unused) {
                                    jSONObject = jSONObject6;
                                    zzo.zzj("Unable to get asset views information");
                                    context2 = context;
                                    it = it2;
                                    jSONObject3 = jSONObject;
                                    str3 = str;
                                    str4 = str2;
                                }
                            } else {
                                str = str3;
                                str2 = str4;
                            }
                            jSONObject4.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                            jSONObject = jSONObject6;
                        } catch (JSONException unused2) {
                            str = str3;
                            str2 = str4;
                        }
                    } catch (JSONException unused3) {
                        str = str3;
                        str2 = str4;
                        jSONObject = jSONObject3;
                    }
                    try {
                        jSONObject.put((String) entry.getKey(), jSONObject4);
                    } catch (JSONException unused4) {
                        zzo.zzj("Unable to get asset views information");
                        context2 = context;
                        it = it2;
                        jSONObject3 = jSONObject;
                        str3 = str;
                        str4 = str2;
                    }
                    context2 = context;
                    it = it2;
                    jSONObject3 = jSONObject;
                    str3 = str;
                    str4 = str2;
                } else {
                    context2 = context;
                }
            }
        }
        return jSONObject3;
    }

    public static JSONObject zze(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                com.google.android.gms.ads.internal.zzv.zzq();
                jSONObject.put("can_show_on_lock_screen", zzs.zzo(view));
                com.google.android.gms.ads.internal.zzv.zzq();
                jSONObject.put("is_keyguard_locked", zzs.zzE(context));
            } catch (JSONException unused) {
                zzo.zzj("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    public static JSONObject zzf(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhN)).booleanValue()) {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    ViewParent parent = view.getParent();
                    while (parent != null && !(parent instanceof ScrollView)) {
                        parent = parent.getParent();
                    }
                    if (parent != null) {
                        r2 = true;
                    }
                    jSONObject.put("contained_in_scroll_view", r2);
                } else {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    ViewParent parent2 = view.getParent();
                    while (parent2 != null && !(parent2 instanceof AdapterView)) {
                        parent2 = parent2.getParent();
                    }
                    jSONObject.put("contained_in_scroll_view", (parent2 == null ? -1 : ((AdapterView) parent2).getPositionForView(view)) != -1);
                }
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:3|4|5|(2:8|6)|9|10|(1:12)(1:75)|13|14|(7:66|67|17|18|19|20|(9:22|(7:26|27|28|(2:30|(4:32|33|34|(6:36|37|(1:(1:40)(1:49))(1:50)|41|(1:(1:44)(1:47))(1:48)|45))(2:53|54))(1:57)|55|34|(0))|60|27|28|(0)(0)|55|34|(0))(9:61|(7:63|27|28|(0)(0)|55|34|(0))|60|27|28|(0)(0)|55|34|(0)))|16|17|18|19|20|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(9:22|(7:26|27|28|(2:30|(4:32|33|34|(6:36|37|(1:(1:40)(1:49))(1:50)|41|(1:(1:44)(1:47))(1:48)|45))(2:53|54))(1:57)|55|34|(0))|60|27|28|(0)(0)|55|34|(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0166, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x016a, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zzh("Could not log native template signal to JSON", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0168, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0181 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0160 A[Catch: JSONException -> 0x0166, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0166, blocks: (B:54:0x015c, B:57:0x0160), top: B:28:0x0151 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zzg(android.content.Context r16, android.view.View r17) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbv.zzg(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static boolean zzh(Context context, zzfbo zzfboVar) {
        if (!zzfboVar.zzN) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhR)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhU)).booleanValue();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzhS);
        if (!str.isEmpty() && context != null) {
            String packageName = context.getPackageName();
            Iterator it = zzfvc.zzb(zzfty.zzc(';')).zzd(str).iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean zzi(int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdB)).booleanValue()) {
            return ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzdC)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    public static int[] zzj(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }
}
