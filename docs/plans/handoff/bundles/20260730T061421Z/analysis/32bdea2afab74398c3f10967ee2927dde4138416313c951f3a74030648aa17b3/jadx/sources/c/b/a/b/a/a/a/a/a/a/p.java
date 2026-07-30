package c.b.a.b.a.a.a.a.a.a;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$InteractionType;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public D f2335a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2336b;

    /* renamed from: c, reason: collision with root package name */
    public int f2337c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2338d;
    public boolean e;
    public int f;

    @Nullable
    public List g;
    public SuggestParcelables$InteractionType h;
    public boolean i;

    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putLong("screenSessionId", 0L);
        D d2 = this.f2335a;
        if (d2 == null) {
            bundle.putBundle("focusRect", null);
        } else {
            bundle.putBundle("focusRect", d2.a());
        }
        bundle.putBoolean("expandFocusRect", this.f2336b);
        bundle.putInt("focusRectExpandPx", this.f2337c);
        bundle.putBundle("previousContents", null);
        bundle.putBoolean("requestStats", false);
        bundle.putBoolean("requestDebugInfo", false);
        bundle.putBoolean("isRtlContent", this.f2338d);
        bundle.putBoolean("disallowCopyPaste", this.e);
        bundle.putInt("versionCode", this.f);
        if (this.g == null) {
            bundle.putParcelableArrayList("interactionEvents", null);
        } else {
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.g.size());
            for (q qVar : this.g) {
                if (qVar == null) {
                    arrayList.add(null);
                } else {
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("action", qVar.f2339a);
                    bundle2.putInt("actionButton", qVar.f2340b);
                    bundle2.putInt("actionIndex", qVar.f2341c);
                    bundle2.putInt("actionMasked", qVar.f2342d);
                    bundle2.putInt("buttonState", qVar.e);
                    bundle2.putInt("deviceId", qVar.f);
                    bundle2.putLong("downTimeMs", qVar.g);
                    bundle2.putInt("edgeFlags", qVar.h);
                    bundle2.putInt("motionEventFlags", qVar.i);
                    bundle2.putFloat("orientation", qVar.j);
                    bundle2.putFloat("rawX", qVar.k);
                    bundle2.putFloat("rawY", qVar.l);
                    bundle2.putInt("source", qVar.m);
                    bundle2.putFloat("toolMajor", qVar.n);
                    bundle2.putFloat("toolMinor", qVar.o);
                    bundle2.putFloat("x", qVar.p);
                    bundle2.putFloat("y", qVar.q);
                    bundle2.putFloat("xPrecision", qVar.r);
                    bundle2.putFloat("yPrecision", qVar.s);
                    D d3 = qVar.t;
                    if (d3 == null) {
                        bundle2.putBundle("bitmapCropRect", null);
                    } else {
                        bundle2.putBundle("bitmapCropRect", d3.a());
                    }
                    bundle2.putFloat("bitmapScaleX", qVar.u);
                    bundle2.putFloat("bitmapScaleY", qVar.v);
                    bundle2.putLong("eventTimeMs", qVar.w);
                    arrayList.add(bundle2);
                }
            }
            bundle.putParcelableArrayList("interactionEvents", arrayList);
        }
        SuggestParcelables$InteractionType suggestParcelables$InteractionType = this.h;
        if (suggestParcelables$InteractionType == null) {
            bundle.putBundle("interactionType", null);
        } else {
            bundle.putBundle("interactionType", suggestParcelables$InteractionType.g());
        }
        bundle.putBoolean("isPrimaryTask", this.i);
        return bundle;
    }
}
