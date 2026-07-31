package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Violation extends RuntimeException {
    public final Fragment fragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(Fragment fragment, String str) {
        super(str);
        fragment.getClass();
        this.fragment = fragment;
    }
}
