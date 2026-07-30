package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public final class BS {

    /* renamed from: do, reason: not valid java name */
    public final String f238do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4040yS f239do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f240do;

    /* renamed from: if, reason: not valid java name */
    public String f241if;

    public BS(C4040yS c4040yS, String str) {
        this.f239do = c4040yS;
        Preconditions.checkNotEmpty(str);
        this.f238do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m187do() {
        if (!this.f240do) {
            this.f240do = true;
            this.f241if = this.f239do.m8724static().getString(this.f238do, null);
        }
        return this.f241if;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m188if(String str) {
        SharedPreferences.Editor edit = this.f239do.m8724static().edit();
        edit.putString(this.f238do, str);
        edit.apply();
        this.f241if = str;
    }
}
