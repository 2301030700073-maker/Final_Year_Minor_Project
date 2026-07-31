package com.google.gson;

import coil3.network.HttpException;
import com.google.android.material.textfield.TextInputLayout;
import java.util.NoSuchElementException;
import kotlinx.coroutines.CoroutinesInternalError;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Gson$$ExternalSyntheticBUOutline0 implements TextInputLayout.LengthCounter {
    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void m$1(String str, Object obj) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void m$2(String str, Object obj) {
        throw new JsonIOException(str + ((Object) obj.toString()));
    }

    public static /* synthetic */ void m$3(String str, Object obj) {
        throw new IllegalStateException(str + obj);
    }

    public static /* synthetic */ void m$4(String str, Object obj) {
        throw new IllegalArgumentException(str + obj + '.');
    }

    public static /* synthetic */ void m$5(String str, Object obj) {
        throw new UnsupportedOperationException(str + obj);
    }

    public static /* synthetic */ void m$6(String str, Object obj) {
        throw new CoroutinesInternalError(str + obj);
    }

    public static /* synthetic */ void m$7(String str, Object obj) {
        throw new CoroutinesInternalError(str + obj);
    }

    public static /* synthetic */ void m$8(String str, Object obj) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m$1(String str) {
        throw new RuntimeException(str);
    }

    public static /* synthetic */ void m$3(String str) {
        throw new NoSuchElementException(str);
    }

    public static /* synthetic */ void m$1() {
        throw new HttpException();
    }

    public static /* synthetic */ void m$1(StringBuilder sb, Object obj) {
        sb.append(obj);
        throw new IllegalArgumentException(sb.toString());
    }

    public static /* synthetic */ void m$2(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static /* synthetic */ void m(int i, int i2, Object obj) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(obj);
        sb.append(i2);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    public static /* synthetic */ void m(int i, int i2, Object obj, String str) {
        throw new IndexOutOfBoundsException(str + i + obj + i2 + ((Object) ")."));
    }

    public static /* synthetic */ void m(int i, String str) {
        throw new IllegalArgumentException((str + i + '.').toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new AssertionError(str + obj + obj2);
    }

    public static /* synthetic */ void m(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static /* synthetic */ void m(String str, long j, Object obj) {
        throw new IllegalArgumentException((str + j + obj).toString());
    }

    public static /* synthetic */ void m(String str, Object obj) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new CoroutinesInternalError(str + obj + obj2 + obj3 + ')');
    }

    public static /* synthetic */ void m() {
        throw new IllegalStateException();
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalStateException(sb.toString().toString());
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj, Throwable th) {
        sb.append(obj);
        throw new JsonIOException(sb.toString(), th);
    }
}
