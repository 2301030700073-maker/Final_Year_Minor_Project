package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import defpackage.HK;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(HK hk) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        Parcelable parcelable = audioAttributesImplApi21.f7158do;
        if (hk.mo839goto(1)) {
            parcelable = hk.mo832catch();
        }
        audioAttributesImplApi21.f7158do = (AudioAttributes) parcelable;
        audioAttributesImplApi21.f7157do = hk.m830break(audioAttributesImplApi21.f7157do, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, HK hk) {
        hk.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi21.f7158do;
        hk.mo837final(1);
        hk.mo844public(audioAttributes);
        hk.m842native(audioAttributesImplApi21.f7157do, 2);
    }
}
