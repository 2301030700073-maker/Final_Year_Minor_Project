package b.l;

import androidx.preference.PreferenceGroup;

/* loaded from: classes.dex */
public class F implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceGroup f1023a;

    public F(PreferenceGroup preferenceGroup) {
        this.f1023a = preferenceGroup;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            this.f1023a.f162a.clear();
        }
    }
}
