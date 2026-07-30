package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import com.facebook.ads.AdError;
import com.joeykrim.rootcheck.R;

/* loaded from: classes.dex */
public final class OH {

    /* renamed from: do, reason: not valid java name */
    public final Context f2619do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Rect f2620do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final View f2621do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WindowManager.LayoutParams f2622do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TextView f2623do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final int[] f2624do;

    /* renamed from: if, reason: not valid java name */
    public final int[] f2625if;

    public OH(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f2622do = layoutParams;
        this.f2620do = new Rect();
        this.f2624do = new int[2];
        this.f2625if = new int[2];
        this.f2619do = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f2621do = inflate;
        this.f2623do = (TextView) inflate.findViewById(R.id.message);
        layoutParams.setTitle(OH.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }
}
