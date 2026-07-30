package defpackage;

import android.annotation.SuppressLint;
import android.text.Editable;

/* renamed from: Df, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0164Df extends Editable.Factory {

    /* renamed from: do, reason: not valid java name */
    public static volatile C0164Df f635do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Class<?> f636do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Object f637do = new Object();

    @SuppressLint({"PrivateApi"})
    public C0164Df() {
        try {
            f636do = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, C0164Df.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class<?> cls = f636do;
        return cls != null ? new LE(cls, charSequence) : super.newEditable(charSequence);
    }
}
