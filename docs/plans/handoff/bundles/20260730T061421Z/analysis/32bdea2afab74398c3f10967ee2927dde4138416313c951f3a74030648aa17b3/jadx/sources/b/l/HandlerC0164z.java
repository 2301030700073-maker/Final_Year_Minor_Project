package b.l;

import android.os.Handler;
import android.os.Message;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;

/* renamed from: b.l.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class HandlerC0164z extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PreferenceFragmentCompat f1074a;

    public HandlerC0164z(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.f1074a = preferenceFragmentCompat;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        PreferenceFragmentCompat preferenceFragmentCompat = this.f1074a;
        PreferenceScreen preferenceScreen = preferenceFragmentCompat.mPreferenceManager.h;
        if (preferenceScreen != null) {
            preferenceFragmentCompat.mList.setAdapter(new M(preferenceScreen));
            preferenceScreen.onAttached();
        }
    }
}
