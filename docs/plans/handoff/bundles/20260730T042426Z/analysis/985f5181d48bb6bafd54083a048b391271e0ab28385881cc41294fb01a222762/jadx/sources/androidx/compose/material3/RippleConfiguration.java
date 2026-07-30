package androidx.compose.material3;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Ripple.kt */
/* loaded from: classes.dex */
public final class RippleConfiguration {
    private final long color;
    private final RippleAlpha rippleAlpha;

    public /* synthetic */ RippleConfiguration(long j, RippleAlpha rippleAlpha, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, rippleAlpha);
    }

    private RippleConfiguration(long j, RippleAlpha rippleAlpha) {
        this.color = j;
        this.rippleAlpha = rippleAlpha;
    }

    public /* synthetic */ RippleConfiguration(long j, RippleAlpha rippleAlpha, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Color.Companion.m1317getUnspecified0d7_KjU() : j, (i & 2) != 0 ? null : rippleAlpha, null);
    }

    /* renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m734getColor0d7_KjU() {
        return this.color;
    }

    public final RippleAlpha getRippleAlpha() {
        return this.rippleAlpha;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleConfiguration)) {
            return false;
        }
        RippleConfiguration rippleConfiguration = (RippleConfiguration) obj;
        return Color.m1304equalsimpl0(this.color, rippleConfiguration.color) && Intrinsics.areEqual(this.rippleAlpha, rippleConfiguration.rippleAlpha);
    }

    public int hashCode() {
        int m1310hashCodeimpl = Color.m1310hashCodeimpl(this.color) * 31;
        RippleAlpha rippleAlpha = this.rippleAlpha;
        return m1310hashCodeimpl + (rippleAlpha != null ? rippleAlpha.hashCode() : 0);
    }

    public String toString() {
        return "RippleConfiguration(color=" + ((Object) Color.m1311toStringimpl(this.color)) + ", rippleAlpha=" + this.rippleAlpha + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
