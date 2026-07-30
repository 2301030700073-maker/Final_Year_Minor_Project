package defpackage;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.core.graphics.drawable.IconCompat;

/* renamed from: cv, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2602cv {

    /* renamed from: do, reason: not valid java name */
    public final int f12394do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PendingIntent f12395do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Bundle f12396do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public IconCompat f12397do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CharSequence f12398do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f12399do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3598qz[] f12400do;

    /* renamed from: for, reason: not valid java name */
    public final boolean f12401for;

    /* renamed from: if, reason: not valid java name */
    @Deprecated
    public final int f12402if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f12403if;

    /* renamed from: new, reason: not valid java name */
    public final boolean f12404new;

    public C2602cv(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, C3598qz[] c3598qzArr, C3598qz[] c3598qzArr2, boolean z, int i, boolean z2, boolean z3, boolean z4) {
        this.f12403if = true;
        this.f12397do = iconCompat;
        if (iconCompat != null && iconCompat.m3725try() == 2) {
            this.f12402if = iconCompat.m3724new();
        }
        this.f12398do = C2778fv.m6684if(charSequence);
        this.f12395do = pendingIntent;
        this.f12396do = bundle == null ? new Bundle() : bundle;
        this.f12400do = c3598qzArr;
        this.f12399do = z;
        this.f12394do = i;
        this.f12403if = z2;
        this.f12401for = z3;
        this.f12404new = z4;
    }
}
