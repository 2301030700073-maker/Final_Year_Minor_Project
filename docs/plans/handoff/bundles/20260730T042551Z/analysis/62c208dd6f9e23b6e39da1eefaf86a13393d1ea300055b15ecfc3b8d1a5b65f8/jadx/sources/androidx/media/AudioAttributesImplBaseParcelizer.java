package androidx.media;

import defpackage.HK;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(HK hk) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f7159do = hk.m830break(audioAttributesImplBase.f7159do, 1);
        audioAttributesImplBase.f7161if = hk.m830break(audioAttributesImplBase.f7161if, 2);
        audioAttributesImplBase.f7160for = hk.m830break(audioAttributesImplBase.f7160for, 3);
        audioAttributesImplBase.f7162new = hk.m830break(audioAttributesImplBase.f7162new, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, HK hk) {
        hk.getClass();
        hk.m842native(audioAttributesImplBase.f7159do, 1);
        hk.m842native(audioAttributesImplBase.f7161if, 2);
        hk.m842native(audioAttributesImplBase.f7160for, 3);
        hk.m842native(audioAttributesImplBase.f7162new, 4);
    }
}
