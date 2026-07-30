package androidx.compose.animation.core;

import androidx.collection.LongObjectMap$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: AnimationSpec.kt */
/* loaded from: classes.dex */
public abstract class StartOffset {
    /* renamed from: constructor-impl, reason: not valid java name */
    private static long m64constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m66equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m67hashCodeimpl(long j) {
        return LongObjectMap$$ExternalSyntheticBackport0.m(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m63constructorimpl(int i, int i2) {
        return m64constructorimpl(i * i2);
    }

    /* renamed from: constructor-impl$default, reason: not valid java name */
    public static /* synthetic */ long m65constructorimpl$default(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i3 & 2) != 0) {
            i2 = StartOffsetType.Companion.m69getDelayEo1U57Q();
        }
        return m63constructorimpl(i, i2);
    }
}
