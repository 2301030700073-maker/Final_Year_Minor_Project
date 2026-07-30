package androidx.media;

import defpackage.HK;
import defpackage.JK;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(HK hk) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        JK jk = audioAttributesCompat.f7156do;
        if (hk.mo839goto(1)) {
            jk = hk.m834const();
        }
        audioAttributesCompat.f7156do = (AudioAttributesImpl) jk;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, HK hk) {
        hk.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f7156do;
        hk.mo837final(1);
        hk.m846static(audioAttributesImpl);
    }
}
