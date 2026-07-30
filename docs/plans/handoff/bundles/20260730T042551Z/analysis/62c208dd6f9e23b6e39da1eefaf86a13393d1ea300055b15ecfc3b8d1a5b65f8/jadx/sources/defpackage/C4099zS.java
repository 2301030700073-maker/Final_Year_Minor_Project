package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* renamed from: zS, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4099zS {

    /* renamed from: do, reason: not valid java name */
    public final long f16907do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f16908do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4040yS f16909do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f16910do;

    /* renamed from: if, reason: not valid java name */
    public long f16911if;

    public C4099zS(C4040yS c4040yS, String str, long j) {
        this.f16909do = c4040yS;
        Preconditions.checkNotEmpty(str);
        this.f16908do = str;
        this.f16907do = j;
    }

    /* renamed from: do, reason: not valid java name */
    public final long m8802do() {
        if (!this.f16910do) {
            this.f16910do = true;
            this.f16911if = this.f16909do.m8724static().getLong(this.f16908do, this.f16907do);
        }
        return this.f16911if;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m8803if(long j) {
        SharedPreferences.Editor edit = this.f16909do.m8724static().edit();
        edit.putLong(this.f16908do, j);
        edit.apply();
        this.f16911if = j;
    }
}
