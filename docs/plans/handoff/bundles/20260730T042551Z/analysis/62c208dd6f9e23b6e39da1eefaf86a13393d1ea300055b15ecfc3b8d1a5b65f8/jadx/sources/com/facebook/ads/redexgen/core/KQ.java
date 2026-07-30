package com.facebook.ads.redexgen.core;

import android.media.AudioManager;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class KQ extends AbstractC1831bx {
    public static byte[] A01;
    public final /* synthetic */ KO A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{90, 78, 95, 82, 84};
    }

    public KQ(KO ko) {
        this.A00 = ko;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(KY ky) {
        WeakReference weakReference;
        WeakReference weakReference2;
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        AudioManager audioManager = (AudioManager) this.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 92));
        weakReference = this.A00.A00;
        if (weakReference == null) {
            onAudioFocusChangeListener = null;
        } else {
            weakReference2 = this.A00.A00;
            onAudioFocusChangeListener = (AudioManager.OnAudioFocusChangeListener) weakReference2.get();
        }
        audioManager.abandonAudioFocus(onAudioFocusChangeListener);
    }
}
