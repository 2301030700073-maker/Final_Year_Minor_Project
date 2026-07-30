package defpackage;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.consent_sdk.zzci;
import com.google.android.gms.internal.consent_sdk.zzcq;
import java.util.ArrayList;

/* renamed from: ra, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3631ra {

    /* renamed from: do, reason: not valid java name */
    public final boolean f15294do;

    /* renamed from: ra$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final Context f15295do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f15296do = new ArrayList();

        public Cdo(@RecentlyNonNull Context context) {
            this.f15295do = context.getApplicationContext();
        }

        @RecentlyNonNull
        /* renamed from: do, reason: not valid java name */
        public final C3631ra m7972do() {
            boolean z = true;
            if (!zzcq.zza(true) && !this.f15296do.contains(zzci.zza(this.f15295do))) {
                z = false;
            }
            return new C3631ra(z, this);
        }
    }

    public /* synthetic */ C3631ra(boolean z, Cdo cdo) {
        this.f15294do = z;
        cdo.getClass();
    }
}
