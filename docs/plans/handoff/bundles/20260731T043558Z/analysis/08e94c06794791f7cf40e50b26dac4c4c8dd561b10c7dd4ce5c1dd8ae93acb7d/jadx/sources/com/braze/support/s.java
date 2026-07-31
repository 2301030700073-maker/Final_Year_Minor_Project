package com.braze.support;

import com.braze.support.BrazeLogger;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public static final s f258a = new s();

    public static final String a(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            InputStream inputStream = Runtime.getRuntime().exec(new String[]{"/system/bin/getprop", key}).getInputStream();
            Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream(...)");
            Reader inputStreamReader = new InputStreamReader(inputStream, Charsets.UTF_8);
            return (inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192)).readLine();
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) f258a, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.s$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return s.a();
                }
            }, 4, (Object) null);
            return "";
        }
    }

    public static final String a() {
        return "Caught exception while trying to read BrazeLogger tag from system properties.";
    }
}
