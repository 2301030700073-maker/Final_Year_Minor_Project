package defpackage;

import com.facebook.internal.NativeProtocol;
import java.util.Arrays;

/* renamed from: fd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC2760fd {
    NONE(null),
    /* JADX INFO: Fake field, exist only in values array */
    ONLY_ME(NativeProtocol.AUDIENCE_ME),
    /* JADX INFO: Fake field, exist only in values array */
    FRIENDS(NativeProtocol.AUDIENCE_FRIENDS),
    /* JADX INFO: Fake field, exist only in values array */
    EVERYONE(NativeProtocol.AUDIENCE_EVERYONE);


    /* renamed from: break, reason: not valid java name */
    public final String f12954break;

    EnumC2760fd(String str) {
        this.f12954break = str;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static EnumC2760fd[] valuesCustom() {
        return (EnumC2760fd[]) Arrays.copyOf(values(), 4);
    }
}
