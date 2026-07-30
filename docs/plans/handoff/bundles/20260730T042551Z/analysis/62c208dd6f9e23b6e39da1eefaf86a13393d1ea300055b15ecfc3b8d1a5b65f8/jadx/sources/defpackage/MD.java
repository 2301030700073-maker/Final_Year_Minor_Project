package defpackage;

import com.facebook.internal.DialogFeature;
import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class MD implements DialogFeature {

    /* renamed from: do, reason: not valid java name */
    public static final MD f2137do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ MD[] f2138do;

    /* renamed from: for, reason: not valid java name */
    public final int f2139for = NativeProtocol.PROTOCOL_VERSION_20170417;

    static {
        MD md = new MD();
        f2137do = md;
        f2138do = new MD[]{md};
    }

    public static MD valueOf(String str) {
        C0173Do.m401try(str, "value");
        return (MD) Enum.valueOf(MD.class, str);
    }

    public static MD[] values() {
        return (MD[]) Arrays.copyOf(f2138do, 1);
    }

    @Override // com.facebook.internal.DialogFeature
    public final String getAction() {
        return NativeProtocol.ACTION_SHARE_STORY;
    }

    @Override // com.facebook.internal.DialogFeature
    public final int getMinVersion() {
        return this.f2139for;
    }
}
