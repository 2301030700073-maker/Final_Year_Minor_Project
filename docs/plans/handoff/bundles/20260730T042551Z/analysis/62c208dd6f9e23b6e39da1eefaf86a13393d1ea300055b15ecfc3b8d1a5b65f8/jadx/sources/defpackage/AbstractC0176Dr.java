package defpackage;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import com.joeykrim.rootcheck.R;

/* renamed from: Dr, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC0176Dr<V extends View> {

    /* renamed from: do, reason: not valid java name */
    public final int f688do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public B4 f689do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TimeInterpolator f690do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final V f691do;

    /* renamed from: for, reason: not valid java name */
    public final int f692for;

    /* renamed from: if, reason: not valid java name */
    public final int f693if;

    public AbstractC0176Dr(V v) {
        this.f691do = v;
        Context context = v.getContext();
        this.f690do = C0222Ft.m651new(context, R.attr.motionEasingStandardDecelerateInterpolator, Bw.m241if(0.0f, 0.0f, 0.0f, 1.0f));
        this.f688do = C0222Ft.m649for(context, R.attr.motionDurationMedium2, 300);
        this.f693if = C0222Ft.m649for(context, R.attr.motionDurationShort3, 150);
        this.f692for = C0222Ft.m649for(context, R.attr.motionDurationShort2, 100);
    }
}
