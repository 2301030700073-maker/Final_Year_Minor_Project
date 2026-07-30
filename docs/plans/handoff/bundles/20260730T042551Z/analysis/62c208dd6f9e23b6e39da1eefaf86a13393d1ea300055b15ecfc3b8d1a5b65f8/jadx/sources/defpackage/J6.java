package defpackage;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class J6 implements DialogFeature {

    /* renamed from: do, reason: not valid java name */
    public static final J6 f1587do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ J6[] f1588do;

    /* renamed from: for, reason: not valid java name */
    public final int f1589for = NativeProtocol.PROTOCOL_VERSION_20170417;

    static {
        J6 j6 = new J6();
        f1587do = j6;
        f1588do = new J6[]{j6};
    }

    public static J6 valueOf(String str) {
        C0173Do.m401try(str, "value");
        return (J6) Enum.valueOf(J6.class, str);
    }

    public static J6[] values() {
        return (J6[]) Arrays.copyOf(f1588do, 1);
    }

    @Override // com.facebook.internal.DialogFeature
    public final String getAction() {
        return NativeProtocol.ACTION_CAMERA_EFFECT;
    }

    @Override // com.facebook.internal.DialogFeature
    public final int getMinVersion() {
        return this.f1589for;
    }
}
