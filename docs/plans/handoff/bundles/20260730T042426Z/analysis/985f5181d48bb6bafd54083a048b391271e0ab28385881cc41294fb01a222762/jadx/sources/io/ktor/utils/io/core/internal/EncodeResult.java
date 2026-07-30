package io.ktor.utils.io.core.internal;

import kotlin.UShort;

/* compiled from: EncodeResult.kt */
/* loaded from: classes.dex */
public abstract class EncodeResult {
    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2635constructorimpl(int i) {
        return i;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m2636constructorimpl(short s, short s2) {
        return m2635constructorimpl(((s & 65535) << 16) | (s2 & 65535));
    }

    /* renamed from: getCharacters-Mh2AYeg, reason: not valid java name */
    public static final short m2638getCharactersMh2AYeg(int i) {
        return UShort.m2724constructorimpl((short) (i >>> 16));
    }

    /* renamed from: getBytes-Mh2AYeg, reason: not valid java name */
    public static final short m2637getBytesMh2AYeg(int i) {
        return UShort.m2724constructorimpl((short) (i & 65535));
    }

    /* renamed from: component1-Mh2AYeg, reason: not valid java name */
    public static final short m2633component1Mh2AYeg(int i) {
        return m2638getCharactersMh2AYeg(i);
    }

    /* renamed from: component2-Mh2AYeg, reason: not valid java name */
    public static final short m2634component2Mh2AYeg(int i) {
        return m2637getBytesMh2AYeg(i);
    }
}
