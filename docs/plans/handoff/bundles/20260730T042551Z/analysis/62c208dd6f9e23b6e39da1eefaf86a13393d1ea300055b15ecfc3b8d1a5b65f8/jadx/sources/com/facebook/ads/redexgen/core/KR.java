package com.facebook.ads.redexgen.core;

import android.media.AudioManager;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public class KR extends AbstractC1837c3 {
    public static byte[] A01;
    public static String[] A02 = {"QO", "Z8VzzUk48H2MjHputsbFKGrTuA", "oizJfYv64JjjPWcjk8h6rnHMPSWYW3KU", "f0BEY4eTEaDQ97bHAlskleks6ilDfv7w", "kzTTWWoLyKzhVsFKHFAAxGaFMysI7iP7", "O5", "DqVK5n8IQlswAJl59jQWGsTS7h", "g8gXhMPhSk6l7LNUsVLjaHR4ALnMtBc"};
    public final /* synthetic */ KO A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A02;
            if (strArr[5].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            A02[3] = "zGtxq0LnznDpkAI9fIogelgluQXN9rJC";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{7, 19, 2, 15, 9};
    }

    static {
        A01();
    }

    public KR(KO ko) {
        this.A00 = ko;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.core.C9K
    /* renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A03(C1328Ka c1328Ka) {
        WeakReference weakReference;
        WeakReference weakReference2;
        AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        AudioManager audioManager = (AudioManager) this.A00.getContext().getApplicationContext().getSystemService(A00(0, 5, 10));
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
